# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMail
  module Validators

    class AccessControlRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IpRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Validators::IpRangeList.validate!(input[:not_ip_ranges], context: "#{context}[:not_ip_ranges]") unless input[:not_ip_ranges].nil?
        Validators::ActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::ActionsList.validate!(input[:not_actions], context: "#{context}[:not_actions]") unless input[:not_actions].nil?
        Validators::UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Validators::UserIdList.validate!(input[:not_user_ids], context: "#{context}[:not_user_ids]") unless input[:not_user_ids].nil?
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_modified], ::Time, context: "#{context}[:date_modified]")
      end
    end

    class AccessControlRuleNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessControlRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessControlRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Aliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateDelegateToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDelegateToResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class AssociateDelegateToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDelegateToResourceOutput, context: context)
      end
    end

    class AssociateMemberToGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberToGroupInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class AssociateMemberToGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberToGroupOutput, context: context)
      end
    end

    class BookingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BookingOptions, context: context)
        Hearth::Validator.validate!(input[:auto_accept_requests], ::TrueClass, ::FalseClass, context: "#{context}[:auto_accept_requests]")
        Hearth::Validator.validate!(input[:auto_decline_recurring_requests], ::TrueClass, ::FalseClass, context: "#{context}[:auto_decline_recurring_requests]")
        Hearth::Validator.validate!(input[:auto_decline_conflicting_requests], ::TrueClass, ::FalseClass, context: "#{context}[:auto_decline_conflicting_requests]")
      end
    end

    class CancelMailboxExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMailboxExportJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class CancelMailboxExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMailboxExportJobOutput, context: context)
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasOutput, context: context)
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class CreateMobileDeviceAccessRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMobileDeviceAccessRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::DeviceTypeList.validate!(input[:device_types], context: "#{context}[:device_types]") unless input[:device_types].nil?
        Validators::DeviceTypeList.validate!(input[:not_device_types], context: "#{context}[:not_device_types]") unless input[:not_device_types].nil?
        Validators::DeviceModelList.validate!(input[:device_models], context: "#{context}[:device_models]") unless input[:device_models].nil?
        Validators::DeviceModelList.validate!(input[:not_device_models], context: "#{context}[:not_device_models]") unless input[:not_device_models].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless input[:device_operating_systems].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless input[:not_device_operating_systems].nil?
        Validators::DeviceUserAgentList.validate!(input[:device_user_agents], context: "#{context}[:device_user_agents]") unless input[:device_user_agents].nil?
        Validators::DeviceUserAgentList.validate!(input[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless input[:not_device_user_agents].nil?
      end
    end

    class CreateMobileDeviceAccessRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMobileDeviceAccessRuleOutput, context: context)
        Hearth::Validator.validate!(input[:mobile_device_access_rule_id], ::String, context: "#{context}[:mobile_device_access_rule_id]")
      end
    end

    class CreateOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::Domains.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:enable_interoperability], ::TrueClass, ::FalseClass, context: "#{context}[:enable_interoperability]")
      end
    end

    class CreateOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationOutput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class CreateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class Delegate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Delegate, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DeleteAccessControlRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessControlRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAccessControlRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessControlRuleOutput, context: context)
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteEmailMonitoringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailMonitoringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DeleteEmailMonitoringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailMonitoringConfigurationOutput, context: context)
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
      end
    end

    class DeleteMailboxPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMailboxPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:grantee_id], ::String, context: "#{context}[:grantee_id]")
      end
    end

    class DeleteMailboxPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMailboxPermissionsOutput, context: context)
      end
    end

    class DeleteMobileDeviceAccessOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMobileDeviceAccessOverrideInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DeleteMobileDeviceAccessOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMobileDeviceAccessOverrideOutput, context: context)
      end
    end

    class DeleteMobileDeviceAccessRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMobileDeviceAccessRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:mobile_device_access_rule_id], ::String, context: "#{context}[:mobile_device_access_rule_id]")
      end
    end

    class DeleteMobileDeviceAccessRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMobileDeviceAccessRuleOutput, context: context)
      end
    end

    class DeleteOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:delete_directory], ::TrueClass, ::FalseClass, context: "#{context}[:delete_directory]")
      end
    end

    class DeleteOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationOutput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DeleteResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DeleteResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceOutput, context: context)
      end
    end

    class DeleteRetentionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteRetentionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionPolicyOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeregisterFromWorkMailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterFromWorkMailInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class DeregisterFromWorkMailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterFromWorkMailOutput, context: context)
      end
    end

    class DeregisterMailDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterMailDomainInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeregisterMailDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterMailDomainOutput, context: context)
      end
    end

    class DescribeEmailMonitoringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEmailMonitoringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DescribeEmailMonitoringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEmailMonitoringConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class DescribeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DescribeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupOutput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class DescribeInboundDmarcSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInboundDmarcSettingsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DescribeInboundDmarcSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInboundDmarcSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:enforced], ::TrueClass, ::FalseClass, context: "#{context}[:enforced]")
      end
    end

    class DescribeMailboxExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMailboxExportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DescribeMailboxExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMailboxExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_path], ::String, context: "#{context}[:s3_path]")
        Hearth::Validator.validate!(input[:estimated_progress], ::Integer, context: "#{context}[:estimated_progress]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:error_info], ::String, context: "#{context}[:error_info]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class DescribeOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DescribeOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationOutput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:directory_type], ::String, context: "#{context}[:directory_type]")
        Hearth::Validator.validate!(input[:default_mail_domain], ::String, context: "#{context}[:default_mail_domain]")
        Hearth::Validator.validate!(input[:completed_date], ::Time, context: "#{context}[:completed_date]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DescribeResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::BookingOptions.validate!(input[:booking_options], context: "#{context}[:booking_options]") unless input[:booking_options].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class DescribeUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DescribeUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:user_role], ::String, context: "#{context}[:user_role]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class DeviceModelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceOperatingSystemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceUserAgentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DirectoryInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectoryServiceAuthenticationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryServiceAuthenticationFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectoryUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisassociateDelegateFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDelegateFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class DisassociateDelegateFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDelegateFromResourceOutput, context: context)
      end
    end

    class DisassociateMemberFromGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberFromGroupInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class DisassociateMemberFromGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberFromGroupOutput, context: context)
      end
    end

    class DnsRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRecord, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DnsRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DnsRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Domain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Domain, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class Domains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Domain.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EmailAddressInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailAddressInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FolderConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
      end
    end

    class FolderConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FolderConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccessControlEffectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessControlEffectInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetAccessControlEffectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessControlEffectOutput, context: context)
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::AccessControlRuleNameList.validate!(input[:matched_rules], context: "#{context}[:matched_rules]") unless input[:matched_rules].nil?
      end
    end

    class GetDefaultRetentionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDefaultRetentionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class GetDefaultRetentionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDefaultRetentionPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FolderConfigurations.validate!(input[:folder_configurations], context: "#{context}[:folder_configurations]") unless input[:folder_configurations].nil?
      end
    end

    class GetMailDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMailDomainInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetMailDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMailDomainOutput, context: context)
        Validators::DnsRecords.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:is_test_domain], ::TrueClass, ::FalseClass, context: "#{context}[:is_test_domain]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:ownership_verification_status], ::String, context: "#{context}[:ownership_verification_status]")
        Hearth::Validator.validate!(input[:dkim_verification_status], ::String, context: "#{context}[:dkim_verification_status]")
      end
    end

    class GetMailboxDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMailboxDetailsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetMailboxDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMailboxDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:mailbox_quota], ::Integer, context: "#{context}[:mailbox_quota]")
        Hearth::Validator.validate!(input[:mailbox_size], ::Float, context: "#{context}[:mailbox_size]")
      end
    end

    class GetMobileDeviceAccessEffectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileDeviceAccessEffectInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:device_model], ::String, context: "#{context}[:device_model]")
        Hearth::Validator.validate!(input[:device_operating_system], ::String, context: "#{context}[:device_operating_system]")
        Hearth::Validator.validate!(input[:device_user_agent], ::String, context: "#{context}[:device_user_agent]")
      end
    end

    class GetMobileDeviceAccessEffectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileDeviceAccessEffectOutput, context: context)
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::MobileDeviceAccessMatchedRuleList.validate!(input[:matched_rules], context: "#{context}[:matched_rules]") unless input[:matched_rules].nil?
      end
    end

    class GetMobileDeviceAccessOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileDeviceAccessOverrideInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class GetMobileDeviceAccessOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileDeviceAccessOverrideOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_modified], ::Time, context: "#{context}[:date_modified]")
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCustomSesConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCustomSesConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPasswordException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPasswordException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Jobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MailboxExportJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAccessControlRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessControlRulesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class ListAccessControlRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessControlRulesOutput, context: context)
        Validators::AccessControlRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesOutput, context: context)
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupMembersInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGroupMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupMembersOutput, context: context)
        Validators::Members.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        Validators::Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMailDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailDomainsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMailDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailDomainsOutput, context: context)
        Validators::MailDomains.validate!(input[:mail_domains], context: "#{context}[:mail_domains]") unless input[:mail_domains].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMailboxExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailboxExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMailboxExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailboxExportJobsOutput, context: context)
        Validators::Jobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMailboxPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailboxPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMailboxPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMailboxPermissionsOutput, context: context)
        Validators::Permissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMobileDeviceAccessOverridesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileDeviceAccessOverridesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMobileDeviceAccessOverridesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileDeviceAccessOverridesOutput, context: context)
        Validators::MobileDeviceAccessOverridesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMobileDeviceAccessRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileDeviceAccessRulesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class ListMobileDeviceAccessRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileDeviceAccessRulesOutput, context: context)
        Validators::MobileDeviceAccessRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ListOrganizationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOrganizationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationsOutput, context: context)
        Validators::OrganizationSummaries.validate!(input[:organization_summaries], context: "#{context}[:organization_summaries]") unless input[:organization_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceDelegatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDelegatesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourceDelegatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDelegatesOutput, context: context)
        Validators::ResourceDelegates.validate!(input[:delegates], context: "#{context}[:delegates]") unless input[:delegates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesOutput, context: context)
        Validators::Resources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Validators::Users.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MailDomainInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailDomainInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MailDomainNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailDomainNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MailDomainStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailDomainStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MailDomainSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailDomainSummary, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_domain], ::TrueClass, ::FalseClass, context: "#{context}[:default_domain]")
      end
    end

    class MailDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MailDomainSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MailboxExportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailboxExportJob, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_path], ::String, context: "#{context}[:s3_path]")
        Hearth::Validator.validate!(input[:estimated_progress], ::Integer, context: "#{context}[:estimated_progress]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class Members
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Member.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MobileDeviceAccessMatchedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MobileDeviceAccessMatchedRule, context: context)
        Hearth::Validator.validate!(input[:mobile_device_access_rule_id], ::String, context: "#{context}[:mobile_device_access_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class MobileDeviceAccessMatchedRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MobileDeviceAccessMatchedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MobileDeviceAccessOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MobileDeviceAccessOverride, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_modified], ::Time, context: "#{context}[:date_modified]")
      end
    end

    class MobileDeviceAccessOverridesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MobileDeviceAccessOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MobileDeviceAccessRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MobileDeviceAccessRule, context: context)
        Hearth::Validator.validate!(input[:mobile_device_access_rule_id], ::String, context: "#{context}[:mobile_device_access_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::DeviceTypeList.validate!(input[:device_types], context: "#{context}[:device_types]") unless input[:device_types].nil?
        Validators::DeviceTypeList.validate!(input[:not_device_types], context: "#{context}[:not_device_types]") unless input[:not_device_types].nil?
        Validators::DeviceModelList.validate!(input[:device_models], context: "#{context}[:device_models]") unless input[:device_models].nil?
        Validators::DeviceModelList.validate!(input[:not_device_models], context: "#{context}[:not_device_models]") unless input[:not_device_models].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless input[:device_operating_systems].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless input[:not_device_operating_systems].nil?
        Validators::DeviceUserAgentList.validate!(input[:device_user_agents], context: "#{context}[:device_user_agents]") unless input[:device_user_agents].nil?
        Validators::DeviceUserAgentList.validate!(input[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless input[:not_device_user_agents].nil?
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_modified], ::Time, context: "#{context}[:date_modified]")
      end
    end

    class MobileDeviceAccessRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MobileDeviceAccessRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NameAvailabilityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NameAvailabilityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrganizationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationSummary, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:default_mail_domain], ::String, context: "#{context}[:default_mail_domain]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:grantee_id], ::String, context: "#{context}[:grantee_id]")
        Hearth::Validator.validate!(input[:grantee_type], ::String, context: "#{context}[:grantee_type]")
        Validators::PermissionValues.validate!(input[:permission_values], context: "#{context}[:permission_values]") unless input[:permission_values].nil?
      end
    end

    class PermissionValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Permissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAccessControlRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessControlRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IpRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Validators::IpRangeList.validate!(input[:not_ip_ranges], context: "#{context}[:not_ip_ranges]") unless input[:not_ip_ranges].nil?
        Validators::ActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::ActionsList.validate!(input[:not_actions], context: "#{context}[:not_actions]") unless input[:not_actions].nil?
        Validators::UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Validators::UserIdList.validate!(input[:not_user_ids], context: "#{context}[:not_user_ids]") unless input[:not_user_ids].nil?
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class PutAccessControlRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessControlRuleOutput, context: context)
      end
    end

    class PutEmailMonitoringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailMonitoringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class PutEmailMonitoringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailMonitoringConfigurationOutput, context: context)
      end
    end

    class PutInboundDmarcSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInboundDmarcSettingsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:enforced], ::TrueClass, ::FalseClass, context: "#{context}[:enforced]")
      end
    end

    class PutInboundDmarcSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInboundDmarcSettingsOutput, context: context)
      end
    end

    class PutMailboxPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMailboxPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:grantee_id], ::String, context: "#{context}[:grantee_id]")
        Validators::PermissionValues.validate!(input[:permission_values], context: "#{context}[:permission_values]") unless input[:permission_values].nil?
      end
    end

    class PutMailboxPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMailboxPermissionsOutput, context: context)
      end
    end

    class PutMobileDeviceAccessOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMobileDeviceAccessOverrideInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class PutMobileDeviceAccessOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMobileDeviceAccessOverrideOutput, context: context)
      end
    end

    class PutRetentionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FolderConfigurations.validate!(input[:folder_configurations], context: "#{context}[:folder_configurations]") unless input[:folder_configurations].nil?
      end
    end

    class PutRetentionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionPolicyOutput, context: context)
      end
    end

    class RegisterMailDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterMailDomainInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class RegisterMailDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterMailDomainOutput, context: context)
      end
    end

    class RegisterToWorkMailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterToWorkMailInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class RegisterToWorkMailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterToWorkMailOutput, context: context)
      end
    end

    class ReservedNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResetPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetPasswordInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class ResetPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetPasswordOutput, context: context)
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class ResourceDelegates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Delegate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartMailboxExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMailboxExportJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class StartMailboxExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMailboxExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDefaultMailDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDefaultMailDomainInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class UpdateDefaultMailDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDefaultMailDomainOutput, context: context)
      end
    end

    class UpdateMailboxQuotaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMailboxQuotaInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:mailbox_quota], ::Integer, context: "#{context}[:mailbox_quota]")
      end
    end

    class UpdateMailboxQuotaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMailboxQuotaOutput, context: context)
      end
    end

    class UpdateMobileDeviceAccessRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMobileDeviceAccessRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:mobile_device_access_rule_id], ::String, context: "#{context}[:mobile_device_access_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
        Validators::DeviceTypeList.validate!(input[:device_types], context: "#{context}[:device_types]") unless input[:device_types].nil?
        Validators::DeviceTypeList.validate!(input[:not_device_types], context: "#{context}[:not_device_types]") unless input[:not_device_types].nil?
        Validators::DeviceModelList.validate!(input[:device_models], context: "#{context}[:device_models]") unless input[:device_models].nil?
        Validators::DeviceModelList.validate!(input[:not_device_models], context: "#{context}[:not_device_models]") unless input[:not_device_models].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless input[:device_operating_systems].nil?
        Validators::DeviceOperatingSystemList.validate!(input[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless input[:not_device_operating_systems].nil?
        Validators::DeviceUserAgentList.validate!(input[:device_user_agents], context: "#{context}[:device_user_agents]") unless input[:device_user_agents].nil?
        Validators::DeviceUserAgentList.validate!(input[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless input[:not_device_user_agents].nil?
      end
    end

    class UpdateMobileDeviceAccessRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMobileDeviceAccessRuleOutput, context: context)
      end
    end

    class UpdatePrimaryEmailAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrimaryEmailAddressInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class UpdatePrimaryEmailAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrimaryEmailAddressOutput, context: context)
      end
    end

    class UpdateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::BookingOptions.validate!(input[:booking_options], context: "#{context}[:booking_options]") unless input[:booking_options].nil?
      end
    end

    class UpdateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceOutput, context: context)
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:user_role], ::String, context: "#{context}[:user_role]")
        Hearth::Validator.validate!(input[:enabled_date], ::Time, context: "#{context}[:enabled_date]")
        Hearth::Validator.validate!(input[:disabled_date], ::Time, context: "#{context}[:disabled_date]")
      end
    end

    class UserIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Users
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
