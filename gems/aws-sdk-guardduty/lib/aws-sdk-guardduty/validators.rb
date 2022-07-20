# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::GuardDuty
  module Validators

    class AcceptInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:master_id], ::String, context: "#{context}[:master_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
      end
    end

    class AcceptInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationOutput, context: context)
      end
    end

    class AccessControlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlList, context: context)
        Hearth::Validator.validate!(input[:allows_public_read_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_read_access]")
        Hearth::Validator.validate!(input[:allows_public_write_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_write_access]")
      end
    end

    class AccessKeyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKeyDetails, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
      end
    end

    class AccountDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountDetail, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class AccountDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountLevelPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLevelPermissions, context: context)
        BlockPublicAccess.validate!(input[:block_public_access], context: "#{context}[:block_public_access]") unless input[:block_public_access].nil?
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        AwsApiCallAction.validate!(input[:aws_api_call_action], context: "#{context}[:aws_api_call_action]") unless input[:aws_api_call_action].nil?
        DnsRequestAction.validate!(input[:dns_request_action], context: "#{context}[:dns_request_action]") unless input[:dns_request_action].nil?
        NetworkConnectionAction.validate!(input[:network_connection_action], context: "#{context}[:network_connection_action]") unless input[:network_connection_action].nil?
        PortProbeAction.validate!(input[:port_probe_action], context: "#{context}[:port_probe_action]") unless input[:port_probe_action].nil?
        KubernetesApiCallAction.validate!(input[:kubernetes_api_call_action], context: "#{context}[:kubernetes_api_call_action]") unless input[:kubernetes_api_call_action].nil?
      end
    end

    class AdminAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminAccount, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
        Hearth::Validator.validate!(input[:admin_status], ::String, context: "#{context}[:admin_status]")
      end
    end

    class AdminAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdminAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArchiveFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveFindingsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
      end
    end

    class ArchiveFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveFindingsOutput, context: context)
      end
    end

    class AwsApiCallAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiCallAction, context: context)
        Hearth::Validator.validate!(input[:api], ::String, context: "#{context}[:api]")
        Hearth::Validator.validate!(input[:caller_type], ::String, context: "#{context}[:caller_type]")
        DomainDetails.validate!(input[:domain_details], context: "#{context}[:domain_details]") unless input[:domain_details].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:user_agent], ::String, context: "#{context}[:user_agent]")
        RemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        RemoteAccountDetails.validate!(input[:remote_account_details], context: "#{context}[:remote_account_details]") unless input[:remote_account_details].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class BlockPublicAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockPublicAccess, context: context)
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
        Hearth::Validator.validate!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
      end
    end

    class BucketLevelPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketLevelPermissions, context: context)
        AccessControlList.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        BucketPolicy.validate!(input[:bucket_policy], context: "#{context}[:bucket_policy]") unless input[:bucket_policy].nil?
        BlockPublicAccess.validate!(input[:block_public_access], context: "#{context}[:block_public_access]") unless input[:block_public_access].nil?
      end
    end

    class BucketPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketPolicy, context: context)
        Hearth::Validator.validate!(input[:allows_public_read_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_read_access]")
        Hearth::Validator.validate!(input[:allows_public_write_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_write_access]")
      end
    end

    class City
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::City, context: context)
        Hearth::Validator.validate!(input[:city_name], ::String, context: "#{context}[:city_name]")
      end
    end

    class CloudTrailConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Eq.validate!(input[:eq], context: "#{context}[:eq]") unless input[:eq].nil?
        Neq.validate!(input[:neq], context: "#{context}[:neq]") unless input[:neq].nil?
        Hearth::Validator.validate!(input[:gt], ::Integer, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:gte], ::Integer, context: "#{context}[:gte]")
        Hearth::Validator.validate!(input[:lt], ::Integer, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:lte], ::Integer, context: "#{context}[:lte]")
        Equals.validate!(input[:equals], context: "#{context}[:equals]") unless input[:equals].nil?
        NotEquals.validate!(input[:not_equals], context: "#{context}[:not_equals]") unless input[:not_equals].nil?
        Hearth::Validator.validate!(input[:greater_than], ::Integer, context: "#{context}[:greater_than]")
        Hearth::Validator.validate!(input[:greater_than_or_equal], ::Integer, context: "#{context}[:greater_than_or_equal]")
        Hearth::Validator.validate!(input[:less_than], ::Integer, context: "#{context}[:less_than]")
        Hearth::Validator.validate!(input[:less_than_or_equal], ::Integer, context: "#{context}[:less_than_or_equal]")
      end
    end

    class Container
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Container, context: context)
        Hearth::Validator.validate!(input[:container_runtime], ::String, context: "#{context}[:container_runtime]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:image_prefix], ::String, context: "#{context}[:image_prefix]")
        VolumeMounts.validate!(input[:volume_mounts], context: "#{context}[:volume_mounts]") unless input[:volume_mounts].nil?
        SecurityContext.validate!(input[:security_context], context: "#{context}[:security_context]") unless input[:security_context].nil?
      end
    end

    class Containers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Container.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CountBySeverity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class Country
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Country, context: context)
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:country_name], ::String, context: "#{context}[:country_name]")
      end
    end

    class CreateDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorInput, context: context)
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        DataSourceConfigurations.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class CreateFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:activate], ::TrueClass, ::FalseClass, context: "#{context}[:activate]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetOutput, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
      end
    end

    class CreateMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountDetails.validate!(input[:account_details], context: "#{context}[:account_details]") unless input[:account_details].nil?
      end
    end

    class CreateMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class CreatePublishingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublishingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        DestinationProperties.validate!(input[:destination_properties], context: "#{context}[:destination_properties]") unless input[:destination_properties].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreatePublishingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublishingDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
      end
    end

    class CreateSampleFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSampleFindingsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingTypes.validate!(input[:finding_types], context: "#{context}[:finding_types]") unless input[:finding_types].nil?
      end
    end

    class CreateSampleFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSampleFindingsOutput, context: context)
      end
    end

    class CreateThreatIntelSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThreatIntelSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:activate], ::TrueClass, ::FalseClass, context: "#{context}[:activate]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateThreatIntelSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThreatIntelSetOutput, context: context)
        Hearth::Validator.validate!(input[:threat_intel_set_id], ::String, context: "#{context}[:threat_intel_set_id]")
      end
    end

    class Criterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Condition.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DNSLogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DNSLogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DataSourceConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceConfigurations, context: context)
        S3LogsConfiguration.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
        KubernetesConfiguration.validate!(input[:kubernetes], context: "#{context}[:kubernetes]") unless input[:kubernetes].nil?
      end
    end

    class DataSourceConfigurationsResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceConfigurationsResult, context: context)
        CloudTrailConfigurationResult.validate!(input[:cloud_trail], context: "#{context}[:cloud_trail]") unless input[:cloud_trail].nil?
        DNSLogsConfigurationResult.validate!(input[:dns_logs], context: "#{context}[:dns_logs]") unless input[:dns_logs].nil?
        FlowLogsConfigurationResult.validate!(input[:flow_logs], context: "#{context}[:flow_logs]") unless input[:flow_logs].nil?
        S3LogsConfigurationResult.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
        KubernetesConfigurationResult.validate!(input[:kubernetes], context: "#{context}[:kubernetes]") unless input[:kubernetes].nil?
      end
    end

    class DataSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeclineInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeclineInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DefaultServerSideEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultServerSideEncryption, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_master_key_arn], ::String, context: "#{context}[:kms_master_key_arn]")
      end
    end

    class DeleteDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class DeleteDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorOutput, context: context)
      end
    end

    class DeleteFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
      end
    end

    class DeleteFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterOutput, context: context)
      end
    end

    class DeleteIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
      end
    end

    class DeleteIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetOutput, context: context)
      end
    end

    class DeleteInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsInput, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeleteMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeletePublishingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublishingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
      end
    end

    class DeletePublishingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublishingDestinationOutput, context: context)
      end
    end

    class DeleteThreatIntelSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThreatIntelSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:threat_intel_set_id], ::String, context: "#{context}[:threat_intel_set_id]")
      end
    end

    class DeleteThreatIntelSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThreatIntelSetOutput, context: context)
      end
    end

    class DescribeOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class DescribeOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
        Hearth::Validator.validate!(input[:member_account_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:member_account_limit_reached]")
        OrganizationDataSourceConfigurationsResult.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
      end
    end

    class DescribePublishingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePublishingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
      end
    end

    class DescribePublishingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePublishingDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:publishing_failure_start_timestamp], ::Integer, context: "#{context}[:publishing_failure_start_timestamp]")
        DestinationProperties.validate!(input[:destination_properties], context: "#{context}[:destination_properties]") unless input[:destination_properties].nil?
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationProperties, context: context)
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class Destinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Destination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DisableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class DisableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountOutput, context: context)
      end
    end

    class DisassociateFromMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class DisassociateFromMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountOutput, context: context)
      end
    end

    class DisassociateMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DisassociateMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DnsRequestAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRequestAction, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDetails, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class EksClusterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EksClusterDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class EnableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class EnableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountOutput, context: context)
      end
    end

    class Eq
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Equals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Evidence
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Evidence, context: context)
        ThreatIntelligenceDetails.validate!(input[:threat_intelligence_details], context: "#{context}[:threat_intelligence_details]") unless input[:threat_intelligence_details].nil?
      end
    end

    class FilterNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Finding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Finding, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:partition], ::String, context: "#{context}[:partition]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:severity], ::Float, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
      end
    end

    class FindingCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingCriteria, context: context)
        Criterion.validate!(input[:criterion], context: "#{context}[:criterion]") unless input[:criterion].nil?
      end
    end

    class FindingIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FindingStatisticTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FindingStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingStatistics, context: context)
        CountBySeverity.validate!(input[:count_by_severity], context: "#{context}[:count_by_severity]") unless input[:count_by_severity].nil?
      end
    end

    class FindingTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Findings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Finding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowLogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowLogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GeoLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoLocation, context: context)
        Hearth::Validator.validate!(input[:lat], ::Float, context: "#{context}[:lat]")
        Hearth::Validator.validate!(input[:lon], ::Float, context: "#{context}[:lon]")
      end
    end

    class GetDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class GetDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
        DataSourceConfigurationsResult.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFilterInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
      end
    end

    class GetFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFilterOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class GetFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsOutput, context: context)
        Findings.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
      end
    end

    class GetFindingsStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingStatisticTypes.validate!(input[:finding_statistic_types], context: "#{context}[:finding_statistic_types]") unless input[:finding_statistic_types].nil?
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
      end
    end

    class GetFindingsStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsStatisticsOutput, context: context)
        FindingStatistics.validate!(input[:finding_statistics], context: "#{context}[:finding_statistics]") unless input[:finding_statistics].nil?
      end
    end

    class GetIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
      end
    end

    class GetIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetInvitationsCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountInput, context: context)
      end
    end

    class GetInvitationsCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountOutput, context: context)
        Hearth::Validator.validate!(input[:invitations_count], ::Integer, context: "#{context}[:invitations_count]")
      end
    end

    class GetMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class GetMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountOutput, context: context)
        Master.validate!(input[:master], context: "#{context}[:master]") unless input[:master].nil?
      end
    end

    class GetMemberDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class GetMemberDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberDetectorsOutput, context: context)
        MemberDataSourceConfigurations.validate!(input[:member_data_source_configurations], context: "#{context}[:member_data_source_configurations]") unless input[:member_data_source_configurations].nil?
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class GetMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class GetMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersOutput, context: context)
        Members.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class GetThreatIntelSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThreatIntelSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:threat_intel_set_id], ::String, context: "#{context}[:threat_intel_set_id]")
      end
    end

    class GetThreatIntelSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThreatIntelSetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetUsageStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:usage_statistic_type], ::String, context: "#{context}[:usage_statistic_type]")
        UsageCriteria.validate!(input[:usage_criteria], context: "#{context}[:usage_criteria]") unless input[:usage_criteria].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUsageStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageStatisticsOutput, context: context)
        UsageStatistics.validate!(input[:usage_statistics], context: "#{context}[:usage_statistics]") unless input[:usage_statistics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HostPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostPath, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class IamInstanceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamInstanceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class InstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceDetails, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        IamInstanceProfile.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:image_description], ::String, context: "#{context}[:image_description]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_state], ::String, context: "#{context}[:instance_state]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:launch_time], ::String, context: "#{context}[:launch_time]")
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        ProductCodes.validate!(input[:product_codes], context: "#{context}[:product_codes]") unless input[:product_codes].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Invitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invitation, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        Hearth::Validator.validate!(input[:invited_at], ::String, context: "#{context}[:invited_at]")
      end
    end

    class Invitations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Invitation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InviteMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:disable_email_notification], ::TrueClass, ::FalseClass, context: "#{context}[:disable_email_notification]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InviteMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class IpSetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ipv6Addresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KubernetesApiCallAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesApiCallAction, context: context)
        Hearth::Validator.validate!(input[:request_uri], ::String, context: "#{context}[:request_uri]")
        Hearth::Validator.validate!(input[:verb], ::String, context: "#{context}[:verb]")
        SourceIps.validate!(input[:source_ips], context: "#{context}[:source_ips]") unless input[:source_ips].nil?
        Hearth::Validator.validate!(input[:user_agent], ::String, context: "#{context}[:user_agent]")
        RemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
      end
    end

    class KubernetesAuditLogsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesAuditLogsConfiguration, context: context)
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
      end
    end

    class KubernetesAuditLogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesAuditLogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class KubernetesConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesConfiguration, context: context)
        KubernetesAuditLogsConfiguration.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class KubernetesConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesConfigurationResult, context: context)
        KubernetesAuditLogsConfigurationResult.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class KubernetesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesDetails, context: context)
        KubernetesUserDetails.validate!(input[:kubernetes_user_details], context: "#{context}[:kubernetes_user_details]") unless input[:kubernetes_user_details].nil?
        KubernetesWorkloadDetails.validate!(input[:kubernetes_workload_details], context: "#{context}[:kubernetes_workload_details]") unless input[:kubernetes_workload_details].nil?
      end
    end

    class KubernetesUserDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesUserDetails, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:uid], ::String, context: "#{context}[:uid]")
        Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class KubernetesWorkloadDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesWorkloadDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:uid], ::String, context: "#{context}[:uid]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:host_network], ::TrueClass, ::FalseClass, context: "#{context}[:host_network]")
        Containers.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        Volumes.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
      end
    end

    class ListDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorsOutput, context: context)
        DetectorIds.validate!(input[:detector_ids], context: "#{context}[:detector_ids]") unless input[:detector_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersOutput, context: context)
        FilterNames.validate!(input[:filter_names], context: "#{context}[:filter_names]") unless input[:filter_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsOutput, context: context)
        FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIPSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIPSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsOutput, context: context)
        IpSetIds.validate!(input[:ip_set_ids], context: "#{context}[:ip_set_ids]") unless input[:ip_set_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsOutput, context: context)
        Invitations.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:only_associated], ::String, context: "#{context}[:only_associated]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        Members.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsOutput, context: context)
        AdminAccounts.validate!(input[:admin_accounts], context: "#{context}[:admin_accounts]") unless input[:admin_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPublishingDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublishingDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPublishingDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublishingDestinationsOutput, context: context)
        Destinations.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListThreatIntelSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThreatIntelSetsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThreatIntelSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThreatIntelSetsOutput, context: context)
        ThreatIntelSetIds.validate!(input[:threat_intel_set_ids], context: "#{context}[:threat_intel_set_ids]") unless input[:threat_intel_set_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LocalIpDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalIpDetails, context: context)
        Hearth::Validator.validate!(input[:ip_address_v4], ::String, context: "#{context}[:ip_address_v4]")
      end
    end

    class LocalPortDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalPortDetails, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:port_name], ::String, context: "#{context}[:port_name]")
      end
    end

    class Master
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Master, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        Hearth::Validator.validate!(input[:invited_at], ::String, context: "#{context}[:invited_at]")
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:master_id], ::String, context: "#{context}[:master_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        Hearth::Validator.validate!(input[:invited_at], ::String, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
      end
    end

    class MemberDataSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberDataSourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        DataSourceConfigurationsResult.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
      end
    end

    class MemberDataSourceConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MemberDataSourceConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Members
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Member.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Neq
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkConnectionAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConnectionAction, context: context)
        Hearth::Validator.validate!(input[:blocked], ::TrueClass, ::FalseClass, context: "#{context}[:blocked]")
        Hearth::Validator.validate!(input[:connection_direction], ::String, context: "#{context}[:connection_direction]")
        LocalPortDetails.validate!(input[:local_port_details], context: "#{context}[:local_port_details]") unless input[:local_port_details].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        LocalIpDetails.validate!(input[:local_ip_details], context: "#{context}[:local_ip_details]") unless input[:local_ip_details].nil?
        RemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
        RemotePortDetails.validate!(input[:remote_port_details], context: "#{context}[:remote_port_details]") unless input[:remote_port_details].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Ipv6Addresses.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        PrivateIpAddresses.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:public_dns_name], ::String, context: "#{context}[:public_dns_name]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotEquals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Organization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Organization, context: context)
        Hearth::Validator.validate!(input[:asn], ::String, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:asn_org], ::String, context: "#{context}[:asn_org]")
        Hearth::Validator.validate!(input[:isp], ::String, context: "#{context}[:isp]")
        Hearth::Validator.validate!(input[:org], ::String, context: "#{context}[:org]")
      end
    end

    class OrganizationDataSourceConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationDataSourceConfigurations, context: context)
        OrganizationS3LogsConfiguration.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
        OrganizationKubernetesConfiguration.validate!(input[:kubernetes], context: "#{context}[:kubernetes]") unless input[:kubernetes].nil?
      end
    end

    class OrganizationDataSourceConfigurationsResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationDataSourceConfigurationsResult, context: context)
        OrganizationS3LogsConfigurationResult.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
        OrganizationKubernetesConfigurationResult.validate!(input[:kubernetes], context: "#{context}[:kubernetes]") unless input[:kubernetes].nil?
      end
    end

    class OrganizationKubernetesAuditLogsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationKubernetesAuditLogsConfiguration, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class OrganizationKubernetesAuditLogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationKubernetesAuditLogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class OrganizationKubernetesConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationKubernetesConfiguration, context: context)
        OrganizationKubernetesAuditLogsConfiguration.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class OrganizationKubernetesConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationKubernetesConfigurationResult, context: context)
        OrganizationKubernetesAuditLogsConfigurationResult.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class OrganizationS3LogsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationS3LogsConfiguration, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class OrganizationS3LogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationS3LogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class Owner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Owner, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class PermissionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionConfiguration, context: context)
        BucketLevelPermissions.validate!(input[:bucket_level_permissions], context: "#{context}[:bucket_level_permissions]") unless input[:bucket_level_permissions].nil?
        AccountLevelPermissions.validate!(input[:account_level_permissions], context: "#{context}[:account_level_permissions]") unless input[:account_level_permissions].nil?
      end
    end

    class PortProbeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortProbeAction, context: context)
        Hearth::Validator.validate!(input[:blocked], ::TrueClass, ::FalseClass, context: "#{context}[:blocked]")
        PortProbeDetails.validate!(input[:port_probe_details], context: "#{context}[:port_probe_details]") unless input[:port_probe_details].nil?
      end
    end

    class PortProbeDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortProbeDetail, context: context)
        LocalPortDetails.validate!(input[:local_port_details], context: "#{context}[:local_port_details]") unless input[:local_port_details].nil?
        LocalIpDetails.validate!(input[:local_ip_details], context: "#{context}[:local_ip_details]") unless input[:local_ip_details].nil?
        RemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
      end
    end

    class PortProbeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortProbeDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrivateIpAddressDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateIpAddressDetails, context: context)
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class PrivateIpAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrivateIpAddressDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductCode, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
      end
    end

    class ProductCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProductCode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublicAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicAccess, context: context)
        PermissionConfiguration.validate!(input[:permission_configuration], context: "#{context}[:permission_configuration]") unless input[:permission_configuration].nil?
        Hearth::Validator.validate!(input[:effective_permission], ::String, context: "#{context}[:effective_permission]")
      end
    end

    class RemoteAccountDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoteAccountDetails, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:affiliated], ::TrueClass, ::FalseClass, context: "#{context}[:affiliated]")
      end
    end

    class RemoteIpDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoteIpDetails, context: context)
        City.validate!(input[:city], context: "#{context}[:city]") unless input[:city].nil?
        Country.validate!(input[:country], context: "#{context}[:country]") unless input[:country].nil?
        GeoLocation.validate!(input[:geo_location], context: "#{context}[:geo_location]") unless input[:geo_location].nil?
        Hearth::Validator.validate!(input[:ip_address_v4], ::String, context: "#{context}[:ip_address_v4]")
        Organization.validate!(input[:organization], context: "#{context}[:organization]") unless input[:organization].nil?
      end
    end

    class RemotePortDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemotePortDetails, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:port_name], ::String, context: "#{context}[:port_name]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        AccessKeyDetails.validate!(input[:access_key_details], context: "#{context}[:access_key_details]") unless input[:access_key_details].nil?
        S3BucketDetails.validate!(input[:s3_bucket_details], context: "#{context}[:s3_bucket_details]") unless input[:s3_bucket_details].nil?
        InstanceDetails.validate!(input[:instance_details], context: "#{context}[:instance_details]") unless input[:instance_details].nil?
        EksClusterDetails.validate!(input[:eks_cluster_details], context: "#{context}[:eks_cluster_details]") unless input[:eks_cluster_details].nil?
        KubernetesDetails.validate!(input[:kubernetes_details], context: "#{context}[:kubernetes_details]") unless input[:kubernetes_details].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3BucketDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketDetail, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        DefaultServerSideEncryption.validate!(input[:default_server_side_encryption], context: "#{context}[:default_server_side_encryption]") unless input[:default_server_side_encryption].nil?
        PublicAccess.validate!(input[:public_access], context: "#{context}[:public_access]") unless input[:public_access].nil?
      end
    end

    class S3BucketDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3BucketDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3LogsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LogsConfiguration, context: context)
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
      end
    end

    class S3LogsConfigurationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LogsConfigurationResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SecurityContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityContext, context: context)
        Hearth::Validator.validate!(input[:privileged], ::TrueClass, ::FalseClass, context: "#{context}[:privileged]")
      end
    end

    class SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Evidence.validate!(input[:evidence], context: "#{context}[:evidence]") unless input[:evidence].nil?
        Hearth::Validator.validate!(input[:archived], ::TrueClass, ::FalseClass, context: "#{context}[:archived]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:event_first_seen], ::String, context: "#{context}[:event_first_seen]")
        Hearth::Validator.validate!(input[:event_last_seen], ::String, context: "#{context}[:event_last_seen]")
        Hearth::Validator.validate!(input[:resource_role], ::String, context: "#{context}[:resource_role]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:user_feedback], ::String, context: "#{context}[:user_feedback]")
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class SourceIps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartMonitoringMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class StartMonitoringMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class StopMonitoringMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMonitoringMembersInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class StopMonitoringMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMonitoringMembersOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThreatIntelSetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThreatIntelligenceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThreatIntelligenceDetail, context: context)
        Hearth::Validator.validate!(input[:threat_list_name], ::String, context: "#{context}[:threat_list_name]")
        ThreatNames.validate!(input[:threat_names], context: "#{context}[:threat_names]") unless input[:threat_names].nil?
      end
    end

    class ThreatIntelligenceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ThreatIntelligenceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThreatNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Total
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Total, context: context)
        Hearth::Validator.validate!(input[:amount], ::String, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class UnarchiveFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnarchiveFindingsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
      end
    end

    class UnarchiveFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnarchiveFindingsOutput, context: context)
      end
    end

    class UnprocessedAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class UnprocessedAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        DataSourceConfigurations.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
      end
    end

    class UpdateDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorOutput, context: context)
      end
    end

    class UpdateFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFilterInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:rank], ::Integer, context: "#{context}[:rank]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
      end
    end

    class UpdateFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFilterOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateFindingsFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        FindingIds.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        Hearth::Validator.validate!(input[:feedback], ::String, context: "#{context}[:feedback]")
        Hearth::Validator.validate!(input[:comments], ::String, context: "#{context}[:comments]")
      end
    end

    class UpdateFindingsFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsFeedbackOutput, context: context)
      end
    end

    class UpdateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:activate], ::TrueClass, ::FalseClass, context: "#{context}[:activate]")
      end
    end

    class UpdateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetOutput, context: context)
      end
    end

    class UpdateMemberDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        DataSourceConfigurations.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
      end
    end

    class UpdateMemberDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberDetectorsOutput, context: context)
        UnprocessedAccounts.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class UpdateOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
        OrganizationDataSourceConfigurations.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
      end
    end

    class UpdateOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationOutput, context: context)
      end
    end

    class UpdatePublishingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublishingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
        DestinationProperties.validate!(input[:destination_properties], context: "#{context}[:destination_properties]") unless input[:destination_properties].nil?
      end
    end

    class UpdatePublishingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublishingDestinationOutput, context: context)
      end
    end

    class UpdateThreatIntelSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThreatIntelSetInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:threat_intel_set_id], ::String, context: "#{context}[:threat_intel_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:activate], ::TrueClass, ::FalseClass, context: "#{context}[:activate]")
      end
    end

    class UpdateThreatIntelSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThreatIntelSetOutput, context: context)
      end
    end

    class UsageAccountResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageAccountResult, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Total.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class UsageAccountResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageAccountResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageCriteria, context: context)
        AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        DataSourceList.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class UsageDataSourceResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageDataSourceResult, context: context)
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Total.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class UsageDataSourceResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageDataSourceResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageResourceResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageResourceResult, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Total.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class UsageResourceResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageResourceResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageStatistics, context: context)
        UsageAccountResultList.validate!(input[:sum_by_account], context: "#{context}[:sum_by_account]") unless input[:sum_by_account].nil?
        UsageDataSourceResultList.validate!(input[:sum_by_data_source], context: "#{context}[:sum_by_data_source]") unless input[:sum_by_data_source].nil?
        UsageResourceResultList.validate!(input[:sum_by_resource], context: "#{context}[:sum_by_resource]") unless input[:sum_by_resource].nil?
        UsageResourceResultList.validate!(input[:top_resources], context: "#{context}[:top_resources]") unless input[:top_resources].nil?
      end
    end

    class Volume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Volume, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        HostPath.validate!(input[:host_path], context: "#{context}[:host_path]") unless input[:host_path].nil?
      end
    end

    class VolumeMount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeMount, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mount_path], ::String, context: "#{context}[:mount_path]")
      end
    end

    class VolumeMounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeMount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Volumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Volume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
