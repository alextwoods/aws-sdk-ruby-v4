# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DirectoryService
  module Validators

    class AcceptSharedDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptSharedDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
      end
    end

    class AcceptSharedDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptSharedDirectoryOutput, context: context)
        SharedDirectory.validate!(input[:shared_directory], context: "#{context}[:shared_directory]") unless input[:shared_directory].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class AddIpRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddIpRoutesInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        IpRoutes.validate!(input[:ip_routes], context: "#{context}[:ip_routes]") unless input[:ip_routes].nil?
        Hearth::Validator.validate!(input[:update_security_group_for_directory_controllers], ::TrueClass, ::FalseClass, context: "#{context}[:update_security_group_for_directory_controllers]")
      end
    end

    class AddIpRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddIpRoutesOutput, context: context)
      end
    end

    class AddRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRegionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        DirectoryVpcSettings.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
      end
    end

    class AddRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRegionOutput, context: context)
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
      end
    end

    class AdditionalRegions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthenticationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancelSchemaExtensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSchemaExtensionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:schema_extension_id], ::String, context: "#{context}[:schema_extension_id]")
      end
    end

    class CancelSchemaExtensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSchemaExtensionOutput, context: context)
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:common_name], ::String, context: "#{context}[:common_name]")
        Hearth::Validator.validate!(input[:registered_date_time], ::Time, context: "#{context}[:registered_date_time]")
        Hearth::Validator.validate!(input[:expiry_date_time], ::Time, context: "#{context}[:expiry_date_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ClientCertAuthSettings.validate!(input[:client_cert_auth_settings], context: "#{context}[:client_cert_auth_settings]") unless input[:client_cert_auth_settings].nil?
      end
    end

    class CertificateAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CertificateDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CertificateInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CertificateInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateInfo, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:common_name], ::String, context: "#{context}[:common_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:expiry_date_time], ::Time, context: "#{context}[:expiry_date_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CertificateLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CertificatesInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CertificateInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CidrIps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClientAuthenticationSettingInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientAuthenticationSettingInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class ClientAuthenticationSettingsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClientAuthenticationSettingInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientCertAuthSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientCertAuthSettings, context: context)
        Hearth::Validator.validate!(input[:ocsp_url], ::String, context: "#{context}[:ocsp_url]")
      end
    end

    class ClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class Computer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Computer, context: context)
        Hearth::Validator.validate!(input[:computer_id], ::String, context: "#{context}[:computer_id]")
        Hearth::Validator.validate!(input[:computer_name], ::String, context: "#{context}[:computer_name]")
        Attributes.validate!(input[:computer_attributes], context: "#{context}[:computer_attributes]") unless input[:computer_attributes].nil?
      end
    end

    class ConditionalForwarder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionalForwarder, context: context)
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
        DnsIpAddrs.validate!(input[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless input[:dns_ip_addrs].nil?
        Hearth::Validator.validate!(input[:replication_scope], ::String, context: "#{context}[:replication_scope]")
      end
    end

    class ConditionalForwarders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConditionalForwarder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:short_name], ::String, context: "#{context}[:short_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:size], ::String, context: "#{context}[:size]")
        DirectoryConnectSettings.validate!(input[:connect_settings], context: "#{context}[:connect_settings]") unless input[:connect_settings].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConnectDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasOutput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class CreateComputerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComputerInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:computer_name], ::String, context: "#{context}[:computer_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
        Attributes.validate!(input[:computer_attributes], context: "#{context}[:computer_attributes]") unless input[:computer_attributes].nil?
      end
    end

    class CreateComputerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComputerOutput, context: context)
        Computer.validate!(input[:computer], context: "#{context}[:computer]") unless input[:computer].nil?
      end
    end

    class CreateConditionalForwarderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConditionalForwarderInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
        DnsIpAddrs.validate!(input[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless input[:dns_ip_addrs].nil?
      end
    end

    class CreateConditionalForwarderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConditionalForwarderOutput, context: context)
      end
    end

    class CreateDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:short_name], ::String, context: "#{context}[:short_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:size], ::String, context: "#{context}[:size]")
        DirectoryVpcSettings.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class CreateLogSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class CreateLogSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLogSubscriptionOutput, context: context)
      end
    end

    class CreateMicrosoftADInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMicrosoftADInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:short_name], ::String, context: "#{context}[:short_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DirectoryVpcSettings.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMicrosoftADOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMicrosoftADOutput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class CreateTrustInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrustInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
        Hearth::Validator.validate!(input[:trust_password], ::String, context: "#{context}[:trust_password]")
        Hearth::Validator.validate!(input[:trust_direction], ::String, context: "#{context}[:trust_direction]")
        Hearth::Validator.validate!(input[:trust_type], ::String, context: "#{context}[:trust_type]")
        DnsIpAddrs.validate!(input[:conditional_forwarder_ip_addrs], context: "#{context}[:conditional_forwarder_ip_addrs]") unless input[:conditional_forwarder_ip_addrs].nil?
        Hearth::Validator.validate!(input[:selective_auth], ::String, context: "#{context}[:selective_auth]")
      end
    end

    class CreateTrustOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrustOutput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
      end
    end

    class DeleteConditionalForwarderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConditionalForwarderInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
      end
    end

    class DeleteConditionalForwarderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConditionalForwarderOutput, context: context)
      end
    end

    class DeleteDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DeleteDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DeleteLogSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DeleteLogSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLogSubscriptionOutput, context: context)
      end
    end

    class DeleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class DeleteSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class DeleteTrustInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrustInput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
        Hearth::Validator.validate!(input[:delete_associated_conditional_forwarder], ::TrueClass, ::FalseClass, context: "#{context}[:delete_associated_conditional_forwarder]")
      end
    end

    class DeleteTrustOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrustOutput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
      end
    end

    class DeregisterCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterCertificateInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DeregisterCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterCertificateOutput, context: context)
      end
    end

    class DeregisterEventTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterEventTopicInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
      end
    end

    class DeregisterEventTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterEventTopicOutput, context: context)
      end
    end

    class DescribeCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DescribeCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateOutput, context: context)
        Certificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class DescribeClientAuthenticationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientAuthenticationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeClientAuthenticationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientAuthenticationSettingsOutput, context: context)
        ClientAuthenticationSettingsInfo.validate!(input[:client_authentication_settings_info], context: "#{context}[:client_authentication_settings_info]") unless input[:client_authentication_settings_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConditionalForwardersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConditionalForwardersInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        RemoteDomainNames.validate!(input[:remote_domain_names], context: "#{context}[:remote_domain_names]") unless input[:remote_domain_names].nil?
      end
    end

    class DescribeConditionalForwardersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConditionalForwardersOutput, context: context)
        ConditionalForwarders.validate!(input[:conditional_forwarders], context: "#{context}[:conditional_forwarders]") unless input[:conditional_forwarders].nil?
      end
    end

    class DescribeDirectoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectoriesInput, context: context)
        DirectoryIds.validate!(input[:directory_ids], context: "#{context}[:directory_ids]") unless input[:directory_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeDirectoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectoriesOutput, context: context)
        DirectoryDescriptions.validate!(input[:directory_descriptions], context: "#{context}[:directory_descriptions]") unless input[:directory_descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDomainControllersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainControllersInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        DomainControllerIds.validate!(input[:domain_controller_ids], context: "#{context}[:domain_controller_ids]") unless input[:domain_controller_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeDomainControllersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainControllersOutput, context: context)
        DomainControllers.validate!(input[:domain_controllers], context: "#{context}[:domain_controllers]") unless input[:domain_controllers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventTopicsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTopicsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        TopicNames.validate!(input[:topic_names], context: "#{context}[:topic_names]") unless input[:topic_names].nil?
      end
    end

    class DescribeEventTopicsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTopicsOutput, context: context)
        EventTopics.validate!(input[:event_topics], context: "#{context}[:event_topics]") unless input[:event_topics].nil?
      end
    end

    class DescribeLDAPSSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLDAPSSettingsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeLDAPSSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLDAPSSettingsOutput, context: context)
        LDAPSSettingsInfo.validate!(input[:ldaps_settings_info], context: "#{context}[:ldaps_settings_info]") unless input[:ldaps_settings_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRegionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegionsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRegionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegionsOutput, context: context)
        RegionsDescription.validate!(input[:regions_description], context: "#{context}[:regions_description]") unless input[:regions_description].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSharedDirectoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSharedDirectoriesInput, context: context)
        Hearth::Validator.validate!(input[:owner_directory_id], ::String, context: "#{context}[:owner_directory_id]")
        DirectoryIds.validate!(input[:shared_directory_ids], context: "#{context}[:shared_directory_ids]") unless input[:shared_directory_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeSharedDirectoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSharedDirectoriesOutput, context: context)
        SharedDirectories.validate!(input[:shared_directories], context: "#{context}[:shared_directories]") unless input[:shared_directories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        SnapshotIds.validate!(input[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless input[:snapshot_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsOutput, context: context)
        Snapshots.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTrustsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        TrustIds.validate!(input[:trust_ids], context: "#{context}[:trust_ids]") unless input[:trust_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeTrustsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustsOutput, context: context)
        Trusts.validate!(input[:trusts], context: "#{context}[:trusts]") unless input[:trusts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DirectoryAlreadyInRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryAlreadyInRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryAlreadySharedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryAlreadySharedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryConnectSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryConnectSettings, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        DnsIpAddrs.validate!(input[:customer_dns_ips], context: "#{context}[:customer_dns_ips]") unless input[:customer_dns_ips].nil?
        Hearth::Validator.validate!(input[:customer_user_name], ::String, context: "#{context}[:customer_user_name]")
      end
    end

    class DirectoryConnectSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryConnectSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:customer_user_name], ::String, context: "#{context}[:customer_user_name]")
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        IpAddrs.validate!(input[:connect_ips], context: "#{context}[:connect_ips]") unless input[:connect_ips].nil?
      end
    end

    class DirectoryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryDescription, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:short_name], ::String, context: "#{context}[:short_name]")
        Hearth::Validator.validate!(input[:size], ::String, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:access_url], ::String, context: "#{context}[:access_url]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DnsIpAddrs.validate!(input[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless input[:dns_ip_addrs].nil?
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
        Hearth::Validator.validate!(input[:share_method], ::String, context: "#{context}[:share_method]")
        Hearth::Validator.validate!(input[:share_notes], ::String, context: "#{context}[:share_notes]")
        Hearth::Validator.validate!(input[:launch_time], ::Time, context: "#{context}[:launch_time]")
        Hearth::Validator.validate!(input[:stage_last_updated_date_time], ::Time, context: "#{context}[:stage_last_updated_date_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        DirectoryVpcSettingsDescription.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
        DirectoryConnectSettingsDescription.validate!(input[:connect_settings], context: "#{context}[:connect_settings]") unless input[:connect_settings].nil?
        RadiusSettings.validate!(input[:radius_settings], context: "#{context}[:radius_settings]") unless input[:radius_settings].nil?
        Hearth::Validator.validate!(input[:radius_status], ::String, context: "#{context}[:radius_status]")
        Hearth::Validator.validate!(input[:stage_reason], ::String, context: "#{context}[:stage_reason]")
        Hearth::Validator.validate!(input[:sso_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sso_enabled]")
        Hearth::Validator.validate!(input[:desired_number_of_domain_controllers], ::Integer, context: "#{context}[:desired_number_of_domain_controllers]")
        OwnerDirectoryDescription.validate!(input[:owner_directory_description], context: "#{context}[:owner_directory_description]") unless input[:owner_directory_description].nil?
        RegionsInfo.validate!(input[:regions_info], context: "#{context}[:regions_info]") unless input[:regions_info].nil?
      end
    end

    class DirectoryDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DirectoryDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectoryDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DirectoryLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryLimits, context: context)
        Hearth::Validator.validate!(input[:cloud_only_directories_limit], ::Integer, context: "#{context}[:cloud_only_directories_limit]")
        Hearth::Validator.validate!(input[:cloud_only_directories_current_count], ::Integer, context: "#{context}[:cloud_only_directories_current_count]")
        Hearth::Validator.validate!(input[:cloud_only_directories_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_only_directories_limit_reached]")
        Hearth::Validator.validate!(input[:cloud_only_microsoft_ad_limit], ::Integer, context: "#{context}[:cloud_only_microsoft_ad_limit]")
        Hearth::Validator.validate!(input[:cloud_only_microsoft_ad_current_count], ::Integer, context: "#{context}[:cloud_only_microsoft_ad_current_count]")
        Hearth::Validator.validate!(input[:cloud_only_microsoft_ad_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_only_microsoft_ad_limit_reached]")
        Hearth::Validator.validate!(input[:connected_directories_limit], ::Integer, context: "#{context}[:connected_directories_limit]")
        Hearth::Validator.validate!(input[:connected_directories_current_count], ::Integer, context: "#{context}[:connected_directories_current_count]")
        Hearth::Validator.validate!(input[:connected_directories_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:connected_directories_limit_reached]")
      end
    end

    class DirectoryNotSharedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryNotSharedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DirectoryVpcSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryVpcSettings, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class DirectoryVpcSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryVpcSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class DisableClientAuthenticationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableClientAuthenticationInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DisableClientAuthenticationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableClientAuthenticationOutput, context: context)
      end
    end

    class DisableLDAPSInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableLDAPSInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DisableLDAPSOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableLDAPSOutput, context: context)
      end
    end

    class DisableRadiusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableRadiusInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DisableRadiusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableRadiusOutput, context: context)
      end
    end

    class DisableSsoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSsoInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class DisableSsoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSsoOutput, context: context)
      end
    end

    class DnsIpAddrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainController
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainController, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:domain_controller_id], ::String, context: "#{context}[:domain_controller_id]")
        Hearth::Validator.validate!(input[:dns_ip_addr], ::String, context: "#{context}[:dns_ip_addr]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:launch_time], ::Time, context: "#{context}[:launch_time]")
        Hearth::Validator.validate!(input[:status_last_updated_date_time], ::Time, context: "#{context}[:status_last_updated_date_time]")
      end
    end

    class DomainControllerIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainControllerLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainControllerLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DomainControllers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainController.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableClientAuthenticationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableClientAuthenticationInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EnableClientAuthenticationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableClientAuthenticationOutput, context: context)
      end
    end

    class EnableLDAPSInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableLDAPSInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EnableLDAPSOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableLDAPSOutput, context: context)
      end
    end

    class EnableRadiusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableRadiusInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        RadiusSettings.validate!(input[:radius_settings], context: "#{context}[:radius_settings]") unless input[:radius_settings].nil?
      end
    end

    class EnableRadiusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableRadiusOutput, context: context)
      end
    end

    class EnableSsoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSsoInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class EnableSsoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSsoOutput, context: context)
      end
    end

    class EntityAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class EntityDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class EventTopic
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTopic, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:created_date_time], ::Time, context: "#{context}[:created_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class EventTopics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventTopic.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDirectoryLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDirectoryLimitsInput, context: context)
      end
    end

    class GetDirectoryLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDirectoryLimitsOutput, context: context)
        DirectoryLimits.validate!(input[:directory_limits], context: "#{context}[:directory_limits]") unless input[:directory_limits].nil?
      end
    end

    class GetSnapshotLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotLimitsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class GetSnapshotLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotLimitsOutput, context: context)
        SnapshotLimits.validate!(input[:snapshot_limits], context: "#{context}[:snapshot_limits]") unless input[:snapshot_limits].nil?
      end
    end

    class InsufficientPermissionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientPermissionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidClientAuthStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientAuthStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidLDAPSStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLDAPSStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidPasswordException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPasswordException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidTargetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class IpAddrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpRoute, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class IpRouteInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpRouteInfo, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:ip_route_status_msg], ::String, context: "#{context}[:ip_route_status_msg]")
        Hearth::Validator.validate!(input[:added_date_time], ::Time, context: "#{context}[:added_date_time]")
        Hearth::Validator.validate!(input[:ip_route_status_reason], ::String, context: "#{context}[:ip_route_status_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class IpRouteLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpRouteLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class IpRoutes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpRoute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IpRoutesInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpRouteInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LDAPSSettingInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LDAPSSettingInfo, context: context)
        Hearth::Validator.validate!(input[:ldaps_status], ::String, context: "#{context}[:ldaps_status]")
        Hearth::Validator.validate!(input[:ldaps_status_reason], ::String, context: "#{context}[:ldaps_status_reason]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class LDAPSSettingsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LDAPSSettingInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CertificatesInfo.validate!(input[:certificates_info], context: "#{context}[:certificates_info]") unless input[:certificates_info].nil?
      end
    end

    class ListIpRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIpRoutesInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListIpRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIpRoutesOutput, context: context)
        IpRoutesInfo.validate!(input[:ip_routes_info], context: "#{context}[:ip_routes_info]") unless input[:ip_routes_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLogSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListLogSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLogSubscriptionsOutput, context: context)
        LogSubscriptions.validate!(input[:log_subscriptions], context: "#{context}[:log_subscriptions]") unless input[:log_subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemaExtensionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaExtensionsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListSchemaExtensionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaExtensionsOutput, context: context)
        SchemaExtensionsInfo.validate!(input[:schema_extensions_info], context: "#{context}[:schema_extensions_info]") unless input[:schema_extensions_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogSubscription, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:subscription_created_date_time], ::Time, context: "#{context}[:subscription_created_date_time]")
      end
    end

    class LogSubscriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LogSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoAvailableCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAvailableCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class OrganizationsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class OwnerDirectoryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OwnerDirectoryDescription, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        DnsIpAddrs.validate!(input[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless input[:dns_ip_addrs].nil?
        DirectoryVpcSettingsDescription.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
        RadiusSettings.validate!(input[:radius_settings], context: "#{context}[:radius_settings]") unless input[:radius_settings].nil?
        Hearth::Validator.validate!(input[:radius_status], ::String, context: "#{context}[:radius_status]")
      end
    end

    class RadiusSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RadiusSettings, context: context)
        Servers.validate!(input[:radius_servers], context: "#{context}[:radius_servers]") unless input[:radius_servers].nil?
        Hearth::Validator.validate!(input[:radius_port], ::Integer, context: "#{context}[:radius_port]")
        Hearth::Validator.validate!(input[:radius_timeout], ::Integer, context: "#{context}[:radius_timeout]")
        Hearth::Validator.validate!(input[:radius_retries], ::Integer, context: "#{context}[:radius_retries]")
        Hearth::Validator.validate!(input[:shared_secret], ::String, context: "#{context}[:shared_secret]")
        Hearth::Validator.validate!(input[:authentication_protocol], ::String, context: "#{context}[:authentication_protocol]")
        Hearth::Validator.validate!(input[:display_label], ::String, context: "#{context}[:display_label]")
        Hearth::Validator.validate!(input[:use_same_username], ::TrueClass, ::FalseClass, context: "#{context}[:use_same_username]")
      end
    end

    class RegionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionDescription, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:region_type], ::String, context: "#{context}[:region_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DirectoryVpcSettings.validate!(input[:vpc_settings], context: "#{context}[:vpc_settings]") unless input[:vpc_settings].nil?
        Hearth::Validator.validate!(input[:desired_number_of_domain_controllers], ::Integer, context: "#{context}[:desired_number_of_domain_controllers]")
        Hearth::Validator.validate!(input[:launch_time], ::Time, context: "#{context}[:launch_time]")
        Hearth::Validator.validate!(input[:status_last_updated_date_time], ::Time, context: "#{context}[:status_last_updated_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class RegionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class RegionsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegionsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionsInfo, context: context)
        Hearth::Validator.validate!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
        AdditionalRegions.validate!(input[:additional_regions], context: "#{context}[:additional_regions]") unless input[:additional_regions].nil?
      end
    end

    class RegisterCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:certificate_data], ::String, context: "#{context}[:certificate_data]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ClientCertAuthSettings.validate!(input[:client_cert_auth_settings], context: "#{context}[:client_cert_auth_settings]") unless input[:client_cert_auth_settings].nil?
      end
    end

    class RegisterCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class RegisterEventTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterEventTopicInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
      end
    end

    class RegisterEventTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterEventTopicOutput, context: context)
      end
    end

    class RejectSharedDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectSharedDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
      end
    end

    class RejectSharedDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectSharedDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
      end
    end

    class RemoteDomainNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveIpRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveIpRoutesInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        CidrIps.validate!(input[:cidr_ips], context: "#{context}[:cidr_ips]") unless input[:cidr_ips].nil?
      end
    end

    class RemoveIpRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveIpRoutesOutput, context: context)
      end
    end

    class RemoveRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRegionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class RemoveRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRegionOutput, context: context)
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
      end
    end

    class ResetUserPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetUserPasswordInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:new_password], ::String, context: "#{context}[:new_password]")
      end
    end

    class ResetUserPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetUserPasswordOutput, context: context)
      end
    end

    class RestoreFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreFromSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class RestoreFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreFromSnapshotOutput, context: context)
      end
    end

    class SchemaExtensionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaExtensionInfo, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:schema_extension_id], ::String, context: "#{context}[:schema_extension_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema_extension_status], ::String, context: "#{context}[:schema_extension_status]")
        Hearth::Validator.validate!(input[:schema_extension_status_reason], ::String, context: "#{context}[:schema_extension_status_reason]")
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class SchemaExtensionsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaExtensionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Servers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ShareDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:share_notes], ::String, context: "#{context}[:share_notes]")
        ShareTarget.validate!(input[:share_target], context: "#{context}[:share_target]") unless input[:share_target].nil?
        Hearth::Validator.validate!(input[:share_method], ::String, context: "#{context}[:share_method]")
      end
    end

    class ShareDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
      end
    end

    class ShareLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ShareTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareTarget, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SharedDirectories
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SharedDirectory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SharedDirectory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharedDirectory, context: context)
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:owner_directory_id], ::String, context: "#{context}[:owner_directory_id]")
        Hearth::Validator.validate!(input[:share_method], ::String, context: "#{context}[:share_method]")
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
        Hearth::Validator.validate!(input[:share_notes], ::String, context: "#{context}[:share_notes]")
        Hearth::Validator.validate!(input[:created_date_time], ::Time, context: "#{context}[:created_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class SnapshotIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SnapshotLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotLimits, context: context)
        Hearth::Validator.validate!(input[:manual_snapshots_limit], ::Integer, context: "#{context}[:manual_snapshots_limit]")
        Hearth::Validator.validate!(input[:manual_snapshots_current_count], ::Integer, context: "#{context}[:manual_snapshots_current_count]")
        Hearth::Validator.validate!(input[:manual_snapshots_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:manual_snapshots_limit_reached]")
      end
    end

    class Snapshots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartSchemaExtensionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSchemaExtensionInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:create_snapshot_before_schema_extension], ::TrueClass, ::FalseClass, context: "#{context}[:create_snapshot_before_schema_extension]")
        Hearth::Validator.validate!(input[:ldif_content], ::String, context: "#{context}[:ldif_content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StartSchemaExtensionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSchemaExtensionOutput, context: context)
        Hearth::Validator.validate!(input[:schema_extension_id], ::String, context: "#{context}[:schema_extension_id]")
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
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

    class TopicNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Trust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trust, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
        Hearth::Validator.validate!(input[:trust_type], ::String, context: "#{context}[:trust_type]")
        Hearth::Validator.validate!(input[:trust_direction], ::String, context: "#{context}[:trust_direction]")
        Hearth::Validator.validate!(input[:trust_state], ::String, context: "#{context}[:trust_state]")
        Hearth::Validator.validate!(input[:created_date_time], ::Time, context: "#{context}[:created_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:state_last_updated_date_time], ::Time, context: "#{context}[:state_last_updated_date_time]")
        Hearth::Validator.validate!(input[:trust_state_reason], ::String, context: "#{context}[:trust_state_reason]")
        Hearth::Validator.validate!(input[:selective_auth], ::String, context: "#{context}[:selective_auth]")
      end
    end

    class TrustIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Trusts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Trust.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnshareDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnshareDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        UnshareTarget.validate!(input[:unshare_target], context: "#{context}[:unshare_target]") unless input[:unshare_target].nil?
      end
    end

    class UnshareDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnshareDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:shared_directory_id], ::String, context: "#{context}[:shared_directory_id]")
      end
    end

    class UnshareTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnshareTarget, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateConditionalForwarderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConditionalForwarderInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:remote_domain_name], ::String, context: "#{context}[:remote_domain_name]")
        DnsIpAddrs.validate!(input[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless input[:dns_ip_addrs].nil?
      end
    end

    class UpdateConditionalForwarderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConditionalForwarderOutput, context: context)
      end
    end

    class UpdateNumberOfDomainControllersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNumberOfDomainControllersInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:desired_number], ::Integer, context: "#{context}[:desired_number]")
      end
    end

    class UpdateNumberOfDomainControllersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNumberOfDomainControllersOutput, context: context)
      end
    end

    class UpdateRadiusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRadiusInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        RadiusSettings.validate!(input[:radius_settings], context: "#{context}[:radius_settings]") unless input[:radius_settings].nil?
      end
    end

    class UpdateRadiusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRadiusOutput, context: context)
      end
    end

    class UpdateTrustInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrustInput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
        Hearth::Validator.validate!(input[:selective_auth], ::String, context: "#{context}[:selective_auth]")
      end
    end

    class UpdateTrustOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrustOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
      end
    end

    class UserDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class VerifyTrustInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyTrustInput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
      end
    end

    class VerifyTrustOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyTrustOutput, context: context)
        Hearth::Validator.validate!(input[:trust_id], ::String, context: "#{context}[:trust_id]")
      end
    end

  end
end
