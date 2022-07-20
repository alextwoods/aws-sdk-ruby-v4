# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectoryService
  module Params

    module AcceptSharedDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptSharedDirectoryInput, context: context)
        type = Types::AcceptSharedDirectoryInput.new
        type.shared_directory_id = params[:shared_directory_id]
        type
      end
    end

    module AcceptSharedDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptSharedDirectoryOutput, context: context)
        type = Types::AcceptSharedDirectoryOutput.new
        type.shared_directory = SharedDirectory.build(params[:shared_directory], context: "#{context}[:shared_directory]") unless params[:shared_directory].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module AddIpRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddIpRoutesInput, context: context)
        type = Types::AddIpRoutesInput.new
        type.directory_id = params[:directory_id]
        type.ip_routes = IpRoutes.build(params[:ip_routes], context: "#{context}[:ip_routes]") unless params[:ip_routes].nil?
        type.update_security_group_for_directory_controllers = params[:update_security_group_for_directory_controllers]
        type
      end
    end

    module AddIpRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddIpRoutesOutput, context: context)
        type = Types::AddIpRoutesOutput.new
        type
      end
    end

    module AddRegionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRegionInput, context: context)
        type = Types::AddRegionInput.new
        type.directory_id = params[:directory_id]
        type.region_name = params[:region_name]
        type.vpc_settings = DirectoryVpcSettings.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type
      end
    end

    module AddRegionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRegionOutput, context: context)
        type = Types::AddRegionOutput.new
        type
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_id = params[:resource_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type
      end
    end

    module AdditionalRegions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthenticationFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationFailedException, context: context)
        type = Types::AuthenticationFailedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CancelSchemaExtensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSchemaExtensionInput, context: context)
        type = Types::CancelSchemaExtensionInput.new
        type.directory_id = params[:directory_id]
        type.schema_extension_id = params[:schema_extension_id]
        type
      end
    end

    module CancelSchemaExtensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSchemaExtensionOutput, context: context)
        type = Types::CancelSchemaExtensionOutput.new
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_id = params[:certificate_id]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.common_name = params[:common_name]
        type.registered_date_time = params[:registered_date_time]
        type.expiry_date_time = params[:expiry_date_time]
        type.type = params[:type]
        type.client_cert_auth_settings = ClientCertAuthSettings.build(params[:client_cert_auth_settings], context: "#{context}[:client_cert_auth_settings]") unless params[:client_cert_auth_settings].nil?
        type
      end
    end

    module CertificateAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateAlreadyExistsException, context: context)
        type = Types::CertificateAlreadyExistsException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CertificateDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateDoesNotExistException, context: context)
        type = Types::CertificateDoesNotExistException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CertificateInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateInUseException, context: context)
        type = Types::CertificateInUseException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CertificateInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateInfo, context: context)
        type = Types::CertificateInfo.new
        type.certificate_id = params[:certificate_id]
        type.common_name = params[:common_name]
        type.state = params[:state]
        type.expiry_date_time = params[:expiry_date_time]
        type.type = params[:type]
        type
      end
    end

    module CertificateLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateLimitExceededException, context: context)
        type = Types::CertificateLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CertificatesInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CidrIps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClientAuthenticationSettingInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientAuthenticationSettingInfo, context: context)
        type = Types::ClientAuthenticationSettingInfo.new
        type.type = params[:type]
        type.status = params[:status]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module ClientAuthenticationSettingsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClientAuthenticationSettingInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClientCertAuthSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientCertAuthSettings, context: context)
        type = Types::ClientCertAuthSettings.new
        type.ocsp_url = params[:ocsp_url]
        type
      end
    end

    module ClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientException, context: context)
        type = Types::ClientException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module Computer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Computer, context: context)
        type = Types::Computer.new
        type.computer_id = params[:computer_id]
        type.computer_name = params[:computer_name]
        type.computer_attributes = Attributes.build(params[:computer_attributes], context: "#{context}[:computer_attributes]") unless params[:computer_attributes].nil?
        type
      end
    end

    module ConditionalForwarder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionalForwarder, context: context)
        type = Types::ConditionalForwarder.new
        type.remote_domain_name = params[:remote_domain_name]
        type.dns_ip_addrs = DnsIpAddrs.build(params[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless params[:dns_ip_addrs].nil?
        type.replication_scope = params[:replication_scope]
        type
      end
    end

    module ConditionalForwarders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConditionalForwarder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectDirectoryInput, context: context)
        type = Types::ConnectDirectoryInput.new
        type.name = params[:name]
        type.short_name = params[:short_name]
        type.password = params[:password]
        type.description = params[:description]
        type.size = params[:size]
        type.connect_settings = DirectoryConnectSettings.build(params[:connect_settings], context: "#{context}[:connect_settings]") unless params[:connect_settings].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConnectDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectDirectoryOutput, context: context)
        type = Types::ConnectDirectoryOutput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.directory_id = params[:directory_id]
        type.alias = params[:alias]
        type
      end
    end

    module CreateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        type.directory_id = params[:directory_id]
        type.alias = params[:alias]
        type
      end
    end

    module CreateComputerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComputerInput, context: context)
        type = Types::CreateComputerInput.new
        type.directory_id = params[:directory_id]
        type.computer_name = params[:computer_name]
        type.password = params[:password]
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type.computer_attributes = Attributes.build(params[:computer_attributes], context: "#{context}[:computer_attributes]") unless params[:computer_attributes].nil?
        type
      end
    end

    module CreateComputerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComputerOutput, context: context)
        type = Types::CreateComputerOutput.new
        type.computer = Computer.build(params[:computer], context: "#{context}[:computer]") unless params[:computer].nil?
        type
      end
    end

    module CreateConditionalForwarderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConditionalForwarderInput, context: context)
        type = Types::CreateConditionalForwarderInput.new
        type.directory_id = params[:directory_id]
        type.remote_domain_name = params[:remote_domain_name]
        type.dns_ip_addrs = DnsIpAddrs.build(params[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless params[:dns_ip_addrs].nil?
        type
      end
    end

    module CreateConditionalForwarderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConditionalForwarderOutput, context: context)
        type = Types::CreateConditionalForwarderOutput.new
        type
      end
    end

    module CreateDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryInput, context: context)
        type = Types::CreateDirectoryInput.new
        type.name = params[:name]
        type.short_name = params[:short_name]
        type.password = params[:password]
        type.description = params[:description]
        type.size = params[:size]
        type.vpc_settings = DirectoryVpcSettings.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryOutput, context: context)
        type = Types::CreateDirectoryOutput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module CreateLogSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogSubscriptionInput, context: context)
        type = Types::CreateLogSubscriptionInput.new
        type.directory_id = params[:directory_id]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module CreateLogSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLogSubscriptionOutput, context: context)
        type = Types::CreateLogSubscriptionOutput.new
        type
      end
    end

    module CreateMicrosoftADInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMicrosoftADInput, context: context)
        type = Types::CreateMicrosoftADInput.new
        type.name = params[:name]
        type.short_name = params[:short_name]
        type.password = params[:password]
        type.description = params[:description]
        type.vpc_settings = DirectoryVpcSettings.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type.edition = params[:edition]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMicrosoftADOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMicrosoftADOutput, context: context)
        type = Types::CreateMicrosoftADOutput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.directory_id = params[:directory_id]
        type.name = params[:name]
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module CreateTrustInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrustInput, context: context)
        type = Types::CreateTrustInput.new
        type.directory_id = params[:directory_id]
        type.remote_domain_name = params[:remote_domain_name]
        type.trust_password = params[:trust_password]
        type.trust_direction = params[:trust_direction]
        type.trust_type = params[:trust_type]
        type.conditional_forwarder_ip_addrs = DnsIpAddrs.build(params[:conditional_forwarder_ip_addrs], context: "#{context}[:conditional_forwarder_ip_addrs]") unless params[:conditional_forwarder_ip_addrs].nil?
        type.selective_auth = params[:selective_auth]
        type
      end
    end

    module CreateTrustOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrustOutput, context: context)
        type = Types::CreateTrustOutput.new
        type.trust_id = params[:trust_id]
        type
      end
    end

    module DeleteConditionalForwarderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConditionalForwarderInput, context: context)
        type = Types::DeleteConditionalForwarderInput.new
        type.directory_id = params[:directory_id]
        type.remote_domain_name = params[:remote_domain_name]
        type
      end
    end

    module DeleteConditionalForwarderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConditionalForwarderOutput, context: context)
        type = Types::DeleteConditionalForwarderOutput.new
        type
      end
    end

    module DeleteDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryInput, context: context)
        type = Types::DeleteDirectoryInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DeleteDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryOutput, context: context)
        type = Types::DeleteDirectoryOutput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DeleteLogSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogSubscriptionInput, context: context)
        type = Types::DeleteLogSubscriptionInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DeleteLogSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLogSubscriptionOutput, context: context)
        type = Types::DeleteLogSubscriptionOutput.new
        type
      end
    end

    module DeleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotInput, context: context)
        type = Types::DeleteSnapshotInput.new
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module DeleteSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotOutput, context: context)
        type = Types::DeleteSnapshotOutput.new
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module DeleteTrustInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrustInput, context: context)
        type = Types::DeleteTrustInput.new
        type.trust_id = params[:trust_id]
        type.delete_associated_conditional_forwarder = params[:delete_associated_conditional_forwarder]
        type
      end
    end

    module DeleteTrustOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrustOutput, context: context)
        type = Types::DeleteTrustOutput.new
        type.trust_id = params[:trust_id]
        type
      end
    end

    module DeregisterCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterCertificateInput, context: context)
        type = Types::DeregisterCertificateInput.new
        type.directory_id = params[:directory_id]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DeregisterCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterCertificateOutput, context: context)
        type = Types::DeregisterCertificateOutput.new
        type
      end
    end

    module DeregisterEventTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterEventTopicInput, context: context)
        type = Types::DeregisterEventTopicInput.new
        type.directory_id = params[:directory_id]
        type.topic_name = params[:topic_name]
        type
      end
    end

    module DeregisterEventTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterEventTopicOutput, context: context)
        type = Types::DeregisterEventTopicOutput.new
        type
      end
    end

    module DescribeCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateInput, context: context)
        type = Types::DescribeCertificateInput.new
        type.directory_id = params[:directory_id]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DescribeCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateOutput, context: context)
        type = Types::DescribeCertificateOutput.new
        type.certificate = Certificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module DescribeClientAuthenticationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientAuthenticationSettingsInput, context: context)
        type = Types::DescribeClientAuthenticationSettingsInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeClientAuthenticationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientAuthenticationSettingsOutput, context: context)
        type = Types::DescribeClientAuthenticationSettingsOutput.new
        type.client_authentication_settings_info = ClientAuthenticationSettingsInfo.build(params[:client_authentication_settings_info], context: "#{context}[:client_authentication_settings_info]") unless params[:client_authentication_settings_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConditionalForwardersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConditionalForwardersInput, context: context)
        type = Types::DescribeConditionalForwardersInput.new
        type.directory_id = params[:directory_id]
        type.remote_domain_names = RemoteDomainNames.build(params[:remote_domain_names], context: "#{context}[:remote_domain_names]") unless params[:remote_domain_names].nil?
        type
      end
    end

    module DescribeConditionalForwardersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConditionalForwardersOutput, context: context)
        type = Types::DescribeConditionalForwardersOutput.new
        type.conditional_forwarders = ConditionalForwarders.build(params[:conditional_forwarders], context: "#{context}[:conditional_forwarders]") unless params[:conditional_forwarders].nil?
        type
      end
    end

    module DescribeDirectoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectoriesInput, context: context)
        type = Types::DescribeDirectoriesInput.new
        type.directory_ids = DirectoryIds.build(params[:directory_ids], context: "#{context}[:directory_ids]") unless params[:directory_ids].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeDirectoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectoriesOutput, context: context)
        type = Types::DescribeDirectoriesOutput.new
        type.directory_descriptions = DirectoryDescriptions.build(params[:directory_descriptions], context: "#{context}[:directory_descriptions]") unless params[:directory_descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDomainControllersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainControllersInput, context: context)
        type = Types::DescribeDomainControllersInput.new
        type.directory_id = params[:directory_id]
        type.domain_controller_ids = DomainControllerIds.build(params[:domain_controller_ids], context: "#{context}[:domain_controller_ids]") unless params[:domain_controller_ids].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeDomainControllersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainControllersOutput, context: context)
        type = Types::DescribeDomainControllersOutput.new
        type.domain_controllers = DomainControllers.build(params[:domain_controllers], context: "#{context}[:domain_controllers]") unless params[:domain_controllers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventTopicsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTopicsInput, context: context)
        type = Types::DescribeEventTopicsInput.new
        type.directory_id = params[:directory_id]
        type.topic_names = TopicNames.build(params[:topic_names], context: "#{context}[:topic_names]") unless params[:topic_names].nil?
        type
      end
    end

    module DescribeEventTopicsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTopicsOutput, context: context)
        type = Types::DescribeEventTopicsOutput.new
        type.event_topics = EventTopics.build(params[:event_topics], context: "#{context}[:event_topics]") unless params[:event_topics].nil?
        type
      end
    end

    module DescribeLDAPSSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLDAPSSettingsInput, context: context)
        type = Types::DescribeLDAPSSettingsInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeLDAPSSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLDAPSSettingsOutput, context: context)
        type = Types::DescribeLDAPSSettingsOutput.new
        type.ldaps_settings_info = LDAPSSettingsInfo.build(params[:ldaps_settings_info], context: "#{context}[:ldaps_settings_info]") unless params[:ldaps_settings_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRegionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegionsInput, context: context)
        type = Types::DescribeRegionsInput.new
        type.directory_id = params[:directory_id]
        type.region_name = params[:region_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRegionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegionsOutput, context: context)
        type = Types::DescribeRegionsOutput.new
        type.regions_description = RegionsDescription.build(params[:regions_description], context: "#{context}[:regions_description]") unless params[:regions_description].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSharedDirectoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSharedDirectoriesInput, context: context)
        type = Types::DescribeSharedDirectoriesInput.new
        type.owner_directory_id = params[:owner_directory_id]
        type.shared_directory_ids = DirectoryIds.build(params[:shared_directory_ids], context: "#{context}[:shared_directory_ids]") unless params[:shared_directory_ids].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeSharedDirectoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSharedDirectoriesOutput, context: context)
        type = Types::DescribeSharedDirectoriesOutput.new
        type.shared_directories = SharedDirectories.build(params[:shared_directories], context: "#{context}[:shared_directories]") unless params[:shared_directories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsInput, context: context)
        type = Types::DescribeSnapshotsInput.new
        type.directory_id = params[:directory_id]
        type.snapshot_ids = SnapshotIds.build(params[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless params[:snapshot_ids].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsOutput, context: context)
        type = Types::DescribeSnapshotsOutput.new
        type.snapshots = Snapshots.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTrustsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustsInput, context: context)
        type = Types::DescribeTrustsInput.new
        type.directory_id = params[:directory_id]
        type.trust_ids = TrustIds.build(params[:trust_ids], context: "#{context}[:trust_ids]") unless params[:trust_ids].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeTrustsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustsOutput, context: context)
        type = Types::DescribeTrustsOutput.new
        type.trusts = Trusts.build(params[:trusts], context: "#{context}[:trusts]") unless params[:trusts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DirectoryAlreadyInRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryAlreadyInRegionException, context: context)
        type = Types::DirectoryAlreadyInRegionException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryAlreadySharedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryAlreadySharedException, context: context)
        type = Types::DirectoryAlreadySharedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryConnectSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryConnectSettings, context: context)
        type = Types::DirectoryConnectSettings.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.customer_dns_ips = DnsIpAddrs.build(params[:customer_dns_ips], context: "#{context}[:customer_dns_ips]") unless params[:customer_dns_ips].nil?
        type.customer_user_name = params[:customer_user_name]
        type
      end
    end

    module DirectoryConnectSettingsDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryConnectSettingsDescription, context: context)
        type = Types::DirectoryConnectSettingsDescription.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.customer_user_name = params[:customer_user_name]
        type.security_group_id = params[:security_group_id]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.connect_ips = IpAddrs.build(params[:connect_ips], context: "#{context}[:connect_ips]") unless params[:connect_ips].nil?
        type
      end
    end

    module DirectoryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryDescription, context: context)
        type = Types::DirectoryDescription.new
        type.directory_id = params[:directory_id]
        type.name = params[:name]
        type.short_name = params[:short_name]
        type.size = params[:size]
        type.edition = params[:edition]
        type.alias = params[:alias]
        type.access_url = params[:access_url]
        type.description = params[:description]
        type.dns_ip_addrs = DnsIpAddrs.build(params[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless params[:dns_ip_addrs].nil?
        type.stage = params[:stage]
        type.share_status = params[:share_status]
        type.share_method = params[:share_method]
        type.share_notes = params[:share_notes]
        type.launch_time = params[:launch_time]
        type.stage_last_updated_date_time = params[:stage_last_updated_date_time]
        type.type = params[:type]
        type.vpc_settings = DirectoryVpcSettingsDescription.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type.connect_settings = DirectoryConnectSettingsDescription.build(params[:connect_settings], context: "#{context}[:connect_settings]") unless params[:connect_settings].nil?
        type.radius_settings = RadiusSettings.build(params[:radius_settings], context: "#{context}[:radius_settings]") unless params[:radius_settings].nil?
        type.radius_status = params[:radius_status]
        type.stage_reason = params[:stage_reason]
        type.sso_enabled = params[:sso_enabled]
        type.desired_number_of_domain_controllers = params[:desired_number_of_domain_controllers]
        type.owner_directory_description = OwnerDirectoryDescription.build(params[:owner_directory_description], context: "#{context}[:owner_directory_description]") unless params[:owner_directory_description].nil?
        type.regions_info = RegionsInfo.build(params[:regions_info], context: "#{context}[:regions_info]") unless params[:regions_info].nil?
        type
      end
    end

    module DirectoryDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectoryDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectoryDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryDoesNotExistException, context: context)
        type = Types::DirectoryDoesNotExistException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DirectoryLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryLimitExceededException, context: context)
        type = Types::DirectoryLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryLimits, context: context)
        type = Types::DirectoryLimits.new
        type.cloud_only_directories_limit = params[:cloud_only_directories_limit]
        type.cloud_only_directories_current_count = params[:cloud_only_directories_current_count]
        type.cloud_only_directories_limit_reached = params[:cloud_only_directories_limit_reached]
        type.cloud_only_microsoft_ad_limit = params[:cloud_only_microsoft_ad_limit]
        type.cloud_only_microsoft_ad_current_count = params[:cloud_only_microsoft_ad_current_count]
        type.cloud_only_microsoft_ad_limit_reached = params[:cloud_only_microsoft_ad_limit_reached]
        type.connected_directories_limit = params[:connected_directories_limit]
        type.connected_directories_current_count = params[:connected_directories_current_count]
        type.connected_directories_limit_reached = params[:connected_directories_limit_reached]
        type
      end
    end

    module DirectoryNotSharedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryNotSharedException, context: context)
        type = Types::DirectoryNotSharedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryUnavailableException, context: context)
        type = Types::DirectoryUnavailableException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DirectoryVpcSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryVpcSettings, context: context)
        type = Types::DirectoryVpcSettings.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module DirectoryVpcSettingsDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryVpcSettingsDescription, context: context)
        type = Types::DirectoryVpcSettingsDescription.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_id = params[:security_group_id]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module DisableClientAuthenticationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableClientAuthenticationInput, context: context)
        type = Types::DisableClientAuthenticationInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type
      end
    end

    module DisableClientAuthenticationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableClientAuthenticationOutput, context: context)
        type = Types::DisableClientAuthenticationOutput.new
        type
      end
    end

    module DisableLDAPSInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableLDAPSInput, context: context)
        type = Types::DisableLDAPSInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type
      end
    end

    module DisableLDAPSOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableLDAPSOutput, context: context)
        type = Types::DisableLDAPSOutput.new
        type
      end
    end

    module DisableRadiusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableRadiusInput, context: context)
        type = Types::DisableRadiusInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DisableRadiusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableRadiusOutput, context: context)
        type = Types::DisableRadiusOutput.new
        type
      end
    end

    module DisableSsoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSsoInput, context: context)
        type = Types::DisableSsoInput.new
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.password = params[:password]
        type
      end
    end

    module DisableSsoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSsoOutput, context: context)
        type = Types::DisableSsoOutput.new
        type
      end
    end

    module DnsIpAddrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainController
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainController, context: context)
        type = Types::DomainController.new
        type.directory_id = params[:directory_id]
        type.domain_controller_id = params[:domain_controller_id]
        type.dns_ip_addr = params[:dns_ip_addr]
        type.vpc_id = params[:vpc_id]
        type.subnet_id = params[:subnet_id]
        type.availability_zone = params[:availability_zone]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.launch_time = params[:launch_time]
        type.status_last_updated_date_time = params[:status_last_updated_date_time]
        type
      end
    end

    module DomainControllerIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainControllerLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainControllerLimitExceededException, context: context)
        type = Types::DomainControllerLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DomainControllers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainController.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableClientAuthenticationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableClientAuthenticationInput, context: context)
        type = Types::EnableClientAuthenticationInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type
      end
    end

    module EnableClientAuthenticationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableClientAuthenticationOutput, context: context)
        type = Types::EnableClientAuthenticationOutput.new
        type
      end
    end

    module EnableLDAPSInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableLDAPSInput, context: context)
        type = Types::EnableLDAPSInput.new
        type.directory_id = params[:directory_id]
        type.type = params[:type]
        type
      end
    end

    module EnableLDAPSOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableLDAPSOutput, context: context)
        type = Types::EnableLDAPSOutput.new
        type
      end
    end

    module EnableRadiusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableRadiusInput, context: context)
        type = Types::EnableRadiusInput.new
        type.directory_id = params[:directory_id]
        type.radius_settings = RadiusSettings.build(params[:radius_settings], context: "#{context}[:radius_settings]") unless params[:radius_settings].nil?
        type
      end
    end

    module EnableRadiusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableRadiusOutput, context: context)
        type = Types::EnableRadiusOutput.new
        type
      end
    end

    module EnableSsoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSsoInput, context: context)
        type = Types::EnableSsoInput.new
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.password = params[:password]
        type
      end
    end

    module EnableSsoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSsoOutput, context: context)
        type = Types::EnableSsoOutput.new
        type
      end
    end

    module EntityAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityAlreadyExistsException, context: context)
        type = Types::EntityAlreadyExistsException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module EntityDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityDoesNotExistException, context: context)
        type = Types::EntityDoesNotExistException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module EventTopic
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTopic, context: context)
        type = Types::EventTopic.new
        type.directory_id = params[:directory_id]
        type.topic_name = params[:topic_name]
        type.topic_arn = params[:topic_arn]
        type.created_date_time = params[:created_date_time]
        type.status = params[:status]
        type
      end
    end

    module EventTopics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventTopic.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDirectoryLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDirectoryLimitsInput, context: context)
        type = Types::GetDirectoryLimitsInput.new
        type
      end
    end

    module GetDirectoryLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDirectoryLimitsOutput, context: context)
        type = Types::GetDirectoryLimitsOutput.new
        type.directory_limits = DirectoryLimits.build(params[:directory_limits], context: "#{context}[:directory_limits]") unless params[:directory_limits].nil?
        type
      end
    end

    module GetSnapshotLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotLimitsInput, context: context)
        type = Types::GetSnapshotLimitsInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module GetSnapshotLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotLimitsOutput, context: context)
        type = Types::GetSnapshotLimitsOutput.new
        type.snapshot_limits = SnapshotLimits.build(params[:snapshot_limits], context: "#{context}[:snapshot_limits]") unless params[:snapshot_limits].nil?
        type
      end
    end

    module InsufficientPermissionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientPermissionsException, context: context)
        type = Types::InsufficientPermissionsException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCertificateException, context: context)
        type = Types::InvalidCertificateException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidClientAuthStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientAuthStatusException, context: context)
        type = Types::InvalidClientAuthStatusException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidLDAPSStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLDAPSStatusException, context: context)
        type = Types::InvalidLDAPSStatusException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidPasswordException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPasswordException, context: context)
        type = Types::InvalidPasswordException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidTargetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetException, context: context)
        type = Types::InvalidTargetException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module IpAddrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IpRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpRoute, context: context)
        type = Types::IpRoute.new
        type.cidr_ip = params[:cidr_ip]
        type.description = params[:description]
        type
      end
    end

    module IpRouteInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpRouteInfo, context: context)
        type = Types::IpRouteInfo.new
        type.directory_id = params[:directory_id]
        type.cidr_ip = params[:cidr_ip]
        type.ip_route_status_msg = params[:ip_route_status_msg]
        type.added_date_time = params[:added_date_time]
        type.ip_route_status_reason = params[:ip_route_status_reason]
        type.description = params[:description]
        type
      end
    end

    module IpRouteLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpRouteLimitExceededException, context: context)
        type = Types::IpRouteLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module IpRoutes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpRoute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IpRoutesInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpRouteInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LDAPSSettingInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LDAPSSettingInfo, context: context)
        type = Types::LDAPSSettingInfo.new
        type.ldaps_status = params[:ldaps_status]
        type.ldaps_status_reason = params[:ldaps_status_reason]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module LDAPSSettingsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LDAPSSettingInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesInput, context: context)
        type = Types::ListCertificatesInput.new
        type.directory_id = params[:directory_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesOutput, context: context)
        type = Types::ListCertificatesOutput.new
        type.next_token = params[:next_token]
        type.certificates_info = CertificatesInfo.build(params[:certificates_info], context: "#{context}[:certificates_info]") unless params[:certificates_info].nil?
        type
      end
    end

    module ListIpRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIpRoutesInput, context: context)
        type = Types::ListIpRoutesInput.new
        type.directory_id = params[:directory_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListIpRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIpRoutesOutput, context: context)
        type = Types::ListIpRoutesOutput.new
        type.ip_routes_info = IpRoutesInfo.build(params[:ip_routes_info], context: "#{context}[:ip_routes_info]") unless params[:ip_routes_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLogSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogSubscriptionsInput, context: context)
        type = Types::ListLogSubscriptionsInput.new
        type.directory_id = params[:directory_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListLogSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLogSubscriptionsOutput, context: context)
        type = Types::ListLogSubscriptionsOutput.new
        type.log_subscriptions = LogSubscriptions.build(params[:log_subscriptions], context: "#{context}[:log_subscriptions]") unless params[:log_subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemaExtensionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaExtensionsInput, context: context)
        type = Types::ListSchemaExtensionsInput.new
        type.directory_id = params[:directory_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListSchemaExtensionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaExtensionsOutput, context: context)
        type = Types::ListSchemaExtensionsOutput.new
        type.schema_extensions_info = SchemaExtensionsInfo.build(params[:schema_extensions_info], context: "#{context}[:schema_extensions_info]") unless params[:schema_extensions_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_id = params[:resource_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LogSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogSubscription, context: context)
        type = Types::LogSubscription.new
        type.directory_id = params[:directory_id]
        type.log_group_name = params[:log_group_name]
        type.subscription_created_date_time = params[:subscription_created_date_time]
        type
      end
    end

    module LogSubscriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoAvailableCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAvailableCertificateException, context: context)
        type = Types::NoAvailableCertificateException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module OrganizationsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationsException, context: context)
        type = Types::OrganizationsException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module OwnerDirectoryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OwnerDirectoryDescription, context: context)
        type = Types::OwnerDirectoryDescription.new
        type.directory_id = params[:directory_id]
        type.account_id = params[:account_id]
        type.dns_ip_addrs = DnsIpAddrs.build(params[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless params[:dns_ip_addrs].nil?
        type.vpc_settings = DirectoryVpcSettingsDescription.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type.radius_settings = RadiusSettings.build(params[:radius_settings], context: "#{context}[:radius_settings]") unless params[:radius_settings].nil?
        type.radius_status = params[:radius_status]
        type
      end
    end

    module RadiusSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RadiusSettings, context: context)
        type = Types::RadiusSettings.new
        type.radius_servers = Servers.build(params[:radius_servers], context: "#{context}[:radius_servers]") unless params[:radius_servers].nil?
        type.radius_port = params[:radius_port]
        type.radius_timeout = params[:radius_timeout]
        type.radius_retries = params[:radius_retries]
        type.shared_secret = params[:shared_secret]
        type.authentication_protocol = params[:authentication_protocol]
        type.display_label = params[:display_label]
        type.use_same_username = params[:use_same_username]
        type
      end
    end

    module RegionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionDescription, context: context)
        type = Types::RegionDescription.new
        type.directory_id = params[:directory_id]
        type.region_name = params[:region_name]
        type.region_type = params[:region_type]
        type.status = params[:status]
        type.vpc_settings = DirectoryVpcSettings.build(params[:vpc_settings], context: "#{context}[:vpc_settings]") unless params[:vpc_settings].nil?
        type.desired_number_of_domain_controllers = params[:desired_number_of_domain_controllers]
        type.launch_time = params[:launch_time]
        type.status_last_updated_date_time = params[:status_last_updated_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module RegionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionLimitExceededException, context: context)
        type = Types::RegionLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module RegionsDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegionsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionsInfo, context: context)
        type = Types::RegionsInfo.new
        type.primary_region = params[:primary_region]
        type.additional_regions = AdditionalRegions.build(params[:additional_regions], context: "#{context}[:additional_regions]") unless params[:additional_regions].nil?
        type
      end
    end

    module RegisterCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateInput, context: context)
        type = Types::RegisterCertificateInput.new
        type.directory_id = params[:directory_id]
        type.certificate_data = params[:certificate_data]
        type.type = params[:type]
        type.client_cert_auth_settings = ClientCertAuthSettings.build(params[:client_cert_auth_settings], context: "#{context}[:client_cert_auth_settings]") unless params[:client_cert_auth_settings].nil?
        type
      end
    end

    module RegisterCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCertificateOutput, context: context)
        type = Types::RegisterCertificateOutput.new
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module RegisterEventTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterEventTopicInput, context: context)
        type = Types::RegisterEventTopicInput.new
        type.directory_id = params[:directory_id]
        type.topic_name = params[:topic_name]
        type
      end
    end

    module RegisterEventTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterEventTopicOutput, context: context)
        type = Types::RegisterEventTopicOutput.new
        type
      end
    end

    module RejectSharedDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectSharedDirectoryInput, context: context)
        type = Types::RejectSharedDirectoryInput.new
        type.shared_directory_id = params[:shared_directory_id]
        type
      end
    end

    module RejectSharedDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectSharedDirectoryOutput, context: context)
        type = Types::RejectSharedDirectoryOutput.new
        type.shared_directory_id = params[:shared_directory_id]
        type
      end
    end

    module RemoteDomainNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RemoveIpRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveIpRoutesInput, context: context)
        type = Types::RemoveIpRoutesInput.new
        type.directory_id = params[:directory_id]
        type.cidr_ips = CidrIps.build(params[:cidr_ips], context: "#{context}[:cidr_ips]") unless params[:cidr_ips].nil?
        type
      end
    end

    module RemoveIpRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveIpRoutesOutput, context: context)
        type = Types::RemoveIpRoutesOutput.new
        type
      end
    end

    module RemoveRegionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRegionInput, context: context)
        type = Types::RemoveRegionInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module RemoveRegionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRegionOutput, context: context)
        type = Types::RemoveRegionOutput.new
        type
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type
      end
    end

    module ResetUserPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetUserPasswordInput, context: context)
        type = Types::ResetUserPasswordInput.new
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.new_password = params[:new_password]
        type
      end
    end

    module ResetUserPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetUserPasswordOutput, context: context)
        type = Types::ResetUserPasswordOutput.new
        type
      end
    end

    module RestoreFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreFromSnapshotInput, context: context)
        type = Types::RestoreFromSnapshotInput.new
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module RestoreFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreFromSnapshotOutput, context: context)
        type = Types::RestoreFromSnapshotOutput.new
        type
      end
    end

    module SchemaExtensionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaExtensionInfo, context: context)
        type = Types::SchemaExtensionInfo.new
        type.directory_id = params[:directory_id]
        type.schema_extension_id = params[:schema_extension_id]
        type.description = params[:description]
        type.schema_extension_status = params[:schema_extension_status]
        type.schema_extension_status_reason = params[:schema_extension_status_reason]
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module SchemaExtensionsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaExtensionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Servers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ShareDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareDirectoryInput, context: context)
        type = Types::ShareDirectoryInput.new
        type.directory_id = params[:directory_id]
        type.share_notes = params[:share_notes]
        type.share_target = ShareTarget.build(params[:share_target], context: "#{context}[:share_target]") unless params[:share_target].nil?
        type.share_method = params[:share_method]
        type
      end
    end

    module ShareDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareDirectoryOutput, context: context)
        type = Types::ShareDirectoryOutput.new
        type.shared_directory_id = params[:shared_directory_id]
        type
      end
    end

    module ShareLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareLimitExceededException, context: context)
        type = Types::ShareLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ShareTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareTarget, context: context)
        type = Types::ShareTarget.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module SharedDirectories
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SharedDirectory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SharedDirectory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharedDirectory, context: context)
        type = Types::SharedDirectory.new
        type.owner_account_id = params[:owner_account_id]
        type.owner_directory_id = params[:owner_directory_id]
        type.share_method = params[:share_method]
        type.shared_account_id = params[:shared_account_id]
        type.shared_directory_id = params[:shared_directory_id]
        type.share_status = params[:share_status]
        type.share_notes = params[:share_notes]
        type.created_date_time = params[:created_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.directory_id = params[:directory_id]
        type.snapshot_id = params[:snapshot_id]
        type.type = params[:type]
        type.name = params[:name]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type
      end
    end

    module SnapshotIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotLimitExceededException, context: context)
        type = Types::SnapshotLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module SnapshotLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotLimits, context: context)
        type = Types::SnapshotLimits.new
        type.manual_snapshots_limit = params[:manual_snapshots_limit]
        type.manual_snapshots_current_count = params[:manual_snapshots_current_count]
        type.manual_snapshots_limit_reached = params[:manual_snapshots_limit_reached]
        type
      end
    end

    module Snapshots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartSchemaExtensionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSchemaExtensionInput, context: context)
        type = Types::StartSchemaExtensionInput.new
        type.directory_id = params[:directory_id]
        type.create_snapshot_before_schema_extension = params[:create_snapshot_before_schema_extension]
        type.ldif_content = params[:ldif_content]
        type.description = params[:description]
        type
      end
    end

    module StartSchemaExtensionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSchemaExtensionOutput, context: context)
        type = Types::StartSchemaExtensionOutput.new
        type.schema_extension_id = params[:schema_extension_id]
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededException, context: context)
        type = Types::TagLimitExceededException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
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

    module TopicNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Trust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trust, context: context)
        type = Types::Trust.new
        type.directory_id = params[:directory_id]
        type.trust_id = params[:trust_id]
        type.remote_domain_name = params[:remote_domain_name]
        type.trust_type = params[:trust_type]
        type.trust_direction = params[:trust_direction]
        type.trust_state = params[:trust_state]
        type.created_date_time = params[:created_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.state_last_updated_date_time = params[:state_last_updated_date_time]
        type.trust_state_reason = params[:trust_state_reason]
        type.selective_auth = params[:selective_auth]
        type
      end
    end

    module TrustIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Trusts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trust.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnshareDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnshareDirectoryInput, context: context)
        type = Types::UnshareDirectoryInput.new
        type.directory_id = params[:directory_id]
        type.unshare_target = UnshareTarget.build(params[:unshare_target], context: "#{context}[:unshare_target]") unless params[:unshare_target].nil?
        type
      end
    end

    module UnshareDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnshareDirectoryOutput, context: context)
        type = Types::UnshareDirectoryOutput.new
        type.shared_directory_id = params[:shared_directory_id]
        type
      end
    end

    module UnshareTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnshareTarget, context: context)
        type = Types::UnshareTarget.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateConditionalForwarderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConditionalForwarderInput, context: context)
        type = Types::UpdateConditionalForwarderInput.new
        type.directory_id = params[:directory_id]
        type.remote_domain_name = params[:remote_domain_name]
        type.dns_ip_addrs = DnsIpAddrs.build(params[:dns_ip_addrs], context: "#{context}[:dns_ip_addrs]") unless params[:dns_ip_addrs].nil?
        type
      end
    end

    module UpdateConditionalForwarderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConditionalForwarderOutput, context: context)
        type = Types::UpdateConditionalForwarderOutput.new
        type
      end
    end

    module UpdateNumberOfDomainControllersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNumberOfDomainControllersInput, context: context)
        type = Types::UpdateNumberOfDomainControllersInput.new
        type.directory_id = params[:directory_id]
        type.desired_number = params[:desired_number]
        type
      end
    end

    module UpdateNumberOfDomainControllersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNumberOfDomainControllersOutput, context: context)
        type = Types::UpdateNumberOfDomainControllersOutput.new
        type
      end
    end

    module UpdateRadiusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRadiusInput, context: context)
        type = Types::UpdateRadiusInput.new
        type.directory_id = params[:directory_id]
        type.radius_settings = RadiusSettings.build(params[:radius_settings], context: "#{context}[:radius_settings]") unless params[:radius_settings].nil?
        type
      end
    end

    module UpdateRadiusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRadiusOutput, context: context)
        type = Types::UpdateRadiusOutput.new
        type
      end
    end

    module UpdateTrustInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrustInput, context: context)
        type = Types::UpdateTrustInput.new
        type.trust_id = params[:trust_id]
        type.selective_auth = params[:selective_auth]
        type
      end
    end

    module UpdateTrustOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrustOutput, context: context)
        type = Types::UpdateTrustOutput.new
        type.request_id = params[:request_id]
        type.trust_id = params[:trust_id]
        type
      end
    end

    module UserDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDoesNotExistException, context: context)
        type = Types::UserDoesNotExistException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module VerifyTrustInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyTrustInput, context: context)
        type = Types::VerifyTrustInput.new
        type.trust_id = params[:trust_id]
        type
      end
    end

    module VerifyTrustOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyTrustOutput, context: context)
        type = Types::VerifyTrustOutput.new
        type.trust_id = params[:trust_id]
        type
      end
    end

  end
end
