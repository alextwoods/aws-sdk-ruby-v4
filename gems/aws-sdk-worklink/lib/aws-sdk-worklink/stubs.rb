# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Stubs

    # Operation Stubber for AssociateDomain
    class AssociateDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateWebsiteAuthorizationProvider
    class AssociateWebsiteAuthorizationProvider
      def self.default(visited=[])
        {
          authorization_provider_id: 'authorization_provider_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AuthorizationProviderId'] = stub[:authorization_provider_id] unless stub[:authorization_provider_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateWebsiteCertificateAuthority
    class AssociateWebsiteCertificateAuthority
      def self.default(visited=[])
        {
          website_ca_id: 'website_ca_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WebsiteCaId'] = stub[:website_ca_id] unless stub[:website_ca_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFleet
    class CreateFleet
      def self.default(visited=[])
        {
          fleet_arn: 'fleet_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFleet
    class DeleteFleet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAuditStreamConfiguration
    class DescribeAuditStreamConfiguration
      def self.default(visited=[])
        {
          audit_stream_arn: 'audit_stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AuditStreamArn'] = stub[:audit_stream_arn] unless stub[:audit_stream_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeCompanyNetworkConfiguration
    class DescribeCompanyNetworkConfiguration
      def self.default(visited=[])
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = Stubs::SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # Operation Stubber for DescribeDevice
    class DescribeDevice
      def self.default(visited=[])
        {
          status: 'status',
          model: 'model',
          manufacturer: 'manufacturer',
          operating_system: 'operating_system',
          operating_system_version: 'operating_system_version',
          patch_level: 'patch_level',
          first_accessed_time: Time.now,
          last_accessed_time: Time.now,
          username: 'username',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Model'] = stub[:model] unless stub[:model].nil?
        data['Manufacturer'] = stub[:manufacturer] unless stub[:manufacturer].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['OperatingSystemVersion'] = stub[:operating_system_version] unless stub[:operating_system_version].nil?
        data['PatchLevel'] = stub[:patch_level] unless stub[:patch_level].nil?
        data['FirstAccessedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_accessed_time]).to_i unless stub[:first_accessed_time].nil?
        data['LastAccessedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_time]).to_i unless stub[:last_accessed_time].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDevicePolicyConfiguration
    class DescribeDevicePolicyConfiguration
      def self.default(visited=[])
        {
          device_ca_certificate: 'device_ca_certificate',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceCaCertificate'] = stub[:device_ca_certificate] unless stub[:device_ca_certificate].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          display_name: 'display_name',
          created_time: Time.now,
          domain_status: 'domain_status',
          acm_certificate_arn: 'acm_certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['DomainStatus'] = stub[:domain_status] unless stub[:domain_status].nil?
        data['AcmCertificateArn'] = stub[:acm_certificate_arn] unless stub[:acm_certificate_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFleetMetadata
    class DescribeFleetMetadata
      def self.default(visited=[])
        {
          created_time: Time.now,
          last_updated_time: Time.now,
          fleet_name: 'fleet_name',
          display_name: 'display_name',
          optimize_for_end_user_location: false,
          company_code: 'company_code',
          fleet_status: 'fleet_status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['FleetName'] = stub[:fleet_name] unless stub[:fleet_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['OptimizeForEndUserLocation'] = stub[:optimize_for_end_user_location] unless stub[:optimize_for_end_user_location].nil?
        data['CompanyCode'] = stub[:company_code] unless stub[:company_code].nil?
        data['FleetStatus'] = stub[:fleet_status] unless stub[:fleet_status].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for DescribeIdentityProviderConfiguration
    class DescribeIdentityProviderConfiguration
      def self.default(visited=[])
        {
          identity_provider_type: 'identity_provider_type',
          service_provider_saml_metadata: 'service_provider_saml_metadata',
          identity_provider_saml_metadata: 'identity_provider_saml_metadata',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityProviderType'] = stub[:identity_provider_type] unless stub[:identity_provider_type].nil?
        data['ServiceProviderSamlMetadata'] = stub[:service_provider_saml_metadata] unless stub[:service_provider_saml_metadata].nil?
        data['IdentityProviderSamlMetadata'] = stub[:identity_provider_saml_metadata] unless stub[:identity_provider_saml_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeWebsiteCertificateAuthority
    class DescribeWebsiteCertificateAuthority
      def self.default(visited=[])
        {
          certificate: 'certificate',
          created_time: Time.now,
          display_name: 'display_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateDomain
    class DisassociateDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateWebsiteAuthorizationProvider
    class DisassociateWebsiteAuthorizationProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateWebsiteCertificateAuthority
    class DisassociateWebsiteCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: DeviceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Devices'] = Stubs::DeviceSummaryList.stub(stub[:devices]) unless stub[:devices].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceSummaryList
    class DeviceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummaryList')
        visited = visited + ['DeviceSummaryList']
        [
          DeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceSummary
    class DeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummary')
        visited = visited + ['DeviceSummary']
        {
          device_id: 'device_id',
          device_status: 'device_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceSummary.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['DeviceStatus'] = stub[:device_status] unless stub[:device_status].nil?
        data
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domains: DomainSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Domains'] = Stubs::DomainSummaryList.stub(stub[:domains]) unless stub[:domains].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainSummaryList
    class DomainSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DomainSummaryList')
        visited = visited + ['DomainSummaryList']
        [
          DomainSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainSummary
    class DomainSummary
      def self.default(visited=[])
        return nil if visited.include?('DomainSummary')
        visited = visited + ['DomainSummary']
        {
          domain_name: 'domain_name',
          display_name: 'display_name',
          created_time: Time.now,
          domain_status: 'domain_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSummary.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['DomainStatus'] = stub[:domain_status] unless stub[:domain_status].nil?
        data
      end
    end

    # Operation Stubber for ListFleets
    class ListFleets
      def self.default(visited=[])
        {
          fleet_summary_list: FleetSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FleetSummaryList'] = Stubs::FleetSummaryList.stub(stub[:fleet_summary_list]) unless stub[:fleet_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FleetSummaryList
    class FleetSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FleetSummaryList')
        visited = visited + ['FleetSummaryList']
        [
          FleetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FleetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetSummary
    class FleetSummary
      def self.default(visited=[])
        return nil if visited.include?('FleetSummary')
        visited = visited + ['FleetSummary']
        {
          fleet_arn: 'fleet_arn',
          created_time: Time.now,
          last_updated_time: Time.now,
          fleet_name: 'fleet_name',
          display_name: 'display_name',
          company_code: 'company_code',
          fleet_status: 'fleet_status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetSummary.new
        data = {}
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['FleetName'] = stub[:fleet_name] unless stub[:fleet_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['CompanyCode'] = stub[:company_code] unless stub[:company_code].nil?
        data['FleetStatus'] = stub[:fleet_status] unless stub[:fleet_status].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWebsiteAuthorizationProviders
    class ListWebsiteAuthorizationProviders
      def self.default(visited=[])
        {
          website_authorization_providers: WebsiteAuthorizationProvidersSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WebsiteAuthorizationProviders'] = Stubs::WebsiteAuthorizationProvidersSummaryList.stub(stub[:website_authorization_providers]) unless stub[:website_authorization_providers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WebsiteAuthorizationProvidersSummaryList
    class WebsiteAuthorizationProvidersSummaryList
      def self.default(visited=[])
        return nil if visited.include?('WebsiteAuthorizationProvidersSummaryList')
        visited = visited + ['WebsiteAuthorizationProvidersSummaryList']
        [
          WebsiteAuthorizationProviderSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WebsiteAuthorizationProviderSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WebsiteAuthorizationProviderSummary
    class WebsiteAuthorizationProviderSummary
      def self.default(visited=[])
        return nil if visited.include?('WebsiteAuthorizationProviderSummary')
        visited = visited + ['WebsiteAuthorizationProviderSummary']
        {
          authorization_provider_id: 'authorization_provider_id',
          authorization_provider_type: 'authorization_provider_type',
          domain_name: 'domain_name',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WebsiteAuthorizationProviderSummary.new
        data = {}
        data['AuthorizationProviderId'] = stub[:authorization_provider_id] unless stub[:authorization_provider_id].nil?
        data['AuthorizationProviderType'] = stub[:authorization_provider_type] unless stub[:authorization_provider_type].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListWebsiteCertificateAuthorities
    class ListWebsiteCertificateAuthorities
      def self.default(visited=[])
        {
          website_certificate_authorities: WebsiteCaSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WebsiteCertificateAuthorities'] = Stubs::WebsiteCaSummaryList.stub(stub[:website_certificate_authorities]) unless stub[:website_certificate_authorities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WebsiteCaSummaryList
    class WebsiteCaSummaryList
      def self.default(visited=[])
        return nil if visited.include?('WebsiteCaSummaryList')
        visited = visited + ['WebsiteCaSummaryList']
        [
          WebsiteCaSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WebsiteCaSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WebsiteCaSummary
    class WebsiteCaSummary
      def self.default(visited=[])
        return nil if visited.include?('WebsiteCaSummary')
        visited = visited + ['WebsiteCaSummary']
        {
          website_ca_id: 'website_ca_id',
          created_time: Time.now,
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebsiteCaSummary.new
        data = {}
        data['WebsiteCaId'] = stub[:website_ca_id] unless stub[:website_ca_id].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # Operation Stubber for RestoreDomainAccess
    class RestoreDomainAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeDomainAccess
    class RevokeDomainAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SignOutUser
    class SignOutUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for UpdateAuditStreamConfiguration
    class UpdateAuditStreamConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCompanyNetworkConfiguration
    class UpdateCompanyNetworkConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDevicePolicyConfiguration
    class UpdateDevicePolicyConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainMetadata
    class UpdateDomainMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleetMetadata
    class UpdateFleetMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIdentityProviderConfiguration
    class UpdateIdentityProviderConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
