# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::WorkMail
  module Stubs

    # Operation Stubber for AssociateDelegateToResource
    class AssociateDelegateToResource
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

    # Operation Stubber for AssociateMemberToGroup
    class AssociateMemberToGroup
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

    # Operation Stubber for CancelMailboxExportJob
    class CancelMailboxExportJob
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

    # Operation Stubber for CreateAlias
    class CreateAlias
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

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group_id: 'group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMobileDeviceAccessRule
    class CreateMobileDeviceAccessRule
      def self.default(visited=[])
        {
          mobile_device_access_rule_id: 'mobile_device_access_rule_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MobileDeviceAccessRuleId'] = stub[:mobile_device_access_rule_id] unless stub[:mobile_device_access_rule_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOrganization
    class CreateOrganization
      def self.default(visited=[])
        {
          organization_id: 'organization_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateResource
    class CreateResource
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccessControlRule
    class DeleteAccessControlRule
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

    # Operation Stubber for DeleteAlias
    class DeleteAlias
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

    # Operation Stubber for DeleteEmailMonitoringConfiguration
    class DeleteEmailMonitoringConfiguration
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

    # Operation Stubber for DeleteGroup
    class DeleteGroup
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

    # Operation Stubber for DeleteMailboxPermissions
    class DeleteMailboxPermissions
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

    # Operation Stubber for DeleteMobileDeviceAccessOverride
    class DeleteMobileDeviceAccessOverride
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

    # Operation Stubber for DeleteMobileDeviceAccessRule
    class DeleteMobileDeviceAccessRule
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

    # Operation Stubber for DeleteOrganization
    class DeleteOrganization
      def self.default(visited=[])
        {
          organization_id: 'organization_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResource
    class DeleteResource
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

    # Operation Stubber for DeleteRetentionPolicy
    class DeleteRetentionPolicy
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

    # Operation Stubber for DeleteUser
    class DeleteUser
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

    # Operation Stubber for DeregisterFromWorkMail
    class DeregisterFromWorkMail
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

    # Operation Stubber for DeregisterMailDomain
    class DeregisterMailDomain
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

    # Operation Stubber for DescribeEmailMonitoringConfiguration
    class DescribeEmailMonitoringConfiguration
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          log_group_arn: 'log_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LogGroupArn'] = stub[:log_group_arn] unless stub[:log_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeGroup
    class DescribeGroup
      def self.default(visited=[])
        {
          group_id: 'group_id',
          name: 'name',
          email: 'email',
          state: 'state',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInboundDmarcSettings
    class DescribeInboundDmarcSettings
      def self.default(visited=[])
        {
          enforced: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Enforced'] = stub[:enforced] unless stub[:enforced].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeMailboxExportJob
    class DescribeMailboxExportJob
      def self.default(visited=[])
        {
          entity_id: 'entity_id',
          description: 'description',
          role_arn: 'role_arn',
          kms_key_arn: 'kms_key_arn',
          s3_bucket_name: 's3_bucket_name',
          s3_prefix: 's3_prefix',
          s3_path: 's3_path',
          estimated_progress: 1,
          state: 'state',
          error_info: 'error_info',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data['S3Path'] = stub[:s3_path] unless stub[:s3_path].nil?
        data['EstimatedProgress'] = stub[:estimated_progress] unless stub[:estimated_progress].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ErrorInfo'] = stub[:error_info] unless stub[:error_info].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeOrganization
    class DescribeOrganization
      def self.default(visited=[])
        {
          organization_id: 'organization_id',
          alias: 'alias',
          state: 'state',
          directory_id: 'directory_id',
          directory_type: 'directory_type',
          default_mail_domain: 'default_mail_domain',
          completed_date: Time.now,
          error_message: 'error_message',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['DirectoryType'] = stub[:directory_type] unless stub[:directory_type].nil?
        data['DefaultMailDomain'] = stub[:default_mail_domain] unless stub[:default_mail_domain].nil?
        data['CompletedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_date]).to_i unless stub[:completed_date].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeResource
    class DescribeResource
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
          email: 'email',
          name: 'name',
          type: 'type',
          booking_options: BookingOptions.default(visited),
          state: 'state',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['BookingOptions'] = BookingOptions.stub(stub[:booking_options]) unless stub[:booking_options].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BookingOptions
    class BookingOptions
      def self.default(visited=[])
        return nil if visited.include?('BookingOptions')
        visited = visited + ['BookingOptions']
        {
          auto_accept_requests: false,
          auto_decline_recurring_requests: false,
          auto_decline_conflicting_requests: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BookingOptions.new
        data = {}
        data['AutoAcceptRequests'] = stub[:auto_accept_requests] unless stub[:auto_accept_requests].nil?
        data['AutoDeclineRecurringRequests'] = stub[:auto_decline_recurring_requests] unless stub[:auto_decline_recurring_requests].nil?
        data['AutoDeclineConflictingRequests'] = stub[:auto_decline_conflicting_requests] unless stub[:auto_decline_conflicting_requests].nil?
        data
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          name: 'name',
          email: 'email',
          display_name: 'display_name',
          state: 'state',
          user_role: 'user_role',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['UserRole'] = stub[:user_role] unless stub[:user_role].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDelegateFromResource
    class DisassociateDelegateFromResource
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

    # Operation Stubber for DisassociateMemberFromGroup
    class DisassociateMemberFromGroup
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

    # Operation Stubber for GetAccessControlEffect
    class GetAccessControlEffect
      def self.default(visited=[])
        {
          effect: 'effect',
          matched_rules: AccessControlRuleNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['MatchedRules'] = AccessControlRuleNameList.stub(stub[:matched_rules]) unless stub[:matched_rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccessControlRuleNameList
    class AccessControlRuleNameList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlRuleNameList')
        visited = visited + ['AccessControlRuleNameList']
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

    # Operation Stubber for GetDefaultRetentionPolicy
    class GetDefaultRetentionPolicy
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          folder_configurations: FolderConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FolderConfigurations'] = FolderConfigurations.stub(stub[:folder_configurations]) unless stub[:folder_configurations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FolderConfigurations
    class FolderConfigurations
      def self.default(visited=[])
        return nil if visited.include?('FolderConfigurations')
        visited = visited + ['FolderConfigurations']
        [
          FolderConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FolderConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FolderConfiguration
    class FolderConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FolderConfiguration')
        visited = visited + ['FolderConfiguration']
        {
          name: 'name',
          action: 'action',
          period: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FolderConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Period'] = stub[:period] unless stub[:period].nil?
        data
      end
    end

    # Operation Stubber for GetMailDomain
    class GetMailDomain
      def self.default(visited=[])
        {
          records: DnsRecords.default(visited),
          is_test_domain: false,
          is_default: false,
          ownership_verification_status: 'ownership_verification_status',
          dkim_verification_status: 'dkim_verification_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Records'] = DnsRecords.stub(stub[:records]) unless stub[:records].nil?
        data['IsTestDomain'] = stub[:is_test_domain] unless stub[:is_test_domain].nil?
        data['IsDefault'] = stub[:is_default] unless stub[:is_default].nil?
        data['OwnershipVerificationStatus'] = stub[:ownership_verification_status] unless stub[:ownership_verification_status].nil?
        data['DkimVerificationStatus'] = stub[:dkim_verification_status] unless stub[:dkim_verification_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DnsRecords
    class DnsRecords
      def self.default(visited=[])
        return nil if visited.include?('DnsRecords')
        visited = visited + ['DnsRecords']
        [
          DnsRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DnsRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DnsRecord
    class DnsRecord
      def self.default(visited=[])
        return nil if visited.include?('DnsRecord')
        visited = visited + ['DnsRecord']
        {
          type: 'type',
          hostname: 'hostname',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRecord.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetMailboxDetails
    class GetMailboxDetails
      def self.default(visited=[])
        {
          mailbox_quota: 1,
          mailbox_size: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MailboxQuota'] = stub[:mailbox_quota] unless stub[:mailbox_quota].nil?
        data['MailboxSize'] = Hearth::NumberHelper.serialize(stub[:mailbox_size])
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMobileDeviceAccessEffect
    class GetMobileDeviceAccessEffect
      def self.default(visited=[])
        {
          effect: 'effect',
          matched_rules: MobileDeviceAccessMatchedRuleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['MatchedRules'] = MobileDeviceAccessMatchedRuleList.stub(stub[:matched_rules]) unless stub[:matched_rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MobileDeviceAccessMatchedRuleList
    class MobileDeviceAccessMatchedRuleList
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessMatchedRuleList')
        visited = visited + ['MobileDeviceAccessMatchedRuleList']
        [
          MobileDeviceAccessMatchedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MobileDeviceAccessMatchedRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MobileDeviceAccessMatchedRule
    class MobileDeviceAccessMatchedRule
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessMatchedRule')
        visited = visited + ['MobileDeviceAccessMatchedRule']
        {
          mobile_device_access_rule_id: 'mobile_device_access_rule_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MobileDeviceAccessMatchedRule.new
        data = {}
        data['MobileDeviceAccessRuleId'] = stub[:mobile_device_access_rule_id] unless stub[:mobile_device_access_rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetMobileDeviceAccessOverride
    class GetMobileDeviceAccessOverride
      def self.default(visited=[])
        {
          user_id: 'user_id',
          device_id: 'device_id',
          effect: 'effect',
          description: 'description',
          date_created: Time.now,
          date_modified: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DateCreated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_created]).to_i unless stub[:date_created].nil?
        data['DateModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_modified]).to_i unless stub[:date_modified].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccessControlRules
    class ListAccessControlRules
      def self.default(visited=[])
        {
          rules: AccessControlRulesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rules'] = AccessControlRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccessControlRulesList
    class AccessControlRulesList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlRulesList')
        visited = visited + ['AccessControlRulesList']
        [
          AccessControlRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessControlRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessControlRule
    class AccessControlRule
      def self.default(visited=[])
        return nil if visited.include?('AccessControlRule')
        visited = visited + ['AccessControlRule']
        {
          name: 'name',
          effect: 'effect',
          description: 'description',
          ip_ranges: IpRangeList.default(visited),
          not_ip_ranges: IpRangeList.default(visited),
          actions: ActionsList.default(visited),
          not_actions: ActionsList.default(visited),
          user_ids: UserIdList.default(visited),
          not_user_ids: UserIdList.default(visited),
          date_created: Time.now,
          date_modified: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlRule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['IpRanges'] = IpRangeList.stub(stub[:ip_ranges]) unless stub[:ip_ranges].nil?
        data['NotIpRanges'] = IpRangeList.stub(stub[:not_ip_ranges]) unless stub[:not_ip_ranges].nil?
        data['Actions'] = ActionsList.stub(stub[:actions]) unless stub[:actions].nil?
        data['NotActions'] = ActionsList.stub(stub[:not_actions]) unless stub[:not_actions].nil?
        data['UserIds'] = UserIdList.stub(stub[:user_ids]) unless stub[:user_ids].nil?
        data['NotUserIds'] = UserIdList.stub(stub[:not_user_ids]) unless stub[:not_user_ids].nil?
        data['DateCreated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_created]).to_i unless stub[:date_created].nil?
        data['DateModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_modified]).to_i unless stub[:date_modified].nil?
        data
      end
    end

    # List Stubber for UserIdList
    class UserIdList
      def self.default(visited=[])
        return nil if visited.include?('UserIdList')
        visited = visited + ['UserIdList']
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

    # List Stubber for ActionsList
    class ActionsList
      def self.default(visited=[])
        return nil if visited.include?('ActionsList')
        visited = visited + ['ActionsList']
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

    # List Stubber for IpRangeList
    class IpRangeList
      def self.default(visited=[])
        return nil if visited.include?('IpRangeList')
        visited = visited + ['IpRangeList']
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

    # Operation Stubber for ListAliases
    class ListAliases
      def self.default(visited=[])
        {
          aliases: Aliases.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = Aliases.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Aliases
    class Aliases
      def self.default(visited=[])
        return nil if visited.include?('Aliases')
        visited = visited + ['Aliases']
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

    # Operation Stubber for ListGroupMembers
    class ListGroupMembers
      def self.default(visited=[])
        {
          members: Members.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Members'] = Members.stub(stub[:members]) unless stub[:members].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Members
    class Members
      def self.default(visited=[])
        return nil if visited.include?('Members')
        visited = visited + ['Members']
        [
          Member.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Member.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          id: 'id',
          name: 'name',
          type: 'type',
          state: 'state',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        data
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          groups: Groups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Groups'] = Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
        [
          Group.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Group.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          id: 'id',
          email: 'email',
          name: 'name',
          state: 'state',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        data
      end
    end

    # Operation Stubber for ListMailDomains
    class ListMailDomains
      def self.default(visited=[])
        {
          mail_domains: MailDomains.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MailDomains'] = MailDomains.stub(stub[:mail_domains]) unless stub[:mail_domains].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MailDomains
    class MailDomains
      def self.default(visited=[])
        return nil if visited.include?('MailDomains')
        visited = visited + ['MailDomains']
        [
          MailDomainSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MailDomainSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MailDomainSummary
    class MailDomainSummary
      def self.default(visited=[])
        return nil if visited.include?('MailDomainSummary')
        visited = visited + ['MailDomainSummary']
        {
          domain_name: 'domain_name',
          default_domain: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MailDomainSummary.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DefaultDomain'] = stub[:default_domain] unless stub[:default_domain].nil?
        data
      end
    end

    # Operation Stubber for ListMailboxExportJobs
    class ListMailboxExportJobs
      def self.default(visited=[])
        {
          jobs: Jobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Jobs'] = Jobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Jobs
    class Jobs
      def self.default(visited=[])
        return nil if visited.include?('Jobs')
        visited = visited + ['Jobs']
        [
          MailboxExportJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MailboxExportJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MailboxExportJob
    class MailboxExportJob
      def self.default(visited=[])
        return nil if visited.include?('MailboxExportJob')
        visited = visited + ['MailboxExportJob']
        {
          job_id: 'job_id',
          entity_id: 'entity_id',
          description: 'description',
          s3_bucket_name: 's3_bucket_name',
          s3_path: 's3_path',
          estimated_progress: 1,
          state: 'state',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MailboxExportJob.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3Path'] = stub[:s3_path] unless stub[:s3_path].nil?
        data['EstimatedProgress'] = stub[:estimated_progress] unless stub[:estimated_progress].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for ListMailboxPermissions
    class ListMailboxPermissions
      def self.default(visited=[])
        {
          permissions: Permissions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Permissions'] = Permissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Permissions
    class Permissions
      def self.default(visited=[])
        return nil if visited.include?('Permissions')
        visited = visited + ['Permissions']
        [
          Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Permission.stub(element) unless element.nil?
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
          grantee_id: 'grantee_id',
          grantee_type: 'grantee_type',
          permission_values: PermissionValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['GranteeId'] = stub[:grantee_id] unless stub[:grantee_id].nil?
        data['GranteeType'] = stub[:grantee_type] unless stub[:grantee_type].nil?
        data['PermissionValues'] = PermissionValues.stub(stub[:permission_values]) unless stub[:permission_values].nil?
        data
      end
    end

    # List Stubber for PermissionValues
    class PermissionValues
      def self.default(visited=[])
        return nil if visited.include?('PermissionValues')
        visited = visited + ['PermissionValues']
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

    # Operation Stubber for ListMobileDeviceAccessOverrides
    class ListMobileDeviceAccessOverrides
      def self.default(visited=[])
        {
          overrides: MobileDeviceAccessOverridesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Overrides'] = MobileDeviceAccessOverridesList.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MobileDeviceAccessOverridesList
    class MobileDeviceAccessOverridesList
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessOverridesList')
        visited = visited + ['MobileDeviceAccessOverridesList']
        [
          MobileDeviceAccessOverride.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MobileDeviceAccessOverride.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MobileDeviceAccessOverride
    class MobileDeviceAccessOverride
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessOverride')
        visited = visited + ['MobileDeviceAccessOverride']
        {
          user_id: 'user_id',
          device_id: 'device_id',
          effect: 'effect',
          description: 'description',
          date_created: Time.now,
          date_modified: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MobileDeviceAccessOverride.new
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DateCreated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_created]).to_i unless stub[:date_created].nil?
        data['DateModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_modified]).to_i unless stub[:date_modified].nil?
        data
      end
    end

    # Operation Stubber for ListMobileDeviceAccessRules
    class ListMobileDeviceAccessRules
      def self.default(visited=[])
        {
          rules: MobileDeviceAccessRulesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rules'] = MobileDeviceAccessRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MobileDeviceAccessRulesList
    class MobileDeviceAccessRulesList
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessRulesList')
        visited = visited + ['MobileDeviceAccessRulesList']
        [
          MobileDeviceAccessRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MobileDeviceAccessRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MobileDeviceAccessRule
    class MobileDeviceAccessRule
      def self.default(visited=[])
        return nil if visited.include?('MobileDeviceAccessRule')
        visited = visited + ['MobileDeviceAccessRule']
        {
          mobile_device_access_rule_id: 'mobile_device_access_rule_id',
          name: 'name',
          description: 'description',
          effect: 'effect',
          device_types: DeviceTypeList.default(visited),
          not_device_types: DeviceTypeList.default(visited),
          device_models: DeviceModelList.default(visited),
          not_device_models: DeviceModelList.default(visited),
          device_operating_systems: DeviceOperatingSystemList.default(visited),
          not_device_operating_systems: DeviceOperatingSystemList.default(visited),
          device_user_agents: DeviceUserAgentList.default(visited),
          not_device_user_agents: DeviceUserAgentList.default(visited),
          date_created: Time.now,
          date_modified: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MobileDeviceAccessRule.new
        data = {}
        data['MobileDeviceAccessRuleId'] = stub[:mobile_device_access_rule_id] unless stub[:mobile_device_access_rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Effect'] = stub[:effect] unless stub[:effect].nil?
        data['DeviceTypes'] = DeviceTypeList.stub(stub[:device_types]) unless stub[:device_types].nil?
        data['NotDeviceTypes'] = DeviceTypeList.stub(stub[:not_device_types]) unless stub[:not_device_types].nil?
        data['DeviceModels'] = DeviceModelList.stub(stub[:device_models]) unless stub[:device_models].nil?
        data['NotDeviceModels'] = DeviceModelList.stub(stub[:not_device_models]) unless stub[:not_device_models].nil?
        data['DeviceOperatingSystems'] = DeviceOperatingSystemList.stub(stub[:device_operating_systems]) unless stub[:device_operating_systems].nil?
        data['NotDeviceOperatingSystems'] = DeviceOperatingSystemList.stub(stub[:not_device_operating_systems]) unless stub[:not_device_operating_systems].nil?
        data['DeviceUserAgents'] = DeviceUserAgentList.stub(stub[:device_user_agents]) unless stub[:device_user_agents].nil?
        data['NotDeviceUserAgents'] = DeviceUserAgentList.stub(stub[:not_device_user_agents]) unless stub[:not_device_user_agents].nil?
        data['DateCreated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_created]).to_i unless stub[:date_created].nil?
        data['DateModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_modified]).to_i unless stub[:date_modified].nil?
        data
      end
    end

    # List Stubber for DeviceUserAgentList
    class DeviceUserAgentList
      def self.default(visited=[])
        return nil if visited.include?('DeviceUserAgentList')
        visited = visited + ['DeviceUserAgentList']
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

    # List Stubber for DeviceOperatingSystemList
    class DeviceOperatingSystemList
      def self.default(visited=[])
        return nil if visited.include?('DeviceOperatingSystemList')
        visited = visited + ['DeviceOperatingSystemList']
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

    # List Stubber for DeviceModelList
    class DeviceModelList
      def self.default(visited=[])
        return nil if visited.include?('DeviceModelList')
        visited = visited + ['DeviceModelList']
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

    # List Stubber for DeviceTypeList
    class DeviceTypeList
      def self.default(visited=[])
        return nil if visited.include?('DeviceTypeList')
        visited = visited + ['DeviceTypeList']
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

    # Operation Stubber for ListOrganizations
    class ListOrganizations
      def self.default(visited=[])
        {
          organization_summaries: OrganizationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationSummaries'] = OrganizationSummaries.stub(stub[:organization_summaries]) unless stub[:organization_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationSummaries
    class OrganizationSummaries
      def self.default(visited=[])
        return nil if visited.include?('OrganizationSummaries')
        visited = visited + ['OrganizationSummaries']
        [
          OrganizationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationSummary
    class OrganizationSummary
      def self.default(visited=[])
        return nil if visited.include?('OrganizationSummary')
        visited = visited + ['OrganizationSummary']
        {
          organization_id: 'organization_id',
          alias: 'alias',
          default_mail_domain: 'default_mail_domain',
          error_message: 'error_message',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationSummary.new
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['DefaultMailDomain'] = stub[:default_mail_domain] unless stub[:default_mail_domain].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListResourceDelegates
    class ListResourceDelegates
      def self.default(visited=[])
        {
          delegates: ResourceDelegates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Delegates'] = ResourceDelegates.stub(stub[:delegates]) unless stub[:delegates].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceDelegates
    class ResourceDelegates
      def self.default(visited=[])
        return nil if visited.include?('ResourceDelegates')
        visited = visited + ['ResourceDelegates']
        [
          Delegate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Delegate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Delegate
    class Delegate
      def self.default(visited=[])
        return nil if visited.include?('Delegate')
        visited = visited + ['Delegate']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Delegate.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListResources
    class ListResources
      def self.default(visited=[])
        {
          resources: Resources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Resources'] = Resources.stub(stub[:resources]) unless stub[:resources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Resource.stub(element) unless element.nil?
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
          id: 'id',
          email: 'email',
          name: 'name',
          type: 'type',
          state: 'state',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
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

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: Users.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = Users.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Users
    class Users
      def self.default(visited=[])
        return nil if visited.include?('Users')
        visited = visited + ['Users']
        [
          User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          id: 'id',
          email: 'email',
          name: 'name',
          display_name: 'display_name',
          state: 'state',
          user_role: 'user_role',
          enabled_date: Time.now,
          disabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['UserRole'] = stub[:user_role] unless stub[:user_role].nil?
        data['EnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enabled_date]).to_i unless stub[:enabled_date].nil?
        data['DisabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disabled_date]).to_i unless stub[:disabled_date].nil?
        data
      end
    end

    # Operation Stubber for PutAccessControlRule
    class PutAccessControlRule
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

    # Operation Stubber for PutEmailMonitoringConfiguration
    class PutEmailMonitoringConfiguration
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

    # Operation Stubber for PutInboundDmarcSettings
    class PutInboundDmarcSettings
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

    # Operation Stubber for PutMailboxPermissions
    class PutMailboxPermissions
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

    # Operation Stubber for PutMobileDeviceAccessOverride
    class PutMobileDeviceAccessOverride
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

    # Operation Stubber for PutRetentionPolicy
    class PutRetentionPolicy
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

    # Operation Stubber for RegisterMailDomain
    class RegisterMailDomain
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

    # Operation Stubber for RegisterToWorkMail
    class RegisterToWorkMail
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

    # Operation Stubber for ResetPassword
    class ResetPassword
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

    # Operation Stubber for StartMailboxExportJob
    class StartMailboxExportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
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

    # Operation Stubber for UpdateDefaultMailDomain
    class UpdateDefaultMailDomain
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

    # Operation Stubber for UpdateMailboxQuota
    class UpdateMailboxQuota
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

    # Operation Stubber for UpdateMobileDeviceAccessRule
    class UpdateMobileDeviceAccessRule
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

    # Operation Stubber for UpdatePrimaryEmailAddress
    class UpdatePrimaryEmailAddress
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

    # Operation Stubber for UpdateResource
    class UpdateResource
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
