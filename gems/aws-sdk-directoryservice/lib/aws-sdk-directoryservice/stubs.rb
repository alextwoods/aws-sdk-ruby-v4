# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DirectoryService
  module Stubs

    # Operation Stubber for AcceptSharedDirectory
    class AcceptSharedDirectory
      def self.default(visited=[])
        {
          shared_directory: SharedDirectory.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SharedDirectory'] = SharedDirectory.stub(stub[:shared_directory]) unless stub[:shared_directory].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SharedDirectory
    class SharedDirectory
      def self.default(visited=[])
        return nil if visited.include?('SharedDirectory')
        visited = visited + ['SharedDirectory']
        {
          owner_account_id: 'owner_account_id',
          owner_directory_id: 'owner_directory_id',
          share_method: 'share_method',
          shared_account_id: 'shared_account_id',
          shared_directory_id: 'shared_directory_id',
          share_status: 'share_status',
          share_notes: 'share_notes',
          created_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SharedDirectory.new
        data = {}
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['OwnerDirectoryId'] = stub[:owner_directory_id] unless stub[:owner_directory_id].nil?
        data['ShareMethod'] = stub[:share_method] unless stub[:share_method].nil?
        data['SharedAccountId'] = stub[:shared_account_id] unless stub[:shared_account_id].nil?
        data['SharedDirectoryId'] = stub[:shared_directory_id] unless stub[:shared_directory_id].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data['ShareNotes'] = stub[:share_notes] unless stub[:share_notes].nil?
        data['CreatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date_time]).to_i unless stub[:created_date_time].nil?
        data['LastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for AddIpRoutes
    class AddIpRoutes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddRegion
    class AddRegion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelSchemaExtension
    class CancelSchemaExtension
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConnectDirectory
    class ConnectDirectory
      def self.default(visited=[])
        {
          directory_id: 'directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAlias
    class CreateAlias
      def self.default(visited=[])
        {
          directory_id: 'directory_id',
          alias: 'alias',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateComputer
    class CreateComputer
      def self.default(visited=[])
        {
          computer: Computer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Computer'] = Computer.stub(stub[:computer]) unless stub[:computer].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Computer
    class Computer
      def self.default(visited=[])
        return nil if visited.include?('Computer')
        visited = visited + ['Computer']
        {
          computer_id: 'computer_id',
          computer_name: 'computer_name',
          computer_attributes: Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Computer.new
        data = {}
        data['ComputerId'] = stub[:computer_id] unless stub[:computer_id].nil?
        data['ComputerName'] = stub[:computer_name] unless stub[:computer_name].nil?
        data['ComputerAttributes'] = Attributes.stub(stub[:computer_attributes]) unless stub[:computer_attributes].nil?
        data
      end
    end

    # List Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateConditionalForwarder
    class CreateConditionalForwarder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDirectory
    class CreateDirectory
      def self.default(visited=[])
        {
          directory_id: 'directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLogSubscription
    class CreateLogSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMicrosoftAD
    class CreateMicrosoftAD
      def self.default(visited=[])
        {
          directory_id: 'directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot
      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTrust
    class CreateTrust
      def self.default(visited=[])
        {
          trust_id: 'trust_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrustId'] = stub[:trust_id] unless stub[:trust_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConditionalForwarder
    class DeleteConditionalForwarder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDirectory
    class DeleteDirectory
      def self.default(visited=[])
        {
          directory_id: 'directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLogSubscription
    class DeleteLogSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSnapshot
    class DeleteSnapshot
      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrust
    class DeleteTrust
      def self.default(visited=[])
        {
          trust_id: 'trust_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrustId'] = stub[:trust_id] unless stub[:trust_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterCertificate
    class DeregisterCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterEventTopic
    class DeregisterEventTopic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCertificate
    class DescribeCertificate
      def self.default(visited=[])
        {
          certificate: Certificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = Certificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_id: 'certificate_id',
          state: 'state',
          state_reason: 'state_reason',
          common_name: 'common_name',
          registered_date_time: Time.now,
          expiry_date_time: Time.now,
          type: 'type',
          client_cert_auth_settings: ClientCertAuthSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['CertificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['CommonName'] = stub[:common_name] unless stub[:common_name].nil?
        data['RegisteredDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_date_time]).to_i unless stub[:registered_date_time].nil?
        data['ExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_date_time]).to_i unless stub[:expiry_date_time].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ClientCertAuthSettings'] = ClientCertAuthSettings.stub(stub[:client_cert_auth_settings]) unless stub[:client_cert_auth_settings].nil?
        data
      end
    end

    # Structure Stubber for ClientCertAuthSettings
    class ClientCertAuthSettings
      def self.default(visited=[])
        return nil if visited.include?('ClientCertAuthSettings')
        visited = visited + ['ClientCertAuthSettings']
        {
          ocsp_url: 'ocsp_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientCertAuthSettings.new
        data = {}
        data['OCSPUrl'] = stub[:ocsp_url] unless stub[:ocsp_url].nil?
        data
      end
    end

    # Operation Stubber for DescribeClientAuthenticationSettings
    class DescribeClientAuthenticationSettings
      def self.default(visited=[])
        {
          client_authentication_settings_info: ClientAuthenticationSettingsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientAuthenticationSettingsInfo'] = ClientAuthenticationSettingsInfo.stub(stub[:client_authentication_settings_info]) unless stub[:client_authentication_settings_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClientAuthenticationSettingsInfo
    class ClientAuthenticationSettingsInfo
      def self.default(visited=[])
        return nil if visited.include?('ClientAuthenticationSettingsInfo')
        visited = visited + ['ClientAuthenticationSettingsInfo']
        [
          ClientAuthenticationSettingInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ClientAuthenticationSettingInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClientAuthenticationSettingInfo
    class ClientAuthenticationSettingInfo
      def self.default(visited=[])
        return nil if visited.include?('ClientAuthenticationSettingInfo')
        visited = visited + ['ClientAuthenticationSettingInfo']
        {
          type: 'type',
          status: 'status',
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientAuthenticationSettingInfo.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeConditionalForwarders
    class DescribeConditionalForwarders
      def self.default(visited=[])
        {
          conditional_forwarders: ConditionalForwarders.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConditionalForwarders'] = ConditionalForwarders.stub(stub[:conditional_forwarders]) unless stub[:conditional_forwarders].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConditionalForwarders
    class ConditionalForwarders
      def self.default(visited=[])
        return nil if visited.include?('ConditionalForwarders')
        visited = visited + ['ConditionalForwarders']
        [
          ConditionalForwarder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConditionalForwarder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConditionalForwarder
    class ConditionalForwarder
      def self.default(visited=[])
        return nil if visited.include?('ConditionalForwarder')
        visited = visited + ['ConditionalForwarder']
        {
          remote_domain_name: 'remote_domain_name',
          dns_ip_addrs: DnsIpAddrs.default(visited),
          replication_scope: 'replication_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConditionalForwarder.new
        data = {}
        data['RemoteDomainName'] = stub[:remote_domain_name] unless stub[:remote_domain_name].nil?
        data['DnsIpAddrs'] = DnsIpAddrs.stub(stub[:dns_ip_addrs]) unless stub[:dns_ip_addrs].nil?
        data['ReplicationScope'] = stub[:replication_scope] unless stub[:replication_scope].nil?
        data
      end
    end

    # List Stubber for DnsIpAddrs
    class DnsIpAddrs
      def self.default(visited=[])
        return nil if visited.include?('DnsIpAddrs')
        visited = visited + ['DnsIpAddrs']
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

    # Operation Stubber for DescribeDirectories
    class DescribeDirectories
      def self.default(visited=[])
        {
          directory_descriptions: DirectoryDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryDescriptions'] = DirectoryDescriptions.stub(stub[:directory_descriptions]) unless stub[:directory_descriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectoryDescriptions
    class DirectoryDescriptions
      def self.default(visited=[])
        return nil if visited.include?('DirectoryDescriptions')
        visited = visited + ['DirectoryDescriptions']
        [
          DirectoryDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DirectoryDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DirectoryDescription
    class DirectoryDescription
      def self.default(visited=[])
        return nil if visited.include?('DirectoryDescription')
        visited = visited + ['DirectoryDescription']
        {
          directory_id: 'directory_id',
          name: 'name',
          short_name: 'short_name',
          size: 'size',
          edition: 'edition',
          alias: 'alias',
          access_url: 'access_url',
          description: 'description',
          dns_ip_addrs: DnsIpAddrs.default(visited),
          stage: 'stage',
          share_status: 'share_status',
          share_method: 'share_method',
          share_notes: 'share_notes',
          launch_time: Time.now,
          stage_last_updated_date_time: Time.now,
          type: 'type',
          vpc_settings: DirectoryVpcSettingsDescription.default(visited),
          connect_settings: DirectoryConnectSettingsDescription.default(visited),
          radius_settings: RadiusSettings.default(visited),
          radius_status: 'radius_status',
          stage_reason: 'stage_reason',
          sso_enabled: false,
          desired_number_of_domain_controllers: 1,
          owner_directory_description: OwnerDirectoryDescription.default(visited),
          regions_info: RegionsInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryDescription.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ShortName'] = stub[:short_name] unless stub[:short_name].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['AccessUrl'] = stub[:access_url] unless stub[:access_url].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DnsIpAddrs'] = DnsIpAddrs.stub(stub[:dns_ip_addrs]) unless stub[:dns_ip_addrs].nil?
        data['Stage'] = stub[:stage] unless stub[:stage].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data['ShareMethod'] = stub[:share_method] unless stub[:share_method].nil?
        data['ShareNotes'] = stub[:share_notes] unless stub[:share_notes].nil?
        data['LaunchTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:launch_time]).to_i unless stub[:launch_time].nil?
        data['StageLastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stage_last_updated_date_time]).to_i unless stub[:stage_last_updated_date_time].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VpcSettings'] = DirectoryVpcSettingsDescription.stub(stub[:vpc_settings]) unless stub[:vpc_settings].nil?
        data['ConnectSettings'] = DirectoryConnectSettingsDescription.stub(stub[:connect_settings]) unless stub[:connect_settings].nil?
        data['RadiusSettings'] = RadiusSettings.stub(stub[:radius_settings]) unless stub[:radius_settings].nil?
        data['RadiusStatus'] = stub[:radius_status] unless stub[:radius_status].nil?
        data['StageReason'] = stub[:stage_reason] unless stub[:stage_reason].nil?
        data['SsoEnabled'] = stub[:sso_enabled] unless stub[:sso_enabled].nil?
        data['DesiredNumberOfDomainControllers'] = stub[:desired_number_of_domain_controllers] unless stub[:desired_number_of_domain_controllers].nil?
        data['OwnerDirectoryDescription'] = OwnerDirectoryDescription.stub(stub[:owner_directory_description]) unless stub[:owner_directory_description].nil?
        data['RegionsInfo'] = RegionsInfo.stub(stub[:regions_info]) unless stub[:regions_info].nil?
        data
      end
    end

    # Structure Stubber for RegionsInfo
    class RegionsInfo
      def self.default(visited=[])
        return nil if visited.include?('RegionsInfo')
        visited = visited + ['RegionsInfo']
        {
          primary_region: 'primary_region',
          additional_regions: AdditionalRegions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegionsInfo.new
        data = {}
        data['PrimaryRegion'] = stub[:primary_region] unless stub[:primary_region].nil?
        data['AdditionalRegions'] = AdditionalRegions.stub(stub[:additional_regions]) unless stub[:additional_regions].nil?
        data
      end
    end

    # List Stubber for AdditionalRegions
    class AdditionalRegions
      def self.default(visited=[])
        return nil if visited.include?('AdditionalRegions')
        visited = visited + ['AdditionalRegions']
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

    # Structure Stubber for OwnerDirectoryDescription
    class OwnerDirectoryDescription
      def self.default(visited=[])
        return nil if visited.include?('OwnerDirectoryDescription')
        visited = visited + ['OwnerDirectoryDescription']
        {
          directory_id: 'directory_id',
          account_id: 'account_id',
          dns_ip_addrs: DnsIpAddrs.default(visited),
          vpc_settings: DirectoryVpcSettingsDescription.default(visited),
          radius_settings: RadiusSettings.default(visited),
          radius_status: 'radius_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OwnerDirectoryDescription.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['DnsIpAddrs'] = DnsIpAddrs.stub(stub[:dns_ip_addrs]) unless stub[:dns_ip_addrs].nil?
        data['VpcSettings'] = DirectoryVpcSettingsDescription.stub(stub[:vpc_settings]) unless stub[:vpc_settings].nil?
        data['RadiusSettings'] = RadiusSettings.stub(stub[:radius_settings]) unless stub[:radius_settings].nil?
        data['RadiusStatus'] = stub[:radius_status] unless stub[:radius_status].nil?
        data
      end
    end

    # Structure Stubber for RadiusSettings
    class RadiusSettings
      def self.default(visited=[])
        return nil if visited.include?('RadiusSettings')
        visited = visited + ['RadiusSettings']
        {
          radius_servers: Servers.default(visited),
          radius_port: 1,
          radius_timeout: 1,
          radius_retries: 1,
          shared_secret: 'shared_secret',
          authentication_protocol: 'authentication_protocol',
          display_label: 'display_label',
          use_same_username: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RadiusSettings.new
        data = {}
        data['RadiusServers'] = Servers.stub(stub[:radius_servers]) unless stub[:radius_servers].nil?
        data['RadiusPort'] = stub[:radius_port] unless stub[:radius_port].nil?
        data['RadiusTimeout'] = stub[:radius_timeout] unless stub[:radius_timeout].nil?
        data['RadiusRetries'] = stub[:radius_retries] unless stub[:radius_retries].nil?
        data['SharedSecret'] = stub[:shared_secret] unless stub[:shared_secret].nil?
        data['AuthenticationProtocol'] = stub[:authentication_protocol] unless stub[:authentication_protocol].nil?
        data['DisplayLabel'] = stub[:display_label] unless stub[:display_label].nil?
        data['UseSameUsername'] = stub[:use_same_username] unless stub[:use_same_username].nil?
        data
      end
    end

    # List Stubber for Servers
    class Servers
      def self.default(visited=[])
        return nil if visited.include?('Servers')
        visited = visited + ['Servers']
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

    # Structure Stubber for DirectoryVpcSettingsDescription
    class DirectoryVpcSettingsDescription
      def self.default(visited=[])
        return nil if visited.include?('DirectoryVpcSettingsDescription')
        visited = visited + ['DirectoryVpcSettingsDescription']
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          security_group_id: 'security_group_id',
          availability_zones: AvailabilityZones.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryVpcSettingsDescription.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupId'] = stub[:security_group_id] unless stub[:security_group_id].nil?
        data['AvailabilityZones'] = AvailabilityZones.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data
      end
    end

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # Structure Stubber for DirectoryConnectSettingsDescription
    class DirectoryConnectSettingsDescription
      def self.default(visited=[])
        return nil if visited.include?('DirectoryConnectSettingsDescription')
        visited = visited + ['DirectoryConnectSettingsDescription']
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          customer_user_name: 'customer_user_name',
          security_group_id: 'security_group_id',
          availability_zones: AvailabilityZones.default(visited),
          connect_ips: IpAddrs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryConnectSettingsDescription.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['CustomerUserName'] = stub[:customer_user_name] unless stub[:customer_user_name].nil?
        data['SecurityGroupId'] = stub[:security_group_id] unless stub[:security_group_id].nil?
        data['AvailabilityZones'] = AvailabilityZones.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['ConnectIps'] = IpAddrs.stub(stub[:connect_ips]) unless stub[:connect_ips].nil?
        data
      end
    end

    # List Stubber for IpAddrs
    class IpAddrs
      def self.default(visited=[])
        return nil if visited.include?('IpAddrs')
        visited = visited + ['IpAddrs']
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

    # Operation Stubber for DescribeDomainControllers
    class DescribeDomainControllers
      def self.default(visited=[])
        {
          domain_controllers: DomainControllers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainControllers'] = DomainControllers.stub(stub[:domain_controllers]) unless stub[:domain_controllers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainControllers
    class DomainControllers
      def self.default(visited=[])
        return nil if visited.include?('DomainControllers')
        visited = visited + ['DomainControllers']
        [
          DomainController.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainController.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainController
    class DomainController
      def self.default(visited=[])
        return nil if visited.include?('DomainController')
        visited = visited + ['DomainController']
        {
          directory_id: 'directory_id',
          domain_controller_id: 'domain_controller_id',
          dns_ip_addr: 'dns_ip_addr',
          vpc_id: 'vpc_id',
          subnet_id: 'subnet_id',
          availability_zone: 'availability_zone',
          status: 'status',
          status_reason: 'status_reason',
          launch_time: Time.now,
          status_last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainController.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['DomainControllerId'] = stub[:domain_controller_id] unless stub[:domain_controller_id].nil?
        data['DnsIpAddr'] = stub[:dns_ip_addr] unless stub[:dns_ip_addr].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['LaunchTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:launch_time]).to_i unless stub[:launch_time].nil?
        data['StatusLastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_last_updated_date_time]).to_i unless stub[:status_last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventTopics
    class DescribeEventTopics
      def self.default(visited=[])
        {
          event_topics: EventTopics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventTopics'] = EventTopics.stub(stub[:event_topics]) unless stub[:event_topics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventTopics
    class EventTopics
      def self.default(visited=[])
        return nil if visited.include?('EventTopics')
        visited = visited + ['EventTopics']
        [
          EventTopic.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventTopic.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventTopic
    class EventTopic
      def self.default(visited=[])
        return nil if visited.include?('EventTopic')
        visited = visited + ['EventTopic']
        {
          directory_id: 'directory_id',
          topic_name: 'topic_name',
          topic_arn: 'topic_arn',
          created_date_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventTopic.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['TopicName'] = stub[:topic_name] unless stub[:topic_name].nil?
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data['CreatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date_time]).to_i unless stub[:created_date_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeLDAPSSettings
    class DescribeLDAPSSettings
      def self.default(visited=[])
        {
          ldaps_settings_info: LDAPSSettingsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LDAPSSettingsInfo'] = LDAPSSettingsInfo.stub(stub[:ldaps_settings_info]) unless stub[:ldaps_settings_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LDAPSSettingsInfo
    class LDAPSSettingsInfo
      def self.default(visited=[])
        return nil if visited.include?('LDAPSSettingsInfo')
        visited = visited + ['LDAPSSettingsInfo']
        [
          LDAPSSettingInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LDAPSSettingInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LDAPSSettingInfo
    class LDAPSSettingInfo
      def self.default(visited=[])
        return nil if visited.include?('LDAPSSettingInfo')
        visited = visited + ['LDAPSSettingInfo']
        {
          ldaps_status: 'ldaps_status',
          ldaps_status_reason: 'ldaps_status_reason',
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LDAPSSettingInfo.new
        data = {}
        data['LDAPSStatus'] = stub[:ldaps_status] unless stub[:ldaps_status].nil?
        data['LDAPSStatusReason'] = stub[:ldaps_status_reason] unless stub[:ldaps_status_reason].nil?
        data['LastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeRegions
    class DescribeRegions
      def self.default(visited=[])
        {
          regions_description: RegionsDescription.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegionsDescription'] = RegionsDescription.stub(stub[:regions_description]) unless stub[:regions_description].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegionsDescription
    class RegionsDescription
      def self.default(visited=[])
        return nil if visited.include?('RegionsDescription')
        visited = visited + ['RegionsDescription']
        [
          RegionDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegionDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegionDescription
    class RegionDescription
      def self.default(visited=[])
        return nil if visited.include?('RegionDescription')
        visited = visited + ['RegionDescription']
        {
          directory_id: 'directory_id',
          region_name: 'region_name',
          region_type: 'region_type',
          status: 'status',
          vpc_settings: DirectoryVpcSettings.default(visited),
          desired_number_of_domain_controllers: 1,
          launch_time: Time.now,
          status_last_updated_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RegionDescription.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['RegionType'] = stub[:region_type] unless stub[:region_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['VpcSettings'] = DirectoryVpcSettings.stub(stub[:vpc_settings]) unless stub[:vpc_settings].nil?
        data['DesiredNumberOfDomainControllers'] = stub[:desired_number_of_domain_controllers] unless stub[:desired_number_of_domain_controllers].nil?
        data['LaunchTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:launch_time]).to_i unless stub[:launch_time].nil?
        data['StatusLastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_last_updated_date_time]).to_i unless stub[:status_last_updated_date_time].nil?
        data['LastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Structure Stubber for DirectoryVpcSettings
    class DirectoryVpcSettings
      def self.default(visited=[])
        return nil if visited.include?('DirectoryVpcSettings')
        visited = visited + ['DirectoryVpcSettings']
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryVpcSettings.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data
      end
    end

    # Operation Stubber for DescribeSharedDirectories
    class DescribeSharedDirectories
      def self.default(visited=[])
        {
          shared_directories: SharedDirectories.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SharedDirectories'] = SharedDirectories.stub(stub[:shared_directories]) unless stub[:shared_directories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SharedDirectories
    class SharedDirectories
      def self.default(visited=[])
        return nil if visited.include?('SharedDirectories')
        visited = visited + ['SharedDirectories']
        [
          SharedDirectory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SharedDirectory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSnapshots
    class DescribeSnapshots
      def self.default(visited=[])
        {
          snapshots: Snapshots.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Snapshots'] = Snapshots.stub(stub[:snapshots]) unless stub[:snapshots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Snapshots
    class Snapshots
      def self.default(visited=[])
        return nil if visited.include?('Snapshots')
        visited = visited + ['Snapshots']
        [
          Snapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Snapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          directory_id: 'directory_id',
          snapshot_id: 'snapshot_id',
          type: 'type',
          name: 'name',
          status: 'status',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Snapshot.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrusts
    class DescribeTrusts
      def self.default(visited=[])
        {
          trusts: Trusts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Trusts'] = Trusts.stub(stub[:trusts]) unless stub[:trusts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Trusts
    class Trusts
      def self.default(visited=[])
        return nil if visited.include?('Trusts')
        visited = visited + ['Trusts']
        [
          Trust.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Trust.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Trust
    class Trust
      def self.default(visited=[])
        return nil if visited.include?('Trust')
        visited = visited + ['Trust']
        {
          directory_id: 'directory_id',
          trust_id: 'trust_id',
          remote_domain_name: 'remote_domain_name',
          trust_type: 'trust_type',
          trust_direction: 'trust_direction',
          trust_state: 'trust_state',
          created_date_time: Time.now,
          last_updated_date_time: Time.now,
          state_last_updated_date_time: Time.now,
          trust_state_reason: 'trust_state_reason',
          selective_auth: 'selective_auth',
        }
      end

      def self.stub(stub)
        stub ||= Types::Trust.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['TrustId'] = stub[:trust_id] unless stub[:trust_id].nil?
        data['RemoteDomainName'] = stub[:remote_domain_name] unless stub[:remote_domain_name].nil?
        data['TrustType'] = stub[:trust_type] unless stub[:trust_type].nil?
        data['TrustDirection'] = stub[:trust_direction] unless stub[:trust_direction].nil?
        data['TrustState'] = stub[:trust_state] unless stub[:trust_state].nil?
        data['CreatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date_time]).to_i unless stub[:created_date_time].nil?
        data['LastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['StateLastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:state_last_updated_date_time]).to_i unless stub[:state_last_updated_date_time].nil?
        data['TrustStateReason'] = stub[:trust_state_reason] unless stub[:trust_state_reason].nil?
        data['SelectiveAuth'] = stub[:selective_auth] unless stub[:selective_auth].nil?
        data
      end
    end

    # Operation Stubber for DisableClientAuthentication
    class DisableClientAuthentication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableLDAPS
    class DisableLDAPS
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableRadius
    class DisableRadius
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableSso
    class DisableSso
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableClientAuthentication
    class EnableClientAuthentication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableLDAPS
    class EnableLDAPS
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableRadius
    class EnableRadius
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableSso
    class EnableSso
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDirectoryLimits
    class GetDirectoryLimits
      def self.default(visited=[])
        {
          directory_limits: DirectoryLimits.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryLimits'] = DirectoryLimits.stub(stub[:directory_limits]) unless stub[:directory_limits].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DirectoryLimits
    class DirectoryLimits
      def self.default(visited=[])
        return nil if visited.include?('DirectoryLimits')
        visited = visited + ['DirectoryLimits']
        {
          cloud_only_directories_limit: 1,
          cloud_only_directories_current_count: 1,
          cloud_only_directories_limit_reached: false,
          cloud_only_microsoft_ad_limit: 1,
          cloud_only_microsoft_ad_current_count: 1,
          cloud_only_microsoft_ad_limit_reached: false,
          connected_directories_limit: 1,
          connected_directories_current_count: 1,
          connected_directories_limit_reached: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryLimits.new
        data = {}
        data['CloudOnlyDirectoriesLimit'] = stub[:cloud_only_directories_limit] unless stub[:cloud_only_directories_limit].nil?
        data['CloudOnlyDirectoriesCurrentCount'] = stub[:cloud_only_directories_current_count] unless stub[:cloud_only_directories_current_count].nil?
        data['CloudOnlyDirectoriesLimitReached'] = stub[:cloud_only_directories_limit_reached] unless stub[:cloud_only_directories_limit_reached].nil?
        data['CloudOnlyMicrosoftADLimit'] = stub[:cloud_only_microsoft_ad_limit] unless stub[:cloud_only_microsoft_ad_limit].nil?
        data['CloudOnlyMicrosoftADCurrentCount'] = stub[:cloud_only_microsoft_ad_current_count] unless stub[:cloud_only_microsoft_ad_current_count].nil?
        data['CloudOnlyMicrosoftADLimitReached'] = stub[:cloud_only_microsoft_ad_limit_reached] unless stub[:cloud_only_microsoft_ad_limit_reached].nil?
        data['ConnectedDirectoriesLimit'] = stub[:connected_directories_limit] unless stub[:connected_directories_limit].nil?
        data['ConnectedDirectoriesCurrentCount'] = stub[:connected_directories_current_count] unless stub[:connected_directories_current_count].nil?
        data['ConnectedDirectoriesLimitReached'] = stub[:connected_directories_limit_reached] unless stub[:connected_directories_limit_reached].nil?
        data
      end
    end

    # Operation Stubber for GetSnapshotLimits
    class GetSnapshotLimits
      def self.default(visited=[])
        {
          snapshot_limits: SnapshotLimits.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotLimits'] = SnapshotLimits.stub(stub[:snapshot_limits]) unless stub[:snapshot_limits].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SnapshotLimits
    class SnapshotLimits
      def self.default(visited=[])
        return nil if visited.include?('SnapshotLimits')
        visited = visited + ['SnapshotLimits']
        {
          manual_snapshots_limit: 1,
          manual_snapshots_current_count: 1,
          manual_snapshots_limit_reached: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotLimits.new
        data = {}
        data['ManualSnapshotsLimit'] = stub[:manual_snapshots_limit] unless stub[:manual_snapshots_limit].nil?
        data['ManualSnapshotsCurrentCount'] = stub[:manual_snapshots_current_count] unless stub[:manual_snapshots_current_count].nil?
        data['ManualSnapshotsLimitReached'] = stub[:manual_snapshots_limit_reached] unless stub[:manual_snapshots_limit_reached].nil?
        data
      end
    end

    # Operation Stubber for ListCertificates
    class ListCertificates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          certificates_info: CertificatesInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['CertificatesInfo'] = CertificatesInfo.stub(stub[:certificates_info]) unless stub[:certificates_info].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CertificatesInfo
    class CertificatesInfo
      def self.default(visited=[])
        return nil if visited.include?('CertificatesInfo')
        visited = visited + ['CertificatesInfo']
        [
          CertificateInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CertificateInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CertificateInfo
    class CertificateInfo
      def self.default(visited=[])
        return nil if visited.include?('CertificateInfo')
        visited = visited + ['CertificateInfo']
        {
          certificate_id: 'certificate_id',
          common_name: 'common_name',
          state: 'state',
          expiry_date_time: Time.now,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateInfo.new
        data = {}
        data['CertificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['CommonName'] = stub[:common_name] unless stub[:common_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_date_time]).to_i unless stub[:expiry_date_time].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListIpRoutes
    class ListIpRoutes
      def self.default(visited=[])
        {
          ip_routes_info: IpRoutesInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IpRoutesInfo'] = IpRoutesInfo.stub(stub[:ip_routes_info]) unless stub[:ip_routes_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IpRoutesInfo
    class IpRoutesInfo
      def self.default(visited=[])
        return nil if visited.include?('IpRoutesInfo')
        visited = visited + ['IpRoutesInfo']
        [
          IpRouteInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpRouteInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpRouteInfo
    class IpRouteInfo
      def self.default(visited=[])
        return nil if visited.include?('IpRouteInfo')
        visited = visited + ['IpRouteInfo']
        {
          directory_id: 'directory_id',
          cidr_ip: 'cidr_ip',
          ip_route_status_msg: 'ip_route_status_msg',
          added_date_time: Time.now,
          ip_route_status_reason: 'ip_route_status_reason',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpRouteInfo.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['CidrIp'] = stub[:cidr_ip] unless stub[:cidr_ip].nil?
        data['IpRouteStatusMsg'] = stub[:ip_route_status_msg] unless stub[:ip_route_status_msg].nil?
        data['AddedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:added_date_time]).to_i unless stub[:added_date_time].nil?
        data['IpRouteStatusReason'] = stub[:ip_route_status_reason] unless stub[:ip_route_status_reason].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListLogSubscriptions
    class ListLogSubscriptions
      def self.default(visited=[])
        {
          log_subscriptions: LogSubscriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LogSubscriptions'] = LogSubscriptions.stub(stub[:log_subscriptions]) unless stub[:log_subscriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogSubscriptions
    class LogSubscriptions
      def self.default(visited=[])
        return nil if visited.include?('LogSubscriptions')
        visited = visited + ['LogSubscriptions']
        [
          LogSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogSubscription
    class LogSubscription
      def self.default(visited=[])
        return nil if visited.include?('LogSubscription')
        visited = visited + ['LogSubscription']
        {
          directory_id: 'directory_id',
          log_group_name: 'log_group_name',
          subscription_created_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogSubscription.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['SubscriptionCreatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:subscription_created_date_time]).to_i unless stub[:subscription_created_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListSchemaExtensions
    class ListSchemaExtensions
      def self.default(visited=[])
        {
          schema_extensions_info: SchemaExtensionsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaExtensionsInfo'] = SchemaExtensionsInfo.stub(stub[:schema_extensions_info]) unless stub[:schema_extensions_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaExtensionsInfo
    class SchemaExtensionsInfo
      def self.default(visited=[])
        return nil if visited.include?('SchemaExtensionsInfo')
        visited = visited + ['SchemaExtensionsInfo']
        [
          SchemaExtensionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaExtensionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaExtensionInfo
    class SchemaExtensionInfo
      def self.default(visited=[])
        return nil if visited.include?('SchemaExtensionInfo')
        visited = visited + ['SchemaExtensionInfo']
        {
          directory_id: 'directory_id',
          schema_extension_id: 'schema_extension_id',
          description: 'description',
          schema_extension_status: 'schema_extension_status',
          schema_extension_status_reason: 'schema_extension_status_reason',
          start_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaExtensionInfo.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['SchemaExtensionId'] = stub[:schema_extension_id] unless stub[:schema_extension_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['SchemaExtensionStatus'] = stub[:schema_extension_status] unless stub[:schema_extension_status].nil?
        data['SchemaExtensionStatusReason'] = stub[:schema_extension_status_reason] unless stub[:schema_extension_status_reason].nil?
        data['StartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for RegisterCertificate
    class RegisterCertificate
      def self.default(visited=[])
        {
          certificate_id: 'certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterEventTopic
    class RegisterEventTopic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectSharedDirectory
    class RejectSharedDirectory
      def self.default(visited=[])
        {
          shared_directory_id: 'shared_directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SharedDirectoryId'] = stub[:shared_directory_id] unless stub[:shared_directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveIpRoutes
    class RemoveIpRoutes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveRegion
    class RemoveRegion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetUserPassword
    class ResetUserPassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreFromSnapshot
    class RestoreFromSnapshot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ShareDirectory
    class ShareDirectory
      def self.default(visited=[])
        {
          shared_directory_id: 'shared_directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SharedDirectoryId'] = stub[:shared_directory_id] unless stub[:shared_directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSchemaExtension
    class StartSchemaExtension
      def self.default(visited=[])
        {
          schema_extension_id: 'schema_extension_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SchemaExtensionId'] = stub[:schema_extension_id] unless stub[:schema_extension_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnshareDirectory
    class UnshareDirectory
      def self.default(visited=[])
        {
          shared_directory_id: 'shared_directory_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SharedDirectoryId'] = stub[:shared_directory_id] unless stub[:shared_directory_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConditionalForwarder
    class UpdateConditionalForwarder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNumberOfDomainControllers
    class UpdateNumberOfDomainControllers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRadius
    class UpdateRadius
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTrust
    class UpdateTrust
      def self.default(visited=[])
        {
          request_id: 'request_id',
          trust_id: 'trust_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['TrustId'] = stub[:trust_id] unless stub[:trust_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyTrust
    class VerifyTrust
      def self.default(visited=[])
        {
          trust_id: 'trust_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrustId'] = stub[:trust_id] unless stub[:trust_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
