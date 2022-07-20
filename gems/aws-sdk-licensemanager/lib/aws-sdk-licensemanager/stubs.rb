# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::LicenseManager
  module Stubs

    # Operation Stubber for AcceptGrant
    class AcceptGrant
      def self.default(visited=[])
        {
          grant_arn: 'grant_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CheckInLicense
    class CheckInLicense
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

    # Operation Stubber for CheckoutBorrowLicense
    class CheckoutBorrowLicense
      def self.default(visited=[])
        {
          license_arn: 'license_arn',
          license_consumption_token: 'license_consumption_token',
          entitlements_allowed: EntitlementDataList.default(visited),
          node_id: 'node_id',
          signed_token: 'signed_token',
          issued_at: 'issued_at',
          expiration: 'expiration',
          checkout_metadata: MetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['LicenseConsumptionToken'] = stub[:license_consumption_token] unless stub[:license_consumption_token].nil?
        data['EntitlementsAllowed'] = EntitlementDataList.stub(stub[:entitlements_allowed]) unless stub[:entitlements_allowed].nil?
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['SignedToken'] = stub[:signed_token] unless stub[:signed_token].nil?
        data['IssuedAt'] = stub[:issued_at] unless stub[:issued_at].nil?
        data['Expiration'] = stub[:expiration] unless stub[:expiration].nil?
        data['CheckoutMetadata'] = MetadataList.stub(stub[:checkout_metadata]) unless stub[:checkout_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetadataList
    class MetadataList
      def self.default(visited=[])
        return nil if visited.include?('MetadataList')
        visited = visited + ['MetadataList']
        [
          Metadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Metadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Metadata.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for EntitlementDataList
    class EntitlementDataList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementDataList')
        visited = visited + ['EntitlementDataList']
        [
          EntitlementData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntitlementData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitlementData
    class EntitlementData
      def self.default(visited=[])
        return nil if visited.include?('EntitlementData')
        visited = visited + ['EntitlementData']
        {
          name: 'name',
          value: 'value',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitlementData.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for CheckoutLicense
    class CheckoutLicense
      def self.default(visited=[])
        {
          checkout_type: 'checkout_type',
          license_consumption_token: 'license_consumption_token',
          entitlements_allowed: EntitlementDataList.default(visited),
          signed_token: 'signed_token',
          node_id: 'node_id',
          issued_at: 'issued_at',
          expiration: 'expiration',
          license_arn: 'license_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CheckoutType'] = stub[:checkout_type] unless stub[:checkout_type].nil?
        data['LicenseConsumptionToken'] = stub[:license_consumption_token] unless stub[:license_consumption_token].nil?
        data['EntitlementsAllowed'] = EntitlementDataList.stub(stub[:entitlements_allowed]) unless stub[:entitlements_allowed].nil?
        data['SignedToken'] = stub[:signed_token] unless stub[:signed_token].nil?
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['IssuedAt'] = stub[:issued_at] unless stub[:issued_at].nil?
        data['Expiration'] = stub[:expiration] unless stub[:expiration].nil?
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGrant
    class CreateGrant
      def self.default(visited=[])
        {
          grant_arn: 'grant_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGrantVersion
    class CreateGrantVersion
      def self.default(visited=[])
        {
          grant_arn: 'grant_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLicense
    class CreateLicense
      def self.default(visited=[])
        {
          license_arn: 'license_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLicenseConfiguration
    class CreateLicenseConfiguration
      def self.default(visited=[])
        {
          license_configuration_arn: 'license_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConfigurationArn'] = stub[:license_configuration_arn] unless stub[:license_configuration_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLicenseConversionTaskForResource
    class CreateLicenseConversionTaskForResource
      def self.default(visited=[])
        {
          license_conversion_task_id: 'license_conversion_task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConversionTaskId'] = stub[:license_conversion_task_id] unless stub[:license_conversion_task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLicenseManagerReportGenerator
    class CreateLicenseManagerReportGenerator
      def self.default(visited=[])
        {
          license_manager_report_generator_arn: 'license_manager_report_generator_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseManagerReportGeneratorArn'] = stub[:license_manager_report_generator_arn] unless stub[:license_manager_report_generator_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLicenseVersion
    class CreateLicenseVersion
      def self.default(visited=[])
        {
          license_arn: 'license_arn',
          version: 'version',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateToken
    class CreateToken
      def self.default(visited=[])
        {
          token_id: 'token_id',
          token_type: 'token_type',
          token: 'token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TokenId'] = stub[:token_id] unless stub[:token_id].nil?
        data['TokenType'] = stub[:token_type] unless stub[:token_type].nil?
        data['Token'] = stub[:token] unless stub[:token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGrant
    class DeleteGrant
      def self.default(visited=[])
        {
          grant_arn: 'grant_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLicense
    class DeleteLicense
      def self.default(visited=[])
        {
          status: 'status',
          deletion_date: 'deletion_date',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DeletionDate'] = stub[:deletion_date] unless stub[:deletion_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLicenseConfiguration
    class DeleteLicenseConfiguration
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

    # Operation Stubber for DeleteLicenseManagerReportGenerator
    class DeleteLicenseManagerReportGenerator
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

    # Operation Stubber for DeleteToken
    class DeleteToken
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

    # Operation Stubber for ExtendLicenseConsumption
    class ExtendLicenseConsumption
      def self.default(visited=[])
        {
          license_consumption_token: 'license_consumption_token',
          expiration: 'expiration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConsumptionToken'] = stub[:license_consumption_token] unless stub[:license_consumption_token].nil?
        data['Expiration'] = stub[:expiration] unless stub[:expiration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccessToken
    class GetAccessToken
      def self.default(visited=[])
        {
          access_token: 'access_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccessToken'] = stub[:access_token] unless stub[:access_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGrant
    class GetGrant
      def self.default(visited=[])
        {
          grant: Grant.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grant'] = Grant.stub(stub[:grant]) unless stub[:grant].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Grant
    class Grant
      def self.default(visited=[])
        return nil if visited.include?('Grant')
        visited = visited + ['Grant']
        {
          grant_arn: 'grant_arn',
          grant_name: 'grant_name',
          parent_arn: 'parent_arn',
          license_arn: 'license_arn',
          grantee_principal_arn: 'grantee_principal_arn',
          home_region: 'home_region',
          grant_status: 'grant_status',
          status_reason: 'status_reason',
          version: 'version',
          granted_operations: AllowedOperationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Grant.new
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['GrantName'] = stub[:grant_name] unless stub[:grant_name].nil?
        data['ParentArn'] = stub[:parent_arn] unless stub[:parent_arn].nil?
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['GranteePrincipalArn'] = stub[:grantee_principal_arn] unless stub[:grantee_principal_arn].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['GrantStatus'] = stub[:grant_status] unless stub[:grant_status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['GrantedOperations'] = AllowedOperationList.stub(stub[:granted_operations]) unless stub[:granted_operations].nil?
        data
      end
    end

    # List Stubber for AllowedOperationList
    class AllowedOperationList
      def self.default(visited=[])
        return nil if visited.include?('AllowedOperationList')
        visited = visited + ['AllowedOperationList']
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

    # Operation Stubber for GetLicense
    class GetLicense
      def self.default(visited=[])
        {
          license: License.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['License'] = License.stub(stub[:license]) unless stub[:license].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for License
    class License
      def self.default(visited=[])
        return nil if visited.include?('License')
        visited = visited + ['License']
        {
          license_arn: 'license_arn',
          license_name: 'license_name',
          product_name: 'product_name',
          product_sku: 'product_sku',
          issuer: IssuerDetails.default(visited),
          home_region: 'home_region',
          status: 'status',
          validity: DatetimeRange.default(visited),
          beneficiary: 'beneficiary',
          entitlements: EntitlementList.default(visited),
          consumption_configuration: ConsumptionConfiguration.default(visited),
          license_metadata: MetadataList.default(visited),
          create_time: 'create_time',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::License.new
        data = {}
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['LicenseName'] = stub[:license_name] unless stub[:license_name].nil?
        data['ProductName'] = stub[:product_name] unless stub[:product_name].nil?
        data['ProductSKU'] = stub[:product_sku] unless stub[:product_sku].nil?
        data['Issuer'] = IssuerDetails.stub(stub[:issuer]) unless stub[:issuer].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Validity'] = DatetimeRange.stub(stub[:validity]) unless stub[:validity].nil?
        data['Beneficiary'] = stub[:beneficiary] unless stub[:beneficiary].nil?
        data['Entitlements'] = EntitlementList.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['ConsumptionConfiguration'] = ConsumptionConfiguration.stub(stub[:consumption_configuration]) unless stub[:consumption_configuration].nil?
        data['LicenseMetadata'] = MetadataList.stub(stub[:license_metadata]) unless stub[:license_metadata].nil?
        data['CreateTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for ConsumptionConfiguration
    class ConsumptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConsumptionConfiguration')
        visited = visited + ['ConsumptionConfiguration']
        {
          renew_type: 'renew_type',
          provisional_configuration: ProvisionalConfiguration.default(visited),
          borrow_configuration: BorrowConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConsumptionConfiguration.new
        data = {}
        data['RenewType'] = stub[:renew_type] unless stub[:renew_type].nil?
        data['ProvisionalConfiguration'] = ProvisionalConfiguration.stub(stub[:provisional_configuration]) unless stub[:provisional_configuration].nil?
        data['BorrowConfiguration'] = BorrowConfiguration.stub(stub[:borrow_configuration]) unless stub[:borrow_configuration].nil?
        data
      end
    end

    # Structure Stubber for BorrowConfiguration
    class BorrowConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BorrowConfiguration')
        visited = visited + ['BorrowConfiguration']
        {
          allow_early_check_in: false,
          max_time_to_live_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BorrowConfiguration.new
        data = {}
        data['AllowEarlyCheckIn'] = stub[:allow_early_check_in] unless stub[:allow_early_check_in].nil?
        data['MaxTimeToLiveInMinutes'] = stub[:max_time_to_live_in_minutes] unless stub[:max_time_to_live_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for ProvisionalConfiguration
    class ProvisionalConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProvisionalConfiguration')
        visited = visited + ['ProvisionalConfiguration']
        {
          max_time_to_live_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionalConfiguration.new
        data = {}
        data['MaxTimeToLiveInMinutes'] = stub[:max_time_to_live_in_minutes] unless stub[:max_time_to_live_in_minutes].nil?
        data
      end
    end

    # List Stubber for EntitlementList
    class EntitlementList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementList')
        visited = visited + ['EntitlementList']
        [
          Entitlement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Entitlement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entitlement
    class Entitlement
      def self.default(visited=[])
        return nil if visited.include?('Entitlement')
        visited = visited + ['Entitlement']
        {
          name: 'name',
          value: 'value',
          max_count: 1,
          overage: false,
          unit: 'unit',
          allow_check_in: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Entitlement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['MaxCount'] = stub[:max_count] unless stub[:max_count].nil?
        data['Overage'] = stub[:overage] unless stub[:overage].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['AllowCheckIn'] = stub[:allow_check_in] unless stub[:allow_check_in].nil?
        data
      end
    end

    # Structure Stubber for DatetimeRange
    class DatetimeRange
      def self.default(visited=[])
        return nil if visited.include?('DatetimeRange')
        visited = visited + ['DatetimeRange']
        {
          begin: 'begin',
          end: 'end',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatetimeRange.new
        data = {}
        data['Begin'] = stub[:begin] unless stub[:begin].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for IssuerDetails
    class IssuerDetails
      def self.default(visited=[])
        return nil if visited.include?('IssuerDetails')
        visited = visited + ['IssuerDetails']
        {
          name: 'name',
          sign_key: 'sign_key',
          key_fingerprint: 'key_fingerprint',
        }
      end

      def self.stub(stub)
        stub ||= Types::IssuerDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SignKey'] = stub[:sign_key] unless stub[:sign_key].nil?
        data['KeyFingerprint'] = stub[:key_fingerprint] unless stub[:key_fingerprint].nil?
        data
      end
    end

    # Operation Stubber for GetLicenseConfiguration
    class GetLicenseConfiguration
      def self.default(visited=[])
        {
          license_configuration_id: 'license_configuration_id',
          license_configuration_arn: 'license_configuration_arn',
          name: 'name',
          description: 'description',
          license_counting_type: 'license_counting_type',
          license_rules: StringList.default(visited),
          license_count: 1,
          license_count_hard_limit: false,
          consumed_licenses: 1,
          status: 'status',
          owner_account_id: 'owner_account_id',
          consumed_license_summary_list: ConsumedLicenseSummaryList.default(visited),
          managed_resource_summary_list: ManagedResourceSummaryList.default(visited),
          tags: TagList.default(visited),
          product_information_list: ProductInformationList.default(visited),
          automated_discovery_information: AutomatedDiscoveryInformation.default(visited),
          disassociate_when_not_found: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConfigurationId'] = stub[:license_configuration_id] unless stub[:license_configuration_id].nil?
        data['LicenseConfigurationArn'] = stub[:license_configuration_arn] unless stub[:license_configuration_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LicenseCountingType'] = stub[:license_counting_type] unless stub[:license_counting_type].nil?
        data['LicenseRules'] = StringList.stub(stub[:license_rules]) unless stub[:license_rules].nil?
        data['LicenseCount'] = stub[:license_count] unless stub[:license_count].nil?
        data['LicenseCountHardLimit'] = stub[:license_count_hard_limit] unless stub[:license_count_hard_limit].nil?
        data['ConsumedLicenses'] = stub[:consumed_licenses] unless stub[:consumed_licenses].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['ConsumedLicenseSummaryList'] = ConsumedLicenseSummaryList.stub(stub[:consumed_license_summary_list]) unless stub[:consumed_license_summary_list].nil?
        data['ManagedResourceSummaryList'] = ManagedResourceSummaryList.stub(stub[:managed_resource_summary_list]) unless stub[:managed_resource_summary_list].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ProductInformationList'] = ProductInformationList.stub(stub[:product_information_list]) unless stub[:product_information_list].nil?
        data['AutomatedDiscoveryInformation'] = AutomatedDiscoveryInformation.stub(stub[:automated_discovery_information]) unless stub[:automated_discovery_information].nil?
        data['DisassociateWhenNotFound'] = stub[:disassociate_when_not_found] unless stub[:disassociate_when_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AutomatedDiscoveryInformation
    class AutomatedDiscoveryInformation
      def self.default(visited=[])
        return nil if visited.include?('AutomatedDiscoveryInformation')
        visited = visited + ['AutomatedDiscoveryInformation']
        {
          last_run_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomatedDiscoveryInformation.new
        data = {}
        data['LastRunTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_run_time]).to_i unless stub[:last_run_time].nil?
        data
      end
    end

    # List Stubber for ProductInformationList
    class ProductInformationList
      def self.default(visited=[])
        return nil if visited.include?('ProductInformationList')
        visited = visited + ['ProductInformationList']
        [
          ProductInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductInformation
    class ProductInformation
      def self.default(visited=[])
        return nil if visited.include?('ProductInformation')
        visited = visited + ['ProductInformation']
        {
          resource_type: 'resource_type',
          product_information_filter_list: ProductInformationFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductInformation.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ProductInformationFilterList'] = ProductInformationFilterList.stub(stub[:product_information_filter_list]) unless stub[:product_information_filter_list].nil?
        data
      end
    end

    # List Stubber for ProductInformationFilterList
    class ProductInformationFilterList
      def self.default(visited=[])
        return nil if visited.include?('ProductInformationFilterList')
        visited = visited + ['ProductInformationFilterList']
        [
          ProductInformationFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductInformationFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductInformationFilter
    class ProductInformationFilter
      def self.default(visited=[])
        return nil if visited.include?('ProductInformationFilter')
        visited = visited + ['ProductInformationFilter']
        {
          product_information_filter_name: 'product_information_filter_name',
          product_information_filter_value: StringList.default(visited),
          product_information_filter_comparator: 'product_information_filter_comparator',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductInformationFilter.new
        data = {}
        data['ProductInformationFilterName'] = stub[:product_information_filter_name] unless stub[:product_information_filter_name].nil?
        data['ProductInformationFilterValue'] = StringList.stub(stub[:product_information_filter_value]) unless stub[:product_information_filter_value].nil?
        data['ProductInformationFilterComparator'] = stub[:product_information_filter_comparator] unless stub[:product_information_filter_comparator].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # List Stubber for ManagedResourceSummaryList
    class ManagedResourceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ManagedResourceSummaryList')
        visited = visited + ['ManagedResourceSummaryList']
        [
          ManagedResourceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ManagedResourceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedResourceSummary
    class ManagedResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('ManagedResourceSummary')
        visited = visited + ['ManagedResourceSummary']
        {
          resource_type: 'resource_type',
          association_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedResourceSummary.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['AssociationCount'] = stub[:association_count] unless stub[:association_count].nil?
        data
      end
    end

    # List Stubber for ConsumedLicenseSummaryList
    class ConsumedLicenseSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ConsumedLicenseSummaryList')
        visited = visited + ['ConsumedLicenseSummaryList']
        [
          ConsumedLicenseSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConsumedLicenseSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConsumedLicenseSummary
    class ConsumedLicenseSummary
      def self.default(visited=[])
        return nil if visited.include?('ConsumedLicenseSummary')
        visited = visited + ['ConsumedLicenseSummary']
        {
          resource_type: 'resource_type',
          consumed_licenses: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConsumedLicenseSummary.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ConsumedLicenses'] = stub[:consumed_licenses] unless stub[:consumed_licenses].nil?
        data
      end
    end

    # Operation Stubber for GetLicenseConversionTask
    class GetLicenseConversionTask
      def self.default(visited=[])
        {
          license_conversion_task_id: 'license_conversion_task_id',
          resource_arn: 'resource_arn',
          source_license_context: LicenseConversionContext.default(visited),
          destination_license_context: LicenseConversionContext.default(visited),
          status_message: 'status_message',
          status: 'status',
          start_time: Time.now,
          license_conversion_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConversionTaskId'] = stub[:license_conversion_task_id] unless stub[:license_conversion_task_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['SourceLicenseContext'] = LicenseConversionContext.stub(stub[:source_license_context]) unless stub[:source_license_context].nil?
        data['DestinationLicenseContext'] = LicenseConversionContext.stub(stub[:destination_license_context]) unless stub[:destination_license_context].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['LicenseConversionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:license_conversion_time]).to_i unless stub[:license_conversion_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LicenseConversionContext
    class LicenseConversionContext
      def self.default(visited=[])
        return nil if visited.include?('LicenseConversionContext')
        visited = visited + ['LicenseConversionContext']
        {
          usage_operation: 'usage_operation',
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseConversionContext.new
        data = {}
        data['UsageOperation'] = stub[:usage_operation] unless stub[:usage_operation].nil?
        data
      end
    end

    # Operation Stubber for GetLicenseManagerReportGenerator
    class GetLicenseManagerReportGenerator
      def self.default(visited=[])
        {
          report_generator: ReportGenerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReportGenerator'] = ReportGenerator.stub(stub[:report_generator]) unless stub[:report_generator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReportGenerator
    class ReportGenerator
      def self.default(visited=[])
        return nil if visited.include?('ReportGenerator')
        visited = visited + ['ReportGenerator']
        {
          report_generator_name: 'report_generator_name',
          report_type: ReportTypeList.default(visited),
          report_context: ReportContext.default(visited),
          report_frequency: ReportFrequency.default(visited),
          license_manager_report_generator_arn: 'license_manager_report_generator_arn',
          last_run_status: 'last_run_status',
          last_run_failure_reason: 'last_run_failure_reason',
          last_report_generation_time: 'last_report_generation_time',
          report_creator_account: 'report_creator_account',
          description: 'description',
          s3_location: S3Location.default(visited),
          create_time: 'create_time',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportGenerator.new
        data = {}
        data['ReportGeneratorName'] = stub[:report_generator_name] unless stub[:report_generator_name].nil?
        data['ReportType'] = ReportTypeList.stub(stub[:report_type]) unless stub[:report_type].nil?
        data['ReportContext'] = ReportContext.stub(stub[:report_context]) unless stub[:report_context].nil?
        data['ReportFrequency'] = ReportFrequency.stub(stub[:report_frequency]) unless stub[:report_frequency].nil?
        data['LicenseManagerReportGeneratorArn'] = stub[:license_manager_report_generator_arn] unless stub[:license_manager_report_generator_arn].nil?
        data['LastRunStatus'] = stub[:last_run_status] unless stub[:last_run_status].nil?
        data['LastRunFailureReason'] = stub[:last_run_failure_reason] unless stub[:last_run_failure_reason].nil?
        data['LastReportGenerationTime'] = stub[:last_report_generation_time] unless stub[:last_report_generation_time].nil?
        data['ReportCreatorAccount'] = stub[:report_creator_account] unless stub[:report_creator_account].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['S3Location'] = S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data['CreateTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data
      end
    end

    # Structure Stubber for ReportFrequency
    class ReportFrequency
      def self.default(visited=[])
        return nil if visited.include?('ReportFrequency')
        visited = visited + ['ReportFrequency']
        {
          value: 1,
          period: 'period',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportFrequency.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['period'] = stub[:period] unless stub[:period].nil?
        data
      end
    end

    # Structure Stubber for ReportContext
    class ReportContext
      def self.default(visited=[])
        return nil if visited.include?('ReportContext')
        visited = visited + ['ReportContext']
        {
          license_configuration_arns: ArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportContext.new
        data = {}
        data['licenseConfigurationArns'] = ArnList.stub(stub[:license_configuration_arns]) unless stub[:license_configuration_arns].nil?
        data
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
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

    # List Stubber for ReportTypeList
    class ReportTypeList
      def self.default(visited=[])
        return nil if visited.include?('ReportTypeList')
        visited = visited + ['ReportTypeList']
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

    # Operation Stubber for GetLicenseUsage
    class GetLicenseUsage
      def self.default(visited=[])
        {
          license_usage: LicenseUsage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseUsage'] = LicenseUsage.stub(stub[:license_usage]) unless stub[:license_usage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LicenseUsage
    class LicenseUsage
      def self.default(visited=[])
        return nil if visited.include?('LicenseUsage')
        visited = visited + ['LicenseUsage']
        {
          entitlement_usages: EntitlementUsageList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseUsage.new
        data = {}
        data['EntitlementUsages'] = EntitlementUsageList.stub(stub[:entitlement_usages]) unless stub[:entitlement_usages].nil?
        data
      end
    end

    # List Stubber for EntitlementUsageList
    class EntitlementUsageList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementUsageList')
        visited = visited + ['EntitlementUsageList']
        [
          EntitlementUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntitlementUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitlementUsage
    class EntitlementUsage
      def self.default(visited=[])
        return nil if visited.include?('EntitlementUsage')
        visited = visited + ['EntitlementUsage']
        {
          name: 'name',
          consumed_value: 'consumed_value',
          max_count: 'max_count',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitlementUsage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConsumedValue'] = stub[:consumed_value] unless stub[:consumed_value].nil?
        data['MaxCount'] = stub[:max_count] unless stub[:max_count].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for GetServiceSettings
    class GetServiceSettings
      def self.default(visited=[])
        {
          s3_bucket_arn: 's3_bucket_arn',
          sns_topic_arn: 'sns_topic_arn',
          organization_configuration: OrganizationConfiguration.default(visited),
          enable_cross_accounts_discovery: false,
          license_manager_resource_share_arn: 'license_manager_resource_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['S3BucketArn'] = stub[:s3_bucket_arn] unless stub[:s3_bucket_arn].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['OrganizationConfiguration'] = OrganizationConfiguration.stub(stub[:organization_configuration]) unless stub[:organization_configuration].nil?
        data['EnableCrossAccountsDiscovery'] = stub[:enable_cross_accounts_discovery] unless stub[:enable_cross_accounts_discovery].nil?
        data['LicenseManagerResourceShareArn'] = stub[:license_manager_resource_share_arn] unless stub[:license_manager_resource_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for OrganizationConfiguration
    class OrganizationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfiguration')
        visited = visited + ['OrganizationConfiguration']
        {
          enable_integration: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConfiguration.new
        data = {}
        data['EnableIntegration'] = stub[:enable_integration] unless stub[:enable_integration].nil?
        data
      end
    end

    # Operation Stubber for ListAssociationsForLicenseConfiguration
    class ListAssociationsForLicenseConfiguration
      def self.default(visited=[])
        {
          license_configuration_associations: LicenseConfigurationAssociations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConfigurationAssociations'] = LicenseConfigurationAssociations.stub(stub[:license_configuration_associations]) unless stub[:license_configuration_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseConfigurationAssociations
    class LicenseConfigurationAssociations
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurationAssociations')
        visited = visited + ['LicenseConfigurationAssociations']
        [
          LicenseConfigurationAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseConfigurationAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseConfigurationAssociation
    class LicenseConfigurationAssociation
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurationAssociation')
        visited = visited + ['LicenseConfigurationAssociation']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          resource_owner_id: 'resource_owner_id',
          association_time: Time.now,
          ami_association_scope: 'ami_association_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseConfigurationAssociation.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceOwnerId'] = stub[:resource_owner_id] unless stub[:resource_owner_id].nil?
        data['AssociationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:association_time]).to_i unless stub[:association_time].nil?
        data['AmiAssociationScope'] = stub[:ami_association_scope] unless stub[:ami_association_scope].nil?
        data
      end
    end

    # Operation Stubber for ListDistributedGrants
    class ListDistributedGrants
      def self.default(visited=[])
        {
          grants: GrantList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GrantList
    class GrantList
      def self.default(visited=[])
        return nil if visited.include?('GrantList')
        visited = visited + ['GrantList']
        [
          Grant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Grant.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFailuresForLicenseConfigurationOperations
    class ListFailuresForLicenseConfigurationOperations
      def self.default(visited=[])
        {
          license_operation_failure_list: LicenseOperationFailureList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseOperationFailureList'] = LicenseOperationFailureList.stub(stub[:license_operation_failure_list]) unless stub[:license_operation_failure_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseOperationFailureList
    class LicenseOperationFailureList
      def self.default(visited=[])
        return nil if visited.include?('LicenseOperationFailureList')
        visited = visited + ['LicenseOperationFailureList']
        [
          LicenseOperationFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseOperationFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseOperationFailure
    class LicenseOperationFailure
      def self.default(visited=[])
        return nil if visited.include?('LicenseOperationFailure')
        visited = visited + ['LicenseOperationFailure']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          error_message: 'error_message',
          failure_time: Time.now,
          operation_name: 'operation_name',
          resource_owner_id: 'resource_owner_id',
          operation_requested_by: 'operation_requested_by',
          metadata_list: MetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseOperationFailure.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['FailureTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:failure_time]).to_i unless stub[:failure_time].nil?
        data['OperationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['ResourceOwnerId'] = stub[:resource_owner_id] unless stub[:resource_owner_id].nil?
        data['OperationRequestedBy'] = stub[:operation_requested_by] unless stub[:operation_requested_by].nil?
        data['MetadataList'] = MetadataList.stub(stub[:metadata_list]) unless stub[:metadata_list].nil?
        data
      end
    end

    # Operation Stubber for ListLicenseConfigurations
    class ListLicenseConfigurations
      def self.default(visited=[])
        {
          license_configurations: LicenseConfigurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConfigurations'] = LicenseConfigurations.stub(stub[:license_configurations]) unless stub[:license_configurations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseConfigurations
    class LicenseConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurations')
        visited = visited + ['LicenseConfigurations']
        [
          LicenseConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseConfiguration
    class LicenseConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfiguration')
        visited = visited + ['LicenseConfiguration']
        {
          license_configuration_id: 'license_configuration_id',
          license_configuration_arn: 'license_configuration_arn',
          name: 'name',
          description: 'description',
          license_counting_type: 'license_counting_type',
          license_rules: StringList.default(visited),
          license_count: 1,
          license_count_hard_limit: false,
          disassociate_when_not_found: false,
          consumed_licenses: 1,
          status: 'status',
          owner_account_id: 'owner_account_id',
          consumed_license_summary_list: ConsumedLicenseSummaryList.default(visited),
          managed_resource_summary_list: ManagedResourceSummaryList.default(visited),
          product_information_list: ProductInformationList.default(visited),
          automated_discovery_information: AutomatedDiscoveryInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseConfiguration.new
        data = {}
        data['LicenseConfigurationId'] = stub[:license_configuration_id] unless stub[:license_configuration_id].nil?
        data['LicenseConfigurationArn'] = stub[:license_configuration_arn] unless stub[:license_configuration_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LicenseCountingType'] = stub[:license_counting_type] unless stub[:license_counting_type].nil?
        data['LicenseRules'] = StringList.stub(stub[:license_rules]) unless stub[:license_rules].nil?
        data['LicenseCount'] = stub[:license_count] unless stub[:license_count].nil?
        data['LicenseCountHardLimit'] = stub[:license_count_hard_limit] unless stub[:license_count_hard_limit].nil?
        data['DisassociateWhenNotFound'] = stub[:disassociate_when_not_found] unless stub[:disassociate_when_not_found].nil?
        data['ConsumedLicenses'] = stub[:consumed_licenses] unless stub[:consumed_licenses].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['ConsumedLicenseSummaryList'] = ConsumedLicenseSummaryList.stub(stub[:consumed_license_summary_list]) unless stub[:consumed_license_summary_list].nil?
        data['ManagedResourceSummaryList'] = ManagedResourceSummaryList.stub(stub[:managed_resource_summary_list]) unless stub[:managed_resource_summary_list].nil?
        data['ProductInformationList'] = ProductInformationList.stub(stub[:product_information_list]) unless stub[:product_information_list].nil?
        data['AutomatedDiscoveryInformation'] = AutomatedDiscoveryInformation.stub(stub[:automated_discovery_information]) unless stub[:automated_discovery_information].nil?
        data
      end
    end

    # Operation Stubber for ListLicenseConversionTasks
    class ListLicenseConversionTasks
      def self.default(visited=[])
        {
          license_conversion_tasks: LicenseConversionTasks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConversionTasks'] = LicenseConversionTasks.stub(stub[:license_conversion_tasks]) unless stub[:license_conversion_tasks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseConversionTasks
    class LicenseConversionTasks
      def self.default(visited=[])
        return nil if visited.include?('LicenseConversionTasks')
        visited = visited + ['LicenseConversionTasks']
        [
          LicenseConversionTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseConversionTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseConversionTask
    class LicenseConversionTask
      def self.default(visited=[])
        return nil if visited.include?('LicenseConversionTask')
        visited = visited + ['LicenseConversionTask']
        {
          license_conversion_task_id: 'license_conversion_task_id',
          resource_arn: 'resource_arn',
          source_license_context: LicenseConversionContext.default(visited),
          destination_license_context: LicenseConversionContext.default(visited),
          status: 'status',
          status_message: 'status_message',
          start_time: Time.now,
          license_conversion_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseConversionTask.new
        data = {}
        data['LicenseConversionTaskId'] = stub[:license_conversion_task_id] unless stub[:license_conversion_task_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['SourceLicenseContext'] = LicenseConversionContext.stub(stub[:source_license_context]) unless stub[:source_license_context].nil?
        data['DestinationLicenseContext'] = LicenseConversionContext.stub(stub[:destination_license_context]) unless stub[:destination_license_context].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['LicenseConversionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:license_conversion_time]).to_i unless stub[:license_conversion_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for ListLicenseManagerReportGenerators
    class ListLicenseManagerReportGenerators
      def self.default(visited=[])
        {
          report_generators: ReportGeneratorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReportGenerators'] = ReportGeneratorList.stub(stub[:report_generators]) unless stub[:report_generators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReportGeneratorList
    class ReportGeneratorList
      def self.default(visited=[])
        return nil if visited.include?('ReportGeneratorList')
        visited = visited + ['ReportGeneratorList']
        [
          ReportGenerator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReportGenerator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLicenseSpecificationsForResource
    class ListLicenseSpecificationsForResource
      def self.default(visited=[])
        {
          license_specifications: LicenseSpecifications.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseSpecifications'] = LicenseSpecifications.stub(stub[:license_specifications]) unless stub[:license_specifications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseSpecifications
    class LicenseSpecifications
      def self.default(visited=[])
        return nil if visited.include?('LicenseSpecifications')
        visited = visited + ['LicenseSpecifications']
        [
          LicenseSpecification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseSpecification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseSpecification
    class LicenseSpecification
      def self.default(visited=[])
        return nil if visited.include?('LicenseSpecification')
        visited = visited + ['LicenseSpecification']
        {
          license_configuration_arn: 'license_configuration_arn',
          ami_association_scope: 'ami_association_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseSpecification.new
        data = {}
        data['LicenseConfigurationArn'] = stub[:license_configuration_arn] unless stub[:license_configuration_arn].nil?
        data['AmiAssociationScope'] = stub[:ami_association_scope] unless stub[:ami_association_scope].nil?
        data
      end
    end

    # Operation Stubber for ListLicenseVersions
    class ListLicenseVersions
      def self.default(visited=[])
        {
          licenses: LicenseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Licenses'] = LicenseList.stub(stub[:licenses]) unless stub[:licenses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseList
    class LicenseList
      def self.default(visited=[])
        return nil if visited.include?('LicenseList')
        visited = visited + ['LicenseList']
        [
          License.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << License.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLicenses
    class ListLicenses
      def self.default(visited=[])
        {
          licenses: LicenseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Licenses'] = LicenseList.stub(stub[:licenses]) unless stub[:licenses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListReceivedGrants
    class ListReceivedGrants
      def self.default(visited=[])
        {
          grants: GrantList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListReceivedLicenses
    class ListReceivedLicenses
      def self.default(visited=[])
        {
          licenses: GrantedLicenseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Licenses'] = GrantedLicenseList.stub(stub[:licenses]) unless stub[:licenses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GrantedLicenseList
    class GrantedLicenseList
      def self.default(visited=[])
        return nil if visited.include?('GrantedLicenseList')
        visited = visited + ['GrantedLicenseList']
        [
          GrantedLicense.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GrantedLicense.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GrantedLicense
    class GrantedLicense
      def self.default(visited=[])
        return nil if visited.include?('GrantedLicense')
        visited = visited + ['GrantedLicense']
        {
          license_arn: 'license_arn',
          license_name: 'license_name',
          product_name: 'product_name',
          product_sku: 'product_sku',
          issuer: IssuerDetails.default(visited),
          home_region: 'home_region',
          status: 'status',
          validity: DatetimeRange.default(visited),
          beneficiary: 'beneficiary',
          entitlements: EntitlementList.default(visited),
          consumption_configuration: ConsumptionConfiguration.default(visited),
          license_metadata: MetadataList.default(visited),
          create_time: 'create_time',
          version: 'version',
          received_metadata: ReceivedMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrantedLicense.new
        data = {}
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['LicenseName'] = stub[:license_name] unless stub[:license_name].nil?
        data['ProductName'] = stub[:product_name] unless stub[:product_name].nil?
        data['ProductSKU'] = stub[:product_sku] unless stub[:product_sku].nil?
        data['Issuer'] = IssuerDetails.stub(stub[:issuer]) unless stub[:issuer].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Validity'] = DatetimeRange.stub(stub[:validity]) unless stub[:validity].nil?
        data['Beneficiary'] = stub[:beneficiary] unless stub[:beneficiary].nil?
        data['Entitlements'] = EntitlementList.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['ConsumptionConfiguration'] = ConsumptionConfiguration.stub(stub[:consumption_configuration]) unless stub[:consumption_configuration].nil?
        data['LicenseMetadata'] = MetadataList.stub(stub[:license_metadata]) unless stub[:license_metadata].nil?
        data['CreateTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['ReceivedMetadata'] = ReceivedMetadata.stub(stub[:received_metadata]) unless stub[:received_metadata].nil?
        data
      end
    end

    # Structure Stubber for ReceivedMetadata
    class ReceivedMetadata
      def self.default(visited=[])
        return nil if visited.include?('ReceivedMetadata')
        visited = visited + ['ReceivedMetadata']
        {
          received_status: 'received_status',
          received_status_reason: 'received_status_reason',
          allowed_operations: AllowedOperationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReceivedMetadata.new
        data = {}
        data['ReceivedStatus'] = stub[:received_status] unless stub[:received_status].nil?
        data['ReceivedStatusReason'] = stub[:received_status_reason] unless stub[:received_status_reason].nil?
        data['AllowedOperations'] = AllowedOperationList.stub(stub[:allowed_operations]) unless stub[:allowed_operations].nil?
        data
      end
    end

    # Operation Stubber for ListResourceInventory
    class ListResourceInventory
      def self.default(visited=[])
        {
          resource_inventory_list: ResourceInventoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceInventoryList'] = ResourceInventoryList.stub(stub[:resource_inventory_list]) unless stub[:resource_inventory_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceInventoryList
    class ResourceInventoryList
      def self.default(visited=[])
        return nil if visited.include?('ResourceInventoryList')
        visited = visited + ['ResourceInventoryList']
        [
          ResourceInventory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceInventory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceInventory
    class ResourceInventory
      def self.default(visited=[])
        return nil if visited.include?('ResourceInventory')
        visited = visited + ['ResourceInventory']
        {
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_arn: 'resource_arn',
          platform: 'platform',
          platform_version: 'platform_version',
          resource_owning_account_id: 'resource_owning_account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceInventory.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['PlatformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['ResourceOwningAccountId'] = stub[:resource_owning_account_id] unless stub[:resource_owning_account_id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTokens
    class ListTokens
      def self.default(visited=[])
        {
          tokens: TokenList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tokens'] = TokenList.stub(stub[:tokens]) unless stub[:tokens].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TokenList
    class TokenList
      def self.default(visited=[])
        return nil if visited.include?('TokenList')
        visited = visited + ['TokenList']
        [
          TokenData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TokenData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TokenData
    class TokenData
      def self.default(visited=[])
        return nil if visited.include?('TokenData')
        visited = visited + ['TokenData']
        {
          token_id: 'token_id',
          token_type: 'token_type',
          license_arn: 'license_arn',
          expiration_time: 'expiration_time',
          token_properties: MaxSize3StringList.default(visited),
          role_arns: ArnList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TokenData.new
        data = {}
        data['TokenId'] = stub[:token_id] unless stub[:token_id].nil?
        data['TokenType'] = stub[:token_type] unless stub[:token_type].nil?
        data['LicenseArn'] = stub[:license_arn] unless stub[:license_arn].nil?
        data['ExpirationTime'] = stub[:expiration_time] unless stub[:expiration_time].nil?
        data['TokenProperties'] = MaxSize3StringList.stub(stub[:token_properties]) unless stub[:token_properties].nil?
        data['RoleArns'] = ArnList.stub(stub[:role_arns]) unless stub[:role_arns].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for MaxSize3StringList
    class MaxSize3StringList
      def self.default(visited=[])
        return nil if visited.include?('MaxSize3StringList')
        visited = visited + ['MaxSize3StringList']
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

    # Operation Stubber for ListUsageForLicenseConfiguration
    class ListUsageForLicenseConfiguration
      def self.default(visited=[])
        {
          license_configuration_usage_list: LicenseConfigurationUsageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LicenseConfigurationUsageList'] = LicenseConfigurationUsageList.stub(stub[:license_configuration_usage_list]) unless stub[:license_configuration_usage_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LicenseConfigurationUsageList
    class LicenseConfigurationUsageList
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurationUsageList')
        visited = visited + ['LicenseConfigurationUsageList']
        [
          LicenseConfigurationUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LicenseConfigurationUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseConfigurationUsage
    class LicenseConfigurationUsage
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurationUsage')
        visited = visited + ['LicenseConfigurationUsage']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          resource_status: 'resource_status',
          resource_owner_id: 'resource_owner_id',
          association_time: Time.now,
          consumed_licenses: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseConfigurationUsage.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceStatus'] = stub[:resource_status] unless stub[:resource_status].nil?
        data['ResourceOwnerId'] = stub[:resource_owner_id] unless stub[:resource_owner_id].nil?
        data['AssociationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:association_time]).to_i unless stub[:association_time].nil?
        data['ConsumedLicenses'] = stub[:consumed_licenses] unless stub[:consumed_licenses].nil?
        data
      end
    end

    # Operation Stubber for RejectGrant
    class RejectGrant
      def self.default(visited=[])
        {
          grant_arn: 'grant_arn',
          status: 'status',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantArn'] = stub[:grant_arn] unless stub[:grant_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLicenseConfiguration
    class UpdateLicenseConfiguration
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

    # Operation Stubber for UpdateLicenseManagerReportGenerator
    class UpdateLicenseManagerReportGenerator
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

    # Operation Stubber for UpdateLicenseSpecificationsForResource
    class UpdateLicenseSpecificationsForResource
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

    # Operation Stubber for UpdateServiceSettings
    class UpdateServiceSettings
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
  end
end
