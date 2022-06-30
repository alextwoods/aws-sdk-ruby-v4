# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::GuardDuty
  module Params

    module AcceptInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationInput, context: context)
        type = Types::AcceptInvitationInput.new
        type.detector_id = params[:detector_id]
        type.master_id = params[:master_id]
        type.invitation_id = params[:invitation_id]
        type
      end
    end

    module AcceptInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationOutput, context: context)
        type = Types::AcceptInvitationOutput.new
        type
      end
    end

    module AccessControlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlList, context: context)
        type = Types::AccessControlList.new
        type.allows_public_read_access = params[:allows_public_read_access]
        type.allows_public_write_access = params[:allows_public_write_access]
        type
      end
    end

    module AccessKeyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKeyDetails, context: context)
        type = Types::AccessKeyDetails.new
        type.access_key_id = params[:access_key_id]
        type.principal_id = params[:principal_id]
        type.user_name = params[:user_name]
        type.user_type = params[:user_type]
        type
      end
    end

    module AccountDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountDetail, context: context)
        type = Types::AccountDetail.new
        type.account_id = params[:account_id]
        type.email = params[:email]
        type
      end
    end

    module AccountDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountLevelPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLevelPermissions, context: context)
        type = Types::AccountLevelPermissions.new
        type.block_public_access = BlockPublicAccess.build(params[:block_public_access], context: "#{context}[:block_public_access]") unless params[:block_public_access].nil?
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.action_type = params[:action_type]
        type.aws_api_call_action = AwsApiCallAction.build(params[:aws_api_call_action], context: "#{context}[:aws_api_call_action]") unless params[:aws_api_call_action].nil?
        type.dns_request_action = DnsRequestAction.build(params[:dns_request_action], context: "#{context}[:dns_request_action]") unless params[:dns_request_action].nil?
        type.network_connection_action = NetworkConnectionAction.build(params[:network_connection_action], context: "#{context}[:network_connection_action]") unless params[:network_connection_action].nil?
        type.port_probe_action = PortProbeAction.build(params[:port_probe_action], context: "#{context}[:port_probe_action]") unless params[:port_probe_action].nil?
        type.kubernetes_api_call_action = KubernetesApiCallAction.build(params[:kubernetes_api_call_action], context: "#{context}[:kubernetes_api_call_action]") unless params[:kubernetes_api_call_action].nil?
        type
      end
    end

    module AdminAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminAccount, context: context)
        type = Types::AdminAccount.new
        type.admin_account_id = params[:admin_account_id]
        type.admin_status = params[:admin_status]
        type
      end
    end

    module AdminAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdminAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArchiveFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveFindingsInput, context: context)
        type = Types::ArchiveFindingsInput.new
        type.detector_id = params[:detector_id]
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type
      end
    end

    module ArchiveFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveFindingsOutput, context: context)
        type = Types::ArchiveFindingsOutput.new
        type
      end
    end

    module AwsApiCallAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiCallAction, context: context)
        type = Types::AwsApiCallAction.new
        type.api = params[:api]
        type.caller_type = params[:caller_type]
        type.domain_details = DomainDetails.build(params[:domain_details], context: "#{context}[:domain_details]") unless params[:domain_details].nil?
        type.error_code = params[:error_code]
        type.user_agent = params[:user_agent]
        type.remote_ip_details = RemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type.service_name = params[:service_name]
        type.remote_account_details = RemoteAccountDetails.build(params[:remote_account_details], context: "#{context}[:remote_account_details]") unless params[:remote_account_details].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.type = params[:type]
        type
      end
    end

    module BlockPublicAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockPublicAccess, context: context)
        type = Types::BlockPublicAccess.new
        type.ignore_public_acls = params[:ignore_public_acls]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type.block_public_acls = params[:block_public_acls]
        type.block_public_policy = params[:block_public_policy]
        type
      end
    end

    module BucketLevelPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketLevelPermissions, context: context)
        type = Types::BucketLevelPermissions.new
        type.access_control_list = AccessControlList.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.bucket_policy = BucketPolicy.build(params[:bucket_policy], context: "#{context}[:bucket_policy]") unless params[:bucket_policy].nil?
        type.block_public_access = BlockPublicAccess.build(params[:block_public_access], context: "#{context}[:block_public_access]") unless params[:block_public_access].nil?
        type
      end
    end

    module BucketPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketPolicy, context: context)
        type = Types::BucketPolicy.new
        type.allows_public_read_access = params[:allows_public_read_access]
        type.allows_public_write_access = params[:allows_public_write_access]
        type
      end
    end

    module City
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::City, context: context)
        type = Types::City.new
        type.city_name = params[:city_name]
        type
      end
    end

    module CloudTrailConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailConfigurationResult, context: context)
        type = Types::CloudTrailConfigurationResult.new
        type.status = params[:status]
        type
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.eq = Eq.build(params[:eq], context: "#{context}[:eq]") unless params[:eq].nil?
        type.neq = Neq.build(params[:neq], context: "#{context}[:neq]") unless params[:neq].nil?
        type.gt = params[:gt]
        type.gte = params[:gte]
        type.lt = params[:lt]
        type.lte = params[:lte]
        type.equals = Equals.build(params[:equals], context: "#{context}[:equals]") unless params[:equals].nil?
        type.not_equals = NotEquals.build(params[:not_equals], context: "#{context}[:not_equals]") unless params[:not_equals].nil?
        type.greater_than = params[:greater_than]
        type.greater_than_or_equal = params[:greater_than_or_equal]
        type.less_than = params[:less_than]
        type.less_than_or_equal = params[:less_than_or_equal]
        type
      end
    end

    module Container
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Container, context: context)
        type = Types::Container.new
        type.container_runtime = params[:container_runtime]
        type.id = params[:id]
        type.name = params[:name]
        type.image = params[:image]
        type.image_prefix = params[:image_prefix]
        type.volume_mounts = VolumeMounts.build(params[:volume_mounts], context: "#{context}[:volume_mounts]") unless params[:volume_mounts].nil?
        type.security_context = SecurityContext.build(params[:security_context], context: "#{context}[:security_context]") unless params[:security_context].nil?
        type
      end
    end

    module Containers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Container.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CountBySeverity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Country
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Country, context: context)
        type = Types::Country.new
        type.country_code = params[:country_code]
        type.country_name = params[:country_name]
        type
      end
    end

    module CreateDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorInput, context: context)
        type = Types::CreateDetectorInput.new
        type.enable = params[:enable]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.data_sources = DataSourceConfigurations.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorOutput, context: context)
        type = Types::CreateDetectorOutput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module CreateFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterInput, context: context)
        type = Types::CreateFilterInput.new
        type.detector_id = params[:detector_id]
        type.name = params[:name]
        type.description = params[:description]
        type.action = params[:action]
        type.rank = params[:rank]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterOutput, context: context)
        type = Types::CreateFilterOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetInput, context: context)
        type = Types::CreateIPSetInput.new
        type.detector_id = params[:detector_id]
        type.name = params[:name]
        type.format = params[:format]
        type.location = params[:location]
        type.activate = params[:activate]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetOutput, context: context)
        type = Types::CreateIPSetOutput.new
        type.ip_set_id = params[:ip_set_id]
        type
      end
    end

    module CreateMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersInput, context: context)
        type = Types::CreateMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_details = AccountDetails.build(params[:account_details], context: "#{context}[:account_details]") unless params[:account_details].nil?
        type
      end
    end

    module CreateMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersOutput, context: context)
        type = Types::CreateMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module CreatePublishingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublishingDestinationInput, context: context)
        type = Types::CreatePublishingDestinationInput.new
        type.detector_id = params[:detector_id]
        type.destination_type = params[:destination_type]
        type.destination_properties = DestinationProperties.build(params[:destination_properties], context: "#{context}[:destination_properties]") unless params[:destination_properties].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreatePublishingDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublishingDestinationOutput, context: context)
        type = Types::CreatePublishingDestinationOutput.new
        type.destination_id = params[:destination_id]
        type
      end
    end

    module CreateSampleFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSampleFindingsInput, context: context)
        type = Types::CreateSampleFindingsInput.new
        type.detector_id = params[:detector_id]
        type.finding_types = FindingTypes.build(params[:finding_types], context: "#{context}[:finding_types]") unless params[:finding_types].nil?
        type
      end
    end

    module CreateSampleFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSampleFindingsOutput, context: context)
        type = Types::CreateSampleFindingsOutput.new
        type
      end
    end

    module CreateThreatIntelSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThreatIntelSetInput, context: context)
        type = Types::CreateThreatIntelSetInput.new
        type.detector_id = params[:detector_id]
        type.name = params[:name]
        type.format = params[:format]
        type.location = params[:location]
        type.activate = params[:activate]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateThreatIntelSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThreatIntelSetOutput, context: context)
        type = Types::CreateThreatIntelSetOutput.new
        type.threat_intel_set_id = params[:threat_intel_set_id]
        type
      end
    end

    module Criterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Condition.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DNSLogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DNSLogsConfigurationResult, context: context)
        type = Types::DNSLogsConfigurationResult.new
        type.status = params[:status]
        type
      end
    end

    module DataSourceConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceConfigurations, context: context)
        type = Types::DataSourceConfigurations.new
        type.s3_logs = S3LogsConfiguration.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type.kubernetes = KubernetesConfiguration.build(params[:kubernetes], context: "#{context}[:kubernetes]") unless params[:kubernetes].nil?
        type
      end
    end

    module DataSourceConfigurationsResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceConfigurationsResult, context: context)
        type = Types::DataSourceConfigurationsResult.new
        type.cloud_trail = CloudTrailConfigurationResult.build(params[:cloud_trail], context: "#{context}[:cloud_trail]") unless params[:cloud_trail].nil?
        type.dns_logs = DNSLogsConfigurationResult.build(params[:dns_logs], context: "#{context}[:dns_logs]") unless params[:dns_logs].nil?
        type.flow_logs = FlowLogsConfigurationResult.build(params[:flow_logs], context: "#{context}[:flow_logs]") unless params[:flow_logs].nil?
        type.s3_logs = S3LogsConfigurationResult.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type.kubernetes = KubernetesConfigurationResult.build(params[:kubernetes], context: "#{context}[:kubernetes]") unless params[:kubernetes].nil?
        type
      end
    end

    module DataSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeclineInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsInput, context: context)
        type = Types::DeclineInvitationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeclineInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsOutput, context: context)
        type = Types::DeclineInvitationsOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DefaultServerSideEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultServerSideEncryption, context: context)
        type = Types::DefaultServerSideEncryption.new
        type.encryption_type = params[:encryption_type]
        type.kms_master_key_arn = params[:kms_master_key_arn]
        type
      end
    end

    module DeleteDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorInput, context: context)
        type = Types::DeleteDetectorInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module DeleteDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorOutput, context: context)
        type = Types::DeleteDetectorOutput.new
        type
      end
    end

    module DeleteFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterInput, context: context)
        type = Types::DeleteFilterInput.new
        type.detector_id = params[:detector_id]
        type.filter_name = params[:filter_name]
        type
      end
    end

    module DeleteFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterOutput, context: context)
        type = Types::DeleteFilterOutput.new
        type
      end
    end

    module DeleteIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetInput, context: context)
        type = Types::DeleteIPSetInput.new
        type.detector_id = params[:detector_id]
        type.ip_set_id = params[:ip_set_id]
        type
      end
    end

    module DeleteIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetOutput, context: context)
        type = Types::DeleteIPSetOutput.new
        type
      end
    end

    module DeleteInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsInput, context: context)
        type = Types::DeleteInvitationsInput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsOutput, context: context)
        type = Types::DeleteInvitationsOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeleteMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersInput, context: context)
        type = Types::DeleteMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersOutput, context: context)
        type = Types::DeleteMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeletePublishingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePublishingDestinationInput, context: context)
        type = Types::DeletePublishingDestinationInput.new
        type.detector_id = params[:detector_id]
        type.destination_id = params[:destination_id]
        type
      end
    end

    module DeletePublishingDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePublishingDestinationOutput, context: context)
        type = Types::DeletePublishingDestinationOutput.new
        type
      end
    end

    module DeleteThreatIntelSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThreatIntelSetInput, context: context)
        type = Types::DeleteThreatIntelSetInput.new
        type.detector_id = params[:detector_id]
        type.threat_intel_set_id = params[:threat_intel_set_id]
        type
      end
    end

    module DeleteThreatIntelSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThreatIntelSetOutput, context: context)
        type = Types::DeleteThreatIntelSetOutput.new
        type
      end
    end

    module DescribeOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationInput, context: context)
        type = Types::DescribeOrganizationConfigurationInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module DescribeOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationOutput, context: context)
        type = Types::DescribeOrganizationConfigurationOutput.new
        type.auto_enable = params[:auto_enable]
        type.member_account_limit_reached = params[:member_account_limit_reached]
        type.data_sources = OrganizationDataSourceConfigurationsResult.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type
      end
    end

    module DescribePublishingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePublishingDestinationInput, context: context)
        type = Types::DescribePublishingDestinationInput.new
        type.detector_id = params[:detector_id]
        type.destination_id = params[:destination_id]
        type
      end
    end

    module DescribePublishingDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePublishingDestinationOutput, context: context)
        type = Types::DescribePublishingDestinationOutput.new
        type.destination_id = params[:destination_id]
        type.destination_type = params[:destination_type]
        type.status = params[:status]
        type.publishing_failure_start_timestamp = params[:publishing_failure_start_timestamp]
        type.destination_properties = DestinationProperties.build(params[:destination_properties], context: "#{context}[:destination_properties]") unless params[:destination_properties].nil?
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.destination_id = params[:destination_id]
        type.destination_type = params[:destination_type]
        type.status = params[:status]
        type
      end
    end

    module DestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationProperties, context: context)
        type = Types::DestinationProperties.new
        type.destination_arn = params[:destination_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module Destinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Destination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DisableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountInput, context: context)
        type = Types::DisableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module DisableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountOutput, context: context)
        type = Types::DisableOrganizationAdminAccountOutput.new
        type
      end
    end

    module DisassociateFromMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountInput, context: context)
        type = Types::DisassociateFromMasterAccountInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module DisassociateFromMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountOutput, context: context)
        type = Types::DisassociateFromMasterAccountOutput.new
        type
      end
    end

    module DisassociateMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembersInput, context: context)
        type = Types::DisassociateMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DisassociateMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembersOutput, context: context)
        type = Types::DisassociateMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DnsRequestAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRequestAction, context: context)
        type = Types::DnsRequestAction.new
        type.domain = params[:domain]
        type
      end
    end

    module DomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDetails, context: context)
        type = Types::DomainDetails.new
        type.domain = params[:domain]
        type
      end
    end

    module EksClusterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EksClusterDetails, context: context)
        type = Types::EksClusterDetails.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.vpc_id = params[:vpc_id]
        type.status = params[:status]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_at = params[:created_at]
        type
      end
    end

    module EnableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountInput, context: context)
        type = Types::EnableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module EnableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountOutput, context: context)
        type = Types::EnableOrganizationAdminAccountOutput.new
        type
      end
    end

    module Eq
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Equals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Evidence
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Evidence, context: context)
        type = Types::Evidence.new
        type.threat_intelligence_details = ThreatIntelligenceDetails.build(params[:threat_intelligence_details], context: "#{context}[:threat_intelligence_details]") unless params[:threat_intelligence_details].nil?
        type
      end
    end

    module FilterNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Finding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Finding, context: context)
        type = Types::Finding.new
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.confidence = params[:confidence]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.partition = params[:partition]
        type.region = params[:region]
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.schema_version = params[:schema_version]
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.severity = params[:severity]
        type.title = params[:title]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module FindingCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingCriteria, context: context)
        type = Types::FindingCriteria.new
        type.criterion = Criterion.build(params[:criterion], context: "#{context}[:criterion]") unless params[:criterion].nil?
        type
      end
    end

    module FindingIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FindingStatisticTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FindingStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingStatistics, context: context)
        type = Types::FindingStatistics.new
        type.count_by_severity = CountBySeverity.build(params[:count_by_severity], context: "#{context}[:count_by_severity]") unless params[:count_by_severity].nil?
        type
      end
    end

    module FindingTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Findings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Finding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowLogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowLogsConfigurationResult, context: context)
        type = Types::FlowLogsConfigurationResult.new
        type.status = params[:status]
        type
      end
    end

    module GeoLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoLocation, context: context)
        type = Types::GeoLocation.new
        type.lat = params[:lat]
        type.lon = params[:lon]
        type
      end
    end

    module GetDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorInput, context: context)
        type = Types::GetDetectorInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module GetDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorOutput, context: context)
        type = Types::GetDetectorOutput.new
        type.created_at = params[:created_at]
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.service_role = params[:service_role]
        type.status = params[:status]
        type.updated_at = params[:updated_at]
        type.data_sources = DataSourceConfigurationsResult.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFilterInput, context: context)
        type = Types::GetFilterInput.new
        type.detector_id = params[:detector_id]
        type.filter_name = params[:filter_name]
        type
      end
    end

    module GetFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFilterOutput, context: context)
        type = Types::GetFilterOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.action = params[:action]
        type.rank = params[:rank]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsInput, context: context)
        type = Types::GetFindingsInput.new
        type.detector_id = params[:detector_id]
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module GetFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsOutput, context: context)
        type = Types::GetFindingsOutput.new
        type.findings = Findings.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type
      end
    end

    module GetFindingsStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsStatisticsInput, context: context)
        type = Types::GetFindingsStatisticsInput.new
        type.detector_id = params[:detector_id]
        type.finding_statistic_types = FindingStatisticTypes.build(params[:finding_statistic_types], context: "#{context}[:finding_statistic_types]") unless params[:finding_statistic_types].nil?
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type
      end
    end

    module GetFindingsStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsStatisticsOutput, context: context)
        type = Types::GetFindingsStatisticsOutput.new
        type.finding_statistics = FindingStatistics.build(params[:finding_statistics], context: "#{context}[:finding_statistics]") unless params[:finding_statistics].nil?
        type
      end
    end

    module GetIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetInput, context: context)
        type = Types::GetIPSetInput.new
        type.detector_id = params[:detector_id]
        type.ip_set_id = params[:ip_set_id]
        type
      end
    end

    module GetIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetOutput, context: context)
        type = Types::GetIPSetOutput.new
        type.name = params[:name]
        type.format = params[:format]
        type.location = params[:location]
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetInvitationsCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountInput, context: context)
        type = Types::GetInvitationsCountInput.new
        type
      end
    end

    module GetInvitationsCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountOutput, context: context)
        type = Types::GetInvitationsCountOutput.new
        type.invitations_count = params[:invitations_count]
        type
      end
    end

    module GetMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountInput, context: context)
        type = Types::GetMasterAccountInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module GetMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountOutput, context: context)
        type = Types::GetMasterAccountOutput.new
        type.master = Master.build(params[:master], context: "#{context}[:master]") unless params[:master].nil?
        type
      end
    end

    module GetMemberDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberDetectorsInput, context: context)
        type = Types::GetMemberDetectorsInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module GetMemberDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberDetectorsOutput, context: context)
        type = Types::GetMemberDetectorsOutput.new
        type.member_data_source_configurations = MemberDataSourceConfigurations.build(params[:member_data_source_configurations], context: "#{context}[:member_data_source_configurations]") unless params[:member_data_source_configurations].nil?
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module GetMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersInput, context: context)
        type = Types::GetMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module GetMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersOutput, context: context)
        type = Types::GetMembersOutput.new
        type.members = Members.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module GetThreatIntelSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThreatIntelSetInput, context: context)
        type = Types::GetThreatIntelSetInput.new
        type.detector_id = params[:detector_id]
        type.threat_intel_set_id = params[:threat_intel_set_id]
        type
      end
    end

    module GetThreatIntelSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThreatIntelSetOutput, context: context)
        type = Types::GetThreatIntelSetOutput.new
        type.name = params[:name]
        type.format = params[:format]
        type.location = params[:location]
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetUsageStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageStatisticsInput, context: context)
        type = Types::GetUsageStatisticsInput.new
        type.detector_id = params[:detector_id]
        type.usage_statistic_type = params[:usage_statistic_type]
        type.usage_criteria = UsageCriteria.build(params[:usage_criteria], context: "#{context}[:usage_criteria]") unless params[:usage_criteria].nil?
        type.unit = params[:unit]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUsageStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageStatisticsOutput, context: context)
        type = Types::GetUsageStatisticsOutput.new
        type.usage_statistics = UsageStatistics.build(params[:usage_statistics], context: "#{context}[:usage_statistics]") unless params[:usage_statistics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HostPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostPath, context: context)
        type = Types::HostPath.new
        type.path = params[:path]
        type
      end
    end

    module IamInstanceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamInstanceProfile, context: context)
        type = Types::IamInstanceProfile.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module InstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceDetails, context: context)
        type = Types::InstanceDetails.new
        type.availability_zone = params[:availability_zone]
        type.iam_instance_profile = IamInstanceProfile.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.image_description = params[:image_description]
        type.image_id = params[:image_id]
        type.instance_id = params[:instance_id]
        type.instance_state = params[:instance_state]
        type.instance_type = params[:instance_type]
        type.outpost_arn = params[:outpost_arn]
        type.launch_time = params[:launch_time]
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.platform = params[:platform]
        type.product_codes = ProductCodes.build(params[:product_codes], context: "#{context}[:product_codes]") unless params[:product_codes].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type.type = params[:type]
        type
      end
    end

    module Invitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Invitation, context: context)
        type = Types::Invitation.new
        type.account_id = params[:account_id]
        type.invitation_id = params[:invitation_id]
        type.relationship_status = params[:relationship_status]
        type.invited_at = params[:invited_at]
        type
      end
    end

    module Invitations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Invitation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InviteMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteMembersInput, context: context)
        type = Types::InviteMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.disable_email_notification = params[:disable_email_notification]
        type.message = params[:message]
        type
      end
    end

    module InviteMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteMembersOutput, context: context)
        type = Types::InviteMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module IpSetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Ipv6Addresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KubernetesApiCallAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesApiCallAction, context: context)
        type = Types::KubernetesApiCallAction.new
        type.request_uri = params[:request_uri]
        type.verb = params[:verb]
        type.source_ips = SourceIps.build(params[:source_ips], context: "#{context}[:source_ips]") unless params[:source_ips].nil?
        type.user_agent = params[:user_agent]
        type.remote_ip_details = RemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type.status_code = params[:status_code]
        type.parameters = params[:parameters]
        type
      end
    end

    module KubernetesAuditLogsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesAuditLogsConfiguration, context: context)
        type = Types::KubernetesAuditLogsConfiguration.new
        type.enable = params[:enable]
        type
      end
    end

    module KubernetesAuditLogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesAuditLogsConfigurationResult, context: context)
        type = Types::KubernetesAuditLogsConfigurationResult.new
        type.status = params[:status]
        type
      end
    end

    module KubernetesConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesConfiguration, context: context)
        type = Types::KubernetesConfiguration.new
        type.audit_logs = KubernetesAuditLogsConfiguration.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module KubernetesConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesConfigurationResult, context: context)
        type = Types::KubernetesConfigurationResult.new
        type.audit_logs = KubernetesAuditLogsConfigurationResult.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module KubernetesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesDetails, context: context)
        type = Types::KubernetesDetails.new
        type.kubernetes_user_details = KubernetesUserDetails.build(params[:kubernetes_user_details], context: "#{context}[:kubernetes_user_details]") unless params[:kubernetes_user_details].nil?
        type.kubernetes_workload_details = KubernetesWorkloadDetails.build(params[:kubernetes_workload_details], context: "#{context}[:kubernetes_workload_details]") unless params[:kubernetes_workload_details].nil?
        type
      end
    end

    module KubernetesUserDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesUserDetails, context: context)
        type = Types::KubernetesUserDetails.new
        type.username = params[:username]
        type.uid = params[:uid]
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module KubernetesWorkloadDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesWorkloadDetails, context: context)
        type = Types::KubernetesWorkloadDetails.new
        type.name = params[:name]
        type.type = params[:type]
        type.uid = params[:uid]
        type.namespace = params[:namespace]
        type.host_network = params[:host_network]
        type.containers = Containers.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.volumes = Volumes.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type
      end
    end

    module ListDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorsInput, context: context)
        type = Types::ListDetectorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorsOutput, context: context)
        type = Types::ListDetectorsOutput.new
        type.detector_ids = DetectorIds.build(params[:detector_ids], context: "#{context}[:detector_ids]") unless params[:detector_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersInput, context: context)
        type = Types::ListFiltersInput.new
        type.detector_id = params[:detector_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersOutput, context: context)
        type = Types::ListFiltersOutput.new
        type.filter_names = FilterNames.build(params[:filter_names], context: "#{context}[:filter_names]") unless params[:filter_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsInput, context: context)
        type = Types::ListFindingsInput.new
        type.detector_id = params[:detector_id]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsOutput, context: context)
        type = Types::ListFindingsOutput.new
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIPSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIPSetsInput, context: context)
        type = Types::ListIPSetsInput.new
        type.detector_id = params[:detector_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIPSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIPSetsOutput, context: context)
        type = Types::ListIPSetsOutput.new
        type.ip_set_ids = IpSetIds.build(params[:ip_set_ids], context: "#{context}[:ip_set_ids]") unless params[:ip_set_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsInput, context: context)
        type = Types::ListInvitationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsOutput, context: context)
        type = Types::ListInvitationsOutput.new
        type.invitations = Invitations.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.detector_id = params[:detector_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.only_associated = params[:only_associated]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.members = Members.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsInput, context: context)
        type = Types::ListOrganizationAdminAccountsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsOutput, context: context)
        type = Types::ListOrganizationAdminAccountsOutput.new
        type.admin_accounts = AdminAccounts.build(params[:admin_accounts], context: "#{context}[:admin_accounts]") unless params[:admin_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPublishingDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublishingDestinationsInput, context: context)
        type = Types::ListPublishingDestinationsInput.new
        type.detector_id = params[:detector_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPublishingDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublishingDestinationsOutput, context: context)
        type = Types::ListPublishingDestinationsOutput.new
        type.destinations = Destinations.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListThreatIntelSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThreatIntelSetsInput, context: context)
        type = Types::ListThreatIntelSetsInput.new
        type.detector_id = params[:detector_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThreatIntelSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThreatIntelSetsOutput, context: context)
        type = Types::ListThreatIntelSetsOutput.new
        type.threat_intel_set_ids = ThreatIntelSetIds.build(params[:threat_intel_set_ids], context: "#{context}[:threat_intel_set_ids]") unless params[:threat_intel_set_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LocalIpDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocalIpDetails, context: context)
        type = Types::LocalIpDetails.new
        type.ip_address_v4 = params[:ip_address_v4]
        type
      end
    end

    module LocalPortDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocalPortDetails, context: context)
        type = Types::LocalPortDetails.new
        type.port = params[:port]
        type.port_name = params[:port_name]
        type
      end
    end

    module Master
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Master, context: context)
        type = Types::Master.new
        type.account_id = params[:account_id]
        type.invitation_id = params[:invitation_id]
        type.relationship_status = params[:relationship_status]
        type.invited_at = params[:invited_at]
        type
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.account_id = params[:account_id]
        type.detector_id = params[:detector_id]
        type.master_id = params[:master_id]
        type.email = params[:email]
        type.relationship_status = params[:relationship_status]
        type.invited_at = params[:invited_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module MemberDataSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberDataSourceConfiguration, context: context)
        type = Types::MemberDataSourceConfiguration.new
        type.account_id = params[:account_id]
        type.data_sources = DataSourceConfigurationsResult.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type
      end
    end

    module MemberDataSourceConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberDataSourceConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module Neq
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkConnectionAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConnectionAction, context: context)
        type = Types::NetworkConnectionAction.new
        type.blocked = params[:blocked]
        type.connection_direction = params[:connection_direction]
        type.local_port_details = LocalPortDetails.build(params[:local_port_details], context: "#{context}[:local_port_details]") unless params[:local_port_details].nil?
        type.protocol = params[:protocol]
        type.local_ip_details = LocalIpDetails.build(params[:local_ip_details], context: "#{context}[:local_ip_details]") unless params[:local_ip_details].nil?
        type.remote_ip_details = RemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type.remote_port_details = RemotePortDetails.build(params[:remote_port_details], context: "#{context}[:remote_port_details]") unless params[:remote_port_details].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.ipv6_addresses = Ipv6Addresses.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.network_interface_id = params[:network_interface_id]
        type.private_dns_name = params[:private_dns_name]
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_addresses = PrivateIpAddresses.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.public_dns_name = params[:public_dns_name]
        type.public_ip = params[:public_ip]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnet_id = params[:subnet_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module NetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotEquals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Organization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Organization, context: context)
        type = Types::Organization.new
        type.asn = params[:asn]
        type.asn_org = params[:asn_org]
        type.isp = params[:isp]
        type.org = params[:org]
        type
      end
    end

    module OrganizationDataSourceConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationDataSourceConfigurations, context: context)
        type = Types::OrganizationDataSourceConfigurations.new
        type.s3_logs = OrganizationS3LogsConfiguration.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type.kubernetes = OrganizationKubernetesConfiguration.build(params[:kubernetes], context: "#{context}[:kubernetes]") unless params[:kubernetes].nil?
        type
      end
    end

    module OrganizationDataSourceConfigurationsResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationDataSourceConfigurationsResult, context: context)
        type = Types::OrganizationDataSourceConfigurationsResult.new
        type.s3_logs = OrganizationS3LogsConfigurationResult.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type.kubernetes = OrganizationKubernetesConfigurationResult.build(params[:kubernetes], context: "#{context}[:kubernetes]") unless params[:kubernetes].nil?
        type
      end
    end

    module OrganizationKubernetesAuditLogsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationKubernetesAuditLogsConfiguration, context: context)
        type = Types::OrganizationKubernetesAuditLogsConfiguration.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module OrganizationKubernetesAuditLogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationKubernetesAuditLogsConfigurationResult, context: context)
        type = Types::OrganizationKubernetesAuditLogsConfigurationResult.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module OrganizationKubernetesConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationKubernetesConfiguration, context: context)
        type = Types::OrganizationKubernetesConfiguration.new
        type.audit_logs = OrganizationKubernetesAuditLogsConfiguration.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module OrganizationKubernetesConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationKubernetesConfigurationResult, context: context)
        type = Types::OrganizationKubernetesConfigurationResult.new
        type.audit_logs = OrganizationKubernetesAuditLogsConfigurationResult.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module OrganizationS3LogsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationS3LogsConfiguration, context: context)
        type = Types::OrganizationS3LogsConfiguration.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module OrganizationS3LogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationS3LogsConfigurationResult, context: context)
        type = Types::OrganizationS3LogsConfigurationResult.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module Owner
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Owner, context: context)
        type = Types::Owner.new
        type.id = params[:id]
        type
      end
    end

    module PermissionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionConfiguration, context: context)
        type = Types::PermissionConfiguration.new
        type.bucket_level_permissions = BucketLevelPermissions.build(params[:bucket_level_permissions], context: "#{context}[:bucket_level_permissions]") unless params[:bucket_level_permissions].nil?
        type.account_level_permissions = AccountLevelPermissions.build(params[:account_level_permissions], context: "#{context}[:account_level_permissions]") unless params[:account_level_permissions].nil?
        type
      end
    end

    module PortProbeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortProbeAction, context: context)
        type = Types::PortProbeAction.new
        type.blocked = params[:blocked]
        type.port_probe_details = PortProbeDetails.build(params[:port_probe_details], context: "#{context}[:port_probe_details]") unless params[:port_probe_details].nil?
        type
      end
    end

    module PortProbeDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortProbeDetail, context: context)
        type = Types::PortProbeDetail.new
        type.local_port_details = LocalPortDetails.build(params[:local_port_details], context: "#{context}[:local_port_details]") unless params[:local_port_details].nil?
        type.local_ip_details = LocalIpDetails.build(params[:local_ip_details], context: "#{context}[:local_ip_details]") unless params[:local_ip_details].nil?
        type.remote_ip_details = RemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type
      end
    end

    module PortProbeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortProbeDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrivateIpAddressDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateIpAddressDetails, context: context)
        type = Types::PrivateIpAddressDetails.new
        type.private_dns_name = params[:private_dns_name]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module PrivateIpAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrivateIpAddressDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductCode, context: context)
        type = Types::ProductCode.new
        type.code = params[:code]
        type.product_type = params[:product_type]
        type
      end
    end

    module ProductCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductCode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublicAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicAccess, context: context)
        type = Types::PublicAccess.new
        type.permission_configuration = PermissionConfiguration.build(params[:permission_configuration], context: "#{context}[:permission_configuration]") unless params[:permission_configuration].nil?
        type.effective_permission = params[:effective_permission]
        type
      end
    end

    module RemoteAccountDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoteAccountDetails, context: context)
        type = Types::RemoteAccountDetails.new
        type.account_id = params[:account_id]
        type.affiliated = params[:affiliated]
        type
      end
    end

    module RemoteIpDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoteIpDetails, context: context)
        type = Types::RemoteIpDetails.new
        type.city = City.build(params[:city], context: "#{context}[:city]") unless params[:city].nil?
        type.country = Country.build(params[:country], context: "#{context}[:country]") unless params[:country].nil?
        type.geo_location = GeoLocation.build(params[:geo_location], context: "#{context}[:geo_location]") unless params[:geo_location].nil?
        type.ip_address_v4 = params[:ip_address_v4]
        type.organization = Organization.build(params[:organization], context: "#{context}[:organization]") unless params[:organization].nil?
        type
      end
    end

    module RemotePortDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemotePortDetails, context: context)
        type = Types::RemotePortDetails.new
        type.port = params[:port]
        type.port_name = params[:port_name]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.access_key_details = AccessKeyDetails.build(params[:access_key_details], context: "#{context}[:access_key_details]") unless params[:access_key_details].nil?
        type.s3_bucket_details = S3BucketDetails.build(params[:s3_bucket_details], context: "#{context}[:s3_bucket_details]") unless params[:s3_bucket_details].nil?
        type.instance_details = InstanceDetails.build(params[:instance_details], context: "#{context}[:instance_details]") unless params[:instance_details].nil?
        type.eks_cluster_details = EksClusterDetails.build(params[:eks_cluster_details], context: "#{context}[:eks_cluster_details]") unless params[:eks_cluster_details].nil?
        type.kubernetes_details = KubernetesDetails.build(params[:kubernetes_details], context: "#{context}[:kubernetes_details]") unless params[:kubernetes_details].nil?
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3BucketDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketDetail, context: context)
        type = Types::S3BucketDetail.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.created_at = params[:created_at]
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.default_server_side_encryption = DefaultServerSideEncryption.build(params[:default_server_side_encryption], context: "#{context}[:default_server_side_encryption]") unless params[:default_server_side_encryption].nil?
        type.public_access = PublicAccess.build(params[:public_access], context: "#{context}[:public_access]") unless params[:public_access].nil?
        type
      end
    end

    module S3BucketDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3BucketDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3LogsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LogsConfiguration, context: context)
        type = Types::S3LogsConfiguration.new
        type.enable = params[:enable]
        type
      end
    end

    module S3LogsConfigurationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LogsConfigurationResult, context: context)
        type = Types::S3LogsConfigurationResult.new
        type.status = params[:status]
        type
      end
    end

    module SecurityContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityContext, context: context)
        type = Types::SecurityContext.new
        type.privileged = params[:privileged]
        type
      end
    end

    module SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroup, context: context)
        type = Types::SecurityGroup.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.evidence = Evidence.build(params[:evidence], context: "#{context}[:evidence]") unless params[:evidence].nil?
        type.archived = params[:archived]
        type.count = params[:count]
        type.detector_id = params[:detector_id]
        type.event_first_seen = params[:event_first_seen]
        type.event_last_seen = params[:event_last_seen]
        type.resource_role = params[:resource_role]
        type.service_name = params[:service_name]
        type.user_feedback = params[:user_feedback]
        type
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriteria, context: context)
        type = Types::SortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module SourceIps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartMonitoringMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringMembersInput, context: context)
        type = Types::StartMonitoringMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module StartMonitoringMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringMembersOutput, context: context)
        type = Types::StartMonitoringMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module StopMonitoringMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMonitoringMembersInput, context: context)
        type = Types::StopMonitoringMembersInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module StopMonitoringMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMonitoringMembersOutput, context: context)
        type = Types::StopMonitoringMembersOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThreatIntelSetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThreatIntelligenceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThreatIntelligenceDetail, context: context)
        type = Types::ThreatIntelligenceDetail.new
        type.threat_list_name = params[:threat_list_name]
        type.threat_names = ThreatNames.build(params[:threat_names], context: "#{context}[:threat_names]") unless params[:threat_names].nil?
        type
      end
    end

    module ThreatIntelligenceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThreatIntelligenceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThreatNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Total
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Total, context: context)
        type = Types::Total.new
        type.amount = params[:amount]
        type.unit = params[:unit]
        type
      end
    end

    module UnarchiveFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnarchiveFindingsInput, context: context)
        type = Types::UnarchiveFindingsInput.new
        type.detector_id = params[:detector_id]
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type
      end
    end

    module UnarchiveFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnarchiveFindingsOutput, context: context)
        type = Types::UnarchiveFindingsOutput.new
        type
      end
    end

    module UnprocessedAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedAccount, context: context)
        type = Types::UnprocessedAccount.new
        type.account_id = params[:account_id]
        type.result = params[:result]
        type
      end
    end

    module UnprocessedAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module UpdateDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorInput, context: context)
        type = Types::UpdateDetectorInput.new
        type.detector_id = params[:detector_id]
        type.enable = params[:enable]
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.data_sources = DataSourceConfigurations.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type
      end
    end

    module UpdateDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorOutput, context: context)
        type = Types::UpdateDetectorOutput.new
        type
      end
    end

    module UpdateFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFilterInput, context: context)
        type = Types::UpdateFilterInput.new
        type.detector_id = params[:detector_id]
        type.filter_name = params[:filter_name]
        type.description = params[:description]
        type.action = params[:action]
        type.rank = params[:rank]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type
      end
    end

    module UpdateFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFilterOutput, context: context)
        type = Types::UpdateFilterOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateFindingsFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsFeedbackInput, context: context)
        type = Types::UpdateFindingsFeedbackInput.new
        type.detector_id = params[:detector_id]
        type.finding_ids = FindingIds.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.feedback = params[:feedback]
        type.comments = params[:comments]
        type
      end
    end

    module UpdateFindingsFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsFeedbackOutput, context: context)
        type = Types::UpdateFindingsFeedbackOutput.new
        type
      end
    end

    module UpdateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetInput, context: context)
        type = Types::UpdateIPSetInput.new
        type.detector_id = params[:detector_id]
        type.ip_set_id = params[:ip_set_id]
        type.name = params[:name]
        type.location = params[:location]
        type.activate = params[:activate]
        type
      end
    end

    module UpdateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetOutput, context: context)
        type = Types::UpdateIPSetOutput.new
        type
      end
    end

    module UpdateMemberDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberDetectorsInput, context: context)
        type = Types::UpdateMemberDetectorsInput.new
        type.detector_id = params[:detector_id]
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.data_sources = DataSourceConfigurations.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type
      end
    end

    module UpdateMemberDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberDetectorsOutput, context: context)
        type = Types::UpdateMemberDetectorsOutput.new
        type.unprocessed_accounts = UnprocessedAccounts.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module UpdateOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationInput, context: context)
        type = Types::UpdateOrganizationConfigurationInput.new
        type.detector_id = params[:detector_id]
        type.auto_enable = params[:auto_enable]
        type.data_sources = OrganizationDataSourceConfigurations.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type
      end
    end

    module UpdateOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationOutput, context: context)
        type = Types::UpdateOrganizationConfigurationOutput.new
        type
      end
    end

    module UpdatePublishingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublishingDestinationInput, context: context)
        type = Types::UpdatePublishingDestinationInput.new
        type.detector_id = params[:detector_id]
        type.destination_id = params[:destination_id]
        type.destination_properties = DestinationProperties.build(params[:destination_properties], context: "#{context}[:destination_properties]") unless params[:destination_properties].nil?
        type
      end
    end

    module UpdatePublishingDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublishingDestinationOutput, context: context)
        type = Types::UpdatePublishingDestinationOutput.new
        type
      end
    end

    module UpdateThreatIntelSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThreatIntelSetInput, context: context)
        type = Types::UpdateThreatIntelSetInput.new
        type.detector_id = params[:detector_id]
        type.threat_intel_set_id = params[:threat_intel_set_id]
        type.name = params[:name]
        type.location = params[:location]
        type.activate = params[:activate]
        type
      end
    end

    module UpdateThreatIntelSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThreatIntelSetOutput, context: context)
        type = Types::UpdateThreatIntelSetOutput.new
        type
      end
    end

    module UsageAccountResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageAccountResult, context: context)
        type = Types::UsageAccountResult.new
        type.account_id = params[:account_id]
        type.total = Total.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module UsageAccountResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageAccountResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageCriteria, context: context)
        type = Types::UsageCriteria.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.data_sources = DataSourceList.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module UsageDataSourceResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageDataSourceResult, context: context)
        type = Types::UsageDataSourceResult.new
        type.data_source = params[:data_source]
        type.total = Total.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module UsageDataSourceResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageDataSourceResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageResourceResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageResourceResult, context: context)
        type = Types::UsageResourceResult.new
        type.resource = params[:resource]
        type.total = Total.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module UsageResourceResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageResourceResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageStatistics, context: context)
        type = Types::UsageStatistics.new
        type.sum_by_account = UsageAccountResultList.build(params[:sum_by_account], context: "#{context}[:sum_by_account]") unless params[:sum_by_account].nil?
        type.sum_by_data_source = UsageDataSourceResultList.build(params[:sum_by_data_source], context: "#{context}[:sum_by_data_source]") unless params[:sum_by_data_source].nil?
        type.sum_by_resource = UsageResourceResultList.build(params[:sum_by_resource], context: "#{context}[:sum_by_resource]") unless params[:sum_by_resource].nil?
        type.top_resources = UsageResourceResultList.build(params[:top_resources], context: "#{context}[:top_resources]") unless params[:top_resources].nil?
        type
      end
    end

    module Volume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Volume, context: context)
        type = Types::Volume.new
        type.name = params[:name]
        type.host_path = HostPath.build(params[:host_path], context: "#{context}[:host_path]") unless params[:host_path].nil?
        type
      end
    end

    module VolumeMount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeMount, context: context)
        type = Types::VolumeMount.new
        type.name = params[:name]
        type.mount_path = params[:mount_path]
        type
      end
    end

    module VolumeMounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeMount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Volumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Volume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
