# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::WorkMail
  module Params

    module AccessControlRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlRule, context: context)
        type = Types::AccessControlRule.new
        type.name = params[:name]
        type.effect = params[:effect]
        type.description = params[:description]
        type.ip_ranges = IpRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.not_ip_ranges = IpRangeList.build(params[:not_ip_ranges], context: "#{context}[:not_ip_ranges]") unless params[:not_ip_ranges].nil?
        type.actions = ActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.not_actions = ActionsList.build(params[:not_actions], context: "#{context}[:not_actions]") unless params[:not_actions].nil?
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.not_user_ids = UserIdList.build(params[:not_user_ids], context: "#{context}[:not_user_ids]") unless params[:not_user_ids].nil?
        type.date_created = params[:date_created]
        type.date_modified = params[:date_modified]
        type
      end
    end

    module AccessControlRuleNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccessControlRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessControlRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Aliases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateDelegateToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDelegateToResourceInput, context: context)
        type = Types::AssociateDelegateToResourceInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module AssociateDelegateToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDelegateToResourceOutput, context: context)
        type = Types::AssociateDelegateToResourceOutput.new
        type
      end
    end

    module AssociateMemberToGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberToGroupInput, context: context)
        type = Types::AssociateMemberToGroupInput.new
        type.organization_id = params[:organization_id]
        type.group_id = params[:group_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module AssociateMemberToGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberToGroupOutput, context: context)
        type = Types::AssociateMemberToGroupOutput.new
        type
      end
    end

    module BookingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BookingOptions, context: context)
        type = Types::BookingOptions.new
        type.auto_accept_requests = params[:auto_accept_requests]
        type.auto_decline_recurring_requests = params[:auto_decline_recurring_requests]
        type.auto_decline_conflicting_requests = params[:auto_decline_conflicting_requests]
        type
      end
    end

    module CancelMailboxExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMailboxExportJobInput, context: context)
        type = Types::CancelMailboxExportJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.job_id = params[:job_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module CancelMailboxExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMailboxExportJobOutput, context: context)
        type = Types::CancelMailboxExportJobOutput.new
        type
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.alias = params[:alias]
        type
      end
    end

    module CreateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.organization_id = params[:organization_id]
        type.name = params[:name]
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module CreateMobileDeviceAccessRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMobileDeviceAccessRuleInput, context: context)
        type = Types::CreateMobileDeviceAccessRuleInput.new
        type.organization_id = params[:organization_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.name = params[:name]
        type.description = params[:description]
        type.effect = params[:effect]
        type.device_types = DeviceTypeList.build(params[:device_types], context: "#{context}[:device_types]") unless params[:device_types].nil?
        type.not_device_types = DeviceTypeList.build(params[:not_device_types], context: "#{context}[:not_device_types]") unless params[:not_device_types].nil?
        type.device_models = DeviceModelList.build(params[:device_models], context: "#{context}[:device_models]") unless params[:device_models].nil?
        type.not_device_models = DeviceModelList.build(params[:not_device_models], context: "#{context}[:not_device_models]") unless params[:not_device_models].nil?
        type.device_operating_systems = DeviceOperatingSystemList.build(params[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless params[:device_operating_systems].nil?
        type.not_device_operating_systems = DeviceOperatingSystemList.build(params[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless params[:not_device_operating_systems].nil?
        type.device_user_agents = DeviceUserAgentList.build(params[:device_user_agents], context: "#{context}[:device_user_agents]") unless params[:device_user_agents].nil?
        type.not_device_user_agents = DeviceUserAgentList.build(params[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless params[:not_device_user_agents].nil?
        type
      end
    end

    module CreateMobileDeviceAccessRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMobileDeviceAccessRuleOutput, context: context)
        type = Types::CreateMobileDeviceAccessRuleOutput.new
        type.mobile_device_access_rule_id = params[:mobile_device_access_rule_id]
        type
      end
    end

    module CreateOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationInput, context: context)
        type = Types::CreateOrganizationInput.new
        type.directory_id = params[:directory_id]
        type.alias = params[:alias]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.domains = Domains.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.enable_interoperability = params[:enable_interoperability]
        type
      end
    end

    module CreateOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationOutput, context: context)
        type = Types::CreateOrganizationOutput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module CreateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceInput, context: context)
        type = Types::CreateResourceInput.new
        type.organization_id = params[:organization_id]
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module CreateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceOutput, context: context)
        type = Types::CreateResourceOutput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.organization_id = params[:organization_id]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.password = params[:password]
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module Delegate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Delegate, context: context)
        type = Types::Delegate.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module DeleteAccessControlRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessControlRuleInput, context: context)
        type = Types::DeleteAccessControlRuleInput.new
        type.organization_id = params[:organization_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteAccessControlRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessControlRuleOutput, context: context)
        type = Types::DeleteAccessControlRuleOutput.new
        type
      end
    end

    module DeleteAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasInput, context: context)
        type = Types::DeleteAliasInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.alias = params[:alias]
        type
      end
    end

    module DeleteAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasOutput, context: context)
        type = Types::DeleteAliasOutput.new
        type
      end
    end

    module DeleteEmailMonitoringConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailMonitoringConfigurationInput, context: context)
        type = Types::DeleteEmailMonitoringConfigurationInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DeleteEmailMonitoringConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailMonitoringConfigurationOutput, context: context)
        type = Types::DeleteEmailMonitoringConfigurationOutput.new
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.organization_id = params[:organization_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type
      end
    end

    module DeleteMailboxPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMailboxPermissionsInput, context: context)
        type = Types::DeleteMailboxPermissionsInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.grantee_id = params[:grantee_id]
        type
      end
    end

    module DeleteMailboxPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMailboxPermissionsOutput, context: context)
        type = Types::DeleteMailboxPermissionsOutput.new
        type
      end
    end

    module DeleteMobileDeviceAccessOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMobileDeviceAccessOverrideInput, context: context)
        type = Types::DeleteMobileDeviceAccessOverrideInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type
      end
    end

    module DeleteMobileDeviceAccessOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMobileDeviceAccessOverrideOutput, context: context)
        type = Types::DeleteMobileDeviceAccessOverrideOutput.new
        type
      end
    end

    module DeleteMobileDeviceAccessRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMobileDeviceAccessRuleInput, context: context)
        type = Types::DeleteMobileDeviceAccessRuleInput.new
        type.organization_id = params[:organization_id]
        type.mobile_device_access_rule_id = params[:mobile_device_access_rule_id]
        type
      end
    end

    module DeleteMobileDeviceAccessRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMobileDeviceAccessRuleOutput, context: context)
        type = Types::DeleteMobileDeviceAccessRuleOutput.new
        type
      end
    end

    module DeleteOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationInput, context: context)
        type = Types::DeleteOrganizationInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.organization_id = params[:organization_id]
        type.delete_directory = params[:delete_directory]
        type
      end
    end

    module DeleteOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationOutput, context: context)
        type = Types::DeleteOrganizationOutput.new
        type.organization_id = params[:organization_id]
        type.state = params[:state]
        type
      end
    end

    module DeleteResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceInput, context: context)
        type = Types::DeleteResourceInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DeleteResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceOutput, context: context)
        type = Types::DeleteResourceOutput.new
        type
      end
    end

    module DeleteRetentionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionPolicyInput, context: context)
        type = Types::DeleteRetentionPolicyInput.new
        type.organization_id = params[:organization_id]
        type.id = params[:id]
        type
      end
    end

    module DeleteRetentionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionPolicyOutput, context: context)
        type = Types::DeleteRetentionPolicyOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeregisterFromWorkMailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterFromWorkMailInput, context: context)
        type = Types::DeregisterFromWorkMailInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module DeregisterFromWorkMailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterFromWorkMailOutput, context: context)
        type = Types::DeregisterFromWorkMailOutput.new
        type
      end
    end

    module DeregisterMailDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterMailDomainInput, context: context)
        type = Types::DeregisterMailDomainInput.new
        type.organization_id = params[:organization_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeregisterMailDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterMailDomainOutput, context: context)
        type = Types::DeregisterMailDomainOutput.new
        type
      end
    end

    module DescribeEmailMonitoringConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEmailMonitoringConfigurationInput, context: context)
        type = Types::DescribeEmailMonitoringConfigurationInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DescribeEmailMonitoringConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEmailMonitoringConfigurationOutput, context: context)
        type = Types::DescribeEmailMonitoringConfigurationOutput.new
        type.role_arn = params[:role_arn]
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module DescribeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupInput, context: context)
        type = Types::DescribeGroupInput.new
        type.organization_id = params[:organization_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module DescribeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupOutput, context: context)
        type = Types::DescribeGroupOutput.new
        type.group_id = params[:group_id]
        type.name = params[:name]
        type.email = params[:email]
        type.state = params[:state]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module DescribeInboundDmarcSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInboundDmarcSettingsInput, context: context)
        type = Types::DescribeInboundDmarcSettingsInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DescribeInboundDmarcSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInboundDmarcSettingsOutput, context: context)
        type = Types::DescribeInboundDmarcSettingsOutput.new
        type.enforced = params[:enforced]
        type
      end
    end

    module DescribeMailboxExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMailboxExportJobInput, context: context)
        type = Types::DescribeMailboxExportJobInput.new
        type.job_id = params[:job_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DescribeMailboxExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMailboxExportJobOutput, context: context)
        type = Types::DescribeMailboxExportJobOutput.new
        type.entity_id = params[:entity_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_prefix = params[:s3_prefix]
        type.s3_path = params[:s3_path]
        type.estimated_progress = params[:estimated_progress]
        type.state = params[:state]
        type.error_info = params[:error_info]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module DescribeOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationInput, context: context)
        type = Types::DescribeOrganizationInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DescribeOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationOutput, context: context)
        type = Types::DescribeOrganizationOutput.new
        type.organization_id = params[:organization_id]
        type.alias = params[:alias]
        type.state = params[:state]
        type.directory_id = params[:directory_id]
        type.directory_type = params[:directory_type]
        type.default_mail_domain = params[:default_mail_domain]
        type.completed_date = params[:completed_date]
        type.error_message = params[:error_message]
        type.arn = params[:arn]
        type
      end
    end

    module DescribeResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceInput, context: context)
        type = Types::DescribeResourceInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DescribeResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceOutput, context: context)
        type = Types::DescribeResourceOutput.new
        type.resource_id = params[:resource_id]
        type.email = params[:email]
        type.name = params[:name]
        type.type = params[:type]
        type.booking_options = BookingOptions.build(params[:booking_options], context: "#{context}[:booking_options]") unless params[:booking_options].nil?
        type.state = params[:state]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.user_id = params[:user_id]
        type.name = params[:name]
        type.email = params[:email]
        type.display_name = params[:display_name]
        type.state = params[:state]
        type.user_role = params[:user_role]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module DeviceModelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceOperatingSystemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceUserAgentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DirectoryInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryInUseException, context: context)
        type = Types::DirectoryInUseException.new
        type.message = params[:message]
        type
      end
    end

    module DirectoryServiceAuthenticationFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryServiceAuthenticationFailedException, context: context)
        type = Types::DirectoryServiceAuthenticationFailedException.new
        type.message = params[:message]
        type
      end
    end

    module DirectoryUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryUnavailableException, context: context)
        type = Types::DirectoryUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module DisassociateDelegateFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDelegateFromResourceInput, context: context)
        type = Types::DisassociateDelegateFromResourceInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module DisassociateDelegateFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDelegateFromResourceOutput, context: context)
        type = Types::DisassociateDelegateFromResourceOutput.new
        type
      end
    end

    module DisassociateMemberFromGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberFromGroupInput, context: context)
        type = Types::DisassociateMemberFromGroupInput.new
        type.organization_id = params[:organization_id]
        type.group_id = params[:group_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module DisassociateMemberFromGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberFromGroupOutput, context: context)
        type = Types::DisassociateMemberFromGroupOutput.new
        type
      end
    end

    module DnsRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRecord, context: context)
        type = Types::DnsRecord.new
        type.type = params[:type]
        type.hostname = params[:hostname]
        type.value = params[:value]
        type
      end
    end

    module DnsRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DnsRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Domain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Domain, context: context)
        type = Types::Domain.new
        type.domain_name = params[:domain_name]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module Domains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Domain.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EmailAddressInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailAddressInUseException, context: context)
        type = Types::EmailAddressInUseException.new
        type.message = params[:message]
        type
      end
    end

    module EntityAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityAlreadyRegisteredException, context: context)
        type = Types::EntityAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module EntityNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityNotFoundException, context: context)
        type = Types::EntityNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EntityStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityStateException, context: context)
        type = Types::EntityStateException.new
        type.message = params[:message]
        type
      end
    end

    module FolderConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderConfiguration, context: context)
        type = Types::FolderConfiguration.new
        type.name = params[:name]
        type.action = params[:action]
        type.period = params[:period]
        type
      end
    end

    module FolderConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FolderConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccessControlEffectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessControlEffectInput, context: context)
        type = Types::GetAccessControlEffectInput.new
        type.organization_id = params[:organization_id]
        type.ip_address = params[:ip_address]
        type.action = params[:action]
        type.user_id = params[:user_id]
        type
      end
    end

    module GetAccessControlEffectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessControlEffectOutput, context: context)
        type = Types::GetAccessControlEffectOutput.new
        type.effect = params[:effect]
        type.matched_rules = AccessControlRuleNameList.build(params[:matched_rules], context: "#{context}[:matched_rules]") unless params[:matched_rules].nil?
        type
      end
    end

    module GetDefaultRetentionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDefaultRetentionPolicyInput, context: context)
        type = Types::GetDefaultRetentionPolicyInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module GetDefaultRetentionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDefaultRetentionPolicyOutput, context: context)
        type = Types::GetDefaultRetentionPolicyOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.folder_configurations = FolderConfigurations.build(params[:folder_configurations], context: "#{context}[:folder_configurations]") unless params[:folder_configurations].nil?
        type
      end
    end

    module GetMailDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMailDomainInput, context: context)
        type = Types::GetMailDomainInput.new
        type.organization_id = params[:organization_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetMailDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMailDomainOutput, context: context)
        type = Types::GetMailDomainOutput.new
        type.records = DnsRecords.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.is_test_domain = params[:is_test_domain]
        type.is_default = params[:is_default]
        type.ownership_verification_status = params[:ownership_verification_status]
        type.dkim_verification_status = params[:dkim_verification_status]
        type
      end
    end

    module GetMailboxDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMailboxDetailsInput, context: context)
        type = Types::GetMailboxDetailsInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module GetMailboxDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMailboxDetailsOutput, context: context)
        type = Types::GetMailboxDetailsOutput.new
        type.mailbox_quota = params[:mailbox_quota]
        type.mailbox_size = params[:mailbox_size]
        type
      end
    end

    module GetMobileDeviceAccessEffectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileDeviceAccessEffectInput, context: context)
        type = Types::GetMobileDeviceAccessEffectInput.new
        type.organization_id = params[:organization_id]
        type.device_type = params[:device_type]
        type.device_model = params[:device_model]
        type.device_operating_system = params[:device_operating_system]
        type.device_user_agent = params[:device_user_agent]
        type
      end
    end

    module GetMobileDeviceAccessEffectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileDeviceAccessEffectOutput, context: context)
        type = Types::GetMobileDeviceAccessEffectOutput.new
        type.effect = params[:effect]
        type.matched_rules = MobileDeviceAccessMatchedRuleList.build(params[:matched_rules], context: "#{context}[:matched_rules]") unless params[:matched_rules].nil?
        type
      end
    end

    module GetMobileDeviceAccessOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileDeviceAccessOverrideInput, context: context)
        type = Types::GetMobileDeviceAccessOverrideInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type
      end
    end

    module GetMobileDeviceAccessOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileDeviceAccessOverrideOutput, context: context)
        type = Types::GetMobileDeviceAccessOverrideOutput.new
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type.effect = params[:effect]
        type.description = params[:description]
        type.date_created = params[:date_created]
        type.date_modified = params[:date_modified]
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.id = params[:id]
        type.email = params[:email]
        type.name = params[:name]
        type.state = params[:state]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationException, context: context)
        type = Types::InvalidConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCustomSesConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCustomSesConfigurationException, context: context)
        type = Types::InvalidCustomSesConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPasswordException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPasswordException, context: context)
        type = Types::InvalidPasswordException.new
        type.message = params[:message]
        type
      end
    end

    module IpRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Jobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MailboxExportJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAccessControlRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessControlRulesInput, context: context)
        type = Types::ListAccessControlRulesInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module ListAccessControlRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessControlRulesOutput, context: context)
        type = Types::ListAccessControlRulesOutput.new
        type.rules = AccessControlRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ListAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesInput, context: context)
        type = Types::ListAliasesInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesOutput, context: context)
        type = Types::ListAliasesOutput.new
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupMembersInput, context: context)
        type = Types::ListGroupMembersInput.new
        type.organization_id = params[:organization_id]
        type.group_id = params[:group_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGroupMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupMembersOutput, context: context)
        type = Types::ListGroupMembersOutput.new
        type.members = Members.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.organization_id = params[:organization_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMailDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailDomainsInput, context: context)
        type = Types::ListMailDomainsInput.new
        type.organization_id = params[:organization_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMailDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailDomainsOutput, context: context)
        type = Types::ListMailDomainsOutput.new
        type.mail_domains = MailDomains.build(params[:mail_domains], context: "#{context}[:mail_domains]") unless params[:mail_domains].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMailboxExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailboxExportJobsInput, context: context)
        type = Types::ListMailboxExportJobsInput.new
        type.organization_id = params[:organization_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMailboxExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailboxExportJobsOutput, context: context)
        type = Types::ListMailboxExportJobsOutput.new
        type.jobs = Jobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMailboxPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailboxPermissionsInput, context: context)
        type = Types::ListMailboxPermissionsInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMailboxPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMailboxPermissionsOutput, context: context)
        type = Types::ListMailboxPermissionsOutput.new
        type.permissions = Permissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMobileDeviceAccessOverridesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileDeviceAccessOverridesInput, context: context)
        type = Types::ListMobileDeviceAccessOverridesInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMobileDeviceAccessOverridesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileDeviceAccessOverridesOutput, context: context)
        type = Types::ListMobileDeviceAccessOverridesOutput.new
        type.overrides = MobileDeviceAccessOverridesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMobileDeviceAccessRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileDeviceAccessRulesInput, context: context)
        type = Types::ListMobileDeviceAccessRulesInput.new
        type.organization_id = params[:organization_id]
        type
      end
    end

    module ListMobileDeviceAccessRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileDeviceAccessRulesOutput, context: context)
        type = Types::ListMobileDeviceAccessRulesOutput.new
        type.rules = MobileDeviceAccessRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ListOrganizationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationsInput, context: context)
        type = Types::ListOrganizationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOrganizationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationsOutput, context: context)
        type = Types::ListOrganizationsOutput.new
        type.organization_summaries = OrganizationSummaries.build(params[:organization_summaries], context: "#{context}[:organization_summaries]") unless params[:organization_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceDelegatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDelegatesInput, context: context)
        type = Types::ListResourceDelegatesInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourceDelegatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDelegatesOutput, context: context)
        type = Types::ListResourceDelegatesOutput.new
        type.delegates = ResourceDelegates.build(params[:delegates], context: "#{context}[:delegates]") unless params[:delegates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInput, context: context)
        type = Types::ListResourcesInput.new
        type.organization_id = params[:organization_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesOutput, context: context)
        type = Types::ListResourcesOutput.new
        type.resources = Resources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.organization_id = params[:organization_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = Users.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MailDomainInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailDomainInUseException, context: context)
        type = Types::MailDomainInUseException.new
        type.message = params[:message]
        type
      end
    end

    module MailDomainNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailDomainNotFoundException, context: context)
        type = Types::MailDomainNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module MailDomainStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailDomainStateException, context: context)
        type = Types::MailDomainStateException.new
        type.message = params[:message]
        type
      end
    end

    module MailDomainSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailDomainSummary, context: context)
        type = Types::MailDomainSummary.new
        type.domain_name = params[:domain_name]
        type.default_domain = params[:default_domain]
        type
      end
    end

    module MailDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MailDomainSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MailboxExportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailboxExportJob, context: context)
        type = Types::MailboxExportJob.new
        type.job_id = params[:job_id]
        type.entity_id = params[:entity_id]
        type.description = params[:description]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_path = params[:s3_path]
        type.estimated_progress = params[:estimated_progress]
        type.state = params[:state]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.state = params[:state]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module Members
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Member.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MobileDeviceAccessMatchedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MobileDeviceAccessMatchedRule, context: context)
        type = Types::MobileDeviceAccessMatchedRule.new
        type.mobile_device_access_rule_id = params[:mobile_device_access_rule_id]
        type.name = params[:name]
        type
      end
    end

    module MobileDeviceAccessMatchedRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MobileDeviceAccessMatchedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MobileDeviceAccessOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MobileDeviceAccessOverride, context: context)
        type = Types::MobileDeviceAccessOverride.new
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type.effect = params[:effect]
        type.description = params[:description]
        type.date_created = params[:date_created]
        type.date_modified = params[:date_modified]
        type
      end
    end

    module MobileDeviceAccessOverridesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MobileDeviceAccessOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MobileDeviceAccessRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MobileDeviceAccessRule, context: context)
        type = Types::MobileDeviceAccessRule.new
        type.mobile_device_access_rule_id = params[:mobile_device_access_rule_id]
        type.name = params[:name]
        type.description = params[:description]
        type.effect = params[:effect]
        type.device_types = DeviceTypeList.build(params[:device_types], context: "#{context}[:device_types]") unless params[:device_types].nil?
        type.not_device_types = DeviceTypeList.build(params[:not_device_types], context: "#{context}[:not_device_types]") unless params[:not_device_types].nil?
        type.device_models = DeviceModelList.build(params[:device_models], context: "#{context}[:device_models]") unless params[:device_models].nil?
        type.not_device_models = DeviceModelList.build(params[:not_device_models], context: "#{context}[:not_device_models]") unless params[:not_device_models].nil?
        type.device_operating_systems = DeviceOperatingSystemList.build(params[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless params[:device_operating_systems].nil?
        type.not_device_operating_systems = DeviceOperatingSystemList.build(params[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless params[:not_device_operating_systems].nil?
        type.device_user_agents = DeviceUserAgentList.build(params[:device_user_agents], context: "#{context}[:device_user_agents]") unless params[:device_user_agents].nil?
        type.not_device_user_agents = DeviceUserAgentList.build(params[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless params[:not_device_user_agents].nil?
        type.date_created = params[:date_created]
        type.date_modified = params[:date_modified]
        type
      end
    end

    module MobileDeviceAccessRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MobileDeviceAccessRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NameAvailabilityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NameAvailabilityException, context: context)
        type = Types::NameAvailabilityException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationNotFoundException, context: context)
        type = Types::OrganizationNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationStateException, context: context)
        type = Types::OrganizationStateException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationSummary, context: context)
        type = Types::OrganizationSummary.new
        type.organization_id = params[:organization_id]
        type.alias = params[:alias]
        type.default_mail_domain = params[:default_mail_domain]
        type.error_message = params[:error_message]
        type.state = params[:state]
        type
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.grantee_id = params[:grantee_id]
        type.grantee_type = params[:grantee_type]
        type.permission_values = PermissionValues.build(params[:permission_values], context: "#{context}[:permission_values]") unless params[:permission_values].nil?
        type
      end
    end

    module PermissionValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Permissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAccessControlRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessControlRuleInput, context: context)
        type = Types::PutAccessControlRuleInput.new
        type.name = params[:name]
        type.effect = params[:effect]
        type.description = params[:description]
        type.ip_ranges = IpRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.not_ip_ranges = IpRangeList.build(params[:not_ip_ranges], context: "#{context}[:not_ip_ranges]") unless params[:not_ip_ranges].nil?
        type.actions = ActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.not_actions = ActionsList.build(params[:not_actions], context: "#{context}[:not_actions]") unless params[:not_actions].nil?
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.not_user_ids = UserIdList.build(params[:not_user_ids], context: "#{context}[:not_user_ids]") unless params[:not_user_ids].nil?
        type.organization_id = params[:organization_id]
        type
      end
    end

    module PutAccessControlRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessControlRuleOutput, context: context)
        type = Types::PutAccessControlRuleOutput.new
        type
      end
    end

    module PutEmailMonitoringConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailMonitoringConfigurationInput, context: context)
        type = Types::PutEmailMonitoringConfigurationInput.new
        type.organization_id = params[:organization_id]
        type.role_arn = params[:role_arn]
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module PutEmailMonitoringConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailMonitoringConfigurationOutput, context: context)
        type = Types::PutEmailMonitoringConfigurationOutput.new
        type
      end
    end

    module PutInboundDmarcSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInboundDmarcSettingsInput, context: context)
        type = Types::PutInboundDmarcSettingsInput.new
        type.organization_id = params[:organization_id]
        type.enforced = params[:enforced]
        type
      end
    end

    module PutInboundDmarcSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInboundDmarcSettingsOutput, context: context)
        type = Types::PutInboundDmarcSettingsOutput.new
        type
      end
    end

    module PutMailboxPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMailboxPermissionsInput, context: context)
        type = Types::PutMailboxPermissionsInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.grantee_id = params[:grantee_id]
        type.permission_values = PermissionValues.build(params[:permission_values], context: "#{context}[:permission_values]") unless params[:permission_values].nil?
        type
      end
    end

    module PutMailboxPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMailboxPermissionsOutput, context: context)
        type = Types::PutMailboxPermissionsOutput.new
        type
      end
    end

    module PutMobileDeviceAccessOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMobileDeviceAccessOverrideInput, context: context)
        type = Types::PutMobileDeviceAccessOverrideInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.device_id = params[:device_id]
        type.effect = params[:effect]
        type.description = params[:description]
        type
      end
    end

    module PutMobileDeviceAccessOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMobileDeviceAccessOverrideOutput, context: context)
        type = Types::PutMobileDeviceAccessOverrideOutput.new
        type
      end
    end

    module PutRetentionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionPolicyInput, context: context)
        type = Types::PutRetentionPolicyInput.new
        type.organization_id = params[:organization_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.folder_configurations = FolderConfigurations.build(params[:folder_configurations], context: "#{context}[:folder_configurations]") unless params[:folder_configurations].nil?
        type
      end
    end

    module PutRetentionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionPolicyOutput, context: context)
        type = Types::PutRetentionPolicyOutput.new
        type
      end
    end

    module RegisterMailDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterMailDomainInput, context: context)
        type = Types::RegisterMailDomainInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.organization_id = params[:organization_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module RegisterMailDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterMailDomainOutput, context: context)
        type = Types::RegisterMailDomainOutput.new
        type
      end
    end

    module RegisterToWorkMailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterToWorkMailInput, context: context)
        type = Types::RegisterToWorkMailInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.email = params[:email]
        type
      end
    end

    module RegisterToWorkMailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterToWorkMailOutput, context: context)
        type = Types::RegisterToWorkMailOutput.new
        type
      end
    end

    module ReservedNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNameException, context: context)
        type = Types::ReservedNameException.new
        type.message = params[:message]
        type
      end
    end

    module ResetPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetPasswordInput, context: context)
        type = Types::ResetPasswordInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.password = params[:password]
        type
      end
    end

    module ResetPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetPasswordOutput, context: context)
        type = Types::ResetPasswordOutput.new
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.id = params[:id]
        type.email = params[:email]
        type.name = params[:name]
        type.type = params[:type]
        type.state = params[:state]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module ResourceDelegates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Delegate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartMailboxExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMailboxExportJobInput, context: context)
        type = Types::StartMailboxExportJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module StartMailboxExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMailboxExportJobOutput, context: context)
        type = Types::StartMailboxExportJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDefaultMailDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDefaultMailDomainInput, context: context)
        type = Types::UpdateDefaultMailDomainInput.new
        type.organization_id = params[:organization_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module UpdateDefaultMailDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDefaultMailDomainOutput, context: context)
        type = Types::UpdateDefaultMailDomainOutput.new
        type
      end
    end

    module UpdateMailboxQuotaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMailboxQuotaInput, context: context)
        type = Types::UpdateMailboxQuotaInput.new
        type.organization_id = params[:organization_id]
        type.user_id = params[:user_id]
        type.mailbox_quota = params[:mailbox_quota]
        type
      end
    end

    module UpdateMailboxQuotaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMailboxQuotaOutput, context: context)
        type = Types::UpdateMailboxQuotaOutput.new
        type
      end
    end

    module UpdateMobileDeviceAccessRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMobileDeviceAccessRuleInput, context: context)
        type = Types::UpdateMobileDeviceAccessRuleInput.new
        type.organization_id = params[:organization_id]
        type.mobile_device_access_rule_id = params[:mobile_device_access_rule_id]
        type.name = params[:name]
        type.description = params[:description]
        type.effect = params[:effect]
        type.device_types = DeviceTypeList.build(params[:device_types], context: "#{context}[:device_types]") unless params[:device_types].nil?
        type.not_device_types = DeviceTypeList.build(params[:not_device_types], context: "#{context}[:not_device_types]") unless params[:not_device_types].nil?
        type.device_models = DeviceModelList.build(params[:device_models], context: "#{context}[:device_models]") unless params[:device_models].nil?
        type.not_device_models = DeviceModelList.build(params[:not_device_models], context: "#{context}[:not_device_models]") unless params[:not_device_models].nil?
        type.device_operating_systems = DeviceOperatingSystemList.build(params[:device_operating_systems], context: "#{context}[:device_operating_systems]") unless params[:device_operating_systems].nil?
        type.not_device_operating_systems = DeviceOperatingSystemList.build(params[:not_device_operating_systems], context: "#{context}[:not_device_operating_systems]") unless params[:not_device_operating_systems].nil?
        type.device_user_agents = DeviceUserAgentList.build(params[:device_user_agents], context: "#{context}[:device_user_agents]") unless params[:device_user_agents].nil?
        type.not_device_user_agents = DeviceUserAgentList.build(params[:not_device_user_agents], context: "#{context}[:not_device_user_agents]") unless params[:not_device_user_agents].nil?
        type
      end
    end

    module UpdateMobileDeviceAccessRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMobileDeviceAccessRuleOutput, context: context)
        type = Types::UpdateMobileDeviceAccessRuleOutput.new
        type
      end
    end

    module UpdatePrimaryEmailAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrimaryEmailAddressInput, context: context)
        type = Types::UpdatePrimaryEmailAddressInput.new
        type.organization_id = params[:organization_id]
        type.entity_id = params[:entity_id]
        type.email = params[:email]
        type
      end
    end

    module UpdatePrimaryEmailAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrimaryEmailAddressOutput, context: context)
        type = Types::UpdatePrimaryEmailAddressOutput.new
        type
      end
    end

    module UpdateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceInput, context: context)
        type = Types::UpdateResourceInput.new
        type.organization_id = params[:organization_id]
        type.resource_id = params[:resource_id]
        type.name = params[:name]
        type.booking_options = BookingOptions.build(params[:booking_options], context: "#{context}[:booking_options]") unless params[:booking_options].nil?
        type
      end
    end

    module UpdateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceOutput, context: context)
        type = Types::UpdateResourceOutput.new
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.id = params[:id]
        type.email = params[:email]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.state = params[:state]
        type.user_role = params[:user_role]
        type.enabled_date = params[:enabled_date]
        type.disabled_date = params[:disabled_date]
        type
      end
    end

    module UserIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Users
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
