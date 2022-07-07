# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector2
  module Stubs

    # Operation Stubber for AssociateMember
    class AssociateMember
      def self.default(visited=[])
        {
          account_id: 'account_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchGetAccountStatus
    class BatchGetAccountStatus
      def self.default(visited=[])
        {
          accounts: Stubs::AccountStateList.default(visited),
          failed_accounts: Stubs::FailedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accounts'] = Stubs::AccountStateList.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['failedAccounts'] = Stubs::FailedAccountList.stub(stub[:failed_accounts]) unless stub[:failed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FailedAccountList
    class FailedAccountList
      def self.default(visited=[])
        return nil if visited.include?('FailedAccountList')
        visited = visited + ['FailedAccountList']
        [
          Stubs::FailedAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FailedAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedAccount
    class FailedAccount
      def self.default(visited=[])
        return nil if visited.include?('FailedAccount')
        visited = visited + ['FailedAccount']
        {
          account_id: 'account_id',
          status: 'status',
          resource_status: Stubs::ResourceStatus.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceStatus'] = Stubs::ResourceStatus.stub(stub[:resource_status]) unless stub[:resource_status].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for ResourceStatus
    class ResourceStatus
      def self.default(visited=[])
        return nil if visited.include?('ResourceStatus')
        visited = visited + ['ResourceStatus']
        {
          ec2: 'ec2',
          ecr: 'ecr',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceStatus.new
        data = {}
        data['ec2'] = stub[:ec2] unless stub[:ec2].nil?
        data['ecr'] = stub[:ecr] unless stub[:ecr].nil?
        data
      end
    end

    # List Stubber for AccountStateList
    class AccountStateList
      def self.default(visited=[])
        return nil if visited.include?('AccountStateList')
        visited = visited + ['AccountStateList']
        [
          Stubs::AccountState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountState
    class AccountState
      def self.default(visited=[])
        return nil if visited.include?('AccountState')
        visited = visited + ['AccountState']
        {
          account_id: 'account_id',
          state: Stubs::State.default(visited),
          resource_state: Stubs::ResourceState.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountState.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['state'] = Stubs::State.stub(stub[:state]) unless stub[:state].nil?
        data['resourceState'] = Stubs::ResourceState.stub(stub[:resource_state]) unless stub[:resource_state].nil?
        data
      end
    end

    # Structure Stubber for ResourceState
    class ResourceState
      def self.default(visited=[])
        return nil if visited.include?('ResourceState')
        visited = visited + ['ResourceState']
        {
          ec2: Stubs::State.default(visited),
          ecr: Stubs::State.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceState.new
        data = {}
        data['ec2'] = Stubs::State.stub(stub[:ec2]) unless stub[:ec2].nil?
        data['ecr'] = Stubs::State.stub(stub[:ecr]) unless stub[:ecr].nil?
        data
      end
    end

    # Structure Stubber for State
    class State
      def self.default(visited=[])
        return nil if visited.include?('State')
        visited = visited + ['State']
        {
          status: 'status',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::State.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetFreeTrialInfo
    class BatchGetFreeTrialInfo
      def self.default(visited=[])
        {
          accounts: Stubs::FreeTrialAccountInfoList.default(visited),
          failed_accounts: Stubs::FreeTrialInfoErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accounts'] = Stubs::FreeTrialAccountInfoList.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['failedAccounts'] = Stubs::FreeTrialInfoErrorList.stub(stub[:failed_accounts]) unless stub[:failed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FreeTrialInfoErrorList
    class FreeTrialInfoErrorList
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialInfoErrorList')
        visited = visited + ['FreeTrialInfoErrorList']
        [
          Stubs::FreeTrialInfoError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FreeTrialInfoError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FreeTrialInfoError
    class FreeTrialInfoError
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialInfoError')
        visited = visited + ['FreeTrialInfoError']
        {
          account_id: 'account_id',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FreeTrialInfoError.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for FreeTrialAccountInfoList
    class FreeTrialAccountInfoList
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialAccountInfoList')
        visited = visited + ['FreeTrialAccountInfoList']
        [
          Stubs::FreeTrialAccountInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FreeTrialAccountInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FreeTrialAccountInfo
    class FreeTrialAccountInfo
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialAccountInfo')
        visited = visited + ['FreeTrialAccountInfo']
        {
          account_id: 'account_id',
          free_trial_info: Stubs::FreeTrialInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FreeTrialAccountInfo.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['freeTrialInfo'] = Stubs::FreeTrialInfoList.stub(stub[:free_trial_info]) unless stub[:free_trial_info].nil?
        data
      end
    end

    # List Stubber for FreeTrialInfoList
    class FreeTrialInfoList
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialInfoList')
        visited = visited + ['FreeTrialInfoList']
        [
          Stubs::FreeTrialInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FreeTrialInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FreeTrialInfo
    class FreeTrialInfo
      def self.default(visited=[])
        return nil if visited.include?('FreeTrialInfo')
        visited = visited + ['FreeTrialInfo']
        {
          type: 'type',
          start: Time.now,
          end: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FreeTrialInfo.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['start'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start]).to_i unless stub[:start].nil?
        data['end'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end]).to_i unless stub[:end].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CancelFindingsReport
    class CancelFindingsReport
      def self.default(visited=[])
        {
          report_id: 'report_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFilter
    class CreateFilter
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFindingsReport
    class CreateFindingsReport
      def self.default(visited=[])
        {
          report_id: 'report_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFilter
    class DeleteFilter
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: Stubs::AutoEnable.default(visited),
          max_account_limit_reached: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoEnable'] = Stubs::AutoEnable.stub(stub[:auto_enable]) unless stub[:auto_enable].nil?
        data['maxAccountLimitReached'] = stub[:max_account_limit_reached] unless stub[:max_account_limit_reached].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AutoEnable
    class AutoEnable
      def self.default(visited=[])
        return nil if visited.include?('AutoEnable')
        visited = visited + ['AutoEnable']
        {
          ec2: false,
          ecr: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoEnable.new
        data = {}
        data['ec2'] = stub[:ec2] unless stub[:ec2].nil?
        data['ecr'] = stub[:ecr] unless stub[:ecr].nil?
        data
      end
    end

    # Operation Stubber for Disable
    class Disable
      def self.default(visited=[])
        {
          accounts: Stubs::AccountList.default(visited),
          failed_accounts: Stubs::FailedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accounts'] = Stubs::AccountList.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['failedAccounts'] = Stubs::FailedAccountList.stub(stub[:failed_accounts]) unless stub[:failed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccountList
    class AccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountList')
        visited = visited + ['AccountList']
        [
          Stubs::Account.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Account.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Account
    class Account
      def self.default(visited=[])
        return nil if visited.include?('Account')
        visited = visited + ['Account']
        {
          account_id: 'account_id',
          status: 'status',
          resource_status: Stubs::ResourceStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Account.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceStatus'] = Stubs::ResourceStatus.stub(stub[:resource_status]) unless stub[:resource_status].nil?
        data
      end
    end

    # Operation Stubber for DisableDelegatedAdminAccount
    class DisableDelegatedAdminAccount
      def self.default(visited=[])
        {
          delegated_admin_account_id: 'delegated_admin_account_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegatedAdminAccountId'] = stub[:delegated_admin_account_id] unless stub[:delegated_admin_account_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateMember
    class DisassociateMember
      def self.default(visited=[])
        {
          account_id: 'account_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Enable
    class Enable
      def self.default(visited=[])
        {
          accounts: Stubs::AccountList.default(visited),
          failed_accounts: Stubs::FailedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accounts'] = Stubs::AccountList.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['failedAccounts'] = Stubs::FailedAccountList.stub(stub[:failed_accounts]) unless stub[:failed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableDelegatedAdminAccount
    class EnableDelegatedAdminAccount
      def self.default(visited=[])
        {
          delegated_admin_account_id: 'delegated_admin_account_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegatedAdminAccountId'] = stub[:delegated_admin_account_id] unless stub[:delegated_admin_account_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDelegatedAdminAccount
    class GetDelegatedAdminAccount
      def self.default(visited=[])
        {
          delegated_admin: Stubs::DelegatedAdmin.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegatedAdmin'] = Stubs::DelegatedAdmin.stub(stub[:delegated_admin]) unless stub[:delegated_admin].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DelegatedAdmin
    class DelegatedAdmin
      def self.default(visited=[])
        return nil if visited.include?('DelegatedAdmin')
        visited = visited + ['DelegatedAdmin']
        {
          account_id: 'account_id',
          relationship_status: 'relationship_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DelegatedAdmin.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data
      end
    end

    # Operation Stubber for GetFindingsReportStatus
    class GetFindingsReportStatus
      def self.default(visited=[])
        {
          report_id: 'report_id',
          status: 'status',
          error_code: 'error_code',
          error_message: 'error_message',
          destination: Stubs::Destination.default(visited),
          filter_criteria: Stubs::FilterCriteria.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportId'] = stub[:report_id] unless stub[:report_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['destination'] = Stubs::Destination.stub(stub[:destination]) unless stub[:destination].nil?
        data['filterCriteria'] = Stubs::FilterCriteria.stub(stub[:filter_criteria]) unless stub[:filter_criteria].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FilterCriteria
    class FilterCriteria
      def self.default(visited=[])
        return nil if visited.include?('FilterCriteria')
        visited = visited + ['FilterCriteria']
        {
          finding_arn: Stubs::StringFilterList.default(visited),
          aws_account_id: Stubs::StringFilterList.default(visited),
          finding_type: Stubs::StringFilterList.default(visited),
          severity: Stubs::StringFilterList.default(visited),
          first_observed_at: Stubs::DateFilterList.default(visited),
          last_observed_at: Stubs::DateFilterList.default(visited),
          updated_at: Stubs::DateFilterList.default(visited),
          finding_status: Stubs::StringFilterList.default(visited),
          title: Stubs::StringFilterList.default(visited),
          inspector_score: Stubs::NumberFilterList.default(visited),
          resource_type: Stubs::StringFilterList.default(visited),
          resource_id: Stubs::StringFilterList.default(visited),
          resource_tags: Stubs::MapFilterList.default(visited),
          ec2_instance_image_id: Stubs::StringFilterList.default(visited),
          ec2_instance_vpc_id: Stubs::StringFilterList.default(visited),
          ec2_instance_subnet_id: Stubs::StringFilterList.default(visited),
          ecr_image_pushed_at: Stubs::DateFilterList.default(visited),
          ecr_image_architecture: Stubs::StringFilterList.default(visited),
          ecr_image_registry: Stubs::StringFilterList.default(visited),
          ecr_image_repository_name: Stubs::StringFilterList.default(visited),
          ecr_image_tags: Stubs::StringFilterList.default(visited),
          ecr_image_hash: Stubs::StringFilterList.default(visited),
          port_range: Stubs::PortRangeFilterList.default(visited),
          network_protocol: Stubs::StringFilterList.default(visited),
          component_id: Stubs::StringFilterList.default(visited),
          component_type: Stubs::StringFilterList.default(visited),
          vulnerability_id: Stubs::StringFilterList.default(visited),
          vulnerability_source: Stubs::StringFilterList.default(visited),
          vendor_severity: Stubs::StringFilterList.default(visited),
          vulnerable_packages: Stubs::PackageFilterList.default(visited),
          related_vulnerabilities: Stubs::StringFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterCriteria.new
        data = {}
        data['findingArn'] = Stubs::StringFilterList.stub(stub[:finding_arn]) unless stub[:finding_arn].nil?
        data['awsAccountId'] = Stubs::StringFilterList.stub(stub[:aws_account_id]) unless stub[:aws_account_id].nil?
        data['findingType'] = Stubs::StringFilterList.stub(stub[:finding_type]) unless stub[:finding_type].nil?
        data['severity'] = Stubs::StringFilterList.stub(stub[:severity]) unless stub[:severity].nil?
        data['firstObservedAt'] = Stubs::DateFilterList.stub(stub[:first_observed_at]) unless stub[:first_observed_at].nil?
        data['lastObservedAt'] = Stubs::DateFilterList.stub(stub[:last_observed_at]) unless stub[:last_observed_at].nil?
        data['updatedAt'] = Stubs::DateFilterList.stub(stub[:updated_at]) unless stub[:updated_at].nil?
        data['findingStatus'] = Stubs::StringFilterList.stub(stub[:finding_status]) unless stub[:finding_status].nil?
        data['title'] = Stubs::StringFilterList.stub(stub[:title]) unless stub[:title].nil?
        data['inspectorScore'] = Stubs::NumberFilterList.stub(stub[:inspector_score]) unless stub[:inspector_score].nil?
        data['resourceType'] = Stubs::StringFilterList.stub(stub[:resource_type]) unless stub[:resource_type].nil?
        data['resourceId'] = Stubs::StringFilterList.stub(stub[:resource_id]) unless stub[:resource_id].nil?
        data['resourceTags'] = Stubs::MapFilterList.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['ec2InstanceImageId'] = Stubs::StringFilterList.stub(stub[:ec2_instance_image_id]) unless stub[:ec2_instance_image_id].nil?
        data['ec2InstanceVpcId'] = Stubs::StringFilterList.stub(stub[:ec2_instance_vpc_id]) unless stub[:ec2_instance_vpc_id].nil?
        data['ec2InstanceSubnetId'] = Stubs::StringFilterList.stub(stub[:ec2_instance_subnet_id]) unless stub[:ec2_instance_subnet_id].nil?
        data['ecrImagePushedAt'] = Stubs::DateFilterList.stub(stub[:ecr_image_pushed_at]) unless stub[:ecr_image_pushed_at].nil?
        data['ecrImageArchitecture'] = Stubs::StringFilterList.stub(stub[:ecr_image_architecture]) unless stub[:ecr_image_architecture].nil?
        data['ecrImageRegistry'] = Stubs::StringFilterList.stub(stub[:ecr_image_registry]) unless stub[:ecr_image_registry].nil?
        data['ecrImageRepositoryName'] = Stubs::StringFilterList.stub(stub[:ecr_image_repository_name]) unless stub[:ecr_image_repository_name].nil?
        data['ecrImageTags'] = Stubs::StringFilterList.stub(stub[:ecr_image_tags]) unless stub[:ecr_image_tags].nil?
        data['ecrImageHash'] = Stubs::StringFilterList.stub(stub[:ecr_image_hash]) unless stub[:ecr_image_hash].nil?
        data['portRange'] = Stubs::PortRangeFilterList.stub(stub[:port_range]) unless stub[:port_range].nil?
        data['networkProtocol'] = Stubs::StringFilterList.stub(stub[:network_protocol]) unless stub[:network_protocol].nil?
        data['componentId'] = Stubs::StringFilterList.stub(stub[:component_id]) unless stub[:component_id].nil?
        data['componentType'] = Stubs::StringFilterList.stub(stub[:component_type]) unless stub[:component_type].nil?
        data['vulnerabilityId'] = Stubs::StringFilterList.stub(stub[:vulnerability_id]) unless stub[:vulnerability_id].nil?
        data['vulnerabilitySource'] = Stubs::StringFilterList.stub(stub[:vulnerability_source]) unless stub[:vulnerability_source].nil?
        data['vendorSeverity'] = Stubs::StringFilterList.stub(stub[:vendor_severity]) unless stub[:vendor_severity].nil?
        data['vulnerablePackages'] = Stubs::PackageFilterList.stub(stub[:vulnerable_packages]) unless stub[:vulnerable_packages].nil?
        data['relatedVulnerabilities'] = Stubs::StringFilterList.stub(stub[:related_vulnerabilities]) unless stub[:related_vulnerabilities].nil?
        data
      end
    end

    # List Stubber for StringFilterList
    class StringFilterList
      def self.default(visited=[])
        return nil if visited.include?('StringFilterList')
        visited = visited + ['StringFilterList']
        [
          Stubs::StringFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StringFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StringFilter
    class StringFilter
      def self.default(visited=[])
        return nil if visited.include?('StringFilter')
        visited = visited + ['StringFilter']
        {
          comparison: 'comparison',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::StringFilter.new
        data = {}
        data['comparison'] = stub[:comparison] unless stub[:comparison].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for PackageFilterList
    class PackageFilterList
      def self.default(visited=[])
        return nil if visited.include?('PackageFilterList')
        visited = visited + ['PackageFilterList']
        [
          Stubs::PackageFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageFilter
    class PackageFilter
      def self.default(visited=[])
        return nil if visited.include?('PackageFilter')
        visited = visited + ['PackageFilter']
        {
          name: Stubs::StringFilter.default(visited),
          version: Stubs::StringFilter.default(visited),
          epoch: Stubs::NumberFilter.default(visited),
          release: Stubs::StringFilter.default(visited),
          architecture: Stubs::StringFilter.default(visited),
          source_layer_hash: Stubs::StringFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageFilter.new
        data = {}
        data['name'] = Stubs::StringFilter.stub(stub[:name]) unless stub[:name].nil?
        data['version'] = Stubs::StringFilter.stub(stub[:version]) unless stub[:version].nil?
        data['epoch'] = Stubs::NumberFilter.stub(stub[:epoch]) unless stub[:epoch].nil?
        data['release'] = Stubs::StringFilter.stub(stub[:release]) unless stub[:release].nil?
        data['architecture'] = Stubs::StringFilter.stub(stub[:architecture]) unless stub[:architecture].nil?
        data['sourceLayerHash'] = Stubs::StringFilter.stub(stub[:source_layer_hash]) unless stub[:source_layer_hash].nil?
        data
      end
    end

    # Structure Stubber for NumberFilter
    class NumberFilter
      def self.default(visited=[])
        return nil if visited.include?('NumberFilter')
        visited = visited + ['NumberFilter']
        {
          upper_inclusive: 1.0,
          lower_inclusive: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::NumberFilter.new
        data = {}
        data['upperInclusive'] = Hearth::NumberHelper.serialize(stub[:upper_inclusive])
        data['lowerInclusive'] = Hearth::NumberHelper.serialize(stub[:lower_inclusive])
        data
      end
    end

    # List Stubber for PortRangeFilterList
    class PortRangeFilterList
      def self.default(visited=[])
        return nil if visited.include?('PortRangeFilterList')
        visited = visited + ['PortRangeFilterList']
        [
          Stubs::PortRangeFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortRangeFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortRangeFilter
    class PortRangeFilter
      def self.default(visited=[])
        return nil if visited.include?('PortRangeFilter')
        visited = visited + ['PortRangeFilter']
        {
          begin_inclusive: 1,
          end_inclusive: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRangeFilter.new
        data = {}
        data['beginInclusive'] = stub[:begin_inclusive] unless stub[:begin_inclusive].nil?
        data['endInclusive'] = stub[:end_inclusive] unless stub[:end_inclusive].nil?
        data
      end
    end

    # List Stubber for DateFilterList
    class DateFilterList
      def self.default(visited=[])
        return nil if visited.include?('DateFilterList')
        visited = visited + ['DateFilterList']
        [
          Stubs::DateFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DateFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DateFilter
    class DateFilter
      def self.default(visited=[])
        return nil if visited.include?('DateFilter')
        visited = visited + ['DateFilter']
        {
          start_inclusive: Time.now,
          end_inclusive: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DateFilter.new
        data = {}
        data['startInclusive'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_inclusive]).to_i unless stub[:start_inclusive].nil?
        data['endInclusive'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_inclusive]).to_i unless stub[:end_inclusive].nil?
        data
      end
    end

    # List Stubber for MapFilterList
    class MapFilterList
      def self.default(visited=[])
        return nil if visited.include?('MapFilterList')
        visited = visited + ['MapFilterList']
        [
          Stubs::MapFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MapFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MapFilter
    class MapFilter
      def self.default(visited=[])
        return nil if visited.include?('MapFilter')
        visited = visited + ['MapFilter']
        {
          comparison: 'comparison',
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::MapFilter.new
        data = {}
        data['comparison'] = stub[:comparison] unless stub[:comparison].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for NumberFilterList
    class NumberFilterList
      def self.default(visited=[])
        return nil if visited.include?('NumberFilterList')
        visited = visited + ['NumberFilterList']
        [
          Stubs::NumberFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NumberFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          bucket_name: 'bucket_name',
          key_prefix: 'key_prefix',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for GetMember
    class GetMember
      def self.default(visited=[])
        {
          member: Stubs::Member.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['member'] = Stubs::Member.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          account_id: 'account_id',
          relationship_status: 'relationship_status',
          delegated_admin_account_id: 'delegated_admin_account_id',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['delegatedAdminAccountId'] = stub[:delegated_admin_account_id] unless stub[:delegated_admin_account_id].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListAccountPermissions
    class ListAccountPermissions
      def self.default(visited=[])
        {
          permissions: Stubs::Permissions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissions'] = Stubs::Permissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Permissions
    class Permissions
      def self.default(visited=[])
        return nil if visited.include?('Permissions')
        visited = visited + ['Permissions']
        [
          Stubs::Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Permission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Permission
    class Permission
      def self.default(visited=[])
        return nil if visited.include?('Permission')
        visited = visited + ['Permission']
        {
          service: 'service',
          operation: 'operation',
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['service'] = stub[:service] unless stub[:service].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data
      end
    end

    # Operation Stubber for ListCoverage
    class ListCoverage
      def self.default(visited=[])
        {
          next_token: 'next_token',
          covered_resources: Stubs::CoveredResources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['coveredResources'] = Stubs::CoveredResources.stub(stub[:covered_resources]) unless stub[:covered_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CoveredResources
    class CoveredResources
      def self.default(visited=[])
        return nil if visited.include?('CoveredResources')
        visited = visited + ['CoveredResources']
        [
          Stubs::CoveredResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoveredResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoveredResource
    class CoveredResource
      def self.default(visited=[])
        return nil if visited.include?('CoveredResource')
        visited = visited + ['CoveredResource']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          account_id: 'account_id',
          scan_type: 'scan_type',
          scan_status: Stubs::ScanStatus.default(visited),
          resource_metadata: Stubs::ResourceScanMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoveredResource.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['scanType'] = stub[:scan_type] unless stub[:scan_type].nil?
        data['scanStatus'] = Stubs::ScanStatus.stub(stub[:scan_status]) unless stub[:scan_status].nil?
        data['resourceMetadata'] = Stubs::ResourceScanMetadata.stub(stub[:resource_metadata]) unless stub[:resource_metadata].nil?
        data
      end
    end

    # Structure Stubber for ResourceScanMetadata
    class ResourceScanMetadata
      def self.default(visited=[])
        return nil if visited.include?('ResourceScanMetadata')
        visited = visited + ['ResourceScanMetadata']
        {
          ecr_repository: Stubs::EcrRepositoryMetadata.default(visited),
          ecr_image: Stubs::EcrContainerImageMetadata.default(visited),
          ec2: Stubs::Ec2Metadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceScanMetadata.new
        data = {}
        data['ecrRepository'] = Stubs::EcrRepositoryMetadata.stub(stub[:ecr_repository]) unless stub[:ecr_repository].nil?
        data['ecrImage'] = Stubs::EcrContainerImageMetadata.stub(stub[:ecr_image]) unless stub[:ecr_image].nil?
        data['ec2'] = Stubs::Ec2Metadata.stub(stub[:ec2]) unless stub[:ec2].nil?
        data
      end
    end

    # Structure Stubber for Ec2Metadata
    class Ec2Metadata
      def self.default(visited=[])
        return nil if visited.include?('Ec2Metadata')
        visited = visited + ['Ec2Metadata']
        {
          tags: Stubs::TagMap.default(visited),
          ami_id: 'ami_id',
          platform: 'platform',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2Metadata.new
        data = {}
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['amiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data
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

    # Structure Stubber for EcrContainerImageMetadata
    class EcrContainerImageMetadata
      def self.default(visited=[])
        return nil if visited.include?('EcrContainerImageMetadata')
        visited = visited + ['EcrContainerImageMetadata']
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EcrContainerImageMetadata.new
        data = {}
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Structure Stubber for EcrRepositoryMetadata
    class EcrRepositoryMetadata
      def self.default(visited=[])
        return nil if visited.include?('EcrRepositoryMetadata')
        visited = visited + ['EcrRepositoryMetadata']
        {
          name: 'name',
          scan_frequency: 'scan_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::EcrRepositoryMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['scanFrequency'] = stub[:scan_frequency] unless stub[:scan_frequency].nil?
        data
      end
    end

    # Structure Stubber for ScanStatus
    class ScanStatus
      def self.default(visited=[])
        return nil if visited.include?('ScanStatus')
        visited = visited + ['ScanStatus']
        {
          status_code: 'status_code',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScanStatus.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for ListCoverageStatistics
    class ListCoverageStatistics
      def self.default(visited=[])
        {
          counts_by_group: Stubs::CountsList.default(visited),
          total_counts: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['countsByGroup'] = Stubs::CountsList.stub(stub[:counts_by_group]) unless stub[:counts_by_group].nil?
        data['totalCounts'] = stub[:total_counts] unless stub[:total_counts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CountsList
    class CountsList
      def self.default(visited=[])
        return nil if visited.include?('CountsList')
        visited = visited + ['CountsList']
        [
          Stubs::Counts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Counts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Counts
    class Counts
      def self.default(visited=[])
        return nil if visited.include?('Counts')
        visited = visited + ['Counts']
        {
          count: 1,
          group_key: 'group_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::Counts.new
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['groupKey'] = stub[:group_key] unless stub[:group_key].nil?
        data
      end
    end

    # Operation Stubber for ListDelegatedAdminAccounts
    class ListDelegatedAdminAccounts
      def self.default(visited=[])
        {
          delegated_admin_accounts: Stubs::DelegatedAdminAccountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegatedAdminAccounts'] = Stubs::DelegatedAdminAccountList.stub(stub[:delegated_admin_accounts]) unless stub[:delegated_admin_accounts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DelegatedAdminAccountList
    class DelegatedAdminAccountList
      def self.default(visited=[])
        return nil if visited.include?('DelegatedAdminAccountList')
        visited = visited + ['DelegatedAdminAccountList']
        [
          Stubs::DelegatedAdminAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DelegatedAdminAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DelegatedAdminAccount
    class DelegatedAdminAccount
      def self.default(visited=[])
        return nil if visited.include?('DelegatedAdminAccount')
        visited = visited + ['DelegatedAdminAccount']
        {
          account_id: 'account_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DelegatedAdminAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListFilters
    class ListFilters
      def self.default(visited=[])
        {
          filters: Stubs::FilterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['filters'] = Stubs::FilterList.stub(stub[:filters]) unless stub[:filters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FilterList
    class FilterList
      def self.default(visited=[])
        return nil if visited.include?('FilterList')
        visited = visited + ['FilterList']
        [
          Stubs::Filter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Filter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Filter
    class Filter
      def self.default(visited=[])
        return nil if visited.include?('Filter')
        visited = visited + ['Filter']
        {
          arn: 'arn',
          owner_id: 'owner_id',
          name: 'name',
          criteria: Stubs::FilterCriteria.default(visited),
          action: 'action',
          created_at: Time.now,
          updated_at: Time.now,
          description: 'description',
          reason: 'reason',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Filter.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['ownerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['criteria'] = Stubs::FilterCriteria.stub(stub[:criteria]) unless stub[:criteria].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListFindingAggregations
    class ListFindingAggregations
      def self.default(visited=[])
        {
          aggregation_type: 'aggregation_type',
          responses: Stubs::AggregationResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['aggregationType'] = stub[:aggregation_type] unless stub[:aggregation_type].nil?
        data['responses'] = Stubs::AggregationResponseList.stub(stub[:responses]) unless stub[:responses].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AggregationResponseList
    class AggregationResponseList
      def self.default(visited=[])
        return nil if visited.include?('AggregationResponseList')
        visited = visited + ['AggregationResponseList']
        [
          Stubs::AggregationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AggregationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for AggregationResponse
    class AggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('AggregationResponse')
        visited = visited + ['AggregationResponse']
        {
          account_aggregation: Stubs::AccountAggregationResponse.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AggregationResponse::AccountAggregation
          data['accountAggregation'] = (Stubs::AccountAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::AmiAggregation
          data['amiAggregation'] = (Stubs::AmiAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::AwsEcrContainerAggregation
          data['awsEcrContainerAggregation'] = (Stubs::AwsEcrContainerAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::Ec2InstanceAggregation
          data['ec2InstanceAggregation'] = (Stubs::Ec2InstanceAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::FindingTypeAggregation
          data['findingTypeAggregation'] = (Stubs::FindingTypeAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::ImageLayerAggregation
          data['imageLayerAggregation'] = (Stubs::ImageLayerAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::PackageAggregation
          data['packageAggregation'] = (Stubs::PackageAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::RepositoryAggregation
          data['repositoryAggregation'] = (Stubs::RepositoryAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AggregationResponse::TitleAggregation
          data['titleAggregation'] = (Stubs::TitleAggregationResponse.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AggregationResponse"
        end

        data
      end
    end

    # Structure Stubber for TitleAggregationResponse
    class TitleAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('TitleAggregationResponse')
        visited = visited + ['TitleAggregationResponse']
        {
          title: 'title',
          vulnerability_id: 'vulnerability_id',
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TitleAggregationResponse.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['vulnerabilityId'] = stub[:vulnerability_id] unless stub[:vulnerability_id].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data
      end
    end

    # Structure Stubber for SeverityCounts
    class SeverityCounts
      def self.default(visited=[])
        return nil if visited.include?('SeverityCounts')
        visited = visited + ['SeverityCounts']
        {
          all: 1,
          medium: 1,
          high: 1,
          critical: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SeverityCounts.new
        data = {}
        data['all'] = stub[:all] unless stub[:all].nil?
        data['medium'] = stub[:medium] unless stub[:medium].nil?
        data['high'] = stub[:high] unless stub[:high].nil?
        data['critical'] = stub[:critical] unless stub[:critical].nil?
        data
      end
    end

    # Structure Stubber for RepositoryAggregationResponse
    class RepositoryAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('RepositoryAggregationResponse')
        visited = visited + ['RepositoryAggregationResponse']
        {
          repository: 'repository',
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
          affected_images: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryAggregationResponse.new
        data = {}
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data['affectedImages'] = stub[:affected_images] unless stub[:affected_images].nil?
        data
      end
    end

    # Structure Stubber for PackageAggregationResponse
    class PackageAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('PackageAggregationResponse')
        visited = visited + ['PackageAggregationResponse']
        {
          package_name: 'package_name',
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageAggregationResponse.new
        data = {}
        data['packageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data
      end
    end

    # Structure Stubber for ImageLayerAggregationResponse
    class ImageLayerAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('ImageLayerAggregationResponse')
        visited = visited + ['ImageLayerAggregationResponse']
        {
          repository: 'repository',
          resource_id: 'resource_id',
          layer_hash: 'layer_hash',
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageLayerAggregationResponse.new
        data = {}
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['layerHash'] = stub[:layer_hash] unless stub[:layer_hash].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data
      end
    end

    # Structure Stubber for FindingTypeAggregationResponse
    class FindingTypeAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('FindingTypeAggregationResponse')
        visited = visited + ['FindingTypeAggregationResponse']
        {
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingTypeAggregationResponse.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data
      end
    end

    # Structure Stubber for Ec2InstanceAggregationResponse
    class Ec2InstanceAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('Ec2InstanceAggregationResponse')
        visited = visited + ['Ec2InstanceAggregationResponse']
        {
          instance_id: 'instance_id',
          ami: 'ami',
          operating_system: 'operating_system',
          instance_tags: Stubs::TagMap.default(visited),
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
          network_findings: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2InstanceAggregationResponse.new
        data = {}
        data['instanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['ami'] = stub[:ami] unless stub[:ami].nil?
        data['operatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['instanceTags'] = Stubs::TagMap.stub(stub[:instance_tags]) unless stub[:instance_tags].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data['networkFindings'] = stub[:network_findings] unless stub[:network_findings].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrContainerAggregationResponse
    class AwsEcrContainerAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrContainerAggregationResponse')
        visited = visited + ['AwsEcrContainerAggregationResponse']
        {
          resource_id: 'resource_id',
          image_sha: 'image_sha',
          repository: 'repository',
          architecture: 'architecture',
          image_tags: Stubs::StringList.default(visited),
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrContainerAggregationResponse.new
        data = {}
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['imageSha'] = stub[:image_sha] unless stub[:image_sha].nil?
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['imageTags'] = Stubs::StringList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
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

    # Structure Stubber for AmiAggregationResponse
    class AmiAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('AmiAggregationResponse')
        visited = visited + ['AmiAggregationResponse']
        {
          ami: 'ami',
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
          affected_instances: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AmiAggregationResponse.new
        data = {}
        data['ami'] = stub[:ami] unless stub[:ami].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data['affectedInstances'] = stub[:affected_instances] unless stub[:affected_instances].nil?
        data
      end
    end

    # Structure Stubber for AccountAggregationResponse
    class AccountAggregationResponse
      def self.default(visited=[])
        return nil if visited.include?('AccountAggregationResponse')
        visited = visited + ['AccountAggregationResponse']
        {
          account_id: 'account_id',
          severity_counts: Stubs::SeverityCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAggregationResponse.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['severityCounts'] = Stubs::SeverityCounts.stub(stub[:severity_counts]) unless stub[:severity_counts].nil?
        data
      end
    end

    # Operation Stubber for ListFindings
    class ListFindings
      def self.default(visited=[])
        {
          next_token: 'next_token',
          findings: Stubs::FindingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['findings'] = Stubs::FindingList.stub(stub[:findings]) unless stub[:findings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FindingList
    class FindingList
      def self.default(visited=[])
        return nil if visited.include?('FindingList')
        visited = visited + ['FindingList']
        [
          Stubs::Finding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Finding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Finding
    class Finding
      def self.default(visited=[])
        return nil if visited.include?('Finding')
        visited = visited + ['Finding']
        {
          finding_arn: 'finding_arn',
          aws_account_id: 'aws_account_id',
          type: 'type',
          description: 'description',
          title: 'title',
          remediation: Stubs::Remediation.default(visited),
          severity: 'severity',
          first_observed_at: Time.now,
          last_observed_at: Time.now,
          updated_at: Time.now,
          status: 'status',
          resources: Stubs::ResourceList.default(visited),
          inspector_score: 1.0,
          inspector_score_details: Stubs::InspectorScoreDetails.default(visited),
          network_reachability_details: Stubs::NetworkReachabilityDetails.default(visited),
          package_vulnerability_details: Stubs::PackageVulnerabilityDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Finding.new
        data = {}
        data['findingArn'] = stub[:finding_arn] unless stub[:finding_arn].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['remediation'] = Stubs::Remediation.stub(stub[:remediation]) unless stub[:remediation].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['firstObservedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_observed_at]).to_i unless stub[:first_observed_at].nil?
        data['lastObservedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_observed_at]).to_i unless stub[:last_observed_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resources'] = Stubs::ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['inspectorScore'] = Hearth::NumberHelper.serialize(stub[:inspector_score])
        data['inspectorScoreDetails'] = Stubs::InspectorScoreDetails.stub(stub[:inspector_score_details]) unless stub[:inspector_score_details].nil?
        data['networkReachabilityDetails'] = Stubs::NetworkReachabilityDetails.stub(stub[:network_reachability_details]) unless stub[:network_reachability_details].nil?
        data['packageVulnerabilityDetails'] = Stubs::PackageVulnerabilityDetails.stub(stub[:package_vulnerability_details]) unless stub[:package_vulnerability_details].nil?
        data
      end
    end

    # Structure Stubber for PackageVulnerabilityDetails
    class PackageVulnerabilityDetails
      def self.default(visited=[])
        return nil if visited.include?('PackageVulnerabilityDetails')
        visited = visited + ['PackageVulnerabilityDetails']
        {
          vulnerability_id: 'vulnerability_id',
          vulnerable_packages: Stubs::VulnerablePackageList.default(visited),
          source: 'source',
          cvss: Stubs::CvssScoreList.default(visited),
          related_vulnerabilities: Stubs::VulnerabilityIdList.default(visited),
          source_url: 'source_url',
          vendor_severity: 'vendor_severity',
          vendor_created_at: Time.now,
          vendor_updated_at: Time.now,
          reference_urls: Stubs::NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVulnerabilityDetails.new
        data = {}
        data['vulnerabilityId'] = stub[:vulnerability_id] unless stub[:vulnerability_id].nil?
        data['vulnerablePackages'] = Stubs::VulnerablePackageList.stub(stub[:vulnerable_packages]) unless stub[:vulnerable_packages].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data['cvss'] = Stubs::CvssScoreList.stub(stub[:cvss]) unless stub[:cvss].nil?
        data['relatedVulnerabilities'] = Stubs::VulnerabilityIdList.stub(stub[:related_vulnerabilities]) unless stub[:related_vulnerabilities].nil?
        data['sourceUrl'] = stub[:source_url] unless stub[:source_url].nil?
        data['vendorSeverity'] = stub[:vendor_severity] unless stub[:vendor_severity].nil?
        data['vendorCreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vendor_created_at]).to_i unless stub[:vendor_created_at].nil?
        data['vendorUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:vendor_updated_at]).to_i unless stub[:vendor_updated_at].nil?
        data['referenceUrls'] = Stubs::NonEmptyStringList.stub(stub[:reference_urls]) unless stub[:reference_urls].nil?
        data
      end
    end

    # List Stubber for NonEmptyStringList
    class NonEmptyStringList
      def self.default(visited=[])
        return nil if visited.include?('NonEmptyStringList')
        visited = visited + ['NonEmptyStringList']
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

    # List Stubber for VulnerabilityIdList
    class VulnerabilityIdList
      def self.default(visited=[])
        return nil if visited.include?('VulnerabilityIdList')
        visited = visited + ['VulnerabilityIdList']
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

    # List Stubber for CvssScoreList
    class CvssScoreList
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreList')
        visited = visited + ['CvssScoreList']
        [
          Stubs::CvssScore.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CvssScore.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CvssScore
    class CvssScore
      def self.default(visited=[])
        return nil if visited.include?('CvssScore')
        visited = visited + ['CvssScore']
        {
          base_score: 1.0,
          scoring_vector: 'scoring_vector',
          version: 'version',
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScore.new
        data = {}
        data['baseScore'] = Hearth::NumberHelper.serialize(stub[:base_score])
        data['scoringVector'] = stub[:scoring_vector] unless stub[:scoring_vector].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # List Stubber for VulnerablePackageList
    class VulnerablePackageList
      def self.default(visited=[])
        return nil if visited.include?('VulnerablePackageList')
        visited = visited + ['VulnerablePackageList']
        [
          Stubs::VulnerablePackage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VulnerablePackage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VulnerablePackage
    class VulnerablePackage
      def self.default(visited=[])
        return nil if visited.include?('VulnerablePackage')
        visited = visited + ['VulnerablePackage']
        {
          name: 'name',
          version: 'version',
          source_layer_hash: 'source_layer_hash',
          epoch: 1,
          release: 'release',
          arch: 'arch',
          package_manager: 'package_manager',
          file_path: 'file_path',
          fixed_in_version: 'fixed_in_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::VulnerablePackage.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sourceLayerHash'] = stub[:source_layer_hash] unless stub[:source_layer_hash].nil?
        data['epoch'] = stub[:epoch] unless stub[:epoch].nil?
        data['release'] = stub[:release] unless stub[:release].nil?
        data['arch'] = stub[:arch] unless stub[:arch].nil?
        data['packageManager'] = stub[:package_manager] unless stub[:package_manager].nil?
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['fixedInVersion'] = stub[:fixed_in_version] unless stub[:fixed_in_version].nil?
        data
      end
    end

    # Structure Stubber for NetworkReachabilityDetails
    class NetworkReachabilityDetails
      def self.default(visited=[])
        return nil if visited.include?('NetworkReachabilityDetails')
        visited = visited + ['NetworkReachabilityDetails']
        {
          open_port_range: Stubs::PortRange.default(visited),
          protocol: 'protocol',
          network_path: Stubs::NetworkPath.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkReachabilityDetails.new
        data = {}
        data['openPortRange'] = Stubs::PortRange.stub(stub[:open_port_range]) unless stub[:open_port_range].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['networkPath'] = Stubs::NetworkPath.stub(stub[:network_path]) unless stub[:network_path].nil?
        data
      end
    end

    # Structure Stubber for NetworkPath
    class NetworkPath
      def self.default(visited=[])
        return nil if visited.include?('NetworkPath')
        visited = visited + ['NetworkPath']
        {
          steps: Stubs::StepList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkPath.new
        data = {}
        data['steps'] = Stubs::StepList.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for StepList
    class StepList
      def self.default(visited=[])
        return nil if visited.include?('StepList')
        visited = visited + ['StepList']
        [
          Stubs::Step.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Step.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Step
    class Step
      def self.default(visited=[])
        return nil if visited.include?('Step')
        visited = visited + ['Step']
        {
          component_id: 'component_id',
          component_type: 'component_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Step.new
        data = {}
        data['componentId'] = stub[:component_id] unless stub[:component_id].nil?
        data['componentType'] = stub[:component_type] unless stub[:component_type].nil?
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange
      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          begin: 1,
          end: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRange.new
        data = {}
        data['begin'] = stub[:begin] unless stub[:begin].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for InspectorScoreDetails
    class InspectorScoreDetails
      def self.default(visited=[])
        return nil if visited.include?('InspectorScoreDetails')
        visited = visited + ['InspectorScoreDetails']
        {
          adjusted_cvss: Stubs::CvssScoreDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InspectorScoreDetails.new
        data = {}
        data['adjustedCvss'] = Stubs::CvssScoreDetails.stub(stub[:adjusted_cvss]) unless stub[:adjusted_cvss].nil?
        data
      end
    end

    # Structure Stubber for CvssScoreDetails
    class CvssScoreDetails
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreDetails')
        visited = visited + ['CvssScoreDetails']
        {
          score_source: 'score_source',
          cvss_source: 'cvss_source',
          version: 'version',
          score: 1.0,
          scoring_vector: 'scoring_vector',
          adjustments: Stubs::CvssScoreAdjustmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScoreDetails.new
        data = {}
        data['scoreSource'] = stub[:score_source] unless stub[:score_source].nil?
        data['cvssSource'] = stub[:cvss_source] unless stub[:cvss_source].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['scoringVector'] = stub[:scoring_vector] unless stub[:scoring_vector].nil?
        data['adjustments'] = Stubs::CvssScoreAdjustmentList.stub(stub[:adjustments]) unless stub[:adjustments].nil?
        data
      end
    end

    # List Stubber for CvssScoreAdjustmentList
    class CvssScoreAdjustmentList
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreAdjustmentList')
        visited = visited + ['CvssScoreAdjustmentList']
        [
          Stubs::CvssScoreAdjustment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CvssScoreAdjustment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CvssScoreAdjustment
    class CvssScoreAdjustment
      def self.default(visited=[])
        return nil if visited.include?('CvssScoreAdjustment')
        visited = visited + ['CvssScoreAdjustment']
        {
          metric: 'metric',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CvssScoreAdjustment.new
        data = {}
        data['metric'] = stub[:metric] unless stub[:metric].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          Stubs::Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          type: 'type',
          id: 'id',
          partition: 'partition',
          region: 'region',
          tags: Stubs::TagMap.default(visited),
          details: Stubs::ResourceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['partition'] = stub[:partition] unless stub[:partition].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['details'] = Stubs::ResourceDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Structure Stubber for ResourceDetails
    class ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetails')
        visited = visited + ['ResourceDetails']
        {
          aws_ec2_instance: Stubs::AwsEc2InstanceDetails.default(visited),
          aws_ecr_container_image: Stubs::AwsEcrContainerImageDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDetails.new
        data = {}
        data['awsEc2Instance'] = Stubs::AwsEc2InstanceDetails.stub(stub[:aws_ec2_instance]) unless stub[:aws_ec2_instance].nil?
        data['awsEcrContainerImage'] = Stubs::AwsEcrContainerImageDetails.stub(stub[:aws_ecr_container_image]) unless stub[:aws_ecr_container_image].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrContainerImageDetails
    class AwsEcrContainerImageDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrContainerImageDetails')
        visited = visited + ['AwsEcrContainerImageDetails']
        {
          repository_name: 'repository_name',
          image_tags: Stubs::ImageTagList.default(visited),
          pushed_at: Time.now,
          author: 'author',
          architecture: 'architecture',
          image_hash: 'image_hash',
          registry: 'registry',
          platform: 'platform',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrContainerImageDetails.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['imageTags'] = Stubs::ImageTagList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['pushedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pushed_at]).to_i unless stub[:pushed_at].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['imageHash'] = stub[:image_hash] unless stub[:image_hash].nil?
        data['registry'] = stub[:registry] unless stub[:registry].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data
      end
    end

    # List Stubber for ImageTagList
    class ImageTagList
      def self.default(visited=[])
        return nil if visited.include?('ImageTagList')
        visited = visited + ['ImageTagList']
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

    # Structure Stubber for AwsEc2InstanceDetails
    class AwsEc2InstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2InstanceDetails')
        visited = visited + ['AwsEc2InstanceDetails']
        {
          type: 'type',
          image_id: 'image_id',
          ip_v4_addresses: Stubs::IpV4AddressList.default(visited),
          ip_v6_addresses: Stubs::IpV6AddressList.default(visited),
          key_name: 'key_name',
          iam_instance_profile_arn: 'iam_instance_profile_arn',
          vpc_id: 'vpc_id',
          subnet_id: 'subnet_id',
          launched_at: Time.now,
          platform: 'platform',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2InstanceDetails.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['imageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['ipV4Addresses'] = Stubs::IpV4AddressList.stub(stub[:ip_v4_addresses]) unless stub[:ip_v4_addresses].nil?
        data['ipV6Addresses'] = Stubs::IpV6AddressList.stub(stub[:ip_v6_addresses]) unless stub[:ip_v6_addresses].nil?
        data['keyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['iamInstanceProfileArn'] = stub[:iam_instance_profile_arn] unless stub[:iam_instance_profile_arn].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['launchedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:launched_at]).to_i unless stub[:launched_at].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data
      end
    end

    # List Stubber for IpV6AddressList
    class IpV6AddressList
      def self.default(visited=[])
        return nil if visited.include?('IpV6AddressList')
        visited = visited + ['IpV6AddressList']
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

    # List Stubber for IpV4AddressList
    class IpV4AddressList
      def self.default(visited=[])
        return nil if visited.include?('IpV4AddressList')
        visited = visited + ['IpV4AddressList']
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

    # Structure Stubber for Remediation
    class Remediation
      def self.default(visited=[])
        return nil if visited.include?('Remediation')
        visited = visited + ['Remediation']
        {
          recommendation: Stubs::Recommendation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Remediation.new
        data = {}
        data['recommendation'] = Stubs::Recommendation.stub(stub[:recommendation]) unless stub[:recommendation].nil?
        data
      end
    end

    # Structure Stubber for Recommendation
    class Recommendation
      def self.default(visited=[])
        return nil if visited.include?('Recommendation')
        visited = visited + ['Recommendation']
        {
          text: 'text',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['text'] = stub[:text] unless stub[:text].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          members: Stubs::MemberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::MemberList.stub(stub[:members]) unless stub[:members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MemberList
    class MemberList
      def self.default(visited=[])
        return nil if visited.include?('MemberList')
        visited = visited + ['MemberList']
        [
          Stubs::Member.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Member.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListUsageTotals
    class ListUsageTotals
      def self.default(visited=[])
        {
          next_token: 'next_token',
          totals: Stubs::UsageTotalList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['totals'] = Stubs::UsageTotalList.stub(stub[:totals]) unless stub[:totals].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UsageTotalList
    class UsageTotalList
      def self.default(visited=[])
        return nil if visited.include?('UsageTotalList')
        visited = visited + ['UsageTotalList']
        [
          Stubs::UsageTotal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageTotal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageTotal
    class UsageTotal
      def self.default(visited=[])
        return nil if visited.include?('UsageTotal')
        visited = visited + ['UsageTotal']
        {
          account_id: 'account_id',
          usage: Stubs::UsageList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageTotal.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['usage'] = Stubs::UsageList.stub(stub[:usage]) unless stub[:usage].nil?
        data
      end
    end

    # List Stubber for UsageList
    class UsageList
      def self.default(visited=[])
        return nil if visited.include?('UsageList')
        visited = visited + ['UsageList']
        [
          Stubs::Usage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Usage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Usage
    class Usage
      def self.default(visited=[])
        return nil if visited.include?('Usage')
        visited = visited + ['Usage']
        {
          type: 'type',
          total: 1.0,
          estimated_monthly_cost: 1.0,
          currency: 'currency',
        }
      end

      def self.stub(stub)
        stub ||= Types::Usage.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['total'] = Hearth::NumberHelper.serialize(stub[:total])
        data['estimatedMonthlyCost'] = Hearth::NumberHelper.serialize(stub[:estimated_monthly_cost])
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data
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

    # Operation Stubber for UpdateFilter
    class UpdateFilter
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: Stubs::AutoEnable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoEnable'] = Stubs::AutoEnable.stub(stub[:auto_enable]) unless stub[:auto_enable].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end