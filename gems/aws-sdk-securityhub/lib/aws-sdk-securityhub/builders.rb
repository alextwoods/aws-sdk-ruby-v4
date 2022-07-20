# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecurityHub
  module Builders

    # Operation Builder for AcceptAdministratorInvitation
    class AcceptAdministratorInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/administrator')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AdministratorId'] = input[:administrator_id] unless input[:administrator_id].nil?
        data['InvitationId'] = input[:invitation_id] unless input[:invitation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AcceptInvitation
    class AcceptInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/master')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MasterId'] = input[:master_id] unless input[:master_id].nil?
        data['InvitationId'] = input[:invitation_id] unless input[:invitation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDisableStandards
    class BatchDisableStandards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/standards/deregister')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StandardsSubscriptionArns'] = Builders::StandardsSubscriptionArns.build(input[:standards_subscription_arns]) unless input[:standards_subscription_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StandardsSubscriptionArns
    class StandardsSubscriptionArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchEnableStandards
    class BatchEnableStandards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/standards/register')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StandardsSubscriptionRequests'] = Builders::StandardsSubscriptionRequests.build(input[:standards_subscription_requests]) unless input[:standards_subscription_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StandardsSubscriptionRequests
    class StandardsSubscriptionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StandardsSubscriptionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StandardsSubscriptionRequest
    class StandardsSubscriptionRequest
      def self.build(input)
        data = {}
        data['StandardsArn'] = input[:standards_arn] unless input[:standards_arn].nil?
        data['StandardsInput'] = Builders::StandardsInputParameterMap.build(input[:standards_input]) unless input[:standards_input].nil?
        data
      end
    end

    # Map Builder for StandardsInputParameterMap
    class StandardsInputParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for BatchImportFindings
    class BatchImportFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/import')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Findings'] = Builders::BatchImportFindingsRequestFindingList.build(input[:findings]) unless input[:findings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchImportFindingsRequestFindingList
    class BatchImportFindingsRequestFindingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsSecurityFinding.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsSecurityFinding
    class AwsSecurityFinding
      def self.build(input)
        data = {}
        data['SchemaVersion'] = input[:schema_version] unless input[:schema_version].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['ProductArn'] = input[:product_arn] unless input[:product_arn].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['CompanyName'] = input[:company_name] unless input[:company_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['GeneratorId'] = input[:generator_id] unless input[:generator_id].nil?
        data['AwsAccountId'] = input[:aws_account_id] unless input[:aws_account_id].nil?
        data['Types'] = Builders::TypeList.build(input[:types]) unless input[:types].nil?
        data['FirstObservedAt'] = input[:first_observed_at] unless input[:first_observed_at].nil?
        data['LastObservedAt'] = input[:last_observed_at] unless input[:last_observed_at].nil?
        data['CreatedAt'] = input[:created_at] unless input[:created_at].nil?
        data['UpdatedAt'] = input[:updated_at] unless input[:updated_at].nil?
        data['Severity'] = Builders::Severity.build(input[:severity]) unless input[:severity].nil?
        data['Confidence'] = input[:confidence] unless input[:confidence].nil?
        data['Criticality'] = input[:criticality] unless input[:criticality].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Remediation'] = Builders::Remediation.build(input[:remediation]) unless input[:remediation].nil?
        data['SourceUrl'] = input[:source_url] unless input[:source_url].nil?
        data['ProductFields'] = Builders::FieldMap.build(input[:product_fields]) unless input[:product_fields].nil?
        data['UserDefinedFields'] = Builders::FieldMap.build(input[:user_defined_fields]) unless input[:user_defined_fields].nil?
        data['Malware'] = Builders::MalwareList.build(input[:malware]) unless input[:malware].nil?
        data['Network'] = Builders::Network.build(input[:network]) unless input[:network].nil?
        data['NetworkPath'] = Builders::NetworkPathList.build(input[:network_path]) unless input[:network_path].nil?
        data['Process'] = Builders::ProcessDetails.build(input[:process]) unless input[:process].nil?
        data['ThreatIntelIndicators'] = Builders::ThreatIntelIndicatorList.build(input[:threat_intel_indicators]) unless input[:threat_intel_indicators].nil?
        data['Resources'] = Builders::ResourceList.build(input[:resources]) unless input[:resources].nil?
        data['Compliance'] = Builders::Compliance.build(input[:compliance]) unless input[:compliance].nil?
        data['VerificationState'] = input[:verification_state] unless input[:verification_state].nil?
        data['WorkflowState'] = input[:workflow_state] unless input[:workflow_state].nil?
        data['Workflow'] = Builders::Workflow.build(input[:workflow]) unless input[:workflow].nil?
        data['RecordState'] = input[:record_state] unless input[:record_state].nil?
        data['RelatedFindings'] = Builders::RelatedFindingList.build(input[:related_findings]) unless input[:related_findings].nil?
        data['Note'] = Builders::Note.build(input[:note]) unless input[:note].nil?
        data['Vulnerabilities'] = Builders::VulnerabilityList.build(input[:vulnerabilities]) unless input[:vulnerabilities].nil?
        data['PatchSummary'] = Builders::PatchSummary.build(input[:patch_summary]) unless input[:patch_summary].nil?
        data['Action'] = Builders::Action.build(input[:action]) unless input[:action].nil?
        data['FindingProviderFields'] = Builders::FindingProviderFields.build(input[:finding_provider_fields]) unless input[:finding_provider_fields].nil?
        data['Sample'] = input[:sample] unless input[:sample].nil?
        data
      end
    end

    # Structure Builder for FindingProviderFields
    class FindingProviderFields
      def self.build(input)
        data = {}
        data['Confidence'] = input[:confidence] unless input[:confidence].nil?
        data['Criticality'] = input[:criticality] unless input[:criticality].nil?
        data['RelatedFindings'] = Builders::RelatedFindingList.build(input[:related_findings]) unless input[:related_findings].nil?
        data['Severity'] = Builders::FindingProviderSeverity.build(input[:severity]) unless input[:severity].nil?
        data['Types'] = Builders::TypeList.build(input[:types]) unless input[:types].nil?
        data
      end
    end

    # List Builder for TypeList
    class TypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FindingProviderSeverity
    class FindingProviderSeverity
      def self.build(input)
        data = {}
        data['Label'] = input[:label] unless input[:label].nil?
        data['Original'] = input[:original] unless input[:original].nil?
        data
      end
    end

    # List Builder for RelatedFindingList
    class RelatedFindingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RelatedFinding.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RelatedFinding
    class RelatedFinding
      def self.build(input)
        data = {}
        data['ProductArn'] = input[:product_arn] unless input[:product_arn].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['ActionType'] = input[:action_type] unless input[:action_type].nil?
        data['NetworkConnectionAction'] = Builders::NetworkConnectionAction.build(input[:network_connection_action]) unless input[:network_connection_action].nil?
        data['AwsApiCallAction'] = Builders::AwsApiCallAction.build(input[:aws_api_call_action]) unless input[:aws_api_call_action].nil?
        data['DnsRequestAction'] = Builders::DnsRequestAction.build(input[:dns_request_action]) unless input[:dns_request_action].nil?
        data['PortProbeAction'] = Builders::PortProbeAction.build(input[:port_probe_action]) unless input[:port_probe_action].nil?
        data
      end
    end

    # Structure Builder for PortProbeAction
    class PortProbeAction
      def self.build(input)
        data = {}
        data['PortProbeDetails'] = Builders::PortProbeDetailList.build(input[:port_probe_details]) unless input[:port_probe_details].nil?
        data['Blocked'] = input[:blocked] unless input[:blocked].nil?
        data
      end
    end

    # List Builder for PortProbeDetailList
    class PortProbeDetailList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PortProbeDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortProbeDetail
    class PortProbeDetail
      def self.build(input)
        data = {}
        data['LocalPortDetails'] = Builders::ActionLocalPortDetails.build(input[:local_port_details]) unless input[:local_port_details].nil?
        data['LocalIpDetails'] = Builders::ActionLocalIpDetails.build(input[:local_ip_details]) unless input[:local_ip_details].nil?
        data['RemoteIpDetails'] = Builders::ActionRemoteIpDetails.build(input[:remote_ip_details]) unless input[:remote_ip_details].nil?
        data
      end
    end

    # Structure Builder for ActionRemoteIpDetails
    class ActionRemoteIpDetails
      def self.build(input)
        data = {}
        data['IpAddressV4'] = input[:ip_address_v4] unless input[:ip_address_v4].nil?
        data['Organization'] = Builders::IpOrganizationDetails.build(input[:organization]) unless input[:organization].nil?
        data['Country'] = Builders::Country.build(input[:country]) unless input[:country].nil?
        data['City'] = Builders::City.build(input[:city]) unless input[:city].nil?
        data['GeoLocation'] = Builders::GeoLocation.build(input[:geo_location]) unless input[:geo_location].nil?
        data
      end
    end

    # Structure Builder for GeoLocation
    class GeoLocation
      def self.build(input)
        data = {}
        data['Lon'] = Hearth::NumberHelper.serialize(input[:lon]) unless input[:lon].nil?
        data['Lat'] = Hearth::NumberHelper.serialize(input[:lat]) unless input[:lat].nil?
        data
      end
    end

    # Structure Builder for City
    class City
      def self.build(input)
        data = {}
        data['CityName'] = input[:city_name] unless input[:city_name].nil?
        data
      end
    end

    # Structure Builder for Country
    class Country
      def self.build(input)
        data = {}
        data['CountryCode'] = input[:country_code] unless input[:country_code].nil?
        data['CountryName'] = input[:country_name] unless input[:country_name].nil?
        data
      end
    end

    # Structure Builder for IpOrganizationDetails
    class IpOrganizationDetails
      def self.build(input)
        data = {}
        data['Asn'] = input[:asn] unless input[:asn].nil?
        data['AsnOrg'] = input[:asn_org] unless input[:asn_org].nil?
        data['Isp'] = input[:isp] unless input[:isp].nil?
        data['Org'] = input[:org] unless input[:org].nil?
        data
      end
    end

    # Structure Builder for ActionLocalIpDetails
    class ActionLocalIpDetails
      def self.build(input)
        data = {}
        data['IpAddressV4'] = input[:ip_address_v4] unless input[:ip_address_v4].nil?
        data
      end
    end

    # Structure Builder for ActionLocalPortDetails
    class ActionLocalPortDetails
      def self.build(input)
        data = {}
        data['Port'] = input[:port] unless input[:port].nil?
        data['PortName'] = input[:port_name] unless input[:port_name].nil?
        data
      end
    end

    # Structure Builder for DnsRequestAction
    class DnsRequestAction
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Blocked'] = input[:blocked] unless input[:blocked].nil?
        data
      end
    end

    # Structure Builder for AwsApiCallAction
    class AwsApiCallAction
      def self.build(input)
        data = {}
        data['Api'] = input[:api] unless input[:api].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['CallerType'] = input[:caller_type] unless input[:caller_type].nil?
        data['RemoteIpDetails'] = Builders::ActionRemoteIpDetails.build(input[:remote_ip_details]) unless input[:remote_ip_details].nil?
        data['DomainDetails'] = Builders::AwsApiCallActionDomainDetails.build(input[:domain_details]) unless input[:domain_details].nil?
        data['AffectedResources'] = Builders::FieldMap.build(input[:affected_resources]) unless input[:affected_resources].nil?
        data['FirstSeen'] = input[:first_seen] unless input[:first_seen].nil?
        data['LastSeen'] = input[:last_seen] unless input[:last_seen].nil?
        data
      end
    end

    # Map Builder for FieldMap
    class FieldMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AwsApiCallActionDomainDetails
    class AwsApiCallActionDomainDetails
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data
      end
    end

    # Structure Builder for NetworkConnectionAction
    class NetworkConnectionAction
      def self.build(input)
        data = {}
        data['ConnectionDirection'] = input[:connection_direction] unless input[:connection_direction].nil?
        data['RemoteIpDetails'] = Builders::ActionRemoteIpDetails.build(input[:remote_ip_details]) unless input[:remote_ip_details].nil?
        data['RemotePortDetails'] = Builders::ActionRemotePortDetails.build(input[:remote_port_details]) unless input[:remote_port_details].nil?
        data['LocalPortDetails'] = Builders::ActionLocalPortDetails.build(input[:local_port_details]) unless input[:local_port_details].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Blocked'] = input[:blocked] unless input[:blocked].nil?
        data
      end
    end

    # Structure Builder for ActionRemotePortDetails
    class ActionRemotePortDetails
      def self.build(input)
        data = {}
        data['Port'] = input[:port] unless input[:port].nil?
        data['PortName'] = input[:port_name] unless input[:port_name].nil?
        data
      end
    end

    # Structure Builder for PatchSummary
    class PatchSummary
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['InstalledCount'] = input[:installed_count] unless input[:installed_count].nil?
        data['MissingCount'] = input[:missing_count] unless input[:missing_count].nil?
        data['FailedCount'] = input[:failed_count] unless input[:failed_count].nil?
        data['InstalledOtherCount'] = input[:installed_other_count] unless input[:installed_other_count].nil?
        data['InstalledRejectedCount'] = input[:installed_rejected_count] unless input[:installed_rejected_count].nil?
        data['InstalledPendingReboot'] = input[:installed_pending_reboot] unless input[:installed_pending_reboot].nil?
        data['OperationStartTime'] = input[:operation_start_time] unless input[:operation_start_time].nil?
        data['OperationEndTime'] = input[:operation_end_time] unless input[:operation_end_time].nil?
        data['RebootOption'] = input[:reboot_option] unless input[:reboot_option].nil?
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data
      end
    end

    # List Builder for VulnerabilityList
    class VulnerabilityList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Vulnerability.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Vulnerability
    class Vulnerability
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['VulnerablePackages'] = Builders::SoftwarePackageList.build(input[:vulnerable_packages]) unless input[:vulnerable_packages].nil?
        data['Cvss'] = Builders::CvssList.build(input[:cvss]) unless input[:cvss].nil?
        data['RelatedVulnerabilities'] = Builders::StringList.build(input[:related_vulnerabilities]) unless input[:related_vulnerabilities].nil?
        data['Vendor'] = Builders::VulnerabilityVendor.build(input[:vendor]) unless input[:vendor].nil?
        data['ReferenceUrls'] = Builders::StringList.build(input[:reference_urls]) unless input[:reference_urls].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VulnerabilityVendor
    class VulnerabilityVendor
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data['VendorSeverity'] = input[:vendor_severity] unless input[:vendor_severity].nil?
        data['VendorCreatedAt'] = input[:vendor_created_at] unless input[:vendor_created_at].nil?
        data['VendorUpdatedAt'] = input[:vendor_updated_at] unless input[:vendor_updated_at].nil?
        data
      end
    end

    # List Builder for CvssList
    class CvssList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Cvss.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Cvss
    class Cvss
      def self.build(input)
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data['BaseScore'] = Hearth::NumberHelper.serialize(input[:base_score]) unless input[:base_score].nil?
        data['BaseVector'] = input[:base_vector] unless input[:base_vector].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['Adjustments'] = Builders::AdjustmentList.build(input[:adjustments]) unless input[:adjustments].nil?
        data
      end
    end

    # List Builder for AdjustmentList
    class AdjustmentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Adjustment.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Adjustment
    class Adjustment
      def self.build(input)
        data = {}
        data['Metric'] = input[:metric] unless input[:metric].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data
      end
    end

    # List Builder for SoftwarePackageList
    class SoftwarePackageList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SoftwarePackage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SoftwarePackage
    class SoftwarePackage
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['Epoch'] = input[:epoch] unless input[:epoch].nil?
        data['Release'] = input[:release] unless input[:release].nil?
        data['Architecture'] = input[:architecture] unless input[:architecture].nil?
        data['PackageManager'] = input[:package_manager] unless input[:package_manager].nil?
        data['FilePath'] = input[:file_path] unless input[:file_path].nil?
        data
      end
    end

    # Structure Builder for Note
    class Note
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['UpdatedBy'] = input[:updated_by] unless input[:updated_by].nil?
        data['UpdatedAt'] = input[:updated_at] unless input[:updated_at].nil?
        data
      end
    end

    # Structure Builder for Workflow
    class Workflow
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for Compliance
    class Compliance
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['RelatedRequirements'] = Builders::RelatedRequirementsList.build(input[:related_requirements]) unless input[:related_requirements].nil?
        data['StatusReasons'] = Builders::StatusReasonsList.build(input[:status_reasons]) unless input[:status_reasons].nil?
        data
      end
    end

    # List Builder for StatusReasonsList
    class StatusReasonsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StatusReason.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatusReason
    class StatusReason
      def self.build(input)
        data = {}
        data['ReasonCode'] = input[:reason_code] unless input[:reason_code].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # List Builder for RelatedRequirementsList
    class RelatedRequirementsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceList
    class ResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Partition'] = input[:partition] unless input[:partition].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['ResourceRole'] = input[:resource_role] unless input[:resource_role].nil?
        data['Tags'] = Builders::FieldMap.build(input[:tags]) unless input[:tags].nil?
        data['DataClassification'] = Builders::DataClassificationDetails.build(input[:data_classification]) unless input[:data_classification].nil?
        data['Details'] = Builders::ResourceDetails.build(input[:details]) unless input[:details].nil?
        data
      end
    end

    # Structure Builder for ResourceDetails
    class ResourceDetails
      def self.build(input)
        data = {}
        data['AwsAutoScalingAutoScalingGroup'] = Builders::AwsAutoScalingAutoScalingGroupDetails.build(input[:aws_auto_scaling_auto_scaling_group]) unless input[:aws_auto_scaling_auto_scaling_group].nil?
        data['AwsCodeBuildProject'] = Builders::AwsCodeBuildProjectDetails.build(input[:aws_code_build_project]) unless input[:aws_code_build_project].nil?
        data['AwsCloudFrontDistribution'] = Builders::AwsCloudFrontDistributionDetails.build(input[:aws_cloud_front_distribution]) unless input[:aws_cloud_front_distribution].nil?
        data['AwsEc2Instance'] = Builders::AwsEc2InstanceDetails.build(input[:aws_ec2_instance]) unless input[:aws_ec2_instance].nil?
        data['AwsEc2NetworkInterface'] = Builders::AwsEc2NetworkInterfaceDetails.build(input[:aws_ec2_network_interface]) unless input[:aws_ec2_network_interface].nil?
        data['AwsEc2SecurityGroup'] = Builders::AwsEc2SecurityGroupDetails.build(input[:aws_ec2_security_group]) unless input[:aws_ec2_security_group].nil?
        data['AwsEc2Volume'] = Builders::AwsEc2VolumeDetails.build(input[:aws_ec2_volume]) unless input[:aws_ec2_volume].nil?
        data['AwsEc2Vpc'] = Builders::AwsEc2VpcDetails.build(input[:aws_ec2_vpc]) unless input[:aws_ec2_vpc].nil?
        data['AwsEc2Eip'] = Builders::AwsEc2EipDetails.build(input[:aws_ec2_eip]) unless input[:aws_ec2_eip].nil?
        data['AwsEc2Subnet'] = Builders::AwsEc2SubnetDetails.build(input[:aws_ec2_subnet]) unless input[:aws_ec2_subnet].nil?
        data['AwsEc2NetworkAcl'] = Builders::AwsEc2NetworkAclDetails.build(input[:aws_ec2_network_acl]) unless input[:aws_ec2_network_acl].nil?
        data['AwsElbv2LoadBalancer'] = Builders::AwsElbv2LoadBalancerDetails.build(input[:aws_elbv2_load_balancer]) unless input[:aws_elbv2_load_balancer].nil?
        data['AwsElasticBeanstalkEnvironment'] = Builders::AwsElasticBeanstalkEnvironmentDetails.build(input[:aws_elastic_beanstalk_environment]) unless input[:aws_elastic_beanstalk_environment].nil?
        data['AwsElasticsearchDomain'] = Builders::AwsElasticsearchDomainDetails.build(input[:aws_elasticsearch_domain]) unless input[:aws_elasticsearch_domain].nil?
        data['AwsS3Bucket'] = Builders::AwsS3BucketDetails.build(input[:aws_s3_bucket]) unless input[:aws_s3_bucket].nil?
        data['AwsS3AccountPublicAccessBlock'] = Builders::AwsS3AccountPublicAccessBlockDetails.build(input[:aws_s3_account_public_access_block]) unless input[:aws_s3_account_public_access_block].nil?
        data['AwsS3Object'] = Builders::AwsS3ObjectDetails.build(input[:aws_s3_object]) unless input[:aws_s3_object].nil?
        data['AwsSecretsManagerSecret'] = Builders::AwsSecretsManagerSecretDetails.build(input[:aws_secrets_manager_secret]) unless input[:aws_secrets_manager_secret].nil?
        data['AwsIamAccessKey'] = Builders::AwsIamAccessKeyDetails.build(input[:aws_iam_access_key]) unless input[:aws_iam_access_key].nil?
        data['AwsIamUser'] = Builders::AwsIamUserDetails.build(input[:aws_iam_user]) unless input[:aws_iam_user].nil?
        data['AwsIamPolicy'] = Builders::AwsIamPolicyDetails.build(input[:aws_iam_policy]) unless input[:aws_iam_policy].nil?
        data['AwsApiGatewayV2Stage'] = Builders::AwsApiGatewayV2StageDetails.build(input[:aws_api_gateway_v2_stage]) unless input[:aws_api_gateway_v2_stage].nil?
        data['AwsApiGatewayV2Api'] = Builders::AwsApiGatewayV2ApiDetails.build(input[:aws_api_gateway_v2_api]) unless input[:aws_api_gateway_v2_api].nil?
        data['AwsDynamoDbTable'] = Builders::AwsDynamoDbTableDetails.build(input[:aws_dynamo_db_table]) unless input[:aws_dynamo_db_table].nil?
        data['AwsApiGatewayStage'] = Builders::AwsApiGatewayStageDetails.build(input[:aws_api_gateway_stage]) unless input[:aws_api_gateway_stage].nil?
        data['AwsApiGatewayRestApi'] = Builders::AwsApiGatewayRestApiDetails.build(input[:aws_api_gateway_rest_api]) unless input[:aws_api_gateway_rest_api].nil?
        data['AwsCloudTrailTrail'] = Builders::AwsCloudTrailTrailDetails.build(input[:aws_cloud_trail_trail]) unless input[:aws_cloud_trail_trail].nil?
        data['AwsSsmPatchCompliance'] = Builders::AwsSsmPatchComplianceDetails.build(input[:aws_ssm_patch_compliance]) unless input[:aws_ssm_patch_compliance].nil?
        data['AwsCertificateManagerCertificate'] = Builders::AwsCertificateManagerCertificateDetails.build(input[:aws_certificate_manager_certificate]) unless input[:aws_certificate_manager_certificate].nil?
        data['AwsRedshiftCluster'] = Builders::AwsRedshiftClusterDetails.build(input[:aws_redshift_cluster]) unless input[:aws_redshift_cluster].nil?
        data['AwsElbLoadBalancer'] = Builders::AwsElbLoadBalancerDetails.build(input[:aws_elb_load_balancer]) unless input[:aws_elb_load_balancer].nil?
        data['AwsIamGroup'] = Builders::AwsIamGroupDetails.build(input[:aws_iam_group]) unless input[:aws_iam_group].nil?
        data['AwsIamRole'] = Builders::AwsIamRoleDetails.build(input[:aws_iam_role]) unless input[:aws_iam_role].nil?
        data['AwsKmsKey'] = Builders::AwsKmsKeyDetails.build(input[:aws_kms_key]) unless input[:aws_kms_key].nil?
        data['AwsLambdaFunction'] = Builders::AwsLambdaFunctionDetails.build(input[:aws_lambda_function]) unless input[:aws_lambda_function].nil?
        data['AwsLambdaLayerVersion'] = Builders::AwsLambdaLayerVersionDetails.build(input[:aws_lambda_layer_version]) unless input[:aws_lambda_layer_version].nil?
        data['AwsRdsDbInstance'] = Builders::AwsRdsDbInstanceDetails.build(input[:aws_rds_db_instance]) unless input[:aws_rds_db_instance].nil?
        data['AwsSnsTopic'] = Builders::AwsSnsTopicDetails.build(input[:aws_sns_topic]) unless input[:aws_sns_topic].nil?
        data['AwsSqsQueue'] = Builders::AwsSqsQueueDetails.build(input[:aws_sqs_queue]) unless input[:aws_sqs_queue].nil?
        data['AwsWafWebAcl'] = Builders::AwsWafWebAclDetails.build(input[:aws_waf_web_acl]) unless input[:aws_waf_web_acl].nil?
        data['AwsRdsDbSnapshot'] = Builders::AwsRdsDbSnapshotDetails.build(input[:aws_rds_db_snapshot]) unless input[:aws_rds_db_snapshot].nil?
        data['AwsRdsDbClusterSnapshot'] = Builders::AwsRdsDbClusterSnapshotDetails.build(input[:aws_rds_db_cluster_snapshot]) unless input[:aws_rds_db_cluster_snapshot].nil?
        data['AwsRdsDbCluster'] = Builders::AwsRdsDbClusterDetails.build(input[:aws_rds_db_cluster]) unless input[:aws_rds_db_cluster].nil?
        data['AwsEcsCluster'] = Builders::AwsEcsClusterDetails.build(input[:aws_ecs_cluster]) unless input[:aws_ecs_cluster].nil?
        data['AwsEcsTaskDefinition'] = Builders::AwsEcsTaskDefinitionDetails.build(input[:aws_ecs_task_definition]) unless input[:aws_ecs_task_definition].nil?
        data['Container'] = Builders::ContainerDetails.build(input[:container]) unless input[:container].nil?
        data['Other'] = Builders::FieldMap.build(input[:other]) unless input[:other].nil?
        data['AwsRdsEventSubscription'] = Builders::AwsRdsEventSubscriptionDetails.build(input[:aws_rds_event_subscription]) unless input[:aws_rds_event_subscription].nil?
        data['AwsEcsService'] = Builders::AwsEcsServiceDetails.build(input[:aws_ecs_service]) unless input[:aws_ecs_service].nil?
        data['AwsAutoScalingLaunchConfiguration'] = Builders::AwsAutoScalingLaunchConfigurationDetails.build(input[:aws_auto_scaling_launch_configuration]) unless input[:aws_auto_scaling_launch_configuration].nil?
        data['AwsEc2VpnConnection'] = Builders::AwsEc2VpnConnectionDetails.build(input[:aws_ec2_vpn_connection]) unless input[:aws_ec2_vpn_connection].nil?
        data['AwsEcrContainerImage'] = Builders::AwsEcrContainerImageDetails.build(input[:aws_ecr_container_image]) unless input[:aws_ecr_container_image].nil?
        data['AwsOpenSearchServiceDomain'] = Builders::AwsOpenSearchServiceDomainDetails.build(input[:aws_open_search_service_domain]) unless input[:aws_open_search_service_domain].nil?
        data['AwsEc2VpcEndpointService'] = Builders::AwsEc2VpcEndpointServiceDetails.build(input[:aws_ec2_vpc_endpoint_service]) unless input[:aws_ec2_vpc_endpoint_service].nil?
        data['AwsXrayEncryptionConfig'] = Builders::AwsXrayEncryptionConfigDetails.build(input[:aws_xray_encryption_config]) unless input[:aws_xray_encryption_config].nil?
        data['AwsWafRateBasedRule'] = Builders::AwsWafRateBasedRuleDetails.build(input[:aws_waf_rate_based_rule]) unless input[:aws_waf_rate_based_rule].nil?
        data['AwsWafRegionalRateBasedRule'] = Builders::AwsWafRegionalRateBasedRuleDetails.build(input[:aws_waf_regional_rate_based_rule]) unless input[:aws_waf_regional_rate_based_rule].nil?
        data['AwsEcrRepository'] = Builders::AwsEcrRepositoryDetails.build(input[:aws_ecr_repository]) unless input[:aws_ecr_repository].nil?
        data['AwsEksCluster'] = Builders::AwsEksClusterDetails.build(input[:aws_eks_cluster]) unless input[:aws_eks_cluster].nil?
        data['AwsNetworkFirewallFirewallPolicy'] = Builders::AwsNetworkFirewallFirewallPolicyDetails.build(input[:aws_network_firewall_firewall_policy]) unless input[:aws_network_firewall_firewall_policy].nil?
        data['AwsNetworkFirewallFirewall'] = Builders::AwsNetworkFirewallFirewallDetails.build(input[:aws_network_firewall_firewall]) unless input[:aws_network_firewall_firewall].nil?
        data['AwsNetworkFirewallRuleGroup'] = Builders::AwsNetworkFirewallRuleGroupDetails.build(input[:aws_network_firewall_rule_group]) unless input[:aws_network_firewall_rule_group].nil?
        data['AwsRdsDbSecurityGroup'] = Builders::AwsRdsDbSecurityGroupDetails.build(input[:aws_rds_db_security_group]) unless input[:aws_rds_db_security_group].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbSecurityGroupDetails
    class AwsRdsDbSecurityGroupDetails
      def self.build(input)
        data = {}
        data['DbSecurityGroupArn'] = input[:db_security_group_arn] unless input[:db_security_group_arn].nil?
        data['DbSecurityGroupDescription'] = input[:db_security_group_description] unless input[:db_security_group_description].nil?
        data['DbSecurityGroupName'] = input[:db_security_group_name] unless input[:db_security_group_name].nil?
        data['Ec2SecurityGroups'] = Builders::AwsRdsDbSecurityGroupEc2SecurityGroups.build(input[:ec2_security_groups]) unless input[:ec2_security_groups].nil?
        data['IpRanges'] = Builders::AwsRdsDbSecurityGroupIpRanges.build(input[:ip_ranges]) unless input[:ip_ranges].nil?
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # List Builder for AwsRdsDbSecurityGroupIpRanges
    class AwsRdsDbSecurityGroupIpRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbSecurityGroupIpRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbSecurityGroupIpRange
    class AwsRdsDbSecurityGroupIpRange
      def self.build(input)
        data = {}
        data['CidrIp'] = input[:cidr_ip] unless input[:cidr_ip].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for AwsRdsDbSecurityGroupEc2SecurityGroups
    class AwsRdsDbSecurityGroupEc2SecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbSecurityGroupEc2SecurityGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbSecurityGroupEc2SecurityGroup
    class AwsRdsDbSecurityGroupEc2SecurityGroup
      def self.build(input)
        data = {}
        data['Ec2SecurityGroupId'] = input[:ec2_security_group_id] unless input[:ec2_security_group_id].nil?
        data['Ec2SecurityGroupName'] = input[:ec2_security_group_name] unless input[:ec2_security_group_name].nil?
        data['Ec2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id] unless input[:ec2_security_group_owner_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsNetworkFirewallRuleGroupDetails
    class AwsNetworkFirewallRuleGroupDetails
      def self.build(input)
        data = {}
        data['Capacity'] = input[:capacity] unless input[:capacity].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RuleGroup'] = Builders::RuleGroupDetails.build(input[:rule_group]) unless input[:rule_group].nil?
        data['RuleGroupArn'] = input[:rule_group_arn] unless input[:rule_group_arn].nil?
        data['RuleGroupId'] = input[:rule_group_id] unless input[:rule_group_id].nil?
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for RuleGroupDetails
    class RuleGroupDetails
      def self.build(input)
        data = {}
        data['RuleVariables'] = Builders::RuleGroupVariables.build(input[:rule_variables]) unless input[:rule_variables].nil?
        data['RulesSource'] = Builders::RuleGroupSource.build(input[:rules_source]) unless input[:rules_source].nil?
        data
      end
    end

    # Structure Builder for RuleGroupSource
    class RuleGroupSource
      def self.build(input)
        data = {}
        data['RulesSourceList'] = Builders::RuleGroupSourceListDetails.build(input[:rules_source_list]) unless input[:rules_source_list].nil?
        data['RulesString'] = input[:rules_string] unless input[:rules_string].nil?
        data['StatefulRules'] = Builders::RuleGroupSourceStatefulRulesList.build(input[:stateful_rules]) unless input[:stateful_rules].nil?
        data['StatelessRulesAndCustomActions'] = Builders::RuleGroupSourceStatelessRulesAndCustomActionsDetails.build(input[:stateless_rules_and_custom_actions]) unless input[:stateless_rules_and_custom_actions].nil?
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRulesAndCustomActionsDetails
    class RuleGroupSourceStatelessRulesAndCustomActionsDetails
      def self.build(input)
        data = {}
        data['CustomActions'] = Builders::RuleGroupSourceCustomActionsList.build(input[:custom_actions]) unless input[:custom_actions].nil?
        data['StatelessRules'] = Builders::RuleGroupSourceStatelessRulesList.build(input[:stateless_rules]) unless input[:stateless_rules].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRulesList
    class RuleGroupSourceStatelessRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRulesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRulesDetails
    class RuleGroupSourceStatelessRulesDetails
      def self.build(input)
        data = {}
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RuleDefinition'] = Builders::RuleGroupSourceStatelessRuleDefinition.build(input[:rule_definition]) unless input[:rule_definition].nil?
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleDefinition
    class RuleGroupSourceStatelessRuleDefinition
      def self.build(input)
        data = {}
        data['Actions'] = Builders::NonEmptyStringList.build(input[:actions]) unless input[:actions].nil?
        data['MatchAttributes'] = Builders::RuleGroupSourceStatelessRuleMatchAttributes.build(input[:match_attributes]) unless input[:match_attributes].nil?
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributes
    class RuleGroupSourceStatelessRuleMatchAttributes
      def self.build(input)
        data = {}
        data['DestinationPorts'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.build(input[:destination_ports]) unless input[:destination_ports].nil?
        data['Destinations'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.build(input[:destinations]) unless input[:destinations].nil?
        data['Protocols'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.build(input[:protocols]) unless input[:protocols].nil?
        data['SourcePorts'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.build(input[:source_ports]) unless input[:source_ports].nil?
        data['Sources'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesSourcesList.build(input[:sources]) unless input[:sources].nil?
        data['TcpFlags'] = Builders::RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.build(input[:tcp_flags]) unless input[:tcp_flags].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
      def self.build(input)
        data = {}
        data['Flags'] = Builders::NonEmptyStringList.build(input[:flags]) unless input[:flags].nil?
        data['Masks'] = Builders::NonEmptyStringList.build(input[:masks]) unless input[:masks].nil?
        data
      end
    end

    # List Builder for NonEmptyStringList
    class NonEmptyStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesSourcesList
    class RuleGroupSourceStatelessRuleMatchAttributesSourcesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRuleMatchAttributesSources.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributesSources
    class RuleGroupSourceStatelessRuleMatchAttributesSources
      def self.build(input)
        data = {}
        data['AddressDefinition'] = input[:address_definition] unless input[:address_definition].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
    class RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
    class RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
    class RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRuleMatchAttributesDestinations.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributesDestinations
    class RuleGroupSourceStatelessRuleMatchAttributesDestinations
      def self.build(input)
        data = {}
        data['AddressDefinition'] = input[:address_definition] unless input[:address_definition].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceCustomActionsList
    class RuleGroupSourceCustomActionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceCustomActionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceCustomActionsDetails
    class RuleGroupSourceCustomActionsDetails
      def self.build(input)
        data = {}
        data['ActionDefinition'] = Builders::StatelessCustomActionDefinition.build(input[:action_definition]) unless input[:action_definition].nil?
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        data
      end
    end

    # Structure Builder for StatelessCustomActionDefinition
    class StatelessCustomActionDefinition
      def self.build(input)
        data = {}
        data['PublishMetricAction'] = Builders::StatelessCustomPublishMetricAction.build(input[:publish_metric_action]) unless input[:publish_metric_action].nil?
        data
      end
    end

    # Structure Builder for StatelessCustomPublishMetricAction
    class StatelessCustomPublishMetricAction
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::StatelessCustomPublishMetricActionDimensionsList.build(input[:dimensions]) unless input[:dimensions].nil?
        data
      end
    end

    # List Builder for StatelessCustomPublishMetricActionDimensionsList
    class StatelessCustomPublishMetricActionDimensionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StatelessCustomPublishMetricActionDimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatelessCustomPublishMetricActionDimension
    class StatelessCustomPublishMetricActionDimension
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatefulRulesList
    class RuleGroupSourceStatefulRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatefulRulesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatefulRulesDetails
    class RuleGroupSourceStatefulRulesDetails
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Header'] = Builders::RuleGroupSourceStatefulRulesHeaderDetails.build(input[:header]) unless input[:header].nil?
        data['RuleOptions'] = Builders::RuleGroupSourceStatefulRulesOptionsList.build(input[:rule_options]) unless input[:rule_options].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatefulRulesOptionsList
    class RuleGroupSourceStatefulRulesOptionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupSourceStatefulRulesOptionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatefulRulesOptionsDetails
    class RuleGroupSourceStatefulRulesOptionsDetails
      def self.build(input)
        data = {}
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        data['Settings'] = Builders::RuleGroupSourceStatefulRulesRuleOptionsSettingsList.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # List Builder for RuleGroupSourceStatefulRulesRuleOptionsSettingsList
    class RuleGroupSourceStatefulRulesRuleOptionsSettingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupSourceStatefulRulesHeaderDetails
    class RuleGroupSourceStatefulRulesHeaderDetails
      def self.build(input)
        data = {}
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data['DestinationPort'] = input[:destination_port] unless input[:destination_port].nil?
        data['Direction'] = input[:direction] unless input[:direction].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['SourcePort'] = input[:source_port] unless input[:source_port].nil?
        data
      end
    end

    # Structure Builder for RuleGroupSourceListDetails
    class RuleGroupSourceListDetails
      def self.build(input)
        data = {}
        data['GeneratedRulesType'] = input[:generated_rules_type] unless input[:generated_rules_type].nil?
        data['TargetTypes'] = Builders::NonEmptyStringList.build(input[:target_types]) unless input[:target_types].nil?
        data['Targets'] = Builders::NonEmptyStringList.build(input[:targets]) unless input[:targets].nil?
        data
      end
    end

    # Structure Builder for RuleGroupVariables
    class RuleGroupVariables
      def self.build(input)
        data = {}
        data['IpSets'] = Builders::RuleGroupVariablesIpSetsDetails.build(input[:ip_sets]) unless input[:ip_sets].nil?
        data['PortSets'] = Builders::RuleGroupVariablesPortSetsDetails.build(input[:port_sets]) unless input[:port_sets].nil?
        data
      end
    end

    # Structure Builder for RuleGroupVariablesPortSetsDetails
    class RuleGroupVariablesPortSetsDetails
      def self.build(input)
        data = {}
        data['Definition'] = Builders::NonEmptyStringList.build(input[:definition]) unless input[:definition].nil?
        data
      end
    end

    # Structure Builder for RuleGroupVariablesIpSetsDetails
    class RuleGroupVariablesIpSetsDetails
      def self.build(input)
        data = {}
        data['Definition'] = Builders::NonEmptyStringList.build(input[:definition]) unless input[:definition].nil?
        data
      end
    end

    # Structure Builder for AwsNetworkFirewallFirewallDetails
    class AwsNetworkFirewallFirewallDetails
      def self.build(input)
        data = {}
        data['DeleteProtection'] = input[:delete_protection] unless input[:delete_protection].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallId'] = input[:firewall_id] unless input[:firewall_id].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        data['FirewallPolicyChangeProtection'] = input[:firewall_policy_change_protection] unless input[:firewall_policy_change_protection].nil?
        data['SubnetChangeProtection'] = input[:subnet_change_protection] unless input[:subnet_change_protection].nil?
        data['SubnetMappings'] = Builders::AwsNetworkFirewallFirewallSubnetMappingsList.build(input[:subnet_mappings]) unless input[:subnet_mappings].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # List Builder for AwsNetworkFirewallFirewallSubnetMappingsList
    class AwsNetworkFirewallFirewallSubnetMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsNetworkFirewallFirewallSubnetMappingsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsNetworkFirewallFirewallSubnetMappingsDetails
    class AwsNetworkFirewallFirewallSubnetMappingsDetails
      def self.build(input)
        data = {}
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data
      end
    end

    # Structure Builder for AwsNetworkFirewallFirewallPolicyDetails
    class AwsNetworkFirewallFirewallPolicyDetails
      def self.build(input)
        data = {}
        data['FirewallPolicy'] = Builders::FirewallPolicyDetails.build(input[:firewall_policy]) unless input[:firewall_policy].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        data['FirewallPolicyId'] = input[:firewall_policy_id] unless input[:firewall_policy_id].nil?
        data['FirewallPolicyName'] = input[:firewall_policy_name] unless input[:firewall_policy_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Structure Builder for FirewallPolicyDetails
    class FirewallPolicyDetails
      def self.build(input)
        data = {}
        data['StatefulRuleGroupReferences'] = Builders::FirewallPolicyStatefulRuleGroupReferencesList.build(input[:stateful_rule_group_references]) unless input[:stateful_rule_group_references].nil?
        data['StatelessCustomActions'] = Builders::FirewallPolicyStatelessCustomActionsList.build(input[:stateless_custom_actions]) unless input[:stateless_custom_actions].nil?
        data['StatelessDefaultActions'] = Builders::NonEmptyStringList.build(input[:stateless_default_actions]) unless input[:stateless_default_actions].nil?
        data['StatelessFragmentDefaultActions'] = Builders::NonEmptyStringList.build(input[:stateless_fragment_default_actions]) unless input[:stateless_fragment_default_actions].nil?
        data['StatelessRuleGroupReferences'] = Builders::FirewallPolicyStatelessRuleGroupReferencesList.build(input[:stateless_rule_group_references]) unless input[:stateless_rule_group_references].nil?
        data
      end
    end

    # List Builder for FirewallPolicyStatelessRuleGroupReferencesList
    class FirewallPolicyStatelessRuleGroupReferencesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FirewallPolicyStatelessRuleGroupReferencesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FirewallPolicyStatelessRuleGroupReferencesDetails
    class FirewallPolicyStatelessRuleGroupReferencesDetails
      def self.build(input)
        data = {}
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # List Builder for FirewallPolicyStatelessCustomActionsList
    class FirewallPolicyStatelessCustomActionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FirewallPolicyStatelessCustomActionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FirewallPolicyStatelessCustomActionsDetails
    class FirewallPolicyStatelessCustomActionsDetails
      def self.build(input)
        data = {}
        data['ActionDefinition'] = Builders::StatelessCustomActionDefinition.build(input[:action_definition]) unless input[:action_definition].nil?
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        data
      end
    end

    # List Builder for FirewallPolicyStatefulRuleGroupReferencesList
    class FirewallPolicyStatefulRuleGroupReferencesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FirewallPolicyStatefulRuleGroupReferencesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FirewallPolicyStatefulRuleGroupReferencesDetails
    class FirewallPolicyStatefulRuleGroupReferencesDetails
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Structure Builder for AwsEksClusterDetails
    class AwsEksClusterDetails
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['CertificateAuthorityData'] = input[:certificate_authority_data] unless input[:certificate_authority_data].nil?
        data['ClusterStatus'] = input[:cluster_status] unless input[:cluster_status].nil?
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ResourcesVpcConfig'] = Builders::AwsEksClusterResourcesVpcConfigDetails.build(input[:resources_vpc_config]) unless input[:resources_vpc_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['Logging'] = Builders::AwsEksClusterLoggingDetails.build(input[:logging]) unless input[:logging].nil?
        data
      end
    end

    # Structure Builder for AwsEksClusterLoggingDetails
    class AwsEksClusterLoggingDetails
      def self.build(input)
        data = {}
        data['ClusterLogging'] = Builders::AwsEksClusterLoggingClusterLoggingList.build(input[:cluster_logging]) unless input[:cluster_logging].nil?
        data
      end
    end

    # List Builder for AwsEksClusterLoggingClusterLoggingList
    class AwsEksClusterLoggingClusterLoggingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEksClusterLoggingClusterLoggingDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEksClusterLoggingClusterLoggingDetails
    class AwsEksClusterLoggingClusterLoggingDetails
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Types'] = Builders::NonEmptyStringList.build(input[:types]) unless input[:types].nil?
        data
      end
    end

    # Structure Builder for AwsEksClusterResourcesVpcConfigDetails
    class AwsEksClusterResourcesVpcConfigDetails
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::NonEmptyStringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['SubnetIds'] = Builders::NonEmptyStringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data
      end
    end

    # Structure Builder for AwsEcrRepositoryDetails
    class AwsEcrRepositoryDetails
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['ImageScanningConfiguration'] = Builders::AwsEcrRepositoryImageScanningConfigurationDetails.build(input[:image_scanning_configuration]) unless input[:image_scanning_configuration].nil?
        data['ImageTagMutability'] = input[:image_tag_mutability] unless input[:image_tag_mutability].nil?
        data['LifecyclePolicy'] = Builders::AwsEcrRepositoryLifecyclePolicyDetails.build(input[:lifecycle_policy]) unless input[:lifecycle_policy].nil?
        data['RepositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['RepositoryPolicyText'] = input[:repository_policy_text] unless input[:repository_policy_text].nil?
        data
      end
    end

    # Structure Builder for AwsEcrRepositoryLifecyclePolicyDetails
    class AwsEcrRepositoryLifecyclePolicyDetails
      def self.build(input)
        data = {}
        data['LifecyclePolicyText'] = input[:lifecycle_policy_text] unless input[:lifecycle_policy_text].nil?
        data['RegistryId'] = input[:registry_id] unless input[:registry_id].nil?
        data
      end
    end

    # Structure Builder for AwsEcrRepositoryImageScanningConfigurationDetails
    class AwsEcrRepositoryImageScanningConfigurationDetails
      def self.build(input)
        data = {}
        data['ScanOnPush'] = input[:scan_on_push] unless input[:scan_on_push].nil?
        data
      end
    end

    # Structure Builder for AwsWafRegionalRateBasedRuleDetails
    class AwsWafRegionalRateBasedRuleDetails
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RateKey'] = input[:rate_key] unless input[:rate_key].nil?
        data['RateLimit'] = input[:rate_limit] unless input[:rate_limit].nil?
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['MatchPredicates'] = Builders::AwsWafRegionalRateBasedRuleMatchPredicateList.build(input[:match_predicates]) unless input[:match_predicates].nil?
        data
      end
    end

    # List Builder for AwsWafRegionalRateBasedRuleMatchPredicateList
    class AwsWafRegionalRateBasedRuleMatchPredicateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsWafRegionalRateBasedRuleMatchPredicate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsWafRegionalRateBasedRuleMatchPredicate
    class AwsWafRegionalRateBasedRuleMatchPredicate
      def self.build(input)
        data = {}
        data['DataId'] = input[:data_id] unless input[:data_id].nil?
        data['Negated'] = input[:negated] unless input[:negated].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsWafRateBasedRuleDetails
    class AwsWafRateBasedRuleDetails
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RateKey'] = input[:rate_key] unless input[:rate_key].nil?
        data['RateLimit'] = input[:rate_limit] unless input[:rate_limit].nil?
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['MatchPredicates'] = Builders::AwsWafRateBasedRuleMatchPredicateList.build(input[:match_predicates]) unless input[:match_predicates].nil?
        data
      end
    end

    # List Builder for AwsWafRateBasedRuleMatchPredicateList
    class AwsWafRateBasedRuleMatchPredicateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsWafRateBasedRuleMatchPredicate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsWafRateBasedRuleMatchPredicate
    class AwsWafRateBasedRuleMatchPredicate
      def self.build(input)
        data = {}
        data['DataId'] = input[:data_id] unless input[:data_id].nil?
        data['Negated'] = input[:negated] unless input[:negated].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsXrayEncryptionConfigDetails
    class AwsXrayEncryptionConfigDetails
      def self.build(input)
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsEc2VpcEndpointServiceDetails
    class AwsEc2VpcEndpointServiceDetails
      def self.build(input)
        data = {}
        data['AcceptanceRequired'] = input[:acceptance_required] unless input[:acceptance_required].nil?
        data['AvailabilityZones'] = Builders::NonEmptyStringList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['BaseEndpointDnsNames'] = Builders::NonEmptyStringList.build(input[:base_endpoint_dns_names]) unless input[:base_endpoint_dns_names].nil?
        data['ManagesVpcEndpoints'] = input[:manages_vpc_endpoints] unless input[:manages_vpc_endpoints].nil?
        data['GatewayLoadBalancerArns'] = Builders::NonEmptyStringList.build(input[:gateway_load_balancer_arns]) unless input[:gateway_load_balancer_arns].nil?
        data['NetworkLoadBalancerArns'] = Builders::NonEmptyStringList.build(input[:network_load_balancer_arns]) unless input[:network_load_balancer_arns].nil?
        data['PrivateDnsName'] = input[:private_dns_name] unless input[:private_dns_name].nil?
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['ServiceState'] = input[:service_state] unless input[:service_state].nil?
        data['ServiceType'] = Builders::AwsEc2VpcEndpointServiceServiceTypeList.build(input[:service_type]) unless input[:service_type].nil?
        data
      end
    end

    # List Builder for AwsEc2VpcEndpointServiceServiceTypeList
    class AwsEc2VpcEndpointServiceServiceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2VpcEndpointServiceServiceTypeDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2VpcEndpointServiceServiceTypeDetails
    class AwsEc2VpcEndpointServiceServiceTypeDetails
      def self.build(input)
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainDetails
    class AwsOpenSearchServiceDomainDetails
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['AccessPolicies'] = input[:access_policies] unless input[:access_policies].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['DomainEndpoint'] = input[:domain_endpoint] unless input[:domain_endpoint].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['EncryptionAtRestOptions'] = Builders::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.build(input[:encryption_at_rest_options]) unless input[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = Builders::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.build(input[:node_to_node_encryption_options]) unless input[:node_to_node_encryption_options].nil?
        data['ServiceSoftwareOptions'] = Builders::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.build(input[:service_software_options]) unless input[:service_software_options].nil?
        data['ClusterConfig'] = Builders::AwsOpenSearchServiceDomainClusterConfigDetails.build(input[:cluster_config]) unless input[:cluster_config].nil?
        data['DomainEndpointOptions'] = Builders::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.build(input[:domain_endpoint_options]) unless input[:domain_endpoint_options].nil?
        data['VpcOptions'] = Builders::AwsOpenSearchServiceDomainVpcOptionsDetails.build(input[:vpc_options]) unless input[:vpc_options].nil?
        data['LogPublishingOptions'] = Builders::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.build(input[:log_publishing_options]) unless input[:log_publishing_options].nil?
        data['DomainEndpoints'] = Builders::FieldMap.build(input[:domain_endpoints]) unless input[:domain_endpoints].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainLogPublishingOptionsDetails
    class AwsOpenSearchServiceDomainLogPublishingOptionsDetails
      def self.build(input)
        data = {}
        data['IndexSlowLogs'] = Builders::AwsOpenSearchServiceDomainLogPublishingOption.build(input[:index_slow_logs]) unless input[:index_slow_logs].nil?
        data['SearchSlowLogs'] = Builders::AwsOpenSearchServiceDomainLogPublishingOption.build(input[:search_slow_logs]) unless input[:search_slow_logs].nil?
        data['AuditLogs'] = Builders::AwsOpenSearchServiceDomainLogPublishingOption.build(input[:audit_logs]) unless input[:audit_logs].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainLogPublishingOption
    class AwsOpenSearchServiceDomainLogPublishingOption
      def self.build(input)
        data = {}
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainVpcOptionsDetails
    class AwsOpenSearchServiceDomainVpcOptionsDetails
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::NonEmptyStringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['SubnetIds'] = Builders::NonEmptyStringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
    class AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
      def self.build(input)
        data = {}
        data['CustomEndpointCertificateArn'] = input[:custom_endpoint_certificate_arn] unless input[:custom_endpoint_certificate_arn].nil?
        data['CustomEndpointEnabled'] = input[:custom_endpoint_enabled] unless input[:custom_endpoint_enabled].nil?
        data['EnforceHTTPS'] = input[:enforce_https] unless input[:enforce_https].nil?
        data['CustomEndpoint'] = input[:custom_endpoint] unless input[:custom_endpoint].nil?
        data['TLSSecurityPolicy'] = input[:tls_security_policy] unless input[:tls_security_policy].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainClusterConfigDetails
    class AwsOpenSearchServiceDomainClusterConfigDetails
      def self.build(input)
        data = {}
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['WarmEnabled'] = input[:warm_enabled] unless input[:warm_enabled].nil?
        data['WarmCount'] = input[:warm_count] unless input[:warm_count].nil?
        data['DedicatedMasterEnabled'] = input[:dedicated_master_enabled] unless input[:dedicated_master_enabled].nil?
        data['ZoneAwarenessConfig'] = Builders::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.build(input[:zone_awareness_config]) unless input[:zone_awareness_config].nil?
        data['DedicatedMasterCount'] = input[:dedicated_master_count] unless input[:dedicated_master_count].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['WarmType'] = input[:warm_type] unless input[:warm_type].nil?
        data['ZoneAwarenessEnabled'] = input[:zone_awareness_enabled] unless input[:zone_awareness_enabled].nil?
        data['DedicatedMasterType'] = input[:dedicated_master_type] unless input[:dedicated_master_type].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
    class AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
      def self.build(input)
        data = {}
        data['AvailabilityZoneCount'] = input[:availability_zone_count] unless input[:availability_zone_count].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
    class AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
      def self.build(input)
        data = {}
        data['AutomatedUpdateDate'] = input[:automated_update_date] unless input[:automated_update_date].nil?
        data['Cancellable'] = input[:cancellable] unless input[:cancellable].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NewVersion'] = input[:new_version] unless input[:new_version].nil?
        data['UpdateAvailable'] = input[:update_available] unless input[:update_available].nil?
        data['UpdateStatus'] = input[:update_status] unless input[:update_status].nil?
        data['OptionalDeployment'] = input[:optional_deployment] unless input[:optional_deployment].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
    class AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
    class AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for AwsEcrContainerImageDetails
    class AwsEcrContainerImageDetails
      def self.build(input)
        data = {}
        data['RegistryId'] = input[:registry_id] unless input[:registry_id].nil?
        data['RepositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['Architecture'] = input[:architecture] unless input[:architecture].nil?
        data['ImageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        data['ImageTags'] = Builders::NonEmptyStringList.build(input[:image_tags]) unless input[:image_tags].nil?
        data['ImagePublishedAt'] = input[:image_published_at] unless input[:image_published_at].nil?
        data
      end
    end

    # Structure Builder for AwsEc2VpnConnectionDetails
    class AwsEc2VpnConnectionDetails
      def self.build(input)
        data = {}
        data['VpnConnectionId'] = input[:vpn_connection_id] unless input[:vpn_connection_id].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['CustomerGatewayId'] = input[:customer_gateway_id] unless input[:customer_gateway_id].nil?
        data['CustomerGatewayConfiguration'] = input[:customer_gateway_configuration] unless input[:customer_gateway_configuration].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['VpnGatewayId'] = input[:vpn_gateway_id] unless input[:vpn_gateway_id].nil?
        data['Category'] = input[:category] unless input[:category].nil?
        data['VgwTelemetry'] = Builders::AwsEc2VpnConnectionVgwTelemetryList.build(input[:vgw_telemetry]) unless input[:vgw_telemetry].nil?
        data['Options'] = Builders::AwsEc2VpnConnectionOptionsDetails.build(input[:options]) unless input[:options].nil?
        data['Routes'] = Builders::AwsEc2VpnConnectionRoutesList.build(input[:routes]) unless input[:routes].nil?
        data['TransitGatewayId'] = input[:transit_gateway_id] unless input[:transit_gateway_id].nil?
        data
      end
    end

    # List Builder for AwsEc2VpnConnectionRoutesList
    class AwsEc2VpnConnectionRoutesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2VpnConnectionRoutesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2VpnConnectionRoutesDetails
    class AwsEc2VpnConnectionRoutesDetails
      def self.build(input)
        data = {}
        data['DestinationCidrBlock'] = input[:destination_cidr_block] unless input[:destination_cidr_block].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for AwsEc2VpnConnectionOptionsDetails
    class AwsEc2VpnConnectionOptionsDetails
      def self.build(input)
        data = {}
        data['StaticRoutesOnly'] = input[:static_routes_only] unless input[:static_routes_only].nil?
        data['TunnelOptions'] = Builders::AwsEc2VpnConnectionOptionsTunnelOptionsList.build(input[:tunnel_options]) unless input[:tunnel_options].nil?
        data
      end
    end

    # List Builder for AwsEc2VpnConnectionOptionsTunnelOptionsList
    class AwsEc2VpnConnectionOptionsTunnelOptionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2VpnConnectionOptionsTunnelOptionsDetails
    class AwsEc2VpnConnectionOptionsTunnelOptionsDetails
      def self.build(input)
        data = {}
        data['DpdTimeoutSeconds'] = input[:dpd_timeout_seconds] unless input[:dpd_timeout_seconds].nil?
        data['IkeVersions'] = Builders::NonEmptyStringList.build(input[:ike_versions]) unless input[:ike_versions].nil?
        data['OutsideIpAddress'] = input[:outside_ip_address] unless input[:outside_ip_address].nil?
        data['Phase1DhGroupNumbers'] = Builders::IntegerList.build(input[:phase1_dh_group_numbers]) unless input[:phase1_dh_group_numbers].nil?
        data['Phase1EncryptionAlgorithms'] = Builders::NonEmptyStringList.build(input[:phase1_encryption_algorithms]) unless input[:phase1_encryption_algorithms].nil?
        data['Phase1IntegrityAlgorithms'] = Builders::NonEmptyStringList.build(input[:phase1_integrity_algorithms]) unless input[:phase1_integrity_algorithms].nil?
        data['Phase1LifetimeSeconds'] = input[:phase1_lifetime_seconds] unless input[:phase1_lifetime_seconds].nil?
        data['Phase2DhGroupNumbers'] = Builders::IntegerList.build(input[:phase2_dh_group_numbers]) unless input[:phase2_dh_group_numbers].nil?
        data['Phase2EncryptionAlgorithms'] = Builders::NonEmptyStringList.build(input[:phase2_encryption_algorithms]) unless input[:phase2_encryption_algorithms].nil?
        data['Phase2IntegrityAlgorithms'] = Builders::NonEmptyStringList.build(input[:phase2_integrity_algorithms]) unless input[:phase2_integrity_algorithms].nil?
        data['Phase2LifetimeSeconds'] = input[:phase2_lifetime_seconds] unless input[:phase2_lifetime_seconds].nil?
        data['PreSharedKey'] = input[:pre_shared_key] unless input[:pre_shared_key].nil?
        data['RekeyFuzzPercentage'] = input[:rekey_fuzz_percentage] unless input[:rekey_fuzz_percentage].nil?
        data['RekeyMarginTimeSeconds'] = input[:rekey_margin_time_seconds] unless input[:rekey_margin_time_seconds].nil?
        data['ReplayWindowSize'] = input[:replay_window_size] unless input[:replay_window_size].nil?
        data['TunnelInsideCidr'] = input[:tunnel_inside_cidr] unless input[:tunnel_inside_cidr].nil?
        data
      end
    end

    # List Builder for IntegerList
    class IntegerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AwsEc2VpnConnectionVgwTelemetryList
    class AwsEc2VpnConnectionVgwTelemetryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2VpnConnectionVgwTelemetryDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2VpnConnectionVgwTelemetryDetails
    class AwsEc2VpnConnectionVgwTelemetryDetails
      def self.build(input)
        data = {}
        data['AcceptedRouteCount'] = input[:accepted_route_count] unless input[:accepted_route_count].nil?
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['LastStatusChange'] = input[:last_status_change] unless input[:last_status_change].nil?
        data['OutsideIpAddress'] = input[:outside_ip_address] unless input[:outside_ip_address].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['StatusMessage'] = input[:status_message] unless input[:status_message].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingLaunchConfigurationDetails
    class AwsAutoScalingLaunchConfigurationDetails
      def self.build(input)
        data = {}
        data['AssociatePublicIpAddress'] = input[:associate_public_ip_address] unless input[:associate_public_ip_address].nil?
        data['BlockDeviceMappings'] = Builders::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.build(input[:block_device_mappings]) unless input[:block_device_mappings].nil?
        data['ClassicLinkVpcId'] = input[:classic_link_vpc_id] unless input[:classic_link_vpc_id].nil?
        data['ClassicLinkVpcSecurityGroups'] = Builders::NonEmptyStringList.build(input[:classic_link_vpc_security_groups]) unless input[:classic_link_vpc_security_groups].nil?
        data['CreatedTime'] = input[:created_time] unless input[:created_time].nil?
        data['EbsOptimized'] = input[:ebs_optimized] unless input[:ebs_optimized].nil?
        data['IamInstanceProfile'] = input[:iam_instance_profile] unless input[:iam_instance_profile].nil?
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['InstanceMonitoring'] = Builders::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.build(input[:instance_monitoring]) unless input[:instance_monitoring].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['KernelId'] = input[:kernel_id] unless input[:kernel_id].nil?
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['LaunchConfigurationName'] = input[:launch_configuration_name] unless input[:launch_configuration_name].nil?
        data['PlacementTenancy'] = input[:placement_tenancy] unless input[:placement_tenancy].nil?
        data['RamdiskId'] = input[:ramdisk_id] unless input[:ramdisk_id].nil?
        data['SecurityGroups'] = Builders::NonEmptyStringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['SpotPrice'] = input[:spot_price] unless input[:spot_price].nil?
        data['UserData'] = input[:user_data] unless input[:user_data].nil?
        data['MetadataOptions'] = Builders::AwsAutoScalingLaunchConfigurationMetadataOptions.build(input[:metadata_options]) unless input[:metadata_options].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingLaunchConfigurationMetadataOptions
    class AwsAutoScalingLaunchConfigurationMetadataOptions
      def self.build(input)
        data = {}
        data['HttpEndpoint'] = input[:http_endpoint] unless input[:http_endpoint].nil?
        data['HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit] unless input[:http_put_response_hop_limit].nil?
        data['HttpTokens'] = input[:http_tokens] unless input[:http_tokens].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
    class AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # List Builder for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
      def self.build(input)
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['Ebs'] = Builders::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.build(input[:ebs]) unless input[:ebs].nil?
        data['NoDevice'] = input[:no_device] unless input[:no_device].nil?
        data['VirtualName'] = input[:virtual_name] unless input[:virtual_name].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
      def self.build(input)
        data = {}
        data['DeleteOnTermination'] = input[:delete_on_termination] unless input[:delete_on_termination].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['VolumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceDetails
    class AwsEcsServiceDetails
      def self.build(input)
        data = {}
        data['CapacityProviderStrategy'] = Builders::AwsEcsServiceCapacityProviderStrategyList.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['Cluster'] = input[:cluster] unless input[:cluster].nil?
        data['DeploymentConfiguration'] = Builders::AwsEcsServiceDeploymentConfigurationDetails.build(input[:deployment_configuration]) unless input[:deployment_configuration].nil?
        data['DeploymentController'] = Builders::AwsEcsServiceDeploymentControllerDetails.build(input[:deployment_controller]) unless input[:deployment_controller].nil?
        data['DesiredCount'] = input[:desired_count] unless input[:desired_count].nil?
        data['EnableEcsManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['EnableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        data['HealthCheckGracePeriodSeconds'] = input[:health_check_grace_period_seconds] unless input[:health_check_grace_period_seconds].nil?
        data['LaunchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['LoadBalancers'] = Builders::AwsEcsServiceLoadBalancersList.build(input[:load_balancers]) unless input[:load_balancers].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['NetworkConfiguration'] = Builders::AwsEcsServiceNetworkConfigurationDetails.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['PlacementConstraints'] = Builders::AwsEcsServicePlacementConstraintsList.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['PlacementStrategies'] = Builders::AwsEcsServicePlacementStrategiesList.build(input[:placement_strategies]) unless input[:placement_strategies].nil?
        data['PlatformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['PropagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['SchedulingStrategy'] = input[:scheduling_strategy] unless input[:scheduling_strategy].nil?
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['ServiceRegistries'] = Builders::AwsEcsServiceServiceRegistriesList.build(input[:service_registries]) unless input[:service_registries].nil?
        data['TaskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        data
      end
    end

    # List Builder for AwsEcsServiceServiceRegistriesList
    class AwsEcsServiceServiceRegistriesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsServiceServiceRegistriesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsServiceServiceRegistriesDetails
    class AwsEcsServiceServiceRegistriesDetails
      def self.build(input)
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['ContainerPort'] = input[:container_port] unless input[:container_port].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['RegistryArn'] = input[:registry_arn] unless input[:registry_arn].nil?
        data
      end
    end

    # List Builder for AwsEcsServicePlacementStrategiesList
    class AwsEcsServicePlacementStrategiesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsServicePlacementStrategiesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsServicePlacementStrategiesDetails
    class AwsEcsServicePlacementStrategiesDetails
      def self.build(input)
        data = {}
        data['Field'] = input[:field] unless input[:field].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AwsEcsServicePlacementConstraintsList
    class AwsEcsServicePlacementConstraintsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsServicePlacementConstraintsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsServicePlacementConstraintsDetails
    class AwsEcsServicePlacementConstraintsDetails
      def self.build(input)
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceNetworkConfigurationDetails
    class AwsEcsServiceNetworkConfigurationDetails
      def self.build(input)
        data = {}
        data['AwsVpcConfiguration'] = Builders::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.build(input[:aws_vpc_configuration]) unless input[:aws_vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
    class AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
      def self.build(input)
        data = {}
        data['AssignPublicIp'] = input[:assign_public_ip] unless input[:assign_public_ip].nil?
        data['SecurityGroups'] = Builders::NonEmptyStringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['Subnets'] = Builders::NonEmptyStringList.build(input[:subnets]) unless input[:subnets].nil?
        data
      end
    end

    # List Builder for AwsEcsServiceLoadBalancersList
    class AwsEcsServiceLoadBalancersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsServiceLoadBalancersDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsServiceLoadBalancersDetails
    class AwsEcsServiceLoadBalancersDetails
      def self.build(input)
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['ContainerPort'] = input[:container_port] unless input[:container_port].nil?
        data['LoadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['TargetGroupArn'] = input[:target_group_arn] unless input[:target_group_arn].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceDeploymentControllerDetails
    class AwsEcsServiceDeploymentControllerDetails
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceDeploymentConfigurationDetails
    class AwsEcsServiceDeploymentConfigurationDetails
      def self.build(input)
        data = {}
        data['DeploymentCircuitBreaker'] = Builders::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.build(input[:deployment_circuit_breaker]) unless input[:deployment_circuit_breaker].nil?
        data['MaximumPercent'] = input[:maximum_percent] unless input[:maximum_percent].nil?
        data['MinimumHealthyPercent'] = input[:minimum_healthy_percent] unless input[:minimum_healthy_percent].nil?
        data
      end
    end

    # Structure Builder for AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
    class AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
      def self.build(input)
        data = {}
        data['Enable'] = input[:enable] unless input[:enable].nil?
        data['Rollback'] = input[:rollback] unless input[:rollback].nil?
        data
      end
    end

    # List Builder for AwsEcsServiceCapacityProviderStrategyList
    class AwsEcsServiceCapacityProviderStrategyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsServiceCapacityProviderStrategyDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsServiceCapacityProviderStrategyDetails
    class AwsEcsServiceCapacityProviderStrategyDetails
      def self.build(input)
        data = {}
        data['Base'] = input[:base] unless input[:base].nil?
        data['CapacityProvider'] = input[:capacity_provider] unless input[:capacity_provider].nil?
        data['Weight'] = input[:weight] unless input[:weight].nil?
        data
      end
    end

    # Structure Builder for AwsRdsEventSubscriptionDetails
    class AwsRdsEventSubscriptionDetails
      def self.build(input)
        data = {}
        data['CustSubscriptionId'] = input[:cust_subscription_id] unless input[:cust_subscription_id].nil?
        data['CustomerAwsId'] = input[:customer_aws_id] unless input[:customer_aws_id].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['EventCategoriesList'] = Builders::NonEmptyStringList.build(input[:event_categories_list]) unless input[:event_categories_list].nil?
        data['EventSubscriptionArn'] = input[:event_subscription_arn] unless input[:event_subscription_arn].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SourceIdsList'] = Builders::NonEmptyStringList.build(input[:source_ids_list]) unless input[:source_ids_list].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['SubscriptionCreationTime'] = input[:subscription_creation_time] unless input[:subscription_creation_time].nil?
        data
      end
    end

    # Structure Builder for ContainerDetails
    class ContainerDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['LaunchedAt'] = input[:launched_at] unless input[:launched_at].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionDetails
    class AwsEcsTaskDefinitionDetails
      def self.build(input)
        data = {}
        data['ContainerDefinitions'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsList.build(input[:container_definitions]) unless input[:container_definitions].nil?
        data['Cpu'] = input[:cpu] unless input[:cpu].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['Family'] = input[:family] unless input[:family].nil?
        data['InferenceAccelerators'] = Builders::AwsEcsTaskDefinitionInferenceAcceleratorsList.build(input[:inference_accelerators]) unless input[:inference_accelerators].nil?
        data['IpcMode'] = input[:ipc_mode] unless input[:ipc_mode].nil?
        data['Memory'] = input[:memory] unless input[:memory].nil?
        data['NetworkMode'] = input[:network_mode] unless input[:network_mode].nil?
        data['PidMode'] = input[:pid_mode] unless input[:pid_mode].nil?
        data['PlacementConstraints'] = Builders::AwsEcsTaskDefinitionPlacementConstraintsList.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['ProxyConfiguration'] = Builders::AwsEcsTaskDefinitionProxyConfigurationDetails.build(input[:proxy_configuration]) unless input[:proxy_configuration].nil?
        data['RequiresCompatibilities'] = Builders::NonEmptyStringList.build(input[:requires_compatibilities]) unless input[:requires_compatibilities].nil?
        data['TaskRoleArn'] = input[:task_role_arn] unless input[:task_role_arn].nil?
        data['Volumes'] = Builders::AwsEcsTaskDefinitionVolumesList.build(input[:volumes]) unless input[:volumes].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionVolumesList
    class AwsEcsTaskDefinitionVolumesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionVolumesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionVolumesDetails
    class AwsEcsTaskDefinitionVolumesDetails
      def self.build(input)
        data = {}
        data['DockerVolumeConfiguration'] = Builders::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.build(input[:docker_volume_configuration]) unless input[:docker_volume_configuration].nil?
        data['EfsVolumeConfiguration'] = Builders::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.build(input[:efs_volume_configuration]) unless input[:efs_volume_configuration].nil?
        data['Host'] = Builders::AwsEcsTaskDefinitionVolumesHostDetails.build(input[:host]) unless input[:host].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionVolumesHostDetails
    class AwsEcsTaskDefinitionVolumesHostDetails
      def self.build(input)
        data = {}
        data['SourcePath'] = input[:source_path] unless input[:source_path].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
      def self.build(input)
        data = {}
        data['AuthorizationConfig'] = Builders::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.build(input[:authorization_config]) unless input[:authorization_config].nil?
        data['FilesystemId'] = input[:filesystem_id] unless input[:filesystem_id].nil?
        data['RootDirectory'] = input[:root_directory] unless input[:root_directory].nil?
        data['TransitEncryption'] = input[:transit_encryption] unless input[:transit_encryption].nil?
        data['TransitEncryptionPort'] = input[:transit_encryption_port] unless input[:transit_encryption_port].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
      def self.build(input)
        data = {}
        data['AccessPointId'] = input[:access_point_id] unless input[:access_point_id].nil?
        data['Iam'] = input[:iam] unless input[:iam].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
    class AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
      def self.build(input)
        data = {}
        data['Autoprovision'] = input[:autoprovision] unless input[:autoprovision].nil?
        data['Driver'] = input[:driver] unless input[:driver].nil?
        data['DriverOpts'] = Builders::FieldMap.build(input[:driver_opts]) unless input[:driver_opts].nil?
        data['Labels'] = Builders::FieldMap.build(input[:labels]) unless input[:labels].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionProxyConfigurationDetails
    class AwsEcsTaskDefinitionProxyConfigurationDetails
      def self.build(input)
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['ProxyConfigurationProperties'] = Builders::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.build(input[:proxy_configuration_properties]) unless input[:proxy_configuration_properties].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionPlacementConstraintsList
    class AwsEcsTaskDefinitionPlacementConstraintsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionPlacementConstraintsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionPlacementConstraintsDetails
    class AwsEcsTaskDefinitionPlacementConstraintsDetails
      def self.build(input)
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionInferenceAcceleratorsList
    class AwsEcsTaskDefinitionInferenceAcceleratorsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionInferenceAcceleratorsDetails
    class AwsEcsTaskDefinitionInferenceAcceleratorsDetails
      def self.build(input)
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['DeviceType'] = input[:device_type] unless input[:device_type].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsList
    class AwsEcsTaskDefinitionContainerDefinitionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsDetails
      def self.build(input)
        data = {}
        data['Command'] = Builders::NonEmptyStringList.build(input[:command]) unless input[:command].nil?
        data['Cpu'] = input[:cpu] unless input[:cpu].nil?
        data['DependsOn'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.build(input[:depends_on]) unless input[:depends_on].nil?
        data['DisableNetworking'] = input[:disable_networking] unless input[:disable_networking].nil?
        data['DnsSearchDomains'] = Builders::NonEmptyStringList.build(input[:dns_search_domains]) unless input[:dns_search_domains].nil?
        data['DnsServers'] = Builders::NonEmptyStringList.build(input[:dns_servers]) unless input[:dns_servers].nil?
        data['DockerLabels'] = Builders::FieldMap.build(input[:docker_labels]) unless input[:docker_labels].nil?
        data['DockerSecurityOptions'] = Builders::NonEmptyStringList.build(input[:docker_security_options]) unless input[:docker_security_options].nil?
        data['EntryPoint'] = Builders::NonEmptyStringList.build(input[:entry_point]) unless input[:entry_point].nil?
        data['Environment'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.build(input[:environment]) unless input[:environment].nil?
        data['EnvironmentFiles'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.build(input[:environment_files]) unless input[:environment_files].nil?
        data['Essential'] = input[:essential] unless input[:essential].nil?
        data['ExtraHosts'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.build(input[:extra_hosts]) unless input[:extra_hosts].nil?
        data['FirelensConfiguration'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.build(input[:firelens_configuration]) unless input[:firelens_configuration].nil?
        data['HealthCheck'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.build(input[:health_check]) unless input[:health_check].nil?
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['Image'] = input[:image] unless input[:image].nil?
        data['Interactive'] = input[:interactive] unless input[:interactive].nil?
        data['Links'] = Builders::NonEmptyStringList.build(input[:links]) unless input[:links].nil?
        data['LinuxParameters'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.build(input[:linux_parameters]) unless input[:linux_parameters].nil?
        data['LogConfiguration'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['Memory'] = input[:memory] unless input[:memory].nil?
        data['MemoryReservation'] = input[:memory_reservation] unless input[:memory_reservation].nil?
        data['MountPoints'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.build(input[:mount_points]) unless input[:mount_points].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['PortMappings'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.build(input[:port_mappings]) unless input[:port_mappings].nil?
        data['Privileged'] = input[:privileged] unless input[:privileged].nil?
        data['PseudoTerminal'] = input[:pseudo_terminal] unless input[:pseudo_terminal].nil?
        data['ReadonlyRootFilesystem'] = input[:readonly_root_filesystem] unless input[:readonly_root_filesystem].nil?
        data['RepositoryCredentials'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.build(input[:repository_credentials]) unless input[:repository_credentials].nil?
        data['ResourceRequirements'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.build(input[:resource_requirements]) unless input[:resource_requirements].nil?
        data['Secrets'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsSecretsList.build(input[:secrets]) unless input[:secrets].nil?
        data['StartTimeout'] = input[:start_timeout] unless input[:start_timeout].nil?
        data['StopTimeout'] = input[:stop_timeout] unless input[:stop_timeout].nil?
        data['SystemControls'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.build(input[:system_controls]) unless input[:system_controls].nil?
        data['Ulimits'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.build(input[:ulimits]) unless input[:ulimits].nil?
        data['User'] = input[:user] unless input[:user].nil?
        data['VolumesFrom'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.build(input[:volumes_from]) unless input[:volumes_from].nil?
        data['WorkingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
      def self.build(input)
        data = {}
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['SourceContainer'] = input[:source_container] unless input[:source_container].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
      def self.build(input)
        data = {}
        data['HardLimit'] = input[:hard_limit] unless input[:hard_limit].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SoftLimit'] = input[:soft_limit] unless input[:soft_limit].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
      def self.build(input)
        data = {}
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsSecretsList
    class AwsEcsTaskDefinitionContainerDefinitionsSecretsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ValueFrom'] = input[:value_from] unless input[:value_from].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
      def self.build(input)
        data = {}
        data['CredentialsParameter'] = input[:credentials_parameter] unless input[:credentials_parameter].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
      def self.build(input)
        data = {}
        data['ContainerPort'] = input[:container_port] unless input[:container_port].nil?
        data['HostPort'] = input[:host_port] unless input[:host_port].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
      def self.build(input)
        data = {}
        data['ContainerPath'] = input[:container_path] unless input[:container_path].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['SourceVolume'] = input[:source_volume] unless input[:source_volume].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
      def self.build(input)
        data = {}
        data['LogDriver'] = input[:log_driver] unless input[:log_driver].nil?
        data['Options'] = Builders::FieldMap.build(input[:options]) unless input[:options].nil?
        data['SecretOptions'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.build(input[:secret_options]) unless input[:secret_options].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ValueFrom'] = input[:value_from] unless input[:value_from].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
      def self.build(input)
        data = {}
        data['Capabilities'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.build(input[:capabilities]) unless input[:capabilities].nil?
        data['Devices'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.build(input[:devices]) unless input[:devices].nil?
        data['InitProcessEnabled'] = input[:init_process_enabled] unless input[:init_process_enabled].nil?
        data['MaxSwap'] = input[:max_swap] unless input[:max_swap].nil?
        data['SharedMemorySize'] = input[:shared_memory_size] unless input[:shared_memory_size].nil?
        data['Swappiness'] = input[:swappiness] unless input[:swappiness].nil?
        data['Tmpfs'] = Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.build(input[:tmpfs]) unless input[:tmpfs].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
      def self.build(input)
        data = {}
        data['ContainerPath'] = input[:container_path] unless input[:container_path].nil?
        data['MountOptions'] = Builders::NonEmptyStringList.build(input[:mount_options]) unless input[:mount_options].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
      def self.build(input)
        data = {}
        data['ContainerPath'] = input[:container_path] unless input[:container_path].nil?
        data['HostPath'] = input[:host_path] unless input[:host_path].nil?
        data['Permissions'] = Builders::NonEmptyStringList.build(input[:permissions]) unless input[:permissions].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
      def self.build(input)
        data = {}
        data['Add'] = Builders::NonEmptyStringList.build(input[:add]) unless input[:add].nil?
        data['Drop'] = Builders::NonEmptyStringList.build(input[:drop]) unless input[:drop].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
    class AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
      def self.build(input)
        data = {}
        data['Command'] = Builders::NonEmptyStringList.build(input[:command]) unless input[:command].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['Retries'] = input[:retries] unless input[:retries].nil?
        data['StartPeriod'] = input[:start_period] unless input[:start_period].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
    class AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
      def self.build(input)
        data = {}
        data['Options'] = Builders::FieldMap.build(input[:options]) unless input[:options].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
      def self.build(input)
        data = {}
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
      def self.build(input)
        data = {}
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data
      end
    end

    # Structure Builder for AwsEcsClusterDetails
    class AwsEcsClusterDetails
      def self.build(input)
        data = {}
        data['CapacityProviders'] = Builders::NonEmptyStringList.build(input[:capacity_providers]) unless input[:capacity_providers].nil?
        data['ClusterSettings'] = Builders::AwsEcsClusterClusterSettingsList.build(input[:cluster_settings]) unless input[:cluster_settings].nil?
        data['Configuration'] = Builders::AwsEcsClusterConfigurationDetails.build(input[:configuration]) unless input[:configuration].nil?
        data['DefaultCapacityProviderStrategy'] = Builders::AwsEcsClusterDefaultCapacityProviderStrategyList.build(input[:default_capacity_provider_strategy]) unless input[:default_capacity_provider_strategy].nil?
        data
      end
    end

    # List Builder for AwsEcsClusterDefaultCapacityProviderStrategyList
    class AwsEcsClusterDefaultCapacityProviderStrategyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsClusterDefaultCapacityProviderStrategyDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsClusterDefaultCapacityProviderStrategyDetails
    class AwsEcsClusterDefaultCapacityProviderStrategyDetails
      def self.build(input)
        data = {}
        data['Base'] = input[:base] unless input[:base].nil?
        data['CapacityProvider'] = input[:capacity_provider] unless input[:capacity_provider].nil?
        data['Weight'] = input[:weight] unless input[:weight].nil?
        data
      end
    end

    # Structure Builder for AwsEcsClusterConfigurationDetails
    class AwsEcsClusterConfigurationDetails
      def self.build(input)
        data = {}
        data['ExecuteCommandConfiguration'] = Builders::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.build(input[:execute_command_configuration]) unless input[:execute_command_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
    class AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['LogConfiguration'] = Builders::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['Logging'] = input[:logging] unless input[:logging].nil?
        data
      end
    end

    # Structure Builder for AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
    class AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
      def self.build(input)
        data = {}
        data['CloudWatchEncryptionEnabled'] = input[:cloud_watch_encryption_enabled] unless input[:cloud_watch_encryption_enabled].nil?
        data['CloudWatchLogGroupName'] = input[:cloud_watch_log_group_name] unless input[:cloud_watch_log_group_name].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3EncryptionEnabled'] = input[:s3_encryption_enabled] unless input[:s3_encryption_enabled].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    # List Builder for AwsEcsClusterClusterSettingsList
    class AwsEcsClusterClusterSettingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEcsClusterClusterSettingsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEcsClusterClusterSettingsDetails
    class AwsEcsClusterClusterSettingsDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbClusterDetails
    class AwsRdsDbClusterDetails
      def self.build(input)
        data = {}
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['AvailabilityZones'] = Builders::StringList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['BackupRetentionPeriod'] = input[:backup_retention_period] unless input[:backup_retention_period].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['ReaderEndpoint'] = input[:reader_endpoint] unless input[:reader_endpoint].nil?
        data['CustomEndpoints'] = Builders::StringList.build(input[:custom_endpoints]) unless input[:custom_endpoints].nil?
        data['MultiAz'] = input[:multi_az] unless input[:multi_az].nil?
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['MasterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['PreferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['ReadReplicaIdentifiers'] = Builders::StringList.build(input[:read_replica_identifiers]) unless input[:read_replica_identifiers].nil?
        data['VpcSecurityGroups'] = Builders::AwsRdsDbInstanceVpcSecurityGroups.build(input[:vpc_security_groups]) unless input[:vpc_security_groups].nil?
        data['HostedZoneId'] = input[:hosted_zone_id] unless input[:hosted_zone_id].nil?
        data['StorageEncrypted'] = input[:storage_encrypted] unless input[:storage_encrypted].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['DbClusterResourceId'] = input[:db_cluster_resource_id] unless input[:db_cluster_resource_id].nil?
        data['AssociatedRoles'] = Builders::AwsRdsDbClusterAssociatedRoles.build(input[:associated_roles]) unless input[:associated_roles].nil?
        data['ClusterCreateTime'] = input[:cluster_create_time] unless input[:cluster_create_time].nil?
        data['EnabledCloudWatchLogsExports'] = Builders::StringList.build(input[:enabled_cloud_watch_logs_exports]) unless input[:enabled_cloud_watch_logs_exports].nil?
        data['EngineMode'] = input[:engine_mode] unless input[:engine_mode].nil?
        data['DeletionProtection'] = input[:deletion_protection] unless input[:deletion_protection].nil?
        data['HttpEndpointEnabled'] = input[:http_endpoint_enabled] unless input[:http_endpoint_enabled].nil?
        data['ActivityStreamStatus'] = input[:activity_stream_status] unless input[:activity_stream_status].nil?
        data['CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot] unless input[:copy_tags_to_snapshot].nil?
        data['CrossAccountClone'] = input[:cross_account_clone] unless input[:cross_account_clone].nil?
        data['DomainMemberships'] = Builders::AwsRdsDbDomainMemberships.build(input[:domain_memberships]) unless input[:domain_memberships].nil?
        data['DbClusterParameterGroup'] = input[:db_cluster_parameter_group] unless input[:db_cluster_parameter_group].nil?
        data['DbSubnetGroup'] = input[:db_subnet_group] unless input[:db_subnet_group].nil?
        data['DbClusterOptionGroupMemberships'] = Builders::AwsRdsDbClusterOptionGroupMemberships.build(input[:db_cluster_option_group_memberships]) unless input[:db_cluster_option_group_memberships].nil?
        data['DbClusterIdentifier'] = input[:db_cluster_identifier] unless input[:db_cluster_identifier].nil?
        data['DbClusterMembers'] = Builders::AwsRdsDbClusterMembers.build(input[:db_cluster_members]) unless input[:db_cluster_members].nil?
        data['IamDatabaseAuthenticationEnabled'] = input[:iam_database_authentication_enabled] unless input[:iam_database_authentication_enabled].nil?
        data
      end
    end

    # List Builder for AwsRdsDbClusterMembers
    class AwsRdsDbClusterMembers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbClusterMember.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbClusterMember
    class AwsRdsDbClusterMember
      def self.build(input)
        data = {}
        data['IsClusterWriter'] = input[:is_cluster_writer] unless input[:is_cluster_writer].nil?
        data['PromotionTier'] = input[:promotion_tier] unless input[:promotion_tier].nil?
        data['DbInstanceIdentifier'] = input[:db_instance_identifier] unless input[:db_instance_identifier].nil?
        data['DbClusterParameterGroupStatus'] = input[:db_cluster_parameter_group_status] unless input[:db_cluster_parameter_group_status].nil?
        data
      end
    end

    # List Builder for AwsRdsDbClusterOptionGroupMemberships
    class AwsRdsDbClusterOptionGroupMemberships
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbClusterOptionGroupMembership.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbClusterOptionGroupMembership
    class AwsRdsDbClusterOptionGroupMembership
      def self.build(input)
        data = {}
        data['DbClusterOptionGroupName'] = input[:db_cluster_option_group_name] unless input[:db_cluster_option_group_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for AwsRdsDbDomainMemberships
    class AwsRdsDbDomainMemberships
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbDomainMembership.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbDomainMembership
    class AwsRdsDbDomainMembership
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Fqdn'] = input[:fqdn] unless input[:fqdn].nil?
        data['IamRoleName'] = input[:iam_role_name] unless input[:iam_role_name].nil?
        data
      end
    end

    # List Builder for AwsRdsDbClusterAssociatedRoles
    class AwsRdsDbClusterAssociatedRoles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbClusterAssociatedRole.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbClusterAssociatedRole
    class AwsRdsDbClusterAssociatedRole
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for AwsRdsDbInstanceVpcSecurityGroups
    class AwsRdsDbInstanceVpcSecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbInstanceVpcSecurityGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbInstanceVpcSecurityGroup
    class AwsRdsDbInstanceVpcSecurityGroup
      def self.build(input)
        data = {}
        data['VpcSecurityGroupId'] = input[:vpc_security_group_id] unless input[:vpc_security_group_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbClusterSnapshotDetails
    class AwsRdsDbClusterSnapshotDetails
      def self.build(input)
        data = {}
        data['AvailabilityZones'] = Builders::StringList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['SnapshotCreateTime'] = input[:snapshot_create_time] unless input[:snapshot_create_time].nil?
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['ClusterCreateTime'] = input[:cluster_create_time] unless input[:cluster_create_time].nil?
        data['MasterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['LicenseModel'] = input[:license_model] unless input[:license_model].nil?
        data['SnapshotType'] = input[:snapshot_type] unless input[:snapshot_type].nil?
        data['PercentProgress'] = input[:percent_progress] unless input[:percent_progress].nil?
        data['StorageEncrypted'] = input[:storage_encrypted] unless input[:storage_encrypted].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['DbClusterIdentifier'] = input[:db_cluster_identifier] unless input[:db_cluster_identifier].nil?
        data['DbClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier] unless input[:db_cluster_snapshot_identifier].nil?
        data['IamDatabaseAuthenticationEnabled'] = input[:iam_database_authentication_enabled] unless input[:iam_database_authentication_enabled].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbSnapshotDetails
    class AwsRdsDbSnapshotDetails
      def self.build(input)
        data = {}
        data['DbSnapshotIdentifier'] = input[:db_snapshot_identifier] unless input[:db_snapshot_identifier].nil?
        data['DbInstanceIdentifier'] = input[:db_instance_identifier] unless input[:db_instance_identifier].nil?
        data['SnapshotCreateTime'] = input[:snapshot_create_time] unless input[:snapshot_create_time].nil?
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['InstanceCreateTime'] = input[:instance_create_time] unless input[:instance_create_time].nil?
        data['MasterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['LicenseModel'] = input[:license_model] unless input[:license_model].nil?
        data['SnapshotType'] = input[:snapshot_type] unless input[:snapshot_type].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['OptionGroupName'] = input[:option_group_name] unless input[:option_group_name].nil?
        data['PercentProgress'] = input[:percent_progress] unless input[:percent_progress].nil?
        data['SourceRegion'] = input[:source_region] unless input[:source_region].nil?
        data['SourceDbSnapshotIdentifier'] = input[:source_db_snapshot_identifier] unless input[:source_db_snapshot_identifier].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['TdeCredentialArn'] = input[:tde_credential_arn] unless input[:tde_credential_arn].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['IamDatabaseAuthenticationEnabled'] = input[:iam_database_authentication_enabled] unless input[:iam_database_authentication_enabled].nil?
        data['ProcessorFeatures'] = Builders::AwsRdsDbProcessorFeatures.build(input[:processor_features]) unless input[:processor_features].nil?
        data['DbiResourceId'] = input[:dbi_resource_id] unless input[:dbi_resource_id].nil?
        data
      end
    end

    # List Builder for AwsRdsDbProcessorFeatures
    class AwsRdsDbProcessorFeatures
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbProcessorFeature.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbProcessorFeature
    class AwsRdsDbProcessorFeature
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsWafWebAclDetails
    class AwsWafWebAclDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DefaultAction'] = input[:default_action] unless input[:default_action].nil?
        data['Rules'] = Builders::AwsWafWebAclRuleList.build(input[:rules]) unless input[:rules].nil?
        data['WebAclId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data
      end
    end

    # List Builder for AwsWafWebAclRuleList
    class AwsWafWebAclRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsWafWebAclRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsWafWebAclRule
    class AwsWafWebAclRule
      def self.build(input)
        data = {}
        data['Action'] = Builders::WafAction.build(input[:action]) unless input[:action].nil?
        data['ExcludedRules'] = Builders::WafExcludedRuleList.build(input[:excluded_rules]) unless input[:excluded_rules].nil?
        data['OverrideAction'] = Builders::WafOverrideAction.build(input[:override_action]) unless input[:override_action].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for WafOverrideAction
    class WafOverrideAction
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for WafExcludedRuleList
    class WafExcludedRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WafExcludedRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WafExcludedRule
    class WafExcludedRule
      def self.build(input)
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data
      end
    end

    # Structure Builder for WafAction
    class WafAction
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsSqsQueueDetails
    class AwsSqsQueueDetails
      def self.build(input)
        data = {}
        data['KmsDataKeyReusePeriodSeconds'] = input[:kms_data_key_reuse_period_seconds] unless input[:kms_data_key_reuse_period_seconds].nil?
        data['KmsMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['QueueName'] = input[:queue_name] unless input[:queue_name].nil?
        data['DeadLetterTargetArn'] = input[:dead_letter_target_arn] unless input[:dead_letter_target_arn].nil?
        data
      end
    end

    # Structure Builder for AwsSnsTopicDetails
    class AwsSnsTopicDetails
      def self.build(input)
        data = {}
        data['KmsMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['Subscription'] = Builders::AwsSnsTopicSubscriptionList.build(input[:subscription]) unless input[:subscription].nil?
        data['TopicName'] = input[:topic_name] unless input[:topic_name].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data
      end
    end

    # List Builder for AwsSnsTopicSubscriptionList
    class AwsSnsTopicSubscriptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsSnsTopicSubscription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsSnsTopicSubscription
    class AwsSnsTopicSubscription
      def self.build(input)
        data = {}
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbInstanceDetails
    class AwsRdsDbInstanceDetails
      def self.build(input)
        data = {}
        data['AssociatedRoles'] = Builders::AwsRdsDbInstanceAssociatedRoles.build(input[:associated_roles]) unless input[:associated_roles].nil?
        data['CACertificateIdentifier'] = input[:ca_certificate_identifier] unless input[:ca_certificate_identifier].nil?
        data['DBClusterIdentifier'] = input[:db_cluster_identifier] unless input[:db_cluster_identifier].nil?
        data['DBInstanceIdentifier'] = input[:db_instance_identifier] unless input[:db_instance_identifier].nil?
        data['DBInstanceClass'] = input[:db_instance_class] unless input[:db_instance_class].nil?
        data['DbInstancePort'] = input[:db_instance_port] unless input[:db_instance_port].nil?
        data['DbiResourceId'] = input[:dbi_resource_id] unless input[:dbi_resource_id].nil?
        data['DBName'] = input[:db_name] unless input[:db_name].nil?
        data['DeletionProtection'] = input[:deletion_protection] unless input[:deletion_protection].nil?
        data['Endpoint'] = Builders::AwsRdsDbInstanceEndpoint.build(input[:endpoint]) unless input[:endpoint].nil?
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['IAMDatabaseAuthenticationEnabled'] = input[:iam_database_authentication_enabled] unless input[:iam_database_authentication_enabled].nil?
        data['InstanceCreateTime'] = input[:instance_create_time] unless input[:instance_create_time].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['PubliclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['StorageEncrypted'] = input[:storage_encrypted] unless input[:storage_encrypted].nil?
        data['TdeCredentialArn'] = input[:tde_credential_arn] unless input[:tde_credential_arn].nil?
        data['VpcSecurityGroups'] = Builders::AwsRdsDbInstanceVpcSecurityGroups.build(input[:vpc_security_groups]) unless input[:vpc_security_groups].nil?
        data['MultiAz'] = input[:multi_az] unless input[:multi_az].nil?
        data['EnhancedMonitoringResourceArn'] = input[:enhanced_monitoring_resource_arn] unless input[:enhanced_monitoring_resource_arn].nil?
        data['DbInstanceStatus'] = input[:db_instance_status] unless input[:db_instance_status].nil?
        data['MasterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['PreferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        data['BackupRetentionPeriod'] = input[:backup_retention_period] unless input[:backup_retention_period].nil?
        data['DbSecurityGroups'] = Builders::StringList.build(input[:db_security_groups]) unless input[:db_security_groups].nil?
        data['DbParameterGroups'] = Builders::AwsRdsDbParameterGroups.build(input[:db_parameter_groups]) unless input[:db_parameter_groups].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['DbSubnetGroup'] = Builders::AwsRdsDbSubnetGroup.build(input[:db_subnet_group]) unless input[:db_subnet_group].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['PendingModifiedValues'] = Builders::AwsRdsDbPendingModifiedValues.build(input[:pending_modified_values]) unless input[:pending_modified_values].nil?
        data['LatestRestorableTime'] = input[:latest_restorable_time] unless input[:latest_restorable_time].nil?
        data['AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        data['ReadReplicaSourceDBInstanceIdentifier'] = input[:read_replica_source_db_instance_identifier] unless input[:read_replica_source_db_instance_identifier].nil?
        data['ReadReplicaDBInstanceIdentifiers'] = Builders::StringList.build(input[:read_replica_db_instance_identifiers]) unless input[:read_replica_db_instance_identifiers].nil?
        data['ReadReplicaDBClusterIdentifiers'] = Builders::StringList.build(input[:read_replica_db_cluster_identifiers]) unless input[:read_replica_db_cluster_identifiers].nil?
        data['LicenseModel'] = input[:license_model] unless input[:license_model].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['OptionGroupMemberships'] = Builders::AwsRdsDbOptionGroupMemberships.build(input[:option_group_memberships]) unless input[:option_group_memberships].nil?
        data['CharacterSetName'] = input[:character_set_name] unless input[:character_set_name].nil?
        data['SecondaryAvailabilityZone'] = input[:secondary_availability_zone] unless input[:secondary_availability_zone].nil?
        data['StatusInfos'] = Builders::AwsRdsDbStatusInfos.build(input[:status_infos]) unless input[:status_infos].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['DomainMemberships'] = Builders::AwsRdsDbDomainMemberships.build(input[:domain_memberships]) unless input[:domain_memberships].nil?
        data['CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot] unless input[:copy_tags_to_snapshot].nil?
        data['MonitoringInterval'] = input[:monitoring_interval] unless input[:monitoring_interval].nil?
        data['MonitoringRoleArn'] = input[:monitoring_role_arn] unless input[:monitoring_role_arn].nil?
        data['PromotionTier'] = input[:promotion_tier] unless input[:promotion_tier].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['PerformanceInsightsEnabled'] = input[:performance_insights_enabled] unless input[:performance_insights_enabled].nil?
        data['PerformanceInsightsKmsKeyId'] = input[:performance_insights_kms_key_id] unless input[:performance_insights_kms_key_id].nil?
        data['PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period] unless input[:performance_insights_retention_period].nil?
        data['EnabledCloudWatchLogsExports'] = Builders::StringList.build(input[:enabled_cloud_watch_logs_exports]) unless input[:enabled_cloud_watch_logs_exports].nil?
        data['ProcessorFeatures'] = Builders::AwsRdsDbProcessorFeatures.build(input[:processor_features]) unless input[:processor_features].nil?
        data['ListenerEndpoint'] = Builders::AwsRdsDbInstanceEndpoint.build(input[:listener_endpoint]) unless input[:listener_endpoint].nil?
        data['MaxAllocatedStorage'] = input[:max_allocated_storage] unless input[:max_allocated_storage].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbInstanceEndpoint
    class AwsRdsDbInstanceEndpoint
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['HostedZoneId'] = input[:hosted_zone_id] unless input[:hosted_zone_id].nil?
        data
      end
    end

    # List Builder for AwsRdsDbStatusInfos
    class AwsRdsDbStatusInfos
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbStatusInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbStatusInfo
    class AwsRdsDbStatusInfo
      def self.build(input)
        data = {}
        data['StatusType'] = input[:status_type] unless input[:status_type].nil?
        data['Normal'] = input[:normal] unless input[:normal].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # List Builder for AwsRdsDbOptionGroupMemberships
    class AwsRdsDbOptionGroupMemberships
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbOptionGroupMembership.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbOptionGroupMembership
    class AwsRdsDbOptionGroupMembership
      def self.build(input)
        data = {}
        data['OptionGroupName'] = input[:option_group_name] unless input[:option_group_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbPendingModifiedValues
    class AwsRdsDbPendingModifiedValues
      def self.build(input)
        data = {}
        data['DbInstanceClass'] = input[:db_instance_class] unless input[:db_instance_class].nil?
        data['AllocatedStorage'] = input[:allocated_storage] unless input[:allocated_storage].nil?
        data['MasterUserPassword'] = input[:master_user_password] unless input[:master_user_password].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['BackupRetentionPeriod'] = input[:backup_retention_period] unless input[:backup_retention_period].nil?
        data['MultiAZ'] = input[:multi_az] unless input[:multi_az].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['LicenseModel'] = input[:license_model] unless input[:license_model].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['DbInstanceIdentifier'] = input[:db_instance_identifier] unless input[:db_instance_identifier].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['CaCertificateIdentifier'] = input[:ca_certificate_identifier] unless input[:ca_certificate_identifier].nil?
        data['DbSubnetGroupName'] = input[:db_subnet_group_name] unless input[:db_subnet_group_name].nil?
        data['PendingCloudWatchLogsExports'] = Builders::AwsRdsPendingCloudWatchLogsExports.build(input[:pending_cloud_watch_logs_exports]) unless input[:pending_cloud_watch_logs_exports].nil?
        data['ProcessorFeatures'] = Builders::AwsRdsDbProcessorFeatures.build(input[:processor_features]) unless input[:processor_features].nil?
        data
      end
    end

    # Structure Builder for AwsRdsPendingCloudWatchLogsExports
    class AwsRdsPendingCloudWatchLogsExports
      def self.build(input)
        data = {}
        data['LogTypesToEnable'] = Builders::StringList.build(input[:log_types_to_enable]) unless input[:log_types_to_enable].nil?
        data['LogTypesToDisable'] = Builders::StringList.build(input[:log_types_to_disable]) unless input[:log_types_to_disable].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbSubnetGroup
    class AwsRdsDbSubnetGroup
      def self.build(input)
        data = {}
        data['DbSubnetGroupName'] = input[:db_subnet_group_name] unless input[:db_subnet_group_name].nil?
        data['DbSubnetGroupDescription'] = input[:db_subnet_group_description] unless input[:db_subnet_group_description].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetGroupStatus'] = input[:subnet_group_status] unless input[:subnet_group_status].nil?
        data['Subnets'] = Builders::AwsRdsDbSubnetGroupSubnets.build(input[:subnets]) unless input[:subnets].nil?
        data['DbSubnetGroupArn'] = input[:db_subnet_group_arn] unless input[:db_subnet_group_arn].nil?
        data
      end
    end

    # List Builder for AwsRdsDbSubnetGroupSubnets
    class AwsRdsDbSubnetGroupSubnets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbSubnetGroupSubnet.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbSubnetGroupSubnet
    class AwsRdsDbSubnetGroupSubnet
      def self.build(input)
        data = {}
        data['SubnetIdentifier'] = input[:subnet_identifier] unless input[:subnet_identifier].nil?
        data['SubnetAvailabilityZone'] = Builders::AwsRdsDbSubnetGroupSubnetAvailabilityZone.build(input[:subnet_availability_zone]) unless input[:subnet_availability_zone].nil?
        data['SubnetStatus'] = input[:subnet_status] unless input[:subnet_status].nil?
        data
      end
    end

    # Structure Builder for AwsRdsDbSubnetGroupSubnetAvailabilityZone
    class AwsRdsDbSubnetGroupSubnetAvailabilityZone
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for AwsRdsDbParameterGroups
    class AwsRdsDbParameterGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbParameterGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbParameterGroup
    class AwsRdsDbParameterGroup
      def self.build(input)
        data = {}
        data['DbParameterGroupName'] = input[:db_parameter_group_name] unless input[:db_parameter_group_name].nil?
        data['ParameterApplyStatus'] = input[:parameter_apply_status] unless input[:parameter_apply_status].nil?
        data
      end
    end

    # List Builder for AwsRdsDbInstanceAssociatedRoles
    class AwsRdsDbInstanceAssociatedRoles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRdsDbInstanceAssociatedRole.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRdsDbInstanceAssociatedRole
    class AwsRdsDbInstanceAssociatedRole
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['FeatureName'] = input[:feature_name] unless input[:feature_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaLayerVersionDetails
    class AwsLambdaLayerVersionDetails
      def self.build(input)
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data['CompatibleRuntimes'] = Builders::NonEmptyStringList.build(input[:compatible_runtimes]) unless input[:compatible_runtimes].nil?
        data['CreatedDate'] = input[:created_date] unless input[:created_date].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionDetails
    class AwsLambdaFunctionDetails
      def self.build(input)
        data = {}
        data['Code'] = Builders::AwsLambdaFunctionCode.build(input[:code]) unless input[:code].nil?
        data['CodeSha256'] = input[:code_sha256] unless input[:code_sha256].nil?
        data['DeadLetterConfig'] = Builders::AwsLambdaFunctionDeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['Environment'] = Builders::AwsLambdaFunctionEnvironment.build(input[:environment]) unless input[:environment].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['LastModified'] = input[:last_modified] unless input[:last_modified].nil?
        data['Layers'] = Builders::AwsLambdaFunctionLayerList.build(input[:layers]) unless input[:layers].nil?
        data['MasterArn'] = input[:master_arn] unless input[:master_arn].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['TracingConfig'] = Builders::AwsLambdaFunctionTracingConfig.build(input[:tracing_config]) unless input[:tracing_config].nil?
        data['VpcConfig'] = Builders::AwsLambdaFunctionVpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionVpcConfig
    class AwsLambdaFunctionVpcConfig
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::NonEmptyStringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['SubnetIds'] = Builders::NonEmptyStringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionTracingConfig
    class AwsLambdaFunctionTracingConfig
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data
      end
    end

    # List Builder for AwsLambdaFunctionLayerList
    class AwsLambdaFunctionLayerList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsLambdaFunctionLayer.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionLayer
    class AwsLambdaFunctionLayer
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['CodeSize'] = input[:code_size] unless input[:code_size].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionEnvironment
    class AwsLambdaFunctionEnvironment
      def self.build(input)
        data = {}
        data['Variables'] = Builders::FieldMap.build(input[:variables]) unless input[:variables].nil?
        data['Error'] = Builders::AwsLambdaFunctionEnvironmentError.build(input[:error]) unless input[:error].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionEnvironmentError
    class AwsLambdaFunctionEnvironmentError
      def self.build(input)
        data = {}
        data['ErrorCode'] = input[:error_code] unless input[:error_code].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionDeadLetterConfig
    class AwsLambdaFunctionDeadLetterConfig
      def self.build(input)
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data
      end
    end

    # Structure Builder for AwsLambdaFunctionCode
    class AwsLambdaFunctionCode
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ZipFile'] = input[:zip_file] unless input[:zip_file].nil?
        data
      end
    end

    # Structure Builder for AwsKmsKeyDetails
    class AwsKmsKeyDetails
      def self.build(input)
        data = {}
        data['AWSAccountId'] = input[:aws_account_id] unless input[:aws_account_id].nil?
        data['CreationDate'] = Hearth::NumberHelper.serialize(input[:creation_date]) unless input[:creation_date].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['KeyManager'] = input[:key_manager] unless input[:key_manager].nil?
        data['KeyState'] = input[:key_state] unless input[:key_state].nil?
        data['Origin'] = input[:origin] unless input[:origin].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['KeyRotationStatus'] = input[:key_rotation_status] unless input[:key_rotation_status].nil?
        data
      end
    end

    # Structure Builder for AwsIamRoleDetails
    class AwsIamRoleDetails
      def self.build(input)
        data = {}
        data['AssumeRolePolicyDocument'] = input[:assume_role_policy_document] unless input[:assume_role_policy_document].nil?
        data['AttachedManagedPolicies'] = Builders::AwsIamAttachedManagedPolicyList.build(input[:attached_managed_policies]) unless input[:attached_managed_policies].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['InstanceProfileList'] = Builders::AwsIamInstanceProfileList.build(input[:instance_profile_list]) unless input[:instance_profile_list].nil?
        data['PermissionsBoundary'] = Builders::AwsIamPermissionsBoundary.build(input[:permissions_boundary]) unless input[:permissions_boundary].nil?
        data['RoleId'] = input[:role_id] unless input[:role_id].nil?
        data['RoleName'] = input[:role_name] unless input[:role_name].nil?
        data['RolePolicyList'] = Builders::AwsIamRolePolicyList.build(input[:role_policy_list]) unless input[:role_policy_list].nil?
        data['MaxSessionDuration'] = input[:max_session_duration] unless input[:max_session_duration].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data
      end
    end

    # List Builder for AwsIamRolePolicyList
    class AwsIamRolePolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamRolePolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamRolePolicy
    class AwsIamRolePolicy
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data
      end
    end

    # Structure Builder for AwsIamPermissionsBoundary
    class AwsIamPermissionsBoundary
      def self.build(input)
        data = {}
        data['PermissionsBoundaryArn'] = input[:permissions_boundary_arn] unless input[:permissions_boundary_arn].nil?
        data['PermissionsBoundaryType'] = input[:permissions_boundary_type] unless input[:permissions_boundary_type].nil?
        data
      end
    end

    # List Builder for AwsIamInstanceProfileList
    class AwsIamInstanceProfileList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamInstanceProfile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamInstanceProfile
    class AwsIamInstanceProfile
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['InstanceProfileId'] = input[:instance_profile_id] unless input[:instance_profile_id].nil?
        data['InstanceProfileName'] = input[:instance_profile_name] unless input[:instance_profile_name].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Roles'] = Builders::AwsIamInstanceProfileRoles.build(input[:roles]) unless input[:roles].nil?
        data
      end
    end

    # List Builder for AwsIamInstanceProfileRoles
    class AwsIamInstanceProfileRoles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamInstanceProfileRole.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamInstanceProfileRole
    class AwsIamInstanceProfileRole
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['AssumeRolePolicyDocument'] = input[:assume_role_policy_document] unless input[:assume_role_policy_document].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['RoleId'] = input[:role_id] unless input[:role_id].nil?
        data['RoleName'] = input[:role_name] unless input[:role_name].nil?
        data
      end
    end

    # List Builder for AwsIamAttachedManagedPolicyList
    class AwsIamAttachedManagedPolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamAttachedManagedPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamAttachedManagedPolicy
    class AwsIamAttachedManagedPolicy
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['PolicyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data
      end
    end

    # Structure Builder for AwsIamGroupDetails
    class AwsIamGroupDetails
      def self.build(input)
        data = {}
        data['AttachedManagedPolicies'] = Builders::AwsIamAttachedManagedPolicyList.build(input[:attached_managed_policies]) unless input[:attached_managed_policies].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupPolicyList'] = Builders::AwsIamGroupPolicyList.build(input[:group_policy_list]) unless input[:group_policy_list].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data
      end
    end

    # List Builder for AwsIamGroupPolicyList
    class AwsIamGroupPolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamGroupPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamGroupPolicy
    class AwsIamGroupPolicy
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerDetails
    class AwsElbLoadBalancerDetails
      def self.build(input)
        data = {}
        data['AvailabilityZones'] = Builders::StringList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['BackendServerDescriptions'] = Builders::AwsElbLoadBalancerBackendServerDescriptions.build(input[:backend_server_descriptions]) unless input[:backend_server_descriptions].nil?
        data['CanonicalHostedZoneName'] = input[:canonical_hosted_zone_name] unless input[:canonical_hosted_zone_name].nil?
        data['CanonicalHostedZoneNameID'] = input[:canonical_hosted_zone_name_id] unless input[:canonical_hosted_zone_name_id].nil?
        data['CreatedTime'] = input[:created_time] unless input[:created_time].nil?
        data['DnsName'] = input[:dns_name] unless input[:dns_name].nil?
        data['HealthCheck'] = Builders::AwsElbLoadBalancerHealthCheck.build(input[:health_check]) unless input[:health_check].nil?
        data['Instances'] = Builders::AwsElbLoadBalancerInstances.build(input[:instances]) unless input[:instances].nil?
        data['ListenerDescriptions'] = Builders::AwsElbLoadBalancerListenerDescriptions.build(input[:listener_descriptions]) unless input[:listener_descriptions].nil?
        data['LoadBalancerAttributes'] = Builders::AwsElbLoadBalancerAttributes.build(input[:load_balancer_attributes]) unless input[:load_balancer_attributes].nil?
        data['LoadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['Policies'] = Builders::AwsElbLoadBalancerPolicies.build(input[:policies]) unless input[:policies].nil?
        data['Scheme'] = input[:scheme] unless input[:scheme].nil?
        data['SecurityGroups'] = Builders::StringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['SourceSecurityGroup'] = Builders::AwsElbLoadBalancerSourceSecurityGroup.build(input[:source_security_group]) unless input[:source_security_group].nil?
        data['Subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerSourceSecurityGroup
    class AwsElbLoadBalancerSourceSecurityGroup
      def self.build(input)
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['OwnerAlias'] = input[:owner_alias] unless input[:owner_alias].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerPolicies
    class AwsElbLoadBalancerPolicies
      def self.build(input)
        data = {}
        data['AppCookieStickinessPolicies'] = Builders::AwsElbAppCookieStickinessPolicies.build(input[:app_cookie_stickiness_policies]) unless input[:app_cookie_stickiness_policies].nil?
        data['LbCookieStickinessPolicies'] = Builders::AwsElbLbCookieStickinessPolicies.build(input[:lb_cookie_stickiness_policies]) unless input[:lb_cookie_stickiness_policies].nil?
        data['OtherPolicies'] = Builders::StringList.build(input[:other_policies]) unless input[:other_policies].nil?
        data
      end
    end

    # List Builder for AwsElbLbCookieStickinessPolicies
    class AwsElbLbCookieStickinessPolicies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbLbCookieStickinessPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbLbCookieStickinessPolicy
    class AwsElbLbCookieStickinessPolicy
      def self.build(input)
        data = {}
        data['CookieExpirationPeriod'] = input[:cookie_expiration_period] unless input[:cookie_expiration_period].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data
      end
    end

    # List Builder for AwsElbAppCookieStickinessPolicies
    class AwsElbAppCookieStickinessPolicies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbAppCookieStickinessPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbAppCookieStickinessPolicy
    class AwsElbAppCookieStickinessPolicy
      def self.build(input)
        data = {}
        data['CookieName'] = input[:cookie_name] unless input[:cookie_name].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerAttributes
    class AwsElbLoadBalancerAttributes
      def self.build(input)
        data = {}
        data['AccessLog'] = Builders::AwsElbLoadBalancerAccessLog.build(input[:access_log]) unless input[:access_log].nil?
        data['ConnectionDraining'] = Builders::AwsElbLoadBalancerConnectionDraining.build(input[:connection_draining]) unless input[:connection_draining].nil?
        data['ConnectionSettings'] = Builders::AwsElbLoadBalancerConnectionSettings.build(input[:connection_settings]) unless input[:connection_settings].nil?
        data['CrossZoneLoadBalancing'] = Builders::AwsElbLoadBalancerCrossZoneLoadBalancing.build(input[:cross_zone_load_balancing]) unless input[:cross_zone_load_balancing].nil?
        data['AdditionalAttributes'] = Builders::AwsElbLoadBalancerAdditionalAttributeList.build(input[:additional_attributes]) unless input[:additional_attributes].nil?
        data
      end
    end

    # List Builder for AwsElbLoadBalancerAdditionalAttributeList
    class AwsElbLoadBalancerAdditionalAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbLoadBalancerAdditionalAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerAdditionalAttribute
    class AwsElbLoadBalancerAdditionalAttribute
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerCrossZoneLoadBalancing
    class AwsElbLoadBalancerCrossZoneLoadBalancing
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerConnectionSettings
    class AwsElbLoadBalancerConnectionSettings
      def self.build(input)
        data = {}
        data['IdleTimeout'] = input[:idle_timeout] unless input[:idle_timeout].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerConnectionDraining
    class AwsElbLoadBalancerConnectionDraining
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerAccessLog
    class AwsElbLoadBalancerAccessLog
      def self.build(input)
        data = {}
        data['EmitInterval'] = input[:emit_interval] unless input[:emit_interval].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3BucketPrefix'] = input[:s3_bucket_prefix] unless input[:s3_bucket_prefix].nil?
        data
      end
    end

    # List Builder for AwsElbLoadBalancerListenerDescriptions
    class AwsElbLoadBalancerListenerDescriptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbLoadBalancerListenerDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerListenerDescription
    class AwsElbLoadBalancerListenerDescription
      def self.build(input)
        data = {}
        data['Listener'] = Builders::AwsElbLoadBalancerListener.build(input[:listener]) unless input[:listener].nil?
        data['PolicyNames'] = Builders::StringList.build(input[:policy_names]) unless input[:policy_names].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerListener
    class AwsElbLoadBalancerListener
      def self.build(input)
        data = {}
        data['InstancePort'] = input[:instance_port] unless input[:instance_port].nil?
        data['InstanceProtocol'] = input[:instance_protocol] unless input[:instance_protocol].nil?
        data['LoadBalancerPort'] = input[:load_balancer_port] unless input[:load_balancer_port].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['SslCertificateId'] = input[:ssl_certificate_id] unless input[:ssl_certificate_id].nil?
        data
      end
    end

    # List Builder for AwsElbLoadBalancerInstances
    class AwsElbLoadBalancerInstances
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbLoadBalancerInstance.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerInstance
    class AwsElbLoadBalancerInstance
      def self.build(input)
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerHealthCheck
    class AwsElbLoadBalancerHealthCheck
      def self.build(input)
        data = {}
        data['HealthyThreshold'] = input[:healthy_threshold] unless input[:healthy_threshold].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['UnhealthyThreshold'] = input[:unhealthy_threshold] unless input[:unhealthy_threshold].nil?
        data
      end
    end

    # List Builder for AwsElbLoadBalancerBackendServerDescriptions
    class AwsElbLoadBalancerBackendServerDescriptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbLoadBalancerBackendServerDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbLoadBalancerBackendServerDescription
    class AwsElbLoadBalancerBackendServerDescription
      def self.build(input)
        data = {}
        data['InstancePort'] = input[:instance_port] unless input[:instance_port].nil?
        data['PolicyNames'] = Builders::StringList.build(input[:policy_names]) unless input[:policy_names].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterDetails
    class AwsRedshiftClusterDetails
      def self.build(input)
        data = {}
        data['AllowVersionUpgrade'] = input[:allow_version_upgrade] unless input[:allow_version_upgrade].nil?
        data['AutomatedSnapshotRetentionPeriod'] = input[:automated_snapshot_retention_period] unless input[:automated_snapshot_retention_period].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['ClusterAvailabilityStatus'] = input[:cluster_availability_status] unless input[:cluster_availability_status].nil?
        data['ClusterCreateTime'] = input[:cluster_create_time] unless input[:cluster_create_time].nil?
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['ClusterNodes'] = Builders::AwsRedshiftClusterClusterNodes.build(input[:cluster_nodes]) unless input[:cluster_nodes].nil?
        data['ClusterParameterGroups'] = Builders::AwsRedshiftClusterClusterParameterGroups.build(input[:cluster_parameter_groups]) unless input[:cluster_parameter_groups].nil?
        data['ClusterPublicKey'] = input[:cluster_public_key] unless input[:cluster_public_key].nil?
        data['ClusterRevisionNumber'] = input[:cluster_revision_number] unless input[:cluster_revision_number].nil?
        data['ClusterSecurityGroups'] = Builders::AwsRedshiftClusterClusterSecurityGroups.build(input[:cluster_security_groups]) unless input[:cluster_security_groups].nil?
        data['ClusterSnapshotCopyStatus'] = Builders::AwsRedshiftClusterClusterSnapshotCopyStatus.build(input[:cluster_snapshot_copy_status]) unless input[:cluster_snapshot_copy_status].nil?
        data['ClusterStatus'] = input[:cluster_status] unless input[:cluster_status].nil?
        data['ClusterSubnetGroupName'] = input[:cluster_subnet_group_name] unless input[:cluster_subnet_group_name].nil?
        data['ClusterVersion'] = input[:cluster_version] unless input[:cluster_version].nil?
        data['DBName'] = input[:db_name] unless input[:db_name].nil?
        data['DeferredMaintenanceWindows'] = Builders::AwsRedshiftClusterDeferredMaintenanceWindows.build(input[:deferred_maintenance_windows]) unless input[:deferred_maintenance_windows].nil?
        data['ElasticIpStatus'] = Builders::AwsRedshiftClusterElasticIpStatus.build(input[:elastic_ip_status]) unless input[:elastic_ip_status].nil?
        data['ElasticResizeNumberOfNodeOptions'] = input[:elastic_resize_number_of_node_options] unless input[:elastic_resize_number_of_node_options].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['Endpoint'] = Builders::AwsRedshiftClusterEndpoint.build(input[:endpoint]) unless input[:endpoint].nil?
        data['EnhancedVpcRouting'] = input[:enhanced_vpc_routing] unless input[:enhanced_vpc_routing].nil?
        data['ExpectedNextSnapshotScheduleTime'] = input[:expected_next_snapshot_schedule_time] unless input[:expected_next_snapshot_schedule_time].nil?
        data['ExpectedNextSnapshotScheduleTimeStatus'] = input[:expected_next_snapshot_schedule_time_status] unless input[:expected_next_snapshot_schedule_time_status].nil?
        data['HsmStatus'] = Builders::AwsRedshiftClusterHsmStatus.build(input[:hsm_status]) unless input[:hsm_status].nil?
        data['IamRoles'] = Builders::AwsRedshiftClusterIamRoles.build(input[:iam_roles]) unless input[:iam_roles].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['MaintenanceTrackName'] = input[:maintenance_track_name] unless input[:maintenance_track_name].nil?
        data['ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period] unless input[:manual_snapshot_retention_period].nil?
        data['MasterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['NextMaintenanceWindowStartTime'] = input[:next_maintenance_window_start_time] unless input[:next_maintenance_window_start_time].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['NumberOfNodes'] = input[:number_of_nodes] unless input[:number_of_nodes].nil?
        data['PendingActions'] = Builders::StringList.build(input[:pending_actions]) unless input[:pending_actions].nil?
        data['PendingModifiedValues'] = Builders::AwsRedshiftClusterPendingModifiedValues.build(input[:pending_modified_values]) unless input[:pending_modified_values].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['PubliclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['ResizeInfo'] = Builders::AwsRedshiftClusterResizeInfo.build(input[:resize_info]) unless input[:resize_info].nil?
        data['RestoreStatus'] = Builders::AwsRedshiftClusterRestoreStatus.build(input[:restore_status]) unless input[:restore_status].nil?
        data['SnapshotScheduleIdentifier'] = input[:snapshot_schedule_identifier] unless input[:snapshot_schedule_identifier].nil?
        data['SnapshotScheduleState'] = input[:snapshot_schedule_state] unless input[:snapshot_schedule_state].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['VpcSecurityGroups'] = Builders::AwsRedshiftClusterVpcSecurityGroups.build(input[:vpc_security_groups]) unless input[:vpc_security_groups].nil?
        data['LoggingStatus'] = Builders::AwsRedshiftClusterLoggingStatus.build(input[:logging_status]) unless input[:logging_status].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterLoggingStatus
    class AwsRedshiftClusterLoggingStatus
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['LastFailureMessage'] = input[:last_failure_message] unless input[:last_failure_message].nil?
        data['LastFailureTime'] = input[:last_failure_time] unless input[:last_failure_time].nil?
        data['LastSuccessfulDeliveryTime'] = input[:last_successful_delivery_time] unless input[:last_successful_delivery_time].nil?
        data['LoggingEnabled'] = input[:logging_enabled] unless input[:logging_enabled].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterVpcSecurityGroups
    class AwsRedshiftClusterVpcSecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterVpcSecurityGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterVpcSecurityGroup
    class AwsRedshiftClusterVpcSecurityGroup
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['VpcSecurityGroupId'] = input[:vpc_security_group_id] unless input[:vpc_security_group_id].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterRestoreStatus
    class AwsRedshiftClusterRestoreStatus
      def self.build(input)
        data = {}
        data['CurrentRestoreRateInMegaBytesPerSecond'] = Hearth::NumberHelper.serialize(input[:current_restore_rate_in_mega_bytes_per_second]) unless input[:current_restore_rate_in_mega_bytes_per_second].nil?
        data['ElapsedTimeInSeconds'] = input[:elapsed_time_in_seconds] unless input[:elapsed_time_in_seconds].nil?
        data['EstimatedTimeToCompletionInSeconds'] = input[:estimated_time_to_completion_in_seconds] unless input[:estimated_time_to_completion_in_seconds].nil?
        data['ProgressInMegaBytes'] = input[:progress_in_mega_bytes] unless input[:progress_in_mega_bytes].nil?
        data['SnapshotSizeInMegaBytes'] = input[:snapshot_size_in_mega_bytes] unless input[:snapshot_size_in_mega_bytes].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterResizeInfo
    class AwsRedshiftClusterResizeInfo
      def self.build(input)
        data = {}
        data['AllowCancelResize'] = input[:allow_cancel_resize] unless input[:allow_cancel_resize].nil?
        data['ResizeType'] = input[:resize_type] unless input[:resize_type].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterPendingModifiedValues
    class AwsRedshiftClusterPendingModifiedValues
      def self.build(input)
        data = {}
        data['AutomatedSnapshotRetentionPeriod'] = input[:automated_snapshot_retention_period] unless input[:automated_snapshot_retention_period].nil?
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['ClusterType'] = input[:cluster_type] unless input[:cluster_type].nil?
        data['ClusterVersion'] = input[:cluster_version] unless input[:cluster_version].nil?
        data['EncryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['EnhancedVpcRouting'] = input[:enhanced_vpc_routing] unless input[:enhanced_vpc_routing].nil?
        data['MaintenanceTrackName'] = input[:maintenance_track_name] unless input[:maintenance_track_name].nil?
        data['MasterUserPassword'] = input[:master_user_password] unless input[:master_user_password].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['NumberOfNodes'] = input[:number_of_nodes] unless input[:number_of_nodes].nil?
        data['PubliclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterIamRoles
    class AwsRedshiftClusterIamRoles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterIamRole.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterIamRole
    class AwsRedshiftClusterIamRole
      def self.build(input)
        data = {}
        data['ApplyStatus'] = input[:apply_status] unless input[:apply_status].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterHsmStatus
    class AwsRedshiftClusterHsmStatus
      def self.build(input)
        data = {}
        data['HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier] unless input[:hsm_client_certificate_identifier].nil?
        data['HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier] unless input[:hsm_configuration_identifier].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterEndpoint
    class AwsRedshiftClusterEndpoint
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterElasticIpStatus
    class AwsRedshiftClusterElasticIpStatus
      def self.build(input)
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterDeferredMaintenanceWindows
    class AwsRedshiftClusterDeferredMaintenanceWindows
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterDeferredMaintenanceWindow.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterDeferredMaintenanceWindow
    class AwsRedshiftClusterDeferredMaintenanceWindow
      def self.build(input)
        data = {}
        data['DeferMaintenanceEndTime'] = input[:defer_maintenance_end_time] unless input[:defer_maintenance_end_time].nil?
        data['DeferMaintenanceIdentifier'] = input[:defer_maintenance_identifier] unless input[:defer_maintenance_identifier].nil?
        data['DeferMaintenanceStartTime'] = input[:defer_maintenance_start_time] unless input[:defer_maintenance_start_time].nil?
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterClusterSnapshotCopyStatus
    class AwsRedshiftClusterClusterSnapshotCopyStatus
      def self.build(input)
        data = {}
        data['DestinationRegion'] = input[:destination_region] unless input[:destination_region].nil?
        data['ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period] unless input[:manual_snapshot_retention_period].nil?
        data['RetentionPeriod'] = input[:retention_period] unless input[:retention_period].nil?
        data['SnapshotCopyGrantName'] = input[:snapshot_copy_grant_name] unless input[:snapshot_copy_grant_name].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterClusterSecurityGroups
    class AwsRedshiftClusterClusterSecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterClusterSecurityGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterClusterSecurityGroup
    class AwsRedshiftClusterClusterSecurityGroup
      def self.build(input)
        data = {}
        data['ClusterSecurityGroupName'] = input[:cluster_security_group_name] unless input[:cluster_security_group_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterClusterParameterGroups
    class AwsRedshiftClusterClusterParameterGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterClusterParameterGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterClusterParameterGroup
    class AwsRedshiftClusterClusterParameterGroup
      def self.build(input)
        data = {}
        data['ClusterParameterStatusList'] = Builders::AwsRedshiftClusterClusterParameterStatusList.build(input[:cluster_parameter_status_list]) unless input[:cluster_parameter_status_list].nil?
        data['ParameterApplyStatus'] = input[:parameter_apply_status] unless input[:parameter_apply_status].nil?
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterClusterParameterStatusList
    class AwsRedshiftClusterClusterParameterStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterClusterParameterStatus.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterClusterParameterStatus
    class AwsRedshiftClusterClusterParameterStatus
      def self.build(input)
        data = {}
        data['ParameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['ParameterApplyStatus'] = input[:parameter_apply_status] unless input[:parameter_apply_status].nil?
        data['ParameterApplyErrorDescription'] = input[:parameter_apply_error_description] unless input[:parameter_apply_error_description].nil?
        data
      end
    end

    # List Builder for AwsRedshiftClusterClusterNodes
    class AwsRedshiftClusterClusterNodes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsRedshiftClusterClusterNode.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsRedshiftClusterClusterNode
    class AwsRedshiftClusterClusterNode
      def self.build(input)
        data = {}
        data['NodeRole'] = input[:node_role] unless input[:node_role].nil?
        data['PrivateIpAddress'] = input[:private_ip_address] unless input[:private_ip_address].nil?
        data['PublicIpAddress'] = input[:public_ip_address] unless input[:public_ip_address].nil?
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateDetails
    class AwsCertificateManagerCertificateDetails
      def self.build(input)
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['CreatedAt'] = input[:created_at] unless input[:created_at].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['DomainValidationOptions'] = Builders::AwsCertificateManagerCertificateDomainValidationOptions.build(input[:domain_validation_options]) unless input[:domain_validation_options].nil?
        data['ExtendedKeyUsages'] = Builders::AwsCertificateManagerCertificateExtendedKeyUsages.build(input[:extended_key_usages]) unless input[:extended_key_usages].nil?
        data['FailureReason'] = input[:failure_reason] unless input[:failure_reason].nil?
        data['ImportedAt'] = input[:imported_at] unless input[:imported_at].nil?
        data['InUseBy'] = Builders::StringList.build(input[:in_use_by]) unless input[:in_use_by].nil?
        data['IssuedAt'] = input[:issued_at] unless input[:issued_at].nil?
        data['Issuer'] = input[:issuer] unless input[:issuer].nil?
        data['KeyAlgorithm'] = input[:key_algorithm] unless input[:key_algorithm].nil?
        data['KeyUsages'] = Builders::AwsCertificateManagerCertificateKeyUsages.build(input[:key_usages]) unless input[:key_usages].nil?
        data['NotAfter'] = input[:not_after] unless input[:not_after].nil?
        data['NotBefore'] = input[:not_before] unless input[:not_before].nil?
        data['Options'] = Builders::AwsCertificateManagerCertificateOptions.build(input[:options]) unless input[:options].nil?
        data['RenewalEligibility'] = input[:renewal_eligibility] unless input[:renewal_eligibility].nil?
        data['RenewalSummary'] = Builders::AwsCertificateManagerCertificateRenewalSummary.build(input[:renewal_summary]) unless input[:renewal_summary].nil?
        data['Serial'] = input[:serial] unless input[:serial].nil?
        data['SignatureAlgorithm'] = input[:signature_algorithm] unless input[:signature_algorithm].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['SubjectAlternativeNames'] = Builders::StringList.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateRenewalSummary
    class AwsCertificateManagerCertificateRenewalSummary
      def self.build(input)
        data = {}
        data['DomainValidationOptions'] = Builders::AwsCertificateManagerCertificateDomainValidationOptions.build(input[:domain_validation_options]) unless input[:domain_validation_options].nil?
        data['RenewalStatus'] = input[:renewal_status] unless input[:renewal_status].nil?
        data['RenewalStatusReason'] = input[:renewal_status_reason] unless input[:renewal_status_reason].nil?
        data['UpdatedAt'] = input[:updated_at] unless input[:updated_at].nil?
        data
      end
    end

    # List Builder for AwsCertificateManagerCertificateDomainValidationOptions
    class AwsCertificateManagerCertificateDomainValidationOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCertificateManagerCertificateDomainValidationOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateDomainValidationOption
    class AwsCertificateManagerCertificateDomainValidationOption
      def self.build(input)
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['ResourceRecord'] = Builders::AwsCertificateManagerCertificateResourceRecord.build(input[:resource_record]) unless input[:resource_record].nil?
        data['ValidationDomain'] = input[:validation_domain] unless input[:validation_domain].nil?
        data['ValidationEmails'] = Builders::StringList.build(input[:validation_emails]) unless input[:validation_emails].nil?
        data['ValidationMethod'] = input[:validation_method] unless input[:validation_method].nil?
        data['ValidationStatus'] = input[:validation_status] unless input[:validation_status].nil?
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateResourceRecord
    class AwsCertificateManagerCertificateResourceRecord
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateOptions
    class AwsCertificateManagerCertificateOptions
      def self.build(input)
        data = {}
        data['CertificateTransparencyLoggingPreference'] = input[:certificate_transparency_logging_preference] unless input[:certificate_transparency_logging_preference].nil?
        data
      end
    end

    # List Builder for AwsCertificateManagerCertificateKeyUsages
    class AwsCertificateManagerCertificateKeyUsages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCertificateManagerCertificateKeyUsage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateKeyUsage
    class AwsCertificateManagerCertificateKeyUsage
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for AwsCertificateManagerCertificateExtendedKeyUsages
    class AwsCertificateManagerCertificateExtendedKeyUsages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCertificateManagerCertificateExtendedKeyUsage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCertificateManagerCertificateExtendedKeyUsage
    class AwsCertificateManagerCertificateExtendedKeyUsage
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['OId'] = input[:o_id] unless input[:o_id].nil?
        data
      end
    end

    # Structure Builder for AwsSsmPatchComplianceDetails
    class AwsSsmPatchComplianceDetails
      def self.build(input)
        data = {}
        data['Patch'] = Builders::AwsSsmPatch.build(input[:patch]) unless input[:patch].nil?
        data
      end
    end

    # Structure Builder for AwsSsmPatch
    class AwsSsmPatch
      def self.build(input)
        data = {}
        data['ComplianceSummary'] = Builders::AwsSsmComplianceSummary.build(input[:compliance_summary]) unless input[:compliance_summary].nil?
        data
      end
    end

    # Structure Builder for AwsSsmComplianceSummary
    class AwsSsmComplianceSummary
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['CompliantCriticalCount'] = input[:compliant_critical_count] unless input[:compliant_critical_count].nil?
        data['CompliantHighCount'] = input[:compliant_high_count] unless input[:compliant_high_count].nil?
        data['CompliantMediumCount'] = input[:compliant_medium_count] unless input[:compliant_medium_count].nil?
        data['ExecutionType'] = input[:execution_type] unless input[:execution_type].nil?
        data['NonCompliantCriticalCount'] = input[:non_compliant_critical_count] unless input[:non_compliant_critical_count].nil?
        data['CompliantInformationalCount'] = input[:compliant_informational_count] unless input[:compliant_informational_count].nil?
        data['NonCompliantInformationalCount'] = input[:non_compliant_informational_count] unless input[:non_compliant_informational_count].nil?
        data['CompliantUnspecifiedCount'] = input[:compliant_unspecified_count] unless input[:compliant_unspecified_count].nil?
        data['NonCompliantLowCount'] = input[:non_compliant_low_count] unless input[:non_compliant_low_count].nil?
        data['NonCompliantHighCount'] = input[:non_compliant_high_count] unless input[:non_compliant_high_count].nil?
        data['CompliantLowCount'] = input[:compliant_low_count] unless input[:compliant_low_count].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['PatchBaselineId'] = input[:patch_baseline_id] unless input[:patch_baseline_id].nil?
        data['OverallSeverity'] = input[:overall_severity] unless input[:overall_severity].nil?
        data['NonCompliantMediumCount'] = input[:non_compliant_medium_count] unless input[:non_compliant_medium_count].nil?
        data['NonCompliantUnspecifiedCount'] = input[:non_compliant_unspecified_count] unless input[:non_compliant_unspecified_count].nil?
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        data
      end
    end

    # Structure Builder for AwsCloudTrailTrailDetails
    class AwsCloudTrailTrailDetails
      def self.build(input)
        data = {}
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = input[:cloud_watch_logs_role_arn] unless input[:cloud_watch_logs_role_arn].nil?
        data['HasCustomEventSelectors'] = input[:has_custom_event_selectors] unless input[:has_custom_event_selectors].nil?
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['IncludeGlobalServiceEvents'] = input[:include_global_service_events] unless input[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = input[:is_multi_region_trail] unless input[:is_multi_region_trail].nil?
        data['IsOrganizationTrail'] = input[:is_organization_trail] unless input[:is_organization_trail].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['LogFileValidationEnabled'] = input[:log_file_validation_enabled] unless input[:log_file_validation_enabled].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SnsTopicName'] = input[:sns_topic_name] unless input[:sns_topic_name].nil?
        data['TrailArn'] = input[:trail_arn] unless input[:trail_arn].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayRestApiDetails
    class AwsApiGatewayRestApiDetails
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['CreatedDate'] = input[:created_date] unless input[:created_date].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['BinaryMediaTypes'] = Builders::NonEmptyStringList.build(input[:binary_media_types]) unless input[:binary_media_types].nil?
        data['MinimumCompressionSize'] = input[:minimum_compression_size] unless input[:minimum_compression_size].nil?
        data['ApiKeySource'] = input[:api_key_source] unless input[:api_key_source].nil?
        data['EndpointConfiguration'] = Builders::AwsApiGatewayEndpointConfiguration.build(input[:endpoint_configuration]) unless input[:endpoint_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayEndpointConfiguration
    class AwsApiGatewayEndpointConfiguration
      def self.build(input)
        data = {}
        data['Types'] = Builders::NonEmptyStringList.build(input[:types]) unless input[:types].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayStageDetails
    class AwsApiGatewayStageDetails
      def self.build(input)
        data = {}
        data['DeploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['ClientCertificateId'] = input[:client_certificate_id] unless input[:client_certificate_id].nil?
        data['StageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['CacheClusterEnabled'] = input[:cache_cluster_enabled] unless input[:cache_cluster_enabled].nil?
        data['CacheClusterSize'] = input[:cache_cluster_size] unless input[:cache_cluster_size].nil?
        data['CacheClusterStatus'] = input[:cache_cluster_status] unless input[:cache_cluster_status].nil?
        data['MethodSettings'] = Builders::AwsApiGatewayMethodSettingsList.build(input[:method_settings]) unless input[:method_settings].nil?
        data['Variables'] = Builders::FieldMap.build(input[:variables]) unless input[:variables].nil?
        data['DocumentationVersion'] = input[:documentation_version] unless input[:documentation_version].nil?
        data['AccessLogSettings'] = Builders::AwsApiGatewayAccessLogSettings.build(input[:access_log_settings]) unless input[:access_log_settings].nil?
        data['CanarySettings'] = Builders::AwsApiGatewayCanarySettings.build(input[:canary_settings]) unless input[:canary_settings].nil?
        data['TracingEnabled'] = input[:tracing_enabled] unless input[:tracing_enabled].nil?
        data['CreatedDate'] = input[:created_date] unless input[:created_date].nil?
        data['LastUpdatedDate'] = input[:last_updated_date] unless input[:last_updated_date].nil?
        data['WebAclArn'] = input[:web_acl_arn] unless input[:web_acl_arn].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayCanarySettings
    class AwsApiGatewayCanarySettings
      def self.build(input)
        data = {}
        data['PercentTraffic'] = Hearth::NumberHelper.serialize(input[:percent_traffic]) unless input[:percent_traffic].nil?
        data['DeploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['StageVariableOverrides'] = Builders::FieldMap.build(input[:stage_variable_overrides]) unless input[:stage_variable_overrides].nil?
        data['UseStageCache'] = input[:use_stage_cache] unless input[:use_stage_cache].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayAccessLogSettings
    class AwsApiGatewayAccessLogSettings
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data
      end
    end

    # List Builder for AwsApiGatewayMethodSettingsList
    class AwsApiGatewayMethodSettingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsApiGatewayMethodSettings.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsApiGatewayMethodSettings
    class AwsApiGatewayMethodSettings
      def self.build(input)
        data = {}
        data['MetricsEnabled'] = input[:metrics_enabled] unless input[:metrics_enabled].nil?
        data['LoggingLevel'] = input[:logging_level] unless input[:logging_level].nil?
        data['DataTraceEnabled'] = input[:data_trace_enabled] unless input[:data_trace_enabled].nil?
        data['ThrottlingBurstLimit'] = input[:throttling_burst_limit] unless input[:throttling_burst_limit].nil?
        data['ThrottlingRateLimit'] = Hearth::NumberHelper.serialize(input[:throttling_rate_limit]) unless input[:throttling_rate_limit].nil?
        data['CachingEnabled'] = input[:caching_enabled] unless input[:caching_enabled].nil?
        data['CacheTtlInSeconds'] = input[:cache_ttl_in_seconds] unless input[:cache_ttl_in_seconds].nil?
        data['CacheDataEncrypted'] = input[:cache_data_encrypted] unless input[:cache_data_encrypted].nil?
        data['RequireAuthorizationForCacheControl'] = input[:require_authorization_for_cache_control] unless input[:require_authorization_for_cache_control].nil?
        data['UnauthorizedCacheControlHeaderStrategy'] = input[:unauthorized_cache_control_header_strategy] unless input[:unauthorized_cache_control_header_strategy].nil?
        data['HttpMethod'] = input[:http_method] unless input[:http_method].nil?
        data['ResourcePath'] = input[:resource_path] unless input[:resource_path].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableDetails
    class AwsDynamoDbTableDetails
      def self.build(input)
        data = {}
        data['AttributeDefinitions'] = Builders::AwsDynamoDbTableAttributeDefinitionList.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['BillingModeSummary'] = Builders::AwsDynamoDbTableBillingModeSummary.build(input[:billing_mode_summary]) unless input[:billing_mode_summary].nil?
        data['CreationDateTime'] = input[:creation_date_time] unless input[:creation_date_time].nil?
        data['GlobalSecondaryIndexes'] = Builders::AwsDynamoDbTableGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['GlobalTableVersion'] = input[:global_table_version] unless input[:global_table_version].nil?
        data['ItemCount'] = input[:item_count] unless input[:item_count].nil?
        data['KeySchema'] = Builders::AwsDynamoDbTableKeySchemaList.build(input[:key_schema]) unless input[:key_schema].nil?
        data['LatestStreamArn'] = input[:latest_stream_arn] unless input[:latest_stream_arn].nil?
        data['LatestStreamLabel'] = input[:latest_stream_label] unless input[:latest_stream_label].nil?
        data['LocalSecondaryIndexes'] = Builders::AwsDynamoDbTableLocalSecondaryIndexList.build(input[:local_secondary_indexes]) unless input[:local_secondary_indexes].nil?
        data['ProvisionedThroughput'] = Builders::AwsDynamoDbTableProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['Replicas'] = Builders::AwsDynamoDbTableReplicaList.build(input[:replicas]) unless input[:replicas].nil?
        data['RestoreSummary'] = Builders::AwsDynamoDbTableRestoreSummary.build(input[:restore_summary]) unless input[:restore_summary].nil?
        data['SseDescription'] = Builders::AwsDynamoDbTableSseDescription.build(input[:sse_description]) unless input[:sse_description].nil?
        data['StreamSpecification'] = Builders::AwsDynamoDbTableStreamSpecification.build(input[:stream_specification]) unless input[:stream_specification].nil?
        data['TableId'] = input[:table_id] unless input[:table_id].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TableSizeBytes'] = input[:table_size_bytes] unless input[:table_size_bytes].nil?
        data['TableStatus'] = input[:table_status] unless input[:table_status].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableStreamSpecification
    class AwsDynamoDbTableStreamSpecification
      def self.build(input)
        data = {}
        data['StreamEnabled'] = input[:stream_enabled] unless input[:stream_enabled].nil?
        data['StreamViewType'] = input[:stream_view_type] unless input[:stream_view_type].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableSseDescription
    class AwsDynamoDbTableSseDescription
      def self.build(input)
        data = {}
        data['InaccessibleEncryptionDateTime'] = input[:inaccessible_encryption_date_time] unless input[:inaccessible_encryption_date_time].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['SseType'] = input[:sse_type] unless input[:sse_type].nil?
        data['KmsMasterKeyArn'] = input[:kms_master_key_arn] unless input[:kms_master_key_arn].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableRestoreSummary
    class AwsDynamoDbTableRestoreSummary
      def self.build(input)
        data = {}
        data['SourceBackupArn'] = input[:source_backup_arn] unless input[:source_backup_arn].nil?
        data['SourceTableArn'] = input[:source_table_arn] unless input[:source_table_arn].nil?
        data['RestoreDateTime'] = input[:restore_date_time] unless input[:restore_date_time].nil?
        data['RestoreInProgress'] = input[:restore_in_progress] unless input[:restore_in_progress].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableReplicaList
    class AwsDynamoDbTableReplicaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableReplica.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableReplica
    class AwsDynamoDbTableReplica
      def self.build(input)
        data = {}
        data['GlobalSecondaryIndexes'] = Builders::AwsDynamoDbTableReplicaGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['KmsMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = Builders::AwsDynamoDbTableProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['ReplicaStatus'] = input[:replica_status] unless input[:replica_status].nil?
        data['ReplicaStatusDescription'] = input[:replica_status_description] unless input[:replica_status_description].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableProvisionedThroughputOverride
    class AwsDynamoDbTableProvisionedThroughputOverride
      def self.build(input)
        data = {}
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableReplicaGlobalSecondaryIndexList
    class AwsDynamoDbTableReplicaGlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableReplicaGlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableReplicaGlobalSecondaryIndex
    class AwsDynamoDbTableReplicaGlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedThroughputOverride'] = Builders::AwsDynamoDbTableProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableProvisionedThroughput
    class AwsDynamoDbTableProvisionedThroughput
      def self.build(input)
        data = {}
        data['LastDecreaseDateTime'] = input[:last_decrease_date_time] unless input[:last_decrease_date_time].nil?
        data['LastIncreaseDateTime'] = input[:last_increase_date_time] unless input[:last_increase_date_time].nil?
        data['NumberOfDecreasesToday'] = input[:number_of_decreases_today] unless input[:number_of_decreases_today].nil?
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = input[:write_capacity_units] unless input[:write_capacity_units].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableLocalSecondaryIndexList
    class AwsDynamoDbTableLocalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableLocalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableLocalSecondaryIndex
    class AwsDynamoDbTableLocalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexArn'] = input[:index_arn] unless input[:index_arn].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = Builders::AwsDynamoDbTableKeySchemaList.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Builders::AwsDynamoDbTableProjection.build(input[:projection]) unless input[:projection].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableProjection
    class AwsDynamoDbTableProjection
      def self.build(input)
        data = {}
        data['NonKeyAttributes'] = Builders::StringList.build(input[:non_key_attributes]) unless input[:non_key_attributes].nil?
        data['ProjectionType'] = input[:projection_type] unless input[:projection_type].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableKeySchemaList
    class AwsDynamoDbTableKeySchemaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableKeySchema.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableKeySchema
    class AwsDynamoDbTableKeySchema
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['KeyType'] = input[:key_type] unless input[:key_type].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableGlobalSecondaryIndexList
    class AwsDynamoDbTableGlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableGlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableGlobalSecondaryIndex
    class AwsDynamoDbTableGlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['Backfilling'] = input[:backfilling] unless input[:backfilling].nil?
        data['IndexArn'] = input[:index_arn] unless input[:index_arn].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['IndexSizeBytes'] = input[:index_size_bytes] unless input[:index_size_bytes].nil?
        data['IndexStatus'] = input[:index_status] unless input[:index_status].nil?
        data['ItemCount'] = input[:item_count] unless input[:item_count].nil?
        data['KeySchema'] = Builders::AwsDynamoDbTableKeySchemaList.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Builders::AwsDynamoDbTableProjection.build(input[:projection]) unless input[:projection].nil?
        data['ProvisionedThroughput'] = Builders::AwsDynamoDbTableProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableBillingModeSummary
    class AwsDynamoDbTableBillingModeSummary
      def self.build(input)
        data = {}
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['LastUpdateToPayPerRequestDateTime'] = input[:last_update_to_pay_per_request_date_time] unless input[:last_update_to_pay_per_request_date_time].nil?
        data
      end
    end

    # List Builder for AwsDynamoDbTableAttributeDefinitionList
    class AwsDynamoDbTableAttributeDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsDynamoDbTableAttributeDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsDynamoDbTableAttributeDefinition
    class AwsDynamoDbTableAttributeDefinition
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeType'] = input[:attribute_type] unless input[:attribute_type].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayV2ApiDetails
    class AwsApiGatewayV2ApiDetails
      def self.build(input)
        data = {}
        data['ApiEndpoint'] = input[:api_endpoint] unless input[:api_endpoint].nil?
        data['ApiId'] = input[:api_id] unless input[:api_id].nil?
        data['ApiKeySelectionExpression'] = input[:api_key_selection_expression] unless input[:api_key_selection_expression].nil?
        data['CreatedDate'] = input[:created_date] unless input[:created_date].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ProtocolType'] = input[:protocol_type] unless input[:protocol_type].nil?
        data['RouteSelectionExpression'] = input[:route_selection_expression] unless input[:route_selection_expression].nil?
        data['CorsConfiguration'] = Builders::AwsCorsConfiguration.build(input[:cors_configuration]) unless input[:cors_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsCorsConfiguration
    class AwsCorsConfiguration
      def self.build(input)
        data = {}
        data['AllowOrigins'] = Builders::NonEmptyStringList.build(input[:allow_origins]) unless input[:allow_origins].nil?
        data['AllowCredentials'] = input[:allow_credentials] unless input[:allow_credentials].nil?
        data['ExposeHeaders'] = Builders::NonEmptyStringList.build(input[:expose_headers]) unless input[:expose_headers].nil?
        data['MaxAge'] = input[:max_age] unless input[:max_age].nil?
        data['AllowMethods'] = Builders::NonEmptyStringList.build(input[:allow_methods]) unless input[:allow_methods].nil?
        data['AllowHeaders'] = Builders::NonEmptyStringList.build(input[:allow_headers]) unless input[:allow_headers].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayV2StageDetails
    class AwsApiGatewayV2StageDetails
      def self.build(input)
        data = {}
        data['ClientCertificateId'] = input[:client_certificate_id] unless input[:client_certificate_id].nil?
        data['CreatedDate'] = input[:created_date] unless input[:created_date].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DefaultRouteSettings'] = Builders::AwsApiGatewayV2RouteSettings.build(input[:default_route_settings]) unless input[:default_route_settings].nil?
        data['DeploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['LastUpdatedDate'] = input[:last_updated_date] unless input[:last_updated_date].nil?
        data['RouteSettings'] = Builders::AwsApiGatewayV2RouteSettings.build(input[:route_settings]) unless input[:route_settings].nil?
        data['StageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['StageVariables'] = Builders::FieldMap.build(input[:stage_variables]) unless input[:stage_variables].nil?
        data['AccessLogSettings'] = Builders::AwsApiGatewayAccessLogSettings.build(input[:access_log_settings]) unless input[:access_log_settings].nil?
        data['AutoDeploy'] = input[:auto_deploy] unless input[:auto_deploy].nil?
        data['LastDeploymentStatusMessage'] = input[:last_deployment_status_message] unless input[:last_deployment_status_message].nil?
        data['ApiGatewayManaged'] = input[:api_gateway_managed] unless input[:api_gateway_managed].nil?
        data
      end
    end

    # Structure Builder for AwsApiGatewayV2RouteSettings
    class AwsApiGatewayV2RouteSettings
      def self.build(input)
        data = {}
        data['DetailedMetricsEnabled'] = input[:detailed_metrics_enabled] unless input[:detailed_metrics_enabled].nil?
        data['LoggingLevel'] = input[:logging_level] unless input[:logging_level].nil?
        data['DataTraceEnabled'] = input[:data_trace_enabled] unless input[:data_trace_enabled].nil?
        data['ThrottlingBurstLimit'] = input[:throttling_burst_limit] unless input[:throttling_burst_limit].nil?
        data['ThrottlingRateLimit'] = Hearth::NumberHelper.serialize(input[:throttling_rate_limit]) unless input[:throttling_rate_limit].nil?
        data
      end
    end

    # Structure Builder for AwsIamPolicyDetails
    class AwsIamPolicyDetails
      def self.build(input)
        data = {}
        data['AttachmentCount'] = input[:attachment_count] unless input[:attachment_count].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['DefaultVersionId'] = input[:default_version_id] unless input[:default_version_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IsAttachable'] = input[:is_attachable] unless input[:is_attachable].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['PermissionsBoundaryUsageCount'] = input[:permissions_boundary_usage_count] unless input[:permissions_boundary_usage_count].nil?
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['PolicyVersionList'] = Builders::AwsIamPolicyVersionList.build(input[:policy_version_list]) unless input[:policy_version_list].nil?
        data['UpdateDate'] = input[:update_date] unless input[:update_date].nil?
        data
      end
    end

    # List Builder for AwsIamPolicyVersionList
    class AwsIamPolicyVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamPolicyVersion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamPolicyVersion
    class AwsIamPolicyVersion
      def self.build(input)
        data = {}
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data['IsDefaultVersion'] = input[:is_default_version] unless input[:is_default_version].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data
      end
    end

    # Structure Builder for AwsIamUserDetails
    class AwsIamUserDetails
      def self.build(input)
        data = {}
        data['AttachedManagedPolicies'] = Builders::AwsIamAttachedManagedPolicyList.build(input[:attached_managed_policies]) unless input[:attached_managed_policies].nil?
        data['CreateDate'] = input[:create_date] unless input[:create_date].nil?
        data['GroupList'] = Builders::StringList.build(input[:group_list]) unless input[:group_list].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['PermissionsBoundary'] = Builders::AwsIamPermissionsBoundary.build(input[:permissions_boundary]) unless input[:permissions_boundary].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['UserPolicyList'] = Builders::AwsIamUserPolicyList.build(input[:user_policy_list]) unless input[:user_policy_list].nil?
        data
      end
    end

    # List Builder for AwsIamUserPolicyList
    class AwsIamUserPolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsIamUserPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsIamUserPolicy
    class AwsIamUserPolicy
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data
      end
    end

    # Structure Builder for AwsIamAccessKeyDetails
    class AwsIamAccessKeyDetails
      def self.build(input)
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['CreatedAt'] = input[:created_at] unless input[:created_at].nil?
        data['PrincipalId'] = input[:principal_id] unless input[:principal_id].nil?
        data['PrincipalType'] = input[:principal_type] unless input[:principal_type].nil?
        data['PrincipalName'] = input[:principal_name] unless input[:principal_name].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AccessKeyId'] = input[:access_key_id] unless input[:access_key_id].nil?
        data['SessionContext'] = Builders::AwsIamAccessKeySessionContext.build(input[:session_context]) unless input[:session_context].nil?
        data
      end
    end

    # Structure Builder for AwsIamAccessKeySessionContext
    class AwsIamAccessKeySessionContext
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::AwsIamAccessKeySessionContextAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['SessionIssuer'] = Builders::AwsIamAccessKeySessionContextSessionIssuer.build(input[:session_issuer]) unless input[:session_issuer].nil?
        data
      end
    end

    # Structure Builder for AwsIamAccessKeySessionContextSessionIssuer
    class AwsIamAccessKeySessionContextSessionIssuer
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['PrincipalId'] = input[:principal_id] unless input[:principal_id].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data
      end
    end

    # Structure Builder for AwsIamAccessKeySessionContextAttributes
    class AwsIamAccessKeySessionContextAttributes
      def self.build(input)
        data = {}
        data['MfaAuthenticated'] = input[:mfa_authenticated] unless input[:mfa_authenticated].nil?
        data['CreationDate'] = input[:creation_date] unless input[:creation_date].nil?
        data
      end
    end

    # Structure Builder for AwsSecretsManagerSecretDetails
    class AwsSecretsManagerSecretDetails
      def self.build(input)
        data = {}
        data['RotationRules'] = Builders::AwsSecretsManagerSecretRotationRules.build(input[:rotation_rules]) unless input[:rotation_rules].nil?
        data['RotationOccurredWithinFrequency'] = input[:rotation_occurred_within_frequency] unless input[:rotation_occurred_within_frequency].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['RotationEnabled'] = input[:rotation_enabled] unless input[:rotation_enabled].nil?
        data['RotationLambdaArn'] = input[:rotation_lambda_arn] unless input[:rotation_lambda_arn].nil?
        data['Deleted'] = input[:deleted] unless input[:deleted].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Structure Builder for AwsSecretsManagerSecretRotationRules
    class AwsSecretsManagerSecretRotationRules
      def self.build(input)
        data = {}
        data['AutomaticallyAfterDays'] = input[:automatically_after_days] unless input[:automatically_after_days].nil?
        data
      end
    end

    # Structure Builder for AwsS3ObjectDetails
    class AwsS3ObjectDetails
      def self.build(input)
        data = {}
        data['LastModified'] = input[:last_modified] unless input[:last_modified].nil?
        data['ETag'] = input[:e_tag] unless input[:e_tag].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['ServerSideEncryption'] = input[:server_side_encryption] unless input[:server_side_encryption].nil?
        data['SSEKMSKeyId'] = input[:ssekms_key_id] unless input[:ssekms_key_id].nil?
        data
      end
    end

    # Structure Builder for AwsS3AccountPublicAccessBlockDetails
    class AwsS3AccountPublicAccessBlockDetails
      def self.build(input)
        data = {}
        data['BlockPublicAcls'] = input[:block_public_acls] unless input[:block_public_acls].nil?
        data['BlockPublicPolicy'] = input[:block_public_policy] unless input[:block_public_policy].nil?
        data['IgnorePublicAcls'] = input[:ignore_public_acls] unless input[:ignore_public_acls].nil?
        data['RestrictPublicBuckets'] = input[:restrict_public_buckets] unless input[:restrict_public_buckets].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketDetails
    class AwsS3BucketDetails
      def self.build(input)
        data = {}
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['OwnerName'] = input[:owner_name] unless input[:owner_name].nil?
        data['OwnerAccountId'] = input[:owner_account_id] unless input[:owner_account_id].nil?
        data['CreatedAt'] = input[:created_at] unless input[:created_at].nil?
        data['ServerSideEncryptionConfiguration'] = Builders::AwsS3BucketServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        data['BucketLifecycleConfiguration'] = Builders::AwsS3BucketBucketLifecycleConfigurationDetails.build(input[:bucket_lifecycle_configuration]) unless input[:bucket_lifecycle_configuration].nil?
        data['PublicAccessBlockConfiguration'] = Builders::AwsS3AccountPublicAccessBlockDetails.build(input[:public_access_block_configuration]) unless input[:public_access_block_configuration].nil?
        data['AccessControlList'] = input[:access_control_list] unless input[:access_control_list].nil?
        data['BucketLoggingConfiguration'] = Builders::AwsS3BucketLoggingConfiguration.build(input[:bucket_logging_configuration]) unless input[:bucket_logging_configuration].nil?
        data['BucketWebsiteConfiguration'] = Builders::AwsS3BucketWebsiteConfiguration.build(input[:bucket_website_configuration]) unless input[:bucket_website_configuration].nil?
        data['BucketNotificationConfiguration'] = Builders::AwsS3BucketNotificationConfiguration.build(input[:bucket_notification_configuration]) unless input[:bucket_notification_configuration].nil?
        data['BucketVersioningConfiguration'] = Builders::AwsS3BucketBucketVersioningConfiguration.build(input[:bucket_versioning_configuration]) unless input[:bucket_versioning_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketVersioningConfiguration
    class AwsS3BucketBucketVersioningConfiguration
      def self.build(input)
        data = {}
        data['IsMfaDeleteEnabled'] = input[:is_mfa_delete_enabled] unless input[:is_mfa_delete_enabled].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketNotificationConfiguration
    class AwsS3BucketNotificationConfiguration
      def self.build(input)
        data = {}
        data['Configurations'] = Builders::AwsS3BucketNotificationConfigurationDetails.build(input[:configurations]) unless input[:configurations].nil?
        data
      end
    end

    # List Builder for AwsS3BucketNotificationConfigurationDetails
    class AwsS3BucketNotificationConfigurationDetails
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketNotificationConfigurationDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketNotificationConfigurationDetail
    class AwsS3BucketNotificationConfigurationDetail
      def self.build(input)
        data = {}
        data['Events'] = Builders::AwsS3BucketNotificationConfigurationEvents.build(input[:events]) unless input[:events].nil?
        data['Filter'] = Builders::AwsS3BucketNotificationConfigurationFilter.build(input[:filter]) unless input[:filter].nil?
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketNotificationConfigurationFilter
    class AwsS3BucketNotificationConfigurationFilter
      def self.build(input)
        data = {}
        data['S3KeyFilter'] = Builders::AwsS3BucketNotificationConfigurationS3KeyFilter.build(input[:s3_key_filter]) unless input[:s3_key_filter].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketNotificationConfigurationS3KeyFilter
    class AwsS3BucketNotificationConfigurationS3KeyFilter
      def self.build(input)
        data = {}
        data['FilterRules'] = Builders::AwsS3BucketNotificationConfigurationS3KeyFilterRules.build(input[:filter_rules]) unless input[:filter_rules].nil?
        data
      end
    end

    # List Builder for AwsS3BucketNotificationConfigurationS3KeyFilterRules
    class AwsS3BucketNotificationConfigurationS3KeyFilterRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketNotificationConfigurationS3KeyFilterRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketNotificationConfigurationS3KeyFilterRule
    class AwsS3BucketNotificationConfigurationS3KeyFilterRule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsS3BucketNotificationConfigurationEvents
    class AwsS3BucketNotificationConfigurationEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketWebsiteConfiguration
    class AwsS3BucketWebsiteConfiguration
      def self.build(input)
        data = {}
        data['ErrorDocument'] = input[:error_document] unless input[:error_document].nil?
        data['IndexDocumentSuffix'] = input[:index_document_suffix] unless input[:index_document_suffix].nil?
        data['RedirectAllRequestsTo'] = Builders::AwsS3BucketWebsiteConfigurationRedirectTo.build(input[:redirect_all_requests_to]) unless input[:redirect_all_requests_to].nil?
        data['RoutingRules'] = Builders::AwsS3BucketWebsiteConfigurationRoutingRules.build(input[:routing_rules]) unless input[:routing_rules].nil?
        data
      end
    end

    # List Builder for AwsS3BucketWebsiteConfigurationRoutingRules
    class AwsS3BucketWebsiteConfigurationRoutingRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketWebsiteConfigurationRoutingRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketWebsiteConfigurationRoutingRule
    class AwsS3BucketWebsiteConfigurationRoutingRule
      def self.build(input)
        data = {}
        data['Condition'] = Builders::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.build(input[:condition]) unless input[:condition].nil?
        data['Redirect'] = Builders::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.build(input[:redirect]) unless input[:redirect].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
    class AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
      def self.build(input)
        data = {}
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['HttpRedirectCode'] = input[:http_redirect_code] unless input[:http_redirect_code].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['ReplaceKeyPrefixWith'] = input[:replace_key_prefix_with] unless input[:replace_key_prefix_with].nil?
        data['ReplaceKeyWith'] = input[:replace_key_with] unless input[:replace_key_with].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketWebsiteConfigurationRoutingRuleCondition
    class AwsS3BucketWebsiteConfigurationRoutingRuleCondition
      def self.build(input)
        data = {}
        data['HttpErrorCodeReturnedEquals'] = input[:http_error_code_returned_equals] unless input[:http_error_code_returned_equals].nil?
        data['KeyPrefixEquals'] = input[:key_prefix_equals] unless input[:key_prefix_equals].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketWebsiteConfigurationRedirectTo
    class AwsS3BucketWebsiteConfigurationRedirectTo
      def self.build(input)
        data = {}
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketLoggingConfiguration
    class AwsS3BucketLoggingConfiguration
      def self.build(input)
        data = {}
        data['DestinationBucketName'] = input[:destination_bucket_name] unless input[:destination_bucket_name].nil?
        data['LogFilePrefix'] = input[:log_file_prefix] unless input[:log_file_prefix].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationDetails
    class AwsS3BucketBucketLifecycleConfigurationDetails
      def self.build(input)
        data = {}
        data['Rules'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesList.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for AwsS3BucketBucketLifecycleConfigurationRulesList
    class AwsS3BucketBucketLifecycleConfigurationRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketBucketLifecycleConfigurationRulesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesDetails
      def self.build(input)
        data = {}
        data['AbortIncompleteMultipartUpload'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.build(input[:abort_incomplete_multipart_upload]) unless input[:abort_incomplete_multipart_upload].nil?
        data['ExpirationDate'] = input[:expiration_date] unless input[:expiration_date].nil?
        data['ExpirationInDays'] = input[:expiration_in_days] unless input[:expiration_in_days].nil?
        data['ExpiredObjectDeleteMarker'] = input[:expired_object_delete_marker] unless input[:expired_object_delete_marker].nil?
        data['Filter'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.build(input[:filter]) unless input[:filter].nil?
        data['ID'] = input[:id] unless input[:id].nil?
        data['NoncurrentVersionExpirationInDays'] = input[:noncurrent_version_expiration_in_days] unless input[:noncurrent_version_expiration_in_days].nil?
        data['NoncurrentVersionTransitions'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.build(input[:noncurrent_version_transitions]) unless input[:noncurrent_version_transitions].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Transitions'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.build(input[:transitions]) unless input[:transitions].nil?
        data
      end
    end

    # List Builder for AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
      def self.build(input)
        data = {}
        data['Date'] = input[:date] unless input[:date].nil?
        data['Days'] = input[:days] unless input[:days].nil?
        data['StorageClass'] = input[:storage_class] unless input[:storage_class].nil?
        data
      end
    end

    # List Builder for AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
      def self.build(input)
        data = {}
        data['Days'] = input[:days] unless input[:days].nil?
        data['StorageClass'] = input[:storage_class] unless input[:storage_class].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
      def self.build(input)
        data = {}
        data['Predicate'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.build(input[:predicate]) unless input[:predicate].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
      def self.build(input)
        data = {}
        data['Operands'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.build(input[:operands]) unless input[:operands].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['Tag'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.build(input[:tag]) unless input[:tag].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
      def self.build(input)
        data = {}
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['Tag'] = Builders::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.build(input[:tag]) unless input[:tag].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
      def self.build(input)
        data = {}
        data['DaysAfterInitiation'] = input[:days_after_initiation] unless input[:days_after_initiation].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketServerSideEncryptionConfiguration
    class AwsS3BucketServerSideEncryptionConfiguration
      def self.build(input)
        data = {}
        data['Rules'] = Builders::AwsS3BucketServerSideEncryptionRules.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for AwsS3BucketServerSideEncryptionRules
    class AwsS3BucketServerSideEncryptionRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsS3BucketServerSideEncryptionRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsS3BucketServerSideEncryptionRule
    class AwsS3BucketServerSideEncryptionRule
      def self.build(input)
        data = {}
        data['ApplyServerSideEncryptionByDefault'] = Builders::AwsS3BucketServerSideEncryptionByDefault.build(input[:apply_server_side_encryption_by_default]) unless input[:apply_server_side_encryption_by_default].nil?
        data
      end
    end

    # Structure Builder for AwsS3BucketServerSideEncryptionByDefault
    class AwsS3BucketServerSideEncryptionByDefault
      def self.build(input)
        data = {}
        data['SSEAlgorithm'] = input[:sse_algorithm] unless input[:sse_algorithm].nil?
        data['KMSMasterKeyID'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainDetails
    class AwsElasticsearchDomainDetails
      def self.build(input)
        data = {}
        data['AccessPolicies'] = input[:access_policies] unless input[:access_policies].nil?
        data['DomainEndpointOptions'] = Builders::AwsElasticsearchDomainDomainEndpointOptions.build(input[:domain_endpoint_options]) unless input[:domain_endpoint_options].nil?
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['Endpoints'] = Builders::FieldMap.build(input[:endpoints]) unless input[:endpoints].nil?
        data['ElasticsearchVersion'] = input[:elasticsearch_version] unless input[:elasticsearch_version].nil?
        data['ElasticsearchClusterConfig'] = Builders::AwsElasticsearchDomainElasticsearchClusterConfigDetails.build(input[:elasticsearch_cluster_config]) unless input[:elasticsearch_cluster_config].nil?
        data['EncryptionAtRestOptions'] = Builders::AwsElasticsearchDomainEncryptionAtRestOptions.build(input[:encryption_at_rest_options]) unless input[:encryption_at_rest_options].nil?
        data['LogPublishingOptions'] = Builders::AwsElasticsearchDomainLogPublishingOptions.build(input[:log_publishing_options]) unless input[:log_publishing_options].nil?
        data['NodeToNodeEncryptionOptions'] = Builders::AwsElasticsearchDomainNodeToNodeEncryptionOptions.build(input[:node_to_node_encryption_options]) unless input[:node_to_node_encryption_options].nil?
        data['ServiceSoftwareOptions'] = Builders::AwsElasticsearchDomainServiceSoftwareOptions.build(input[:service_software_options]) unless input[:service_software_options].nil?
        data['VPCOptions'] = Builders::AwsElasticsearchDomainVPCOptions.build(input[:vpc_options]) unless input[:vpc_options].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainVPCOptions
    class AwsElasticsearchDomainVPCOptions
      def self.build(input)
        data = {}
        data['AvailabilityZones'] = Builders::NonEmptyStringList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['SecurityGroupIds'] = Builders::NonEmptyStringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['SubnetIds'] = Builders::NonEmptyStringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['VPCId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainServiceSoftwareOptions
    class AwsElasticsearchDomainServiceSoftwareOptions
      def self.build(input)
        data = {}
        data['AutomatedUpdateDate'] = input[:automated_update_date] unless input[:automated_update_date].nil?
        data['Cancellable'] = input[:cancellable] unless input[:cancellable].nil?
        data['CurrentVersion'] = input[:current_version] unless input[:current_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NewVersion'] = input[:new_version] unless input[:new_version].nil?
        data['UpdateAvailable'] = input[:update_available] unless input[:update_available].nil?
        data['UpdateStatus'] = input[:update_status] unless input[:update_status].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainNodeToNodeEncryptionOptions
    class AwsElasticsearchDomainNodeToNodeEncryptionOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainLogPublishingOptions
    class AwsElasticsearchDomainLogPublishingOptions
      def self.build(input)
        data = {}
        data['IndexSlowLogs'] = Builders::AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(input[:index_slow_logs]) unless input[:index_slow_logs].nil?
        data['SearchSlowLogs'] = Builders::AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(input[:search_slow_logs]) unless input[:search_slow_logs].nil?
        data['AuditLogs'] = Builders::AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(input[:audit_logs]) unless input[:audit_logs].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainLogPublishingOptionsLogConfig
    class AwsElasticsearchDomainLogPublishingOptionsLogConfig
      def self.build(input)
        data = {}
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainEncryptionAtRestOptions
    class AwsElasticsearchDomainEncryptionAtRestOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainElasticsearchClusterConfigDetails
    class AwsElasticsearchDomainElasticsearchClusterConfigDetails
      def self.build(input)
        data = {}
        data['DedicatedMasterCount'] = input[:dedicated_master_count] unless input[:dedicated_master_count].nil?
        data['DedicatedMasterEnabled'] = input[:dedicated_master_enabled] unless input[:dedicated_master_enabled].nil?
        data['DedicatedMasterType'] = input[:dedicated_master_type] unless input[:dedicated_master_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['ZoneAwarenessConfig'] = Builders::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.build(input[:zone_awareness_config]) unless input[:zone_awareness_config].nil?
        data['ZoneAwarenessEnabled'] = input[:zone_awareness_enabled] unless input[:zone_awareness_enabled].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
    class AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
      def self.build(input)
        data = {}
        data['AvailabilityZoneCount'] = input[:availability_zone_count] unless input[:availability_zone_count].nil?
        data
      end
    end

    # Structure Builder for AwsElasticsearchDomainDomainEndpointOptions
    class AwsElasticsearchDomainDomainEndpointOptions
      def self.build(input)
        data = {}
        data['EnforceHTTPS'] = input[:enforce_https] unless input[:enforce_https].nil?
        data['TLSSecurityPolicy'] = input[:tls_security_policy] unless input[:tls_security_policy].nil?
        data
      end
    end

    # Structure Builder for AwsElasticBeanstalkEnvironmentDetails
    class AwsElasticBeanstalkEnvironmentDetails
      def self.build(input)
        data = {}
        data['ApplicationName'] = input[:application_name] unless input[:application_name].nil?
        data['Cname'] = input[:cname] unless input[:cname].nil?
        data['DateCreated'] = input[:date_created] unless input[:date_created].nil?
        data['DateUpdated'] = input[:date_updated] unless input[:date_updated].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EndpointUrl'] = input[:endpoint_url] unless input[:endpoint_url].nil?
        data['EnvironmentArn'] = input[:environment_arn] unless input[:environment_arn].nil?
        data['EnvironmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['EnvironmentLinks'] = Builders::AwsElasticBeanstalkEnvironmentEnvironmentLinks.build(input[:environment_links]) unless input[:environment_links].nil?
        data['EnvironmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['OptionSettings'] = Builders::AwsElasticBeanstalkEnvironmentOptionSettings.build(input[:option_settings]) unless input[:option_settings].nil?
        data['PlatformArn'] = input[:platform_arn] unless input[:platform_arn].nil?
        data['SolutionStackName'] = input[:solution_stack_name] unless input[:solution_stack_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Tier'] = Builders::AwsElasticBeanstalkEnvironmentTier.build(input[:tier]) unless input[:tier].nil?
        data['VersionLabel'] = input[:version_label] unless input[:version_label].nil?
        data
      end
    end

    # Structure Builder for AwsElasticBeanstalkEnvironmentTier
    class AwsElasticBeanstalkEnvironmentTier
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for AwsElasticBeanstalkEnvironmentOptionSettings
    class AwsElasticBeanstalkEnvironmentOptionSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElasticBeanstalkEnvironmentOptionSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElasticBeanstalkEnvironmentOptionSetting
    class AwsElasticBeanstalkEnvironmentOptionSetting
      def self.build(input)
        data = {}
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['OptionName'] = input[:option_name] unless input[:option_name].nil?
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AwsElasticBeanstalkEnvironmentEnvironmentLinks
    class AwsElasticBeanstalkEnvironmentEnvironmentLinks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElasticBeanstalkEnvironmentEnvironmentLink.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElasticBeanstalkEnvironmentEnvironmentLink
    class AwsElasticBeanstalkEnvironmentEnvironmentLink
      def self.build(input)
        data = {}
        data['EnvironmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        data
      end
    end

    # Structure Builder for AwsElbv2LoadBalancerDetails
    class AwsElbv2LoadBalancerDetails
      def self.build(input)
        data = {}
        data['AvailabilityZones'] = Builders::AvailabilityZones.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['CanonicalHostedZoneId'] = input[:canonical_hosted_zone_id] unless input[:canonical_hosted_zone_id].nil?
        data['CreatedTime'] = input[:created_time] unless input[:created_time].nil?
        data['DNSName'] = input[:dns_name] unless input[:dns_name].nil?
        data['IpAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['Scheme'] = input[:scheme] unless input[:scheme].nil?
        data['SecurityGroups'] = Builders::SecurityGroups.build(input[:security_groups]) unless input[:security_groups].nil?
        data['State'] = Builders::LoadBalancerState.build(input[:state]) unless input[:state].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['LoadBalancerAttributes'] = Builders::AwsElbv2LoadBalancerAttributes.build(input[:load_balancer_attributes]) unless input[:load_balancer_attributes].nil?
        data
      end
    end

    # List Builder for AwsElbv2LoadBalancerAttributes
    class AwsElbv2LoadBalancerAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsElbv2LoadBalancerAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsElbv2LoadBalancerAttribute
    class AwsElbv2LoadBalancerAttribute
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for LoadBalancerState
    class LoadBalancerState
      def self.build(input)
        data = {}
        data['Code'] = input[:code] unless input[:code].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AvailabilityZones
    class AvailabilityZones
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AvailabilityZone.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AvailabilityZone
    class AvailabilityZone
      def self.build(input)
        data = {}
        data['ZoneName'] = input[:zone_name] unless input[:zone_name].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data
      end
    end

    # Structure Builder for AwsEc2NetworkAclDetails
    class AwsEc2NetworkAclDetails
      def self.build(input)
        data = {}
        data['IsDefault'] = input[:is_default] unless input[:is_default].nil?
        data['NetworkAclId'] = input[:network_acl_id] unless input[:network_acl_id].nil?
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Associations'] = Builders::AwsEc2NetworkAclAssociationList.build(input[:associations]) unless input[:associations].nil?
        data['Entries'] = Builders::AwsEc2NetworkAclEntryList.build(input[:entries]) unless input[:entries].nil?
        data
      end
    end

    # List Builder for AwsEc2NetworkAclEntryList
    class AwsEc2NetworkAclEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2NetworkAclEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2NetworkAclEntry
    class AwsEc2NetworkAclEntry
      def self.build(input)
        data = {}
        data['CidrBlock'] = input[:cidr_block] unless input[:cidr_block].nil?
        data['Egress'] = input[:egress] unless input[:egress].nil?
        data['IcmpTypeCode'] = Builders::IcmpTypeCode.build(input[:icmp_type_code]) unless input[:icmp_type_code].nil?
        data['Ipv6CidrBlock'] = input[:ipv6_cidr_block] unless input[:ipv6_cidr_block].nil?
        data['PortRange'] = Builders::PortRangeFromTo.build(input[:port_range]) unless input[:port_range].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['RuleAction'] = input[:rule_action] unless input[:rule_action].nil?
        data['RuleNumber'] = input[:rule_number] unless input[:rule_number].nil?
        data
      end
    end

    # Structure Builder for PortRangeFromTo
    class PortRangeFromTo
      def self.build(input)
        data = {}
        data['From'] = input[:from] unless input[:from].nil?
        data['To'] = input[:to] unless input[:to].nil?
        data
      end
    end

    # Structure Builder for IcmpTypeCode
    class IcmpTypeCode
      def self.build(input)
        data = {}
        data['Code'] = input[:code] unless input[:code].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AwsEc2NetworkAclAssociationList
    class AwsEc2NetworkAclAssociationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2NetworkAclAssociation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2NetworkAclAssociation
    class AwsEc2NetworkAclAssociation
      def self.build(input)
        data = {}
        data['NetworkAclAssociationId'] = input[:network_acl_association_id] unless input[:network_acl_association_id].nil?
        data['NetworkAclId'] = input[:network_acl_id] unless input[:network_acl_id].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data
      end
    end

    # Structure Builder for AwsEc2SubnetDetails
    class AwsEc2SubnetDetails
      def self.build(input)
        data = {}
        data['AssignIpv6AddressOnCreation'] = input[:assign_ipv6_address_on_creation] unless input[:assign_ipv6_address_on_creation].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['AvailabilityZoneId'] = input[:availability_zone_id] unless input[:availability_zone_id].nil?
        data['AvailableIpAddressCount'] = input[:available_ip_address_count] unless input[:available_ip_address_count].nil?
        data['CidrBlock'] = input[:cidr_block] unless input[:cidr_block].nil?
        data['DefaultForAz'] = input[:default_for_az] unless input[:default_for_az].nil?
        data['MapPublicIpOnLaunch'] = input[:map_public_ip_on_launch] unless input[:map_public_ip_on_launch].nil?
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['SubnetArn'] = input[:subnet_arn] unless input[:subnet_arn].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Ipv6CidrBlockAssociationSet'] = Builders::Ipv6CidrBlockAssociationList.build(input[:ipv6_cidr_block_association_set]) unless input[:ipv6_cidr_block_association_set].nil?
        data
      end
    end

    # List Builder for Ipv6CidrBlockAssociationList
    class Ipv6CidrBlockAssociationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Ipv6CidrBlockAssociation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ipv6CidrBlockAssociation
    class Ipv6CidrBlockAssociation
      def self.build(input)
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['Ipv6CidrBlock'] = input[:ipv6_cidr_block] unless input[:ipv6_cidr_block].nil?
        data['CidrBlockState'] = input[:cidr_block_state] unless input[:cidr_block_state].nil?
        data
      end
    end

    # Structure Builder for AwsEc2EipDetails
    class AwsEc2EipDetails
      def self.build(input)
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['PublicIp'] = input[:public_ip] unless input[:public_ip].nil?
        data['AllocationId'] = input[:allocation_id] unless input[:allocation_id].nil?
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['PublicIpv4Pool'] = input[:public_ipv4_pool] unless input[:public_ipv4_pool].nil?
        data['NetworkBorderGroup'] = input[:network_border_group] unless input[:network_border_group].nil?
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data['NetworkInterfaceOwnerId'] = input[:network_interface_owner_id] unless input[:network_interface_owner_id].nil?
        data['PrivateIpAddress'] = input[:private_ip_address] unless input[:private_ip_address].nil?
        data
      end
    end

    # Structure Builder for AwsEc2VpcDetails
    class AwsEc2VpcDetails
      def self.build(input)
        data = {}
        data['CidrBlockAssociationSet'] = Builders::CidrBlockAssociationList.build(input[:cidr_block_association_set]) unless input[:cidr_block_association_set].nil?
        data['Ipv6CidrBlockAssociationSet'] = Builders::Ipv6CidrBlockAssociationList.build(input[:ipv6_cidr_block_association_set]) unless input[:ipv6_cidr_block_association_set].nil?
        data['DhcpOptionsId'] = input[:dhcp_options_id] unless input[:dhcp_options_id].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # List Builder for CidrBlockAssociationList
    class CidrBlockAssociationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CidrBlockAssociation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CidrBlockAssociation
    class CidrBlockAssociation
      def self.build(input)
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['CidrBlock'] = input[:cidr_block] unless input[:cidr_block].nil?
        data['CidrBlockState'] = input[:cidr_block_state] unless input[:cidr_block_state].nil?
        data
      end
    end

    # Structure Builder for AwsEc2VolumeDetails
    class AwsEc2VolumeDetails
      def self.build(input)
        data = {}
        data['CreateTime'] = input[:create_time] unless input[:create_time].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Attachments'] = Builders::AwsEc2VolumeAttachmentList.build(input[:attachments]) unless input[:attachments].nil?
        data
      end
    end

    # List Builder for AwsEc2VolumeAttachmentList
    class AwsEc2VolumeAttachmentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2VolumeAttachment.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2VolumeAttachment
    class AwsEc2VolumeAttachment
      def self.build(input)
        data = {}
        data['AttachTime'] = input[:attach_time] unless input[:attach_time].nil?
        data['DeleteOnTermination'] = input[:delete_on_termination] unless input[:delete_on_termination].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupDetails
    class AwsEc2SecurityGroupDetails
      def self.build(input)
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['IpPermissions'] = Builders::AwsEc2SecurityGroupIpPermissionList.build(input[:ip_permissions]) unless input[:ip_permissions].nil?
        data['IpPermissionsEgress'] = Builders::AwsEc2SecurityGroupIpPermissionList.build(input[:ip_permissions_egress]) unless input[:ip_permissions_egress].nil?
        data
      end
    end

    # List Builder for AwsEc2SecurityGroupIpPermissionList
    class AwsEc2SecurityGroupIpPermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2SecurityGroupIpPermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupIpPermission
    class AwsEc2SecurityGroupIpPermission
      def self.build(input)
        data = {}
        data['IpProtocol'] = input[:ip_protocol] unless input[:ip_protocol].nil?
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data['UserIdGroupPairs'] = Builders::AwsEc2SecurityGroupUserIdGroupPairList.build(input[:user_id_group_pairs]) unless input[:user_id_group_pairs].nil?
        data['IpRanges'] = Builders::AwsEc2SecurityGroupIpRangeList.build(input[:ip_ranges]) unless input[:ip_ranges].nil?
        data['Ipv6Ranges'] = Builders::AwsEc2SecurityGroupIpv6RangeList.build(input[:ipv6_ranges]) unless input[:ipv6_ranges].nil?
        data['PrefixListIds'] = Builders::AwsEc2SecurityGroupPrefixListIdList.build(input[:prefix_list_ids]) unless input[:prefix_list_ids].nil?
        data
      end
    end

    # List Builder for AwsEc2SecurityGroupPrefixListIdList
    class AwsEc2SecurityGroupPrefixListIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2SecurityGroupPrefixListId.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupPrefixListId
    class AwsEc2SecurityGroupPrefixListId
      def self.build(input)
        data = {}
        data['PrefixListId'] = input[:prefix_list_id] unless input[:prefix_list_id].nil?
        data
      end
    end

    # List Builder for AwsEc2SecurityGroupIpv6RangeList
    class AwsEc2SecurityGroupIpv6RangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2SecurityGroupIpv6Range.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupIpv6Range
    class AwsEc2SecurityGroupIpv6Range
      def self.build(input)
        data = {}
        data['CidrIpv6'] = input[:cidr_ipv6] unless input[:cidr_ipv6].nil?
        data
      end
    end

    # List Builder for AwsEc2SecurityGroupIpRangeList
    class AwsEc2SecurityGroupIpRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2SecurityGroupIpRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupIpRange
    class AwsEc2SecurityGroupIpRange
      def self.build(input)
        data = {}
        data['CidrIp'] = input[:cidr_ip] unless input[:cidr_ip].nil?
        data
      end
    end

    # List Builder for AwsEc2SecurityGroupUserIdGroupPairList
    class AwsEc2SecurityGroupUserIdGroupPairList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2SecurityGroupUserIdGroupPair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2SecurityGroupUserIdGroupPair
    class AwsEc2SecurityGroupUserIdGroupPair
      def self.build(input)
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['PeeringStatus'] = input[:peering_status] unless input[:peering_status].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['VpcPeeringConnectionId'] = input[:vpc_peering_connection_id] unless input[:vpc_peering_connection_id].nil?
        data
      end
    end

    # Structure Builder for AwsEc2NetworkInterfaceDetails
    class AwsEc2NetworkInterfaceDetails
      def self.build(input)
        data = {}
        data['Attachment'] = Builders::AwsEc2NetworkInterfaceAttachment.build(input[:attachment]) unless input[:attachment].nil?
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data['SecurityGroups'] = Builders::AwsEc2NetworkInterfaceSecurityGroupList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['SourceDestCheck'] = input[:source_dest_check] unless input[:source_dest_check].nil?
        data['IpV6Addresses'] = Builders::AwsEc2NetworkInterfaceIpV6AddressList.build(input[:ip_v6_addresses]) unless input[:ip_v6_addresses].nil?
        data['PrivateIpAddresses'] = Builders::AwsEc2NetworkInterfacePrivateIpAddressList.build(input[:private_ip_addresses]) unless input[:private_ip_addresses].nil?
        data['PublicDnsName'] = input[:public_dns_name] unless input[:public_dns_name].nil?
        data['PublicIp'] = input[:public_ip] unless input[:public_ip].nil?
        data
      end
    end

    # List Builder for AwsEc2NetworkInterfacePrivateIpAddressList
    class AwsEc2NetworkInterfacePrivateIpAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2NetworkInterfacePrivateIpAddressDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2NetworkInterfacePrivateIpAddressDetail
    class AwsEc2NetworkInterfacePrivateIpAddressDetail
      def self.build(input)
        data = {}
        data['PrivateIpAddress'] = input[:private_ip_address] unless input[:private_ip_address].nil?
        data['PrivateDnsName'] = input[:private_dns_name] unless input[:private_dns_name].nil?
        data
      end
    end

    # List Builder for AwsEc2NetworkInterfaceIpV6AddressList
    class AwsEc2NetworkInterfaceIpV6AddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2NetworkInterfaceIpV6AddressDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2NetworkInterfaceIpV6AddressDetail
    class AwsEc2NetworkInterfaceIpV6AddressDetail
      def self.build(input)
        data = {}
        data['IpV6Address'] = input[:ip_v6_address] unless input[:ip_v6_address].nil?
        data
      end
    end

    # List Builder for AwsEc2NetworkInterfaceSecurityGroupList
    class AwsEc2NetworkInterfaceSecurityGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2NetworkInterfaceSecurityGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2NetworkInterfaceSecurityGroup
    class AwsEc2NetworkInterfaceSecurityGroup
      def self.build(input)
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data
      end
    end

    # Structure Builder for AwsEc2NetworkInterfaceAttachment
    class AwsEc2NetworkInterfaceAttachment
      def self.build(input)
        data = {}
        data['AttachTime'] = input[:attach_time] unless input[:attach_time].nil?
        data['AttachmentId'] = input[:attachment_id] unless input[:attachment_id].nil?
        data['DeleteOnTermination'] = input[:delete_on_termination] unless input[:delete_on_termination].nil?
        data['DeviceIndex'] = input[:device_index] unless input[:device_index].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['InstanceOwnerId'] = input[:instance_owner_id] unless input[:instance_owner_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsEc2InstanceDetails
    class AwsEc2InstanceDetails
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['IpV4Addresses'] = Builders::StringList.build(input[:ip_v4_addresses]) unless input[:ip_v4_addresses].nil?
        data['IpV6Addresses'] = Builders::StringList.build(input[:ip_v6_addresses]) unless input[:ip_v6_addresses].nil?
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['IamInstanceProfileArn'] = input[:iam_instance_profile_arn] unless input[:iam_instance_profile_arn].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['LaunchedAt'] = input[:launched_at] unless input[:launched_at].nil?
        data['NetworkInterfaces'] = Builders::AwsEc2InstanceNetworkInterfacesList.build(input[:network_interfaces]) unless input[:network_interfaces].nil?
        data
      end
    end

    # List Builder for AwsEc2InstanceNetworkInterfacesList
    class AwsEc2InstanceNetworkInterfacesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsEc2InstanceNetworkInterfacesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsEc2InstanceNetworkInterfacesDetails
    class AwsEc2InstanceNetworkInterfacesDetails
      def self.build(input)
        data = {}
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionDetails
    class AwsCloudFrontDistributionDetails
      def self.build(input)
        data = {}
        data['CacheBehaviors'] = Builders::AwsCloudFrontDistributionCacheBehaviors.build(input[:cache_behaviors]) unless input[:cache_behaviors].nil?
        data['DefaultCacheBehavior'] = Builders::AwsCloudFrontDistributionDefaultCacheBehavior.build(input[:default_cache_behavior]) unless input[:default_cache_behavior].nil?
        data['DefaultRootObject'] = input[:default_root_object] unless input[:default_root_object].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['ETag'] = input[:e_tag] unless input[:e_tag].nil?
        data['LastModifiedTime'] = input[:last_modified_time] unless input[:last_modified_time].nil?
        data['Logging'] = Builders::AwsCloudFrontDistributionLogging.build(input[:logging]) unless input[:logging].nil?
        data['Origins'] = Builders::AwsCloudFrontDistributionOrigins.build(input[:origins]) unless input[:origins].nil?
        data['OriginGroups'] = Builders::AwsCloudFrontDistributionOriginGroups.build(input[:origin_groups]) unless input[:origin_groups].nil?
        data['ViewerCertificate'] = Builders::AwsCloudFrontDistributionViewerCertificate.build(input[:viewer_certificate]) unless input[:viewer_certificate].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['WebAclId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionViewerCertificate
    class AwsCloudFrontDistributionViewerCertificate
      def self.build(input)
        data = {}
        data['AcmCertificateArn'] = input[:acm_certificate_arn] unless input[:acm_certificate_arn].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['CertificateSource'] = input[:certificate_source] unless input[:certificate_source].nil?
        data['CloudFrontDefaultCertificate'] = input[:cloud_front_default_certificate] unless input[:cloud_front_default_certificate].nil?
        data['IamCertificateId'] = input[:iam_certificate_id] unless input[:iam_certificate_id].nil?
        data['MinimumProtocolVersion'] = input[:minimum_protocol_version] unless input[:minimum_protocol_version].nil?
        data['SslSupportMethod'] = input[:ssl_support_method] unless input[:ssl_support_method].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginGroups
    class AwsCloudFrontDistributionOriginGroups
      def self.build(input)
        data = {}
        data['Items'] = Builders::AwsCloudFrontDistributionOriginGroupsItemList.build(input[:items]) unless input[:items].nil?
        data
      end
    end

    # List Builder for AwsCloudFrontDistributionOriginGroupsItemList
    class AwsCloudFrontDistributionOriginGroupsItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCloudFrontDistributionOriginGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginGroup
    class AwsCloudFrontDistributionOriginGroup
      def self.build(input)
        data = {}
        data['FailoverCriteria'] = Builders::AwsCloudFrontDistributionOriginGroupFailover.build(input[:failover_criteria]) unless input[:failover_criteria].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginGroupFailover
    class AwsCloudFrontDistributionOriginGroupFailover
      def self.build(input)
        data = {}
        data['StatusCodes'] = Builders::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.build(input[:status_codes]) unless input[:status_codes].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
      def self.build(input)
        data = {}
        data['Items'] = Builders::AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.build(input[:items]) unless input[:items].nil?
        data['Quantity'] = input[:quantity] unless input[:quantity].nil?
        data
      end
    end

    # List Builder for AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOrigins
    class AwsCloudFrontDistributionOrigins
      def self.build(input)
        data = {}
        data['Items'] = Builders::AwsCloudFrontDistributionOriginItemList.build(input[:items]) unless input[:items].nil?
        data
      end
    end

    # List Builder for AwsCloudFrontDistributionOriginItemList
    class AwsCloudFrontDistributionOriginItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCloudFrontDistributionOriginItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginItem
    class AwsCloudFrontDistributionOriginItem
      def self.build(input)
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['OriginPath'] = input[:origin_path] unless input[:origin_path].nil?
        data['S3OriginConfig'] = Builders::AwsCloudFrontDistributionOriginS3OriginConfig.build(input[:s3_origin_config]) unless input[:s3_origin_config].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionOriginS3OriginConfig
    class AwsCloudFrontDistributionOriginS3OriginConfig
      def self.build(input)
        data = {}
        data['OriginAccessIdentity'] = input[:origin_access_identity] unless input[:origin_access_identity].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionLogging
    class AwsCloudFrontDistributionLogging
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['IncludeCookies'] = input[:include_cookies] unless input[:include_cookies].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionDefaultCacheBehavior
    class AwsCloudFrontDistributionDefaultCacheBehavior
      def self.build(input)
        data = {}
        data['ViewerProtocolPolicy'] = input[:viewer_protocol_policy] unless input[:viewer_protocol_policy].nil?
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionCacheBehaviors
    class AwsCloudFrontDistributionCacheBehaviors
      def self.build(input)
        data = {}
        data['Items'] = Builders::AwsCloudFrontDistributionCacheBehaviorsItemList.build(input[:items]) unless input[:items].nil?
        data
      end
    end

    # List Builder for AwsCloudFrontDistributionCacheBehaviorsItemList
    class AwsCloudFrontDistributionCacheBehaviorsItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCloudFrontDistributionCacheBehavior.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCloudFrontDistributionCacheBehavior
    class AwsCloudFrontDistributionCacheBehavior
      def self.build(input)
        data = {}
        data['ViewerProtocolPolicy'] = input[:viewer_protocol_policy] unless input[:viewer_protocol_policy].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectDetails
    class AwsCodeBuildProjectDetails
      def self.build(input)
        data = {}
        data['EncryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['Artifacts'] = Builders::AwsCodeBuildProjectArtifactsList.build(input[:artifacts]) unless input[:artifacts].nil?
        data['Environment'] = Builders::AwsCodeBuildProjectEnvironment.build(input[:environment]) unless input[:environment].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Source'] = Builders::AwsCodeBuildProjectSource.build(input[:source]) unless input[:source].nil?
        data['ServiceRole'] = input[:service_role] unless input[:service_role].nil?
        data['LogsConfig'] = Builders::AwsCodeBuildProjectLogsConfigDetails.build(input[:logs_config]) unless input[:logs_config].nil?
        data['VpcConfig'] = Builders::AwsCodeBuildProjectVpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['SecondaryArtifacts'] = Builders::AwsCodeBuildProjectArtifactsList.build(input[:secondary_artifacts]) unless input[:secondary_artifacts].nil?
        data
      end
    end

    # List Builder for AwsCodeBuildProjectArtifactsList
    class AwsCodeBuildProjectArtifactsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCodeBuildProjectArtifactsDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectArtifactsDetails
    class AwsCodeBuildProjectArtifactsDetails
      def self.build(input)
        data = {}
        data['ArtifactIdentifier'] = input[:artifact_identifier] unless input[:artifact_identifier].nil?
        data['EncryptionDisabled'] = input[:encryption_disabled] unless input[:encryption_disabled].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['NamespaceType'] = input[:namespace_type] unless input[:namespace_type].nil?
        data['OverrideArtifactName'] = input[:override_artifact_name] unless input[:override_artifact_name].nil?
        data['Packaging'] = input[:packaging] unless input[:packaging].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectVpcConfig
    class AwsCodeBuildProjectVpcConfig
      def self.build(input)
        data = {}
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Subnets'] = Builders::NonEmptyStringList.build(input[:subnets]) unless input[:subnets].nil?
        data['SecurityGroupIds'] = Builders::NonEmptyStringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectLogsConfigDetails
    class AwsCodeBuildProjectLogsConfigDetails
      def self.build(input)
        data = {}
        data['CloudWatchLogs'] = Builders::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        data['S3Logs'] = Builders::AwsCodeBuildProjectLogsConfigS3LogsDetails.build(input[:s3_logs]) unless input[:s3_logs].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectLogsConfigS3LogsDetails
    class AwsCodeBuildProjectLogsConfigS3LogsDetails
      def self.build(input)
        data = {}
        data['EncryptionDisabled'] = input[:encryption_disabled] unless input[:encryption_disabled].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
    class AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
      def self.build(input)
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectSource
    class AwsCodeBuildProjectSource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['GitCloneDepth'] = input[:git_clone_depth] unless input[:git_clone_depth].nil?
        data['InsecureSsl'] = input[:insecure_ssl] unless input[:insecure_ssl].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectEnvironment
    class AwsCodeBuildProjectEnvironment
      def self.build(input)
        data = {}
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['EnvironmentVariables'] = Builders::AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['PrivilegedMode'] = input[:privileged_mode] unless input[:privileged_mode].nil?
        data['ImagePullCredentialsType'] = input[:image_pull_credentials_type] unless input[:image_pull_credentials_type].nil?
        data['RegistryCredential'] = Builders::AwsCodeBuildProjectEnvironmentRegistryCredential.build(input[:registry_credential]) unless input[:registry_credential].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectEnvironmentRegistryCredential
    class AwsCodeBuildProjectEnvironmentRegistryCredential
      def self.build(input)
        data = {}
        data['Credential'] = input[:credential] unless input[:credential].nil?
        data['CredentialProvider'] = input[:credential_provider] unless input[:credential_provider].nil?
        data
      end
    end

    # List Builder for AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupDetails
    class AwsAutoScalingAutoScalingGroupDetails
      def self.build(input)
        data = {}
        data['LaunchConfigurationName'] = input[:launch_configuration_name] unless input[:launch_configuration_name].nil?
        data['LoadBalancerNames'] = Builders::StringList.build(input[:load_balancer_names]) unless input[:load_balancer_names].nil?
        data['HealthCheckType'] = input[:health_check_type] unless input[:health_check_type].nil?
        data['HealthCheckGracePeriod'] = input[:health_check_grace_period] unless input[:health_check_grace_period].nil?
        data['CreatedTime'] = input[:created_time] unless input[:created_time].nil?
        data['MixedInstancesPolicy'] = Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.build(input[:mixed_instances_policy]) unless input[:mixed_instances_policy].nil?
        data['AvailabilityZones'] = Builders::AwsAutoScalingAutoScalingGroupAvailabilityZonesList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['LaunchTemplate'] = Builders::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['CapacityRebalance'] = input[:capacity_rebalance] unless input[:capacity_rebalance].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
    class AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['LaunchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['LaunchTemplateName'] = input[:launch_template_name] unless input[:launch_template_name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for AwsAutoScalingAutoScalingGroupAvailabilityZonesList
    class AwsAutoScalingAutoScalingGroupAvailabilityZonesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
    class AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
      def self.build(input)
        data = {}
        data['InstancesDistribution'] = Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.build(input[:instances_distribution]) unless input[:instances_distribution].nil?
        data['LaunchTemplate'] = Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.build(input[:launch_template]) unless input[:launch_template].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
      def self.build(input)
        data = {}
        data['LaunchTemplateSpecification'] = Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.build(input[:launch_template_specification]) unless input[:launch_template_specification].nil?
        data['Overrides'] = Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.build(input[:overrides]) unless input[:overrides].nil?
        data
      end
    end

    # List Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['WeightedCapacity'] = input[:weighted_capacity] unless input[:weighted_capacity].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['LaunchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['LaunchTemplateName'] = input[:launch_template_name] unless input[:launch_template_name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
      def self.build(input)
        data = {}
        data['OnDemandAllocationStrategy'] = input[:on_demand_allocation_strategy] unless input[:on_demand_allocation_strategy].nil?
        data['OnDemandBaseCapacity'] = input[:on_demand_base_capacity] unless input[:on_demand_base_capacity].nil?
        data['OnDemandPercentageAboveBaseCapacity'] = input[:on_demand_percentage_above_base_capacity] unless input[:on_demand_percentage_above_base_capacity].nil?
        data['SpotAllocationStrategy'] = input[:spot_allocation_strategy] unless input[:spot_allocation_strategy].nil?
        data['SpotInstancePools'] = input[:spot_instance_pools] unless input[:spot_instance_pools].nil?
        data['SpotMaxPrice'] = input[:spot_max_price] unless input[:spot_max_price].nil?
        data
      end
    end

    # Structure Builder for DataClassificationDetails
    class DataClassificationDetails
      def self.build(input)
        data = {}
        data['DetailedResultsLocation'] = input[:detailed_results_location] unless input[:detailed_results_location].nil?
        data['Result'] = Builders::ClassificationResult.build(input[:result]) unless input[:result].nil?
        data
      end
    end

    # Structure Builder for ClassificationResult
    class ClassificationResult
      def self.build(input)
        data = {}
        data['MimeType'] = input[:mime_type] unless input[:mime_type].nil?
        data['SizeClassified'] = input[:size_classified] unless input[:size_classified].nil?
        data['AdditionalOccurrences'] = input[:additional_occurrences] unless input[:additional_occurrences].nil?
        data['Status'] = Builders::ClassificationStatus.build(input[:status]) unless input[:status].nil?
        data['SensitiveData'] = Builders::SensitiveDataResultList.build(input[:sensitive_data]) unless input[:sensitive_data].nil?
        data['CustomDataIdentifiers'] = Builders::CustomDataIdentifiersResult.build(input[:custom_data_identifiers]) unless input[:custom_data_identifiers].nil?
        data
      end
    end

    # Structure Builder for CustomDataIdentifiersResult
    class CustomDataIdentifiersResult
      def self.build(input)
        data = {}
        data['Detections'] = Builders::CustomDataIdentifiersDetectionsList.build(input[:detections]) unless input[:detections].nil?
        data['TotalCount'] = input[:total_count] unless input[:total_count].nil?
        data
      end
    end

    # List Builder for CustomDataIdentifiersDetectionsList
    class CustomDataIdentifiersDetectionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CustomDataIdentifiersDetections.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomDataIdentifiersDetections
    class CustomDataIdentifiersDetections
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Occurrences'] = Builders::Occurrences.build(input[:occurrences]) unless input[:occurrences].nil?
        data
      end
    end

    # Structure Builder for Occurrences
    class Occurrences
      def self.build(input)
        data = {}
        data['LineRanges'] = Builders::Ranges.build(input[:line_ranges]) unless input[:line_ranges].nil?
        data['OffsetRanges'] = Builders::Ranges.build(input[:offset_ranges]) unless input[:offset_ranges].nil?
        data['Pages'] = Builders::Pages.build(input[:pages]) unless input[:pages].nil?
        data['Records'] = Builders::Records.build(input[:records]) unless input[:records].nil?
        data['Cells'] = Builders::Cells.build(input[:cells]) unless input[:cells].nil?
        data
      end
    end

    # List Builder for Cells
    class Cells
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Cell.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Cell
    class Cell
      def self.build(input)
        data = {}
        data['Column'] = input[:column] unless input[:column].nil?
        data['Row'] = input[:row] unless input[:row].nil?
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['CellReference'] = input[:cell_reference] unless input[:cell_reference].nil?
        data
      end
    end

    # List Builder for Records
    class Records
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Record.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Record
    class Record
      def self.build(input)
        data = {}
        data['JsonPath'] = input[:json_path] unless input[:json_path].nil?
        data['RecordIndex'] = input[:record_index] unless input[:record_index].nil?
        data
      end
    end

    # List Builder for Pages
    class Pages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Page.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Page
    class Page
      def self.build(input)
        data = {}
        data['PageNumber'] = input[:page_number] unless input[:page_number].nil?
        data['LineRange'] = Builders::Range.build(input[:line_range]) unless input[:line_range].nil?
        data['OffsetRange'] = Builders::Range.build(input[:offset_range]) unless input[:offset_range].nil?
        data
      end
    end

    # Structure Builder for Range
    class Range
      def self.build(input)
        data = {}
        data['Start'] = input[:start] unless input[:start].nil?
        data['End'] = input[:end] unless input[:end].nil?
        data['StartColumn'] = input[:start_column] unless input[:start_column].nil?
        data
      end
    end

    # List Builder for Ranges
    class Ranges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Range.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for SensitiveDataResultList
    class SensitiveDataResultList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SensitiveDataResult.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SensitiveDataResult
    class SensitiveDataResult
      def self.build(input)
        data = {}
        data['Category'] = input[:category] unless input[:category].nil?
        data['Detections'] = Builders::SensitiveDataDetectionsList.build(input[:detections]) unless input[:detections].nil?
        data['TotalCount'] = input[:total_count] unless input[:total_count].nil?
        data
      end
    end

    # List Builder for SensitiveDataDetectionsList
    class SensitiveDataDetectionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SensitiveDataDetections.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SensitiveDataDetections
    class SensitiveDataDetections
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Occurrences'] = Builders::Occurrences.build(input[:occurrences]) unless input[:occurrences].nil?
        data
      end
    end

    # Structure Builder for ClassificationStatus
    class ClassificationStatus
      def self.build(input)
        data = {}
        data['Code'] = input[:code] unless input[:code].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data
      end
    end

    # List Builder for ThreatIntelIndicatorList
    class ThreatIntelIndicatorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ThreatIntelIndicator.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ThreatIntelIndicator
    class ThreatIntelIndicator
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Category'] = input[:category] unless input[:category].nil?
        data['LastObservedAt'] = input[:last_observed_at] unless input[:last_observed_at].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['SourceUrl'] = input[:source_url] unless input[:source_url].nil?
        data
      end
    end

    # Structure Builder for ProcessDetails
    class ProcessDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Pid'] = input[:pid] unless input[:pid].nil?
        data['ParentPid'] = input[:parent_pid] unless input[:parent_pid].nil?
        data['LaunchedAt'] = input[:launched_at] unless input[:launched_at].nil?
        data['TerminatedAt'] = input[:terminated_at] unless input[:terminated_at].nil?
        data
      end
    end

    # List Builder for NetworkPathList
    class NetworkPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NetworkPathComponent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NetworkPathComponent
    class NetworkPathComponent
      def self.build(input)
        data = {}
        data['ComponentId'] = input[:component_id] unless input[:component_id].nil?
        data['ComponentType'] = input[:component_type] unless input[:component_type].nil?
        data['Egress'] = Builders::NetworkHeader.build(input[:egress]) unless input[:egress].nil?
        data['Ingress'] = Builders::NetworkHeader.build(input[:ingress]) unless input[:ingress].nil?
        data
      end
    end

    # Structure Builder for NetworkHeader
    class NetworkHeader
      def self.build(input)
        data = {}
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Destination'] = Builders::NetworkPathComponentDetails.build(input[:destination]) unless input[:destination].nil?
        data['Source'] = Builders::NetworkPathComponentDetails.build(input[:source]) unless input[:source].nil?
        data
      end
    end

    # Structure Builder for NetworkPathComponentDetails
    class NetworkPathComponentDetails
      def self.build(input)
        data = {}
        data['Address'] = Builders::StringList.build(input[:address]) unless input[:address].nil?
        data['PortRanges'] = Builders::PortRangeList.build(input[:port_ranges]) unless input[:port_ranges].nil?
        data
      end
    end

    # List Builder for PortRangeList
    class PortRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PortRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortRange
    class PortRange
      def self.build(input)
        data = {}
        data['Begin'] = input[:begin] unless input[:begin].nil?
        data['End'] = input[:end] unless input[:end].nil?
        data
      end
    end

    # Structure Builder for Network
    class Network
      def self.build(input)
        data = {}
        data['Direction'] = input[:direction] unless input[:direction].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['OpenPortRange'] = Builders::PortRange.build(input[:open_port_range]) unless input[:open_port_range].nil?
        data['SourceIpV4'] = input[:source_ip_v4] unless input[:source_ip_v4].nil?
        data['SourceIpV6'] = input[:source_ip_v6] unless input[:source_ip_v6].nil?
        data['SourcePort'] = input[:source_port] unless input[:source_port].nil?
        data['SourceDomain'] = input[:source_domain] unless input[:source_domain].nil?
        data['SourceMac'] = input[:source_mac] unless input[:source_mac].nil?
        data['DestinationIpV4'] = input[:destination_ip_v4] unless input[:destination_ip_v4].nil?
        data['DestinationIpV6'] = input[:destination_ip_v6] unless input[:destination_ip_v6].nil?
        data['DestinationPort'] = input[:destination_port] unless input[:destination_port].nil?
        data['DestinationDomain'] = input[:destination_domain] unless input[:destination_domain].nil?
        data
      end
    end

    # List Builder for MalwareList
    class MalwareList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Malware.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Malware
    class Malware
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for Remediation
    class Remediation
      def self.build(input)
        data = {}
        data['Recommendation'] = Builders::Recommendation.build(input[:recommendation]) unless input[:recommendation].nil?
        data
      end
    end

    # Structure Builder for Recommendation
    class Recommendation
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for Severity
    class Severity
      def self.build(input)
        data = {}
        data['Product'] = Hearth::NumberHelper.serialize(input[:product]) unless input[:product].nil?
        data['Label'] = input[:label] unless input[:label].nil?
        data['Normalized'] = input[:normalized] unless input[:normalized].nil?
        data['Original'] = input[:original] unless input[:original].nil?
        data
      end
    end

    # Operation Builder for BatchUpdateFindings
    class BatchUpdateFindings
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/findings/batchupdate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FindingIdentifiers'] = Builders::AwsSecurityFindingIdentifierList.build(input[:finding_identifiers]) unless input[:finding_identifiers].nil?
        data['Note'] = Builders::NoteUpdate.build(input[:note]) unless input[:note].nil?
        data['Severity'] = Builders::SeverityUpdate.build(input[:severity]) unless input[:severity].nil?
        data['VerificationState'] = input[:verification_state] unless input[:verification_state].nil?
        data['Confidence'] = input[:confidence] unless input[:confidence].nil?
        data['Criticality'] = input[:criticality] unless input[:criticality].nil?
        data['Types'] = Builders::TypeList.build(input[:types]) unless input[:types].nil?
        data['UserDefinedFields'] = Builders::FieldMap.build(input[:user_defined_fields]) unless input[:user_defined_fields].nil?
        data['Workflow'] = Builders::WorkflowUpdate.build(input[:workflow]) unless input[:workflow].nil?
        data['RelatedFindings'] = Builders::RelatedFindingList.build(input[:related_findings]) unless input[:related_findings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkflowUpdate
    class WorkflowUpdate
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for SeverityUpdate
    class SeverityUpdate
      def self.build(input)
        data = {}
        data['Normalized'] = input[:normalized] unless input[:normalized].nil?
        data['Product'] = Hearth::NumberHelper.serialize(input[:product]) unless input[:product].nil?
        data['Label'] = input[:label] unless input[:label].nil?
        data
      end
    end

    # Structure Builder for NoteUpdate
    class NoteUpdate
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['UpdatedBy'] = input[:updated_by] unless input[:updated_by].nil?
        data
      end
    end

    # List Builder for AwsSecurityFindingIdentifierList
    class AwsSecurityFindingIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsSecurityFindingIdentifier.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsSecurityFindingIdentifier
    class AwsSecurityFindingIdentifier
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['ProductArn'] = input[:product_arn] unless input[:product_arn].nil?
        data
      end
    end

    # Operation Builder for CreateActionTarget
    class CreateActionTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/actionTargets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFindingAggregator
    class CreateFindingAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findingAggregator/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RegionLinkingMode'] = input[:region_linking_mode] unless input[:region_linking_mode].nil?
        data['Regions'] = Builders::StringList.build(input[:regions]) unless input[:regions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInsight
    class CreateInsight
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/insights')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Filters'] = Builders::AwsSecurityFindingFilters.build(input[:filters]) unless input[:filters].nil?
        data['GroupByAttribute'] = input[:group_by_attribute] unless input[:group_by_attribute].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AwsSecurityFindingFilters
    class AwsSecurityFindingFilters
      def self.build(input)
        data = {}
        data['ProductArn'] = Builders::StringFilterList.build(input[:product_arn]) unless input[:product_arn].nil?
        data['AwsAccountId'] = Builders::StringFilterList.build(input[:aws_account_id]) unless input[:aws_account_id].nil?
        data['Id'] = Builders::StringFilterList.build(input[:id]) unless input[:id].nil?
        data['GeneratorId'] = Builders::StringFilterList.build(input[:generator_id]) unless input[:generator_id].nil?
        data['Region'] = Builders::StringFilterList.build(input[:region]) unless input[:region].nil?
        data['Type'] = Builders::StringFilterList.build(input[:type]) unless input[:type].nil?
        data['FirstObservedAt'] = Builders::DateFilterList.build(input[:first_observed_at]) unless input[:first_observed_at].nil?
        data['LastObservedAt'] = Builders::DateFilterList.build(input[:last_observed_at]) unless input[:last_observed_at].nil?
        data['CreatedAt'] = Builders::DateFilterList.build(input[:created_at]) unless input[:created_at].nil?
        data['UpdatedAt'] = Builders::DateFilterList.build(input[:updated_at]) unless input[:updated_at].nil?
        data['SeverityProduct'] = Builders::NumberFilterList.build(input[:severity_product]) unless input[:severity_product].nil?
        data['SeverityNormalized'] = Builders::NumberFilterList.build(input[:severity_normalized]) unless input[:severity_normalized].nil?
        data['SeverityLabel'] = Builders::StringFilterList.build(input[:severity_label]) unless input[:severity_label].nil?
        data['Confidence'] = Builders::NumberFilterList.build(input[:confidence]) unless input[:confidence].nil?
        data['Criticality'] = Builders::NumberFilterList.build(input[:criticality]) unless input[:criticality].nil?
        data['Title'] = Builders::StringFilterList.build(input[:title]) unless input[:title].nil?
        data['Description'] = Builders::StringFilterList.build(input[:description]) unless input[:description].nil?
        data['RecommendationText'] = Builders::StringFilterList.build(input[:recommendation_text]) unless input[:recommendation_text].nil?
        data['SourceUrl'] = Builders::StringFilterList.build(input[:source_url]) unless input[:source_url].nil?
        data['ProductFields'] = Builders::MapFilterList.build(input[:product_fields]) unless input[:product_fields].nil?
        data['ProductName'] = Builders::StringFilterList.build(input[:product_name]) unless input[:product_name].nil?
        data['CompanyName'] = Builders::StringFilterList.build(input[:company_name]) unless input[:company_name].nil?
        data['UserDefinedFields'] = Builders::MapFilterList.build(input[:user_defined_fields]) unless input[:user_defined_fields].nil?
        data['MalwareName'] = Builders::StringFilterList.build(input[:malware_name]) unless input[:malware_name].nil?
        data['MalwareType'] = Builders::StringFilterList.build(input[:malware_type]) unless input[:malware_type].nil?
        data['MalwarePath'] = Builders::StringFilterList.build(input[:malware_path]) unless input[:malware_path].nil?
        data['MalwareState'] = Builders::StringFilterList.build(input[:malware_state]) unless input[:malware_state].nil?
        data['NetworkDirection'] = Builders::StringFilterList.build(input[:network_direction]) unless input[:network_direction].nil?
        data['NetworkProtocol'] = Builders::StringFilterList.build(input[:network_protocol]) unless input[:network_protocol].nil?
        data['NetworkSourceIpV4'] = Builders::IpFilterList.build(input[:network_source_ip_v4]) unless input[:network_source_ip_v4].nil?
        data['NetworkSourceIpV6'] = Builders::IpFilterList.build(input[:network_source_ip_v6]) unless input[:network_source_ip_v6].nil?
        data['NetworkSourcePort'] = Builders::NumberFilterList.build(input[:network_source_port]) unless input[:network_source_port].nil?
        data['NetworkSourceDomain'] = Builders::StringFilterList.build(input[:network_source_domain]) unless input[:network_source_domain].nil?
        data['NetworkSourceMac'] = Builders::StringFilterList.build(input[:network_source_mac]) unless input[:network_source_mac].nil?
        data['NetworkDestinationIpV4'] = Builders::IpFilterList.build(input[:network_destination_ip_v4]) unless input[:network_destination_ip_v4].nil?
        data['NetworkDestinationIpV6'] = Builders::IpFilterList.build(input[:network_destination_ip_v6]) unless input[:network_destination_ip_v6].nil?
        data['NetworkDestinationPort'] = Builders::NumberFilterList.build(input[:network_destination_port]) unless input[:network_destination_port].nil?
        data['NetworkDestinationDomain'] = Builders::StringFilterList.build(input[:network_destination_domain]) unless input[:network_destination_domain].nil?
        data['ProcessName'] = Builders::StringFilterList.build(input[:process_name]) unless input[:process_name].nil?
        data['ProcessPath'] = Builders::StringFilterList.build(input[:process_path]) unless input[:process_path].nil?
        data['ProcessPid'] = Builders::NumberFilterList.build(input[:process_pid]) unless input[:process_pid].nil?
        data['ProcessParentPid'] = Builders::NumberFilterList.build(input[:process_parent_pid]) unless input[:process_parent_pid].nil?
        data['ProcessLaunchedAt'] = Builders::DateFilterList.build(input[:process_launched_at]) unless input[:process_launched_at].nil?
        data['ProcessTerminatedAt'] = Builders::DateFilterList.build(input[:process_terminated_at]) unless input[:process_terminated_at].nil?
        data['ThreatIntelIndicatorType'] = Builders::StringFilterList.build(input[:threat_intel_indicator_type]) unless input[:threat_intel_indicator_type].nil?
        data['ThreatIntelIndicatorValue'] = Builders::StringFilterList.build(input[:threat_intel_indicator_value]) unless input[:threat_intel_indicator_value].nil?
        data['ThreatIntelIndicatorCategory'] = Builders::StringFilterList.build(input[:threat_intel_indicator_category]) unless input[:threat_intel_indicator_category].nil?
        data['ThreatIntelIndicatorLastObservedAt'] = Builders::DateFilterList.build(input[:threat_intel_indicator_last_observed_at]) unless input[:threat_intel_indicator_last_observed_at].nil?
        data['ThreatIntelIndicatorSource'] = Builders::StringFilterList.build(input[:threat_intel_indicator_source]) unless input[:threat_intel_indicator_source].nil?
        data['ThreatIntelIndicatorSourceUrl'] = Builders::StringFilterList.build(input[:threat_intel_indicator_source_url]) unless input[:threat_intel_indicator_source_url].nil?
        data['ResourceType'] = Builders::StringFilterList.build(input[:resource_type]) unless input[:resource_type].nil?
        data['ResourceId'] = Builders::StringFilterList.build(input[:resource_id]) unless input[:resource_id].nil?
        data['ResourcePartition'] = Builders::StringFilterList.build(input[:resource_partition]) unless input[:resource_partition].nil?
        data['ResourceRegion'] = Builders::StringFilterList.build(input[:resource_region]) unless input[:resource_region].nil?
        data['ResourceTags'] = Builders::MapFilterList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['ResourceAwsEc2InstanceType'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_type]) unless input[:resource_aws_ec2_instance_type].nil?
        data['ResourceAwsEc2InstanceImageId'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_image_id]) unless input[:resource_aws_ec2_instance_image_id].nil?
        data['ResourceAwsEc2InstanceIpV4Addresses'] = Builders::IpFilterList.build(input[:resource_aws_ec2_instance_ip_v4_addresses]) unless input[:resource_aws_ec2_instance_ip_v4_addresses].nil?
        data['ResourceAwsEc2InstanceIpV6Addresses'] = Builders::IpFilterList.build(input[:resource_aws_ec2_instance_ip_v6_addresses]) unless input[:resource_aws_ec2_instance_ip_v6_addresses].nil?
        data['ResourceAwsEc2InstanceKeyName'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_key_name]) unless input[:resource_aws_ec2_instance_key_name].nil?
        data['ResourceAwsEc2InstanceIamInstanceProfileArn'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_iam_instance_profile_arn]) unless input[:resource_aws_ec2_instance_iam_instance_profile_arn].nil?
        data['ResourceAwsEc2InstanceVpcId'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_vpc_id]) unless input[:resource_aws_ec2_instance_vpc_id].nil?
        data['ResourceAwsEc2InstanceSubnetId'] = Builders::StringFilterList.build(input[:resource_aws_ec2_instance_subnet_id]) unless input[:resource_aws_ec2_instance_subnet_id].nil?
        data['ResourceAwsEc2InstanceLaunchedAt'] = Builders::DateFilterList.build(input[:resource_aws_ec2_instance_launched_at]) unless input[:resource_aws_ec2_instance_launched_at].nil?
        data['ResourceAwsS3BucketOwnerId'] = Builders::StringFilterList.build(input[:resource_aws_s3_bucket_owner_id]) unless input[:resource_aws_s3_bucket_owner_id].nil?
        data['ResourceAwsS3BucketOwnerName'] = Builders::StringFilterList.build(input[:resource_aws_s3_bucket_owner_name]) unless input[:resource_aws_s3_bucket_owner_name].nil?
        data['ResourceAwsIamAccessKeyUserName'] = Builders::StringFilterList.build(input[:resource_aws_iam_access_key_user_name]) unless input[:resource_aws_iam_access_key_user_name].nil?
        data['ResourceAwsIamAccessKeyPrincipalName'] = Builders::StringFilterList.build(input[:resource_aws_iam_access_key_principal_name]) unless input[:resource_aws_iam_access_key_principal_name].nil?
        data['ResourceAwsIamAccessKeyStatus'] = Builders::StringFilterList.build(input[:resource_aws_iam_access_key_status]) unless input[:resource_aws_iam_access_key_status].nil?
        data['ResourceAwsIamAccessKeyCreatedAt'] = Builders::DateFilterList.build(input[:resource_aws_iam_access_key_created_at]) unless input[:resource_aws_iam_access_key_created_at].nil?
        data['ResourceAwsIamUserUserName'] = Builders::StringFilterList.build(input[:resource_aws_iam_user_user_name]) unless input[:resource_aws_iam_user_user_name].nil?
        data['ResourceContainerName'] = Builders::StringFilterList.build(input[:resource_container_name]) unless input[:resource_container_name].nil?
        data['ResourceContainerImageId'] = Builders::StringFilterList.build(input[:resource_container_image_id]) unless input[:resource_container_image_id].nil?
        data['ResourceContainerImageName'] = Builders::StringFilterList.build(input[:resource_container_image_name]) unless input[:resource_container_image_name].nil?
        data['ResourceContainerLaunchedAt'] = Builders::DateFilterList.build(input[:resource_container_launched_at]) unless input[:resource_container_launched_at].nil?
        data['ResourceDetailsOther'] = Builders::MapFilterList.build(input[:resource_details_other]) unless input[:resource_details_other].nil?
        data['ComplianceStatus'] = Builders::StringFilterList.build(input[:compliance_status]) unless input[:compliance_status].nil?
        data['VerificationState'] = Builders::StringFilterList.build(input[:verification_state]) unless input[:verification_state].nil?
        data['WorkflowState'] = Builders::StringFilterList.build(input[:workflow_state]) unless input[:workflow_state].nil?
        data['WorkflowStatus'] = Builders::StringFilterList.build(input[:workflow_status]) unless input[:workflow_status].nil?
        data['RecordState'] = Builders::StringFilterList.build(input[:record_state]) unless input[:record_state].nil?
        data['RelatedFindingsProductArn'] = Builders::StringFilterList.build(input[:related_findings_product_arn]) unless input[:related_findings_product_arn].nil?
        data['RelatedFindingsId'] = Builders::StringFilterList.build(input[:related_findings_id]) unless input[:related_findings_id].nil?
        data['NoteText'] = Builders::StringFilterList.build(input[:note_text]) unless input[:note_text].nil?
        data['NoteUpdatedAt'] = Builders::DateFilterList.build(input[:note_updated_at]) unless input[:note_updated_at].nil?
        data['NoteUpdatedBy'] = Builders::StringFilterList.build(input[:note_updated_by]) unless input[:note_updated_by].nil?
        data['Keyword'] = Builders::KeywordFilterList.build(input[:keyword]) unless input[:keyword].nil?
        data['FindingProviderFieldsConfidence'] = Builders::NumberFilterList.build(input[:finding_provider_fields_confidence]) unless input[:finding_provider_fields_confidence].nil?
        data['FindingProviderFieldsCriticality'] = Builders::NumberFilterList.build(input[:finding_provider_fields_criticality]) unless input[:finding_provider_fields_criticality].nil?
        data['FindingProviderFieldsRelatedFindingsId'] = Builders::StringFilterList.build(input[:finding_provider_fields_related_findings_id]) unless input[:finding_provider_fields_related_findings_id].nil?
        data['FindingProviderFieldsRelatedFindingsProductArn'] = Builders::StringFilterList.build(input[:finding_provider_fields_related_findings_product_arn]) unless input[:finding_provider_fields_related_findings_product_arn].nil?
        data['FindingProviderFieldsSeverityLabel'] = Builders::StringFilterList.build(input[:finding_provider_fields_severity_label]) unless input[:finding_provider_fields_severity_label].nil?
        data['FindingProviderFieldsSeverityOriginal'] = Builders::StringFilterList.build(input[:finding_provider_fields_severity_original]) unless input[:finding_provider_fields_severity_original].nil?
        data['FindingProviderFieldsTypes'] = Builders::StringFilterList.build(input[:finding_provider_fields_types]) unless input[:finding_provider_fields_types].nil?
        data['Sample'] = Builders::BooleanFilterList.build(input[:sample]) unless input[:sample].nil?
        data
      end
    end

    # List Builder for BooleanFilterList
    class BooleanFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BooleanFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BooleanFilter
    class BooleanFilter
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for StringFilterList
    class StringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StringFilter
    class StringFilter
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Comparison'] = input[:comparison] unless input[:comparison].nil?
        data
      end
    end

    # List Builder for NumberFilterList
    class NumberFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NumberFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NumberFilter
    class NumberFilter
      def self.build(input)
        data = {}
        data['Gte'] = Hearth::NumberHelper.serialize(input[:gte]) unless input[:gte].nil?
        data['Lte'] = Hearth::NumberHelper.serialize(input[:lte]) unless input[:lte].nil?
        data['Eq'] = Hearth::NumberHelper.serialize(input[:eq]) unless input[:eq].nil?
        data
      end
    end

    # List Builder for KeywordFilterList
    class KeywordFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KeywordFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeywordFilter
    class KeywordFilter
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for DateFilterList
    class DateFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DateFilter
    class DateFilter
      def self.build(input)
        data = {}
        data['Start'] = input[:start] unless input[:start].nil?
        data['End'] = input[:end] unless input[:end].nil?
        data['DateRange'] = Builders::DateRange.build(input[:date_range]) unless input[:date_range].nil?
        data
      end
    end

    # Structure Builder for DateRange
    class DateRange
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # List Builder for MapFilterList
    class MapFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MapFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MapFilter
    class MapFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Comparison'] = input[:comparison] unless input[:comparison].nil?
        data
      end
    end

    # List Builder for IpFilterList
    class IpFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IpFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IpFilter
    class IpFilter
      def self.build(input)
        data = {}
        data['Cidr'] = input[:cidr] unless input[:cidr].nil?
        data
      end
    end

    # Operation Builder for CreateMembers
    class CreateMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountDetails'] = Builders::AccountDetailsList.build(input[:account_details]) unless input[:account_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccountDetailsList
    class AccountDetailsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AccountDetails.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccountDetails
    class AccountDetails
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data
      end
    end

    # Operation Builder for DeclineInvitations
    class DeclineInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitations/decline')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccountIdList
    class AccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteActionTarget
    class DeleteActionTarget
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:action_target_arn].to_s.empty?
          raise ArgumentError, "HTTP label :action_target_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/actionTargets/%<ActionTargetArn>s',
            ActionTargetArn: (input[:action_target_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFindingAggregator
    class DeleteFindingAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:finding_aggregator_arn].to_s.empty?
          raise ArgumentError, "HTTP label :finding_aggregator_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/findingAggregator/delete/%<FindingAggregatorArn>s',
            FindingAggregatorArn: (input[:finding_aggregator_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInsight
    class DeleteInsight
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:insight_arn].to_s.empty?
          raise ArgumentError, "HTTP label :insight_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/%<InsightArn>s',
            InsightArn: (input[:insight_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInvitations
    class DeleteInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitations/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMembers
    class DeleteMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeActionTargets
    class DescribeActionTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/actionTargets/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ActionTargetArns'] = Builders::ArnList.build(input[:action_target_arns]) unless input[:action_target_arns].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeHub
    class DescribeHub
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        params['HubArn'] = input[:hub_arn].to_s unless input[:hub_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/organization/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProducts
    class DescribeProducts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/products')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['ProductArn'] = input[:product_arn].to_s unless input[:product_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeStandards
    class DescribeStandards
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/standards')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeStandardsControls
    class DescribeStandardsControls
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:standards_subscription_arn].to_s.empty?
          raise ArgumentError, "HTTP label :standards_subscription_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/standards/controls/%<StandardsSubscriptionArn>s',
            StandardsSubscriptionArn: (input[:standards_subscription_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableImportFindingsForProduct
    class DisableImportFindingsForProduct
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:product_subscription_arn].to_s.empty?
          raise ArgumentError, "HTTP label :product_subscription_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/productSubscriptions/%<ProductSubscriptionArn>s',
            ProductSubscriptionArn: (input[:product_subscription_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/admin/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AdminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableSecurityHub
    class DisableSecurityHub
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/administrator/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/master/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateMembers
    class DisassociateMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableImportFindingsForProduct
    class EnableImportFindingsForProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/productSubscriptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProductArn'] = input[:product_arn] unless input[:product_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/admin/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AdminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableSecurityHub
    class EnableSecurityHub
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['EnableDefaultStandards'] = input[:enable_default_standards] unless input[:enable_default_standards].nil?
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

    # Operation Builder for GetAdministratorAccount
    class GetAdministratorAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/administrator')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEnabledStandards
    class GetEnabledStandards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/standards/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StandardsSubscriptionArns'] = Builders::StandardsSubscriptionArns.build(input[:standards_subscription_arns]) unless input[:standards_subscription_arns].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFindingAggregator
    class GetFindingAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:finding_aggregator_arn].to_s.empty?
          raise ArgumentError, "HTTP label :finding_aggregator_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/findingAggregator/get/%<FindingAggregatorArn>s',
            FindingAggregatorArn: (input[:finding_aggregator_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindings
    class GetFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::AwsSecurityFindingFilters.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SortCriteria
    class SortCriteria
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SortCriterion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SortCriterion
    class SortCriterion
      def self.build(input)
        data = {}
        data['Field'] = input[:field] unless input[:field].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # Operation Builder for GetInsightResults
    class GetInsightResults
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:insight_arn].to_s.empty?
          raise ArgumentError, "HTTP label :insight_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/results/%<InsightArn>s',
            InsightArn: (input[:insight_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInsights
    class GetInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/insights/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightArns'] = Builders::ArnList.build(input[:insight_arns]) unless input[:insight_arns].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInvitationsCount
    class GetInvitationsCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitations/count')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMasterAccount
    class GetMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/master')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMembers
    class GetMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InviteMembers
    class InviteMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/invite')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnabledProductsForImport
    class ListEnabledProductsForImport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/productSubscriptions')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFindingAggregators
    class ListFindingAggregators
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/findingAggregator/list')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInvitations
    class ListInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitations')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMembers
    class ListMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/members')
        params = Hearth::Query::ParamList.new
        params['OnlyAssociated'] = input[:only_associated].to_s unless input[:only_associated].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/organization/admin')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
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

    # Operation Builder for UpdateActionTarget
    class UpdateActionTarget
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:action_target_arn].to_s.empty?
          raise ArgumentError, "HTTP label :action_target_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/actionTargets/%<ActionTargetArn>s',
            ActionTargetArn: (input[:action_target_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFindingAggregator
    class UpdateFindingAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/findingAggregator/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FindingAggregatorArn'] = input[:finding_aggregator_arn] unless input[:finding_aggregator_arn].nil?
        data['RegionLinkingMode'] = input[:region_linking_mode] unless input[:region_linking_mode].nil?
        data['Regions'] = Builders::StringList.build(input[:regions]) unless input[:regions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFindings
    class UpdateFindings
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/findings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::AwsSecurityFindingFilters.build(input[:filters]) unless input[:filters].nil?
        data['Note'] = Builders::NoteUpdate.build(input[:note]) unless input[:note].nil?
        data['RecordState'] = input[:record_state] unless input[:record_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInsight
    class UpdateInsight
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:insight_arn].to_s.empty?
          raise ArgumentError, "HTTP label :insight_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/%<InsightArn>s',
            InsightArn: (input[:insight_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Filters'] = Builders::AwsSecurityFindingFilters.build(input[:filters]) unless input[:filters].nil?
        data['GroupByAttribute'] = input[:group_by_attribute] unless input[:group_by_attribute].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AutoEnable'] = input[:auto_enable] unless input[:auto_enable].nil?
        data['AutoEnableStandards'] = input[:auto_enable_standards] unless input[:auto_enable_standards].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSecurityHubConfiguration
    class UpdateSecurityHubConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AutoEnableControls'] = input[:auto_enable_controls] unless input[:auto_enable_controls].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStandardsControl
    class UpdateStandardsControl
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:standards_control_arn].to_s.empty?
          raise ArgumentError, "HTTP label :standards_control_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/standards/control/%<StandardsControlArn>s',
            StandardsControlArn: (input[:standards_control_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ControlStatus'] = input[:control_status] unless input[:control_status].nil?
        data['DisabledReason'] = input[:disabled_reason] unless input[:disabled_reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
