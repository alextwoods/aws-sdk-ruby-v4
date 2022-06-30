# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WorkMail
  module Parsers

    # Operation Parser for AssociateDelegateToResource
    class AssociateDelegateToResource
      def self.parse(http_resp)
        data = Types::AssociateDelegateToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for EntityStateException
    class EntityStateException
      def self.parse(http_resp)
        data = Types::EntityStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationNotFoundException
    class OrganizationNotFoundException
      def self.parse(http_resp)
        data = Types::OrganizationNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EntityNotFoundException
    class EntityNotFoundException
      def self.parse(http_resp)
        data = Types::EntityNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationStateException
    class OrganizationStateException
      def self.parse(http_resp)
        data = Types::OrganizationStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateMemberToGroup
    class AssociateMemberToGroup
      def self.parse(http_resp)
        data = Types::AssociateMemberToGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DirectoryUnavailableException
    class DirectoryUnavailableException
      def self.parse(http_resp)
        data = Types::DirectoryUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DirectoryServiceAuthenticationFailedException
    class DirectoryServiceAuthenticationFailedException
      def self.parse(http_resp)
        data = Types::DirectoryServiceAuthenticationFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelMailboxExportJob
    class CancelMailboxExportJob
      def self.parse(http_resp)
        data = Types::CancelMailboxExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAlias
    class CreateAlias
      def self.parse(http_resp)
        data = Types::CreateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for EmailAddressInUseException
    class EmailAddressInUseException
      def self.parse(http_resp)
        data = Types::EmailAddressInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MailDomainNotFoundException
    class MailDomainNotFoundException
      def self.parse(http_resp)
        data = Types::MailDomainNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MailDomainStateException
    class MailDomainStateException
      def self.parse(http_resp)
        data = Types::MailDomainStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group_id = map['GroupId']
        data
      end
    end

    # Error Parser for NameAvailabilityException
    class NameAvailabilityException
      def self.parse(http_resp)
        data = Types::NameAvailabilityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ReservedNameException
    class ReservedNameException
      def self.parse(http_resp)
        data = Types::ReservedNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateMobileDeviceAccessRule
    class CreateMobileDeviceAccessRule
      def self.parse(http_resp)
        data = Types::CreateMobileDeviceAccessRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mobile_device_access_rule_id = map['MobileDeviceAccessRuleId']
        data
      end
    end

    # Operation Parser for CreateOrganization
    class CreateOrganization
      def self.parse(http_resp)
        data = Types::CreateOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_id = map['OrganizationId']
        data
      end
    end

    # Error Parser for DirectoryInUseException
    class DirectoryInUseException
      def self.parse(http_resp)
        data = Types::DirectoryInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateResource
    class CreateResource
      def self.parse(http_resp)
        data = Types::CreateResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_id = map['UserId']
        data
      end
    end

    # Error Parser for InvalidPasswordException
    class InvalidPasswordException
      def self.parse(http_resp)
        data = Types::InvalidPasswordException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteAccessControlRule
    class DeleteAccessControlRule
      def self.parse(http_resp)
        data = Types::DeleteAccessControlRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAlias
    class DeleteAlias
      def self.parse(http_resp)
        data = Types::DeleteAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEmailMonitoringConfiguration
    class DeleteEmailMonitoringConfiguration
      def self.parse(http_resp)
        data = Types::DeleteEmailMonitoringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMailboxPermissions
    class DeleteMailboxPermissions
      def self.parse(http_resp)
        data = Types::DeleteMailboxPermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMobileDeviceAccessOverride
    class DeleteMobileDeviceAccessOverride
      def self.parse(http_resp)
        data = Types::DeleteMobileDeviceAccessOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMobileDeviceAccessRule
    class DeleteMobileDeviceAccessRule
      def self.parse(http_resp)
        data = Types::DeleteMobileDeviceAccessRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteOrganization
    class DeleteOrganization
      def self.parse(http_resp)
        data = Types::DeleteOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_id = map['OrganizationId']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for DeleteResource
    class DeleteResource
      def self.parse(http_resp)
        data = Types::DeleteResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRetentionPolicy
    class DeleteRetentionPolicy
      def self.parse(http_resp)
        data = Types::DeleteRetentionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterFromWorkMail
    class DeregisterFromWorkMail
      def self.parse(http_resp)
        data = Types::DeregisterFromWorkMailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterMailDomain
    class DeregisterMailDomain
      def self.parse(http_resp)
        data = Types::DeregisterMailDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidCustomSesConfigurationException
    class InvalidCustomSesConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidCustomSesConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MailDomainInUseException
    class MailDomainInUseException
      def self.parse(http_resp)
        data = Types::MailDomainInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeEmailMonitoringConfiguration
    class DescribeEmailMonitoringConfiguration
      def self.parse(http_resp)
        data = Types::DescribeEmailMonitoringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.role_arn = map['RoleArn']
        data.log_group_arn = map['LogGroupArn']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeGroup
    class DescribeGroup
      def self.parse(http_resp)
        data = Types::DescribeGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group_id = map['GroupId']
        data.name = map['Name']
        data.email = map['Email']
        data.state = map['State']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        data
      end
    end

    # Operation Parser for DescribeInboundDmarcSettings
    class DescribeInboundDmarcSettings
      def self.parse(http_resp)
        data = Types::DescribeInboundDmarcSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.enforced = map['Enforced']
        data
      end
    end

    # Operation Parser for DescribeMailboxExportJob
    class DescribeMailboxExportJob
      def self.parse(http_resp)
        data = Types::DescribeMailboxExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_id = map['EntityId']
        data.description = map['Description']
        data.role_arn = map['RoleArn']
        data.kms_key_arn = map['KmsKeyArn']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_prefix = map['S3Prefix']
        data.s3_path = map['S3Path']
        data.estimated_progress = map['EstimatedProgress']
        data.state = map['State']
        data.error_info = map['ErrorInfo']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data
      end
    end

    # Operation Parser for DescribeOrganization
    class DescribeOrganization
      def self.parse(http_resp)
        data = Types::DescribeOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_id = map['OrganizationId']
        data.alias = map['Alias']
        data.state = map['State']
        data.directory_id = map['DirectoryId']
        data.directory_type = map['DirectoryType']
        data.default_mail_domain = map['DefaultMailDomain']
        data.completed_date = Time.at(map['CompletedDate'].to_i) if map['CompletedDate']
        data.error_message = map['ErrorMessage']
        data.arn = map['ARN']
        data
      end
    end

    # Operation Parser for DescribeResource
    class DescribeResource
      def self.parse(http_resp)
        data = Types::DescribeResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data.email = map['Email']
        data.name = map['Name']
        data.type = map['Type']
        data.booking_options = (Parsers::BookingOptions.parse(map['BookingOptions']) unless map['BookingOptions'].nil?)
        data.state = map['State']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        data
      end
    end

    class BookingOptions
      def self.parse(map)
        data = Types::BookingOptions.new
        data.auto_accept_requests = map['AutoAcceptRequests']
        data.auto_decline_recurring_requests = map['AutoDeclineRecurringRequests']
        data.auto_decline_conflicting_requests = map['AutoDeclineConflictingRequests']
        return data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_id = map['UserId']
        data.name = map['Name']
        data.email = map['Email']
        data.display_name = map['DisplayName']
        data.state = map['State']
        data.user_role = map['UserRole']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        data
      end
    end

    # Operation Parser for DisassociateDelegateFromResource
    class DisassociateDelegateFromResource
      def self.parse(http_resp)
        data = Types::DisassociateDelegateFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateMemberFromGroup
    class DisassociateMemberFromGroup
      def self.parse(http_resp)
        data = Types::DisassociateMemberFromGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetAccessControlEffect
    class GetAccessControlEffect
      def self.parse(http_resp)
        data = Types::GetAccessControlEffectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.effect = map['Effect']
        data.matched_rules = (Parsers::AccessControlRuleNameList.parse(map['MatchedRules']) unless map['MatchedRules'].nil?)
        data
      end
    end

    class AccessControlRuleNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetDefaultRetentionPolicy
    class GetDefaultRetentionPolicy
      def self.parse(http_resp)
        data = Types::GetDefaultRetentionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.folder_configurations = (Parsers::FolderConfigurations.parse(map['FolderConfigurations']) unless map['FolderConfigurations'].nil?)
        data
      end
    end

    class FolderConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::FolderConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class FolderConfiguration
      def self.parse(map)
        data = Types::FolderConfiguration.new
        data.name = map['Name']
        data.action = map['Action']
        data.period = map['Period']
        return data
      end
    end

    # Operation Parser for GetMailDomain
    class GetMailDomain
      def self.parse(http_resp)
        data = Types::GetMailDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.records = (Parsers::DnsRecords.parse(map['Records']) unless map['Records'].nil?)
        data.is_test_domain = map['IsTestDomain']
        data.is_default = map['IsDefault']
        data.ownership_verification_status = map['OwnershipVerificationStatus']
        data.dkim_verification_status = map['DkimVerificationStatus']
        data
      end
    end

    class DnsRecords
      def self.parse(list)
        list.map do |value|
          Parsers::DnsRecord.parse(value) unless value.nil?
        end
      end
    end

    class DnsRecord
      def self.parse(map)
        data = Types::DnsRecord.new
        data.type = map['Type']
        data.hostname = map['Hostname']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetMailboxDetails
    class GetMailboxDetails
      def self.parse(http_resp)
        data = Types::GetMailboxDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mailbox_quota = map['MailboxQuota']
        data.mailbox_size = Hearth::NumberHelper.deserialize(map['MailboxSize'])
        data
      end
    end

    # Operation Parser for GetMobileDeviceAccessEffect
    class GetMobileDeviceAccessEffect
      def self.parse(http_resp)
        data = Types::GetMobileDeviceAccessEffectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.effect = map['Effect']
        data.matched_rules = (Parsers::MobileDeviceAccessMatchedRuleList.parse(map['MatchedRules']) unless map['MatchedRules'].nil?)
        data
      end
    end

    class MobileDeviceAccessMatchedRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::MobileDeviceAccessMatchedRule.parse(value) unless value.nil?
        end
      end
    end

    class MobileDeviceAccessMatchedRule
      def self.parse(map)
        data = Types::MobileDeviceAccessMatchedRule.new
        data.mobile_device_access_rule_id = map['MobileDeviceAccessRuleId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for GetMobileDeviceAccessOverride
    class GetMobileDeviceAccessOverride
      def self.parse(http_resp)
        data = Types::GetMobileDeviceAccessOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_id = map['UserId']
        data.device_id = map['DeviceId']
        data.effect = map['Effect']
        data.description = map['Description']
        data.date_created = Time.at(map['DateCreated'].to_i) if map['DateCreated']
        data.date_modified = Time.at(map['DateModified'].to_i) if map['DateModified']
        data
      end
    end

    # Operation Parser for ListAccessControlRules
    class ListAccessControlRules
      def self.parse(http_resp)
        data = Types::ListAccessControlRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rules = (Parsers::AccessControlRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        data
      end
    end

    class AccessControlRulesList
      def self.parse(list)
        list.map do |value|
          Parsers::AccessControlRule.parse(value) unless value.nil?
        end
      end
    end

    class AccessControlRule
      def self.parse(map)
        data = Types::AccessControlRule.new
        data.name = map['Name']
        data.effect = map['Effect']
        data.description = map['Description']
        data.ip_ranges = (Parsers::IpRangeList.parse(map['IpRanges']) unless map['IpRanges'].nil?)
        data.not_ip_ranges = (Parsers::IpRangeList.parse(map['NotIpRanges']) unless map['NotIpRanges'].nil?)
        data.actions = (Parsers::ActionsList.parse(map['Actions']) unless map['Actions'].nil?)
        data.not_actions = (Parsers::ActionsList.parse(map['NotActions']) unless map['NotActions'].nil?)
        data.user_ids = (Parsers::UserIdList.parse(map['UserIds']) unless map['UserIds'].nil?)
        data.not_user_ids = (Parsers::UserIdList.parse(map['NotUserIds']) unless map['NotUserIds'].nil?)
        data.date_created = Time.at(map['DateCreated'].to_i) if map['DateCreated']
        data.date_modified = Time.at(map['DateModified'].to_i) if map['DateModified']
        return data
      end
    end

    class UserIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ActionsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IpRangeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListAliases
    class ListAliases
      def self.parse(http_resp)
        data = Types::ListAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (Parsers::Aliases.parse(map['Aliases']) unless map['Aliases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Aliases
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListGroupMembers
    class ListGroupMembers
      def self.parse(http_resp)
        data = Types::ListGroupMembersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.members = (Parsers::Members.parse(map['Members']) unless map['Members'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Members
      def self.parse(list)
        list.map do |value|
          Parsers::Member.parse(value) unless value.nil?
        end
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.id = map['Id']
        data.name = map['Name']
        data.type = map['Type']
        data.state = map['State']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        return data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.groups = (Parsers::Groups.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Groups
      def self.parse(list)
        list.map do |value|
          Parsers::Group.parse(value) unless value.nil?
        end
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.id = map['Id']
        data.email = map['Email']
        data.name = map['Name']
        data.state = map['State']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        return data
      end
    end

    # Operation Parser for ListMailDomains
    class ListMailDomains
      def self.parse(http_resp)
        data = Types::ListMailDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mail_domains = (Parsers::MailDomains.parse(map['MailDomains']) unless map['MailDomains'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MailDomains
      def self.parse(list)
        list.map do |value|
          Parsers::MailDomainSummary.parse(value) unless value.nil?
        end
      end
    end

    class MailDomainSummary
      def self.parse(map)
        data = Types::MailDomainSummary.new
        data.domain_name = map['DomainName']
        data.default_domain = map['DefaultDomain']
        return data
      end
    end

    # Operation Parser for ListMailboxExportJobs
    class ListMailboxExportJobs
      def self.parse(http_resp)
        data = Types::ListMailboxExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::Jobs.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Jobs
      def self.parse(list)
        list.map do |value|
          Parsers::MailboxExportJob.parse(value) unless value.nil?
        end
      end
    end

    class MailboxExportJob
      def self.parse(map)
        data = Types::MailboxExportJob.new
        data.job_id = map['JobId']
        data.entity_id = map['EntityId']
        data.description = map['Description']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_path = map['S3Path']
        data.estimated_progress = map['EstimatedProgress']
        data.state = map['State']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Operation Parser for ListMailboxPermissions
    class ListMailboxPermissions
      def self.parse(http_resp)
        data = Types::ListMailboxPermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permissions = (Parsers::Permissions.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Permissions
      def self.parse(list)
        list.map do |value|
          Parsers::Permission.parse(value) unless value.nil?
        end
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.grantee_id = map['GranteeId']
        data.grantee_type = map['GranteeType']
        data.permission_values = (Parsers::PermissionValues.parse(map['PermissionValues']) unless map['PermissionValues'].nil?)
        return data
      end
    end

    class PermissionValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListMobileDeviceAccessOverrides
    class ListMobileDeviceAccessOverrides
      def self.parse(http_resp)
        data = Types::ListMobileDeviceAccessOverridesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.overrides = (Parsers::MobileDeviceAccessOverridesList.parse(map['Overrides']) unless map['Overrides'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MobileDeviceAccessOverridesList
      def self.parse(list)
        list.map do |value|
          Parsers::MobileDeviceAccessOverride.parse(value) unless value.nil?
        end
      end
    end

    class MobileDeviceAccessOverride
      def self.parse(map)
        data = Types::MobileDeviceAccessOverride.new
        data.user_id = map['UserId']
        data.device_id = map['DeviceId']
        data.effect = map['Effect']
        data.description = map['Description']
        data.date_created = Time.at(map['DateCreated'].to_i) if map['DateCreated']
        data.date_modified = Time.at(map['DateModified'].to_i) if map['DateModified']
        return data
      end
    end

    # Operation Parser for ListMobileDeviceAccessRules
    class ListMobileDeviceAccessRules
      def self.parse(http_resp)
        data = Types::ListMobileDeviceAccessRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rules = (Parsers::MobileDeviceAccessRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        data
      end
    end

    class MobileDeviceAccessRulesList
      def self.parse(list)
        list.map do |value|
          Parsers::MobileDeviceAccessRule.parse(value) unless value.nil?
        end
      end
    end

    class MobileDeviceAccessRule
      def self.parse(map)
        data = Types::MobileDeviceAccessRule.new
        data.mobile_device_access_rule_id = map['MobileDeviceAccessRuleId']
        data.name = map['Name']
        data.description = map['Description']
        data.effect = map['Effect']
        data.device_types = (Parsers::DeviceTypeList.parse(map['DeviceTypes']) unless map['DeviceTypes'].nil?)
        data.not_device_types = (Parsers::DeviceTypeList.parse(map['NotDeviceTypes']) unless map['NotDeviceTypes'].nil?)
        data.device_models = (Parsers::DeviceModelList.parse(map['DeviceModels']) unless map['DeviceModels'].nil?)
        data.not_device_models = (Parsers::DeviceModelList.parse(map['NotDeviceModels']) unless map['NotDeviceModels'].nil?)
        data.device_operating_systems = (Parsers::DeviceOperatingSystemList.parse(map['DeviceOperatingSystems']) unless map['DeviceOperatingSystems'].nil?)
        data.not_device_operating_systems = (Parsers::DeviceOperatingSystemList.parse(map['NotDeviceOperatingSystems']) unless map['NotDeviceOperatingSystems'].nil?)
        data.device_user_agents = (Parsers::DeviceUserAgentList.parse(map['DeviceUserAgents']) unless map['DeviceUserAgents'].nil?)
        data.not_device_user_agents = (Parsers::DeviceUserAgentList.parse(map['NotDeviceUserAgents']) unless map['NotDeviceUserAgents'].nil?)
        data.date_created = Time.at(map['DateCreated'].to_i) if map['DateCreated']
        data.date_modified = Time.at(map['DateModified'].to_i) if map['DateModified']
        return data
      end
    end

    class DeviceUserAgentList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DeviceOperatingSystemList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DeviceModelList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DeviceTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListOrganizations
    class ListOrganizations
      def self.parse(http_resp)
        data = Types::ListOrganizationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_summaries = (Parsers::OrganizationSummaries.parse(map['OrganizationSummaries']) unless map['OrganizationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationSummary.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationSummary
      def self.parse(map)
        data = Types::OrganizationSummary.new
        data.organization_id = map['OrganizationId']
        data.alias = map['Alias']
        data.default_mail_domain = map['DefaultMailDomain']
        data.error_message = map['ErrorMessage']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListResourceDelegates
    class ListResourceDelegates
      def self.parse(http_resp)
        data = Types::ListResourceDelegatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delegates = (Parsers::ResourceDelegates.parse(map['Delegates']) unless map['Delegates'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceDelegates
      def self.parse(list)
        list.map do |value|
          Parsers::Delegate.parse(value) unless value.nil?
        end
      end
    end

    class Delegate
      def self.parse(map)
        data = Types::Delegate.new
        data.id = map['Id']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListResources
    class ListResources
      def self.parse(http_resp)
        data = Types::ListResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resources = (Parsers::Resources.parse(map['Resources']) unless map['Resources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Resources
      def self.parse(list)
        list.map do |value|
          Parsers::Resource.parse(value) unless value.nil?
        end
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.id = map['Id']
        data.email = map['Email']
        data.name = map['Name']
        data.type = map['Type']
        data.state = map['State']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::Users.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Users
      def self.parse(list)
        list.map do |value|
          Parsers::User.parse(value) unless value.nil?
        end
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.id = map['Id']
        data.email = map['Email']
        data.name = map['Name']
        data.display_name = map['DisplayName']
        data.state = map['State']
        data.user_role = map['UserRole']
        data.enabled_date = Time.at(map['EnabledDate'].to_i) if map['EnabledDate']
        data.disabled_date = Time.at(map['DisabledDate'].to_i) if map['DisabledDate']
        return data
      end
    end

    # Operation Parser for PutAccessControlRule
    class PutAccessControlRule
      def self.parse(http_resp)
        data = Types::PutAccessControlRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutEmailMonitoringConfiguration
    class PutEmailMonitoringConfiguration
      def self.parse(http_resp)
        data = Types::PutEmailMonitoringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutInboundDmarcSettings
    class PutInboundDmarcSettings
      def self.parse(http_resp)
        data = Types::PutInboundDmarcSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutMailboxPermissions
    class PutMailboxPermissions
      def self.parse(http_resp)
        data = Types::PutMailboxPermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutMobileDeviceAccessOverride
    class PutMobileDeviceAccessOverride
      def self.parse(http_resp)
        data = Types::PutMobileDeviceAccessOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutRetentionPolicy
    class PutRetentionPolicy
      def self.parse(http_resp)
        data = Types::PutRetentionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterMailDomain
    class RegisterMailDomain
      def self.parse(http_resp)
        data = Types::RegisterMailDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterToWorkMail
    class RegisterToWorkMail
      def self.parse(http_resp)
        data = Types::RegisterToWorkMailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for EntityAlreadyRegisteredException
    class EntityAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::EntityAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ResetPassword
    class ResetPassword
      def self.parse(http_resp)
        data = Types::ResetPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartMailboxExportJob
    class StartMailboxExportJob
      def self.parse(http_resp)
        data = Types::StartMailboxExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDefaultMailDomain
    class UpdateDefaultMailDomain
      def self.parse(http_resp)
        data = Types::UpdateDefaultMailDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateMailboxQuota
    class UpdateMailboxQuota
      def self.parse(http_resp)
        data = Types::UpdateMailboxQuotaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateMobileDeviceAccessRule
    class UpdateMobileDeviceAccessRule
      def self.parse(http_resp)
        data = Types::UpdateMobileDeviceAccessRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePrimaryEmailAddress
    class UpdatePrimaryEmailAddress
      def self.parse(http_resp)
        data = Types::UpdatePrimaryEmailAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateResource
    class UpdateResource
      def self.parse(http_resp)
        data = Types::UpdateResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidConfigurationException
    class InvalidConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
