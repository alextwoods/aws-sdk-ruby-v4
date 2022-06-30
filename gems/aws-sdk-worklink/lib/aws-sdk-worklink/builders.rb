# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WorkLink
  module Builders

    # Operation Builder for AssociateDomain
    class AssociateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associateDomain')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['AcmCertificateArn'] = input[:acm_certificate_arn] unless input[:acm_certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWebsiteAuthorizationProvider
    class AssociateWebsiteAuthorizationProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associateWebsiteAuthorizationProvider')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['AuthorizationProviderType'] = input[:authorization_provider_type] unless input[:authorization_provider_type].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateWebsiteCertificateAuthority
    class AssociateWebsiteCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associateWebsiteCertificateAuthority')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFleet
    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createFleet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['OptimizeForEndUserLocation'] = input[:optimize_for_end_user_location] unless input[:optimize_for_end_user_location].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteFleet
    class DeleteFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteFleet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAuditStreamConfiguration
    class DescribeAuditStreamConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeAuditStreamConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCompanyNetworkConfiguration
    class DescribeCompanyNetworkConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeCompanyNetworkConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDevice
    class DescribeDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeDevice')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDevicePolicyConfiguration
    class DescribeDevicePolicyConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeDevicePolicyConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeDomain')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetMetadata
    class DescribeFleetMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeFleetMetadata')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeIdentityProviderConfiguration
    class DescribeIdentityProviderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeIdentityProviderConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWebsiteCertificateAuthority
    class DescribeWebsiteCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeWebsiteCertificateAuthority')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['WebsiteCaId'] = input[:website_ca_id] unless input[:website_ca_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDomain
    class DisassociateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociateDomain')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateWebsiteAuthorizationProvider
    class DisassociateWebsiteAuthorizationProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociateWebsiteAuthorizationProvider')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['AuthorizationProviderId'] = input[:authorization_provider_id] unless input[:authorization_provider_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateWebsiteCertificateAuthority
    class DisassociateWebsiteCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociateWebsiteCertificateAuthority')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['WebsiteCaId'] = input[:website_ca_id] unless input[:website_ca_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listDevices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listDomains')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFleets
    class ListFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listFleets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for ListWebsiteAuthorizationProviders
    class ListWebsiteAuthorizationProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWebsiteAuthorizationProviders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWebsiteCertificateAuthorities
    class ListWebsiteCertificateAuthorities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWebsiteCertificateAuthorities')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreDomainAccess
    class RestoreDomainAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/restoreDomainAccess')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeDomainAccess
    class RevokeDomainAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/revokeDomainAccess')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SignOutUser
    class SignOutUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/signOutUser')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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

    # Operation Builder for UpdateAuditStreamConfiguration
    class UpdateAuditStreamConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateAuditStreamConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['AuditStreamArn'] = input[:audit_stream_arn] unless input[:audit_stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCompanyNetworkConfiguration
    class UpdateCompanyNetworkConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateCompanyNetworkConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
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

    # Operation Builder for UpdateDevicePolicyConfiguration
    class UpdateDevicePolicyConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateDevicePolicyConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DeviceCaCertificate'] = input[:device_ca_certificate] unless input[:device_ca_certificate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainMetadata
    class UpdateDomainMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateDomainMetadata')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFleetMetadata
    class UpdateFleetMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateFleetMetadata')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['OptimizeForEndUserLocation'] = input[:optimize_for_end_user_location] unless input[:optimize_for_end_user_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIdentityProviderConfiguration
    class UpdateIdentityProviderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateIdentityProviderConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FleetArn'] = input[:fleet_arn] unless input[:fleet_arn].nil?
        data['IdentityProviderType'] = input[:identity_provider_type] unless input[:identity_provider_type].nil?
        data['IdentityProviderSamlMetadata'] = input[:identity_provider_saml_metadata] unless input[:identity_provider_saml_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
