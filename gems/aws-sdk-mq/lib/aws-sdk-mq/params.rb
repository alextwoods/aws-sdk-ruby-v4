# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Mq
  module Params

    module ActionRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionRequired, context: context)
        type = Types::ActionRequired.new
        type.action_required_code = params[:action_required_code]
        type.action_required_info = params[:action_required_info]
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module BrokerEngineType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerEngineType, context: context)
        type = Types::BrokerEngineType.new
        type.engine_type = params[:engine_type]
        type.engine_versions = List____listOfEngineVersion.build(params[:engine_versions], context: "#{context}[:engine_versions]") unless params[:engine_versions].nil?
        type
      end
    end

    module BrokerInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerInstance, context: context)
        type = Types::BrokerInstance.new
        type.console_url = params[:console_url]
        type.endpoints = List____listOf__string.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.ip_address = params[:ip_address]
        type
      end
    end

    module BrokerInstanceOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerInstanceOption, context: context)
        type = Types::BrokerInstanceOption.new
        type.availability_zones = List____listOfAvailabilityZone.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.engine_type = params[:engine_type]
        type.host_instance_type = params[:host_instance_type]
        type.storage_type = params[:storage_type]
        type.supported_deployment_modes = List____listOfDeploymentMode.build(params[:supported_deployment_modes], context: "#{context}[:supported_deployment_modes]") unless params[:supported_deployment_modes].nil?
        type.supported_engine_versions = List____listOf__string.build(params[:supported_engine_versions], context: "#{context}[:supported_engine_versions]") unless params[:supported_engine_versions].nil?
        type
      end
    end

    module BrokerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrokerSummary, context: context)
        type = Types::BrokerSummary.new
        type.broker_arn = params[:broker_arn]
        type.broker_id = params[:broker_id]
        type.broker_name = params[:broker_name]
        type.broker_state = params[:broker_state]
        type.created = params[:created]
        type.deployment_mode = params[:deployment_mode]
        type.engine_type = params[:engine_type]
        type.host_instance_type = params[:host_instance_type]
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.arn = params[:arn]
        type.authentication_strategy = params[:authentication_strategy]
        type.created = params[:created]
        type.description = params[:description]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.id = params[:id]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConfigurationId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationId, context: context)
        type = Types::ConfigurationId.new
        type.id = params[:id]
        type.revision = params[:revision]
        type
      end
    end

    module ConfigurationRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationRevision, context: context)
        type = Types::ConfigurationRevision.new
        type.created = params[:created]
        type.description = params[:description]
        type.revision = params[:revision]
        type
      end
    end

    module Configurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configurations, context: context)
        type = Types::Configurations.new
        type.current = ConfigurationId.build(params[:current], context: "#{context}[:current]") unless params[:current].nil?
        type.history = List____listOfConfigurationId.build(params[:history], context: "#{context}[:history]") unless params[:history].nil?
        type.pending = ConfigurationId.build(params[:pending], context: "#{context}[:pending]") unless params[:pending].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module CreateBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBrokerInput, context: context)
        type = Types::CreateBrokerInput.new
        type.authentication_strategy = params[:authentication_strategy]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.broker_name = params[:broker_name]
        type.configuration = ConfigurationId.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.creator_request_id = params[:creator_request_id] || SecureRandom.uuid
        type.deployment_mode = params[:deployment_mode]
        type.encryption_options = EncryptionOptions.build(params[:encryption_options], context: "#{context}[:encryption_options]") unless params[:encryption_options].nil?
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.host_instance_type = params[:host_instance_type]
        type.ldap_server_metadata = LdapServerMetadataInput.build(params[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless params[:ldap_server_metadata].nil?
        type.logs = Logs.build(params[:logs], context: "#{context}[:logs]") unless params[:logs].nil?
        type.maintenance_window_start_time = WeeklyStartTime.build(params[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless params[:maintenance_window_start_time].nil?
        type.publicly_accessible = params[:publicly_accessible]
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.storage_type = params[:storage_type]
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.users = List____listOfUser.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module CreateBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBrokerOutput, context: context)
        type = Types::CreateBrokerOutput.new
        type.broker_arn = params[:broker_arn]
        type.broker_id = params[:broker_id]
        type
      end
    end

    module CreateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationInput, context: context)
        type = Types::CreateConfigurationInput.new
        type.authentication_strategy = params[:authentication_strategy]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.name = params[:name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationOutput, context: context)
        type = Types::CreateConfigurationOutput.new
        type.arn = params[:arn]
        type.authentication_strategy = params[:authentication_strategy]
        type.created = params[:created]
        type.id = params[:id]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.broker_id = params[:broker_id]
        type.console_access = params[:console_access]
        type.groups = List____listOf__string.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.password = params[:password]
        type.username = params[:username]
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type
      end
    end

    module DeleteBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBrokerInput, context: context)
        type = Types::DeleteBrokerInput.new
        type.broker_id = params[:broker_id]
        type
      end
    end

    module DeleteBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBrokerOutput, context: context)
        type = Types::DeleteBrokerOutput.new
        type.broker_id = params[:broker_id]
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.broker_id = params[:broker_id]
        type.username = params[:username]
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

    module DescribeBrokerEngineTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerEngineTypesInput, context: context)
        type = Types::DescribeBrokerEngineTypesInput.new
        type.engine_type = params[:engine_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBrokerEngineTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerEngineTypesOutput, context: context)
        type = Types::DescribeBrokerEngineTypesOutput.new
        type.broker_engine_types = List____listOfBrokerEngineType.build(params[:broker_engine_types], context: "#{context}[:broker_engine_types]") unless params[:broker_engine_types].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerInput, context: context)
        type = Types::DescribeBrokerInput.new
        type.broker_id = params[:broker_id]
        type
      end
    end

    module DescribeBrokerInstanceOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerInstanceOptionsInput, context: context)
        type = Types::DescribeBrokerInstanceOptionsInput.new
        type.engine_type = params[:engine_type]
        type.host_instance_type = params[:host_instance_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.storage_type = params[:storage_type]
        type
      end
    end

    module DescribeBrokerInstanceOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerInstanceOptionsOutput, context: context)
        type = Types::DescribeBrokerInstanceOptionsOutput.new
        type.broker_instance_options = List____listOfBrokerInstanceOption.build(params[:broker_instance_options], context: "#{context}[:broker_instance_options]") unless params[:broker_instance_options].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBrokerOutput, context: context)
        type = Types::DescribeBrokerOutput.new
        type.actions_required = List____listOfActionRequired.build(params[:actions_required], context: "#{context}[:actions_required]") unless params[:actions_required].nil?
        type.authentication_strategy = params[:authentication_strategy]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.broker_arn = params[:broker_arn]
        type.broker_id = params[:broker_id]
        type.broker_instances = List____listOfBrokerInstance.build(params[:broker_instances], context: "#{context}[:broker_instances]") unless params[:broker_instances].nil?
        type.broker_name = params[:broker_name]
        type.broker_state = params[:broker_state]
        type.configurations = Configurations.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.created = params[:created]
        type.deployment_mode = params[:deployment_mode]
        type.encryption_options = EncryptionOptions.build(params[:encryption_options], context: "#{context}[:encryption_options]") unless params[:encryption_options].nil?
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.host_instance_type = params[:host_instance_type]
        type.ldap_server_metadata = LdapServerMetadataOutput.build(params[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless params[:ldap_server_metadata].nil?
        type.logs = LogsSummary.build(params[:logs], context: "#{context}[:logs]") unless params[:logs].nil?
        type.maintenance_window_start_time = WeeklyStartTime.build(params[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless params[:maintenance_window_start_time].nil?
        type.pending_authentication_strategy = params[:pending_authentication_strategy]
        type.pending_engine_version = params[:pending_engine_version]
        type.pending_host_instance_type = params[:pending_host_instance_type]
        type.pending_ldap_server_metadata = LdapServerMetadataOutput.build(params[:pending_ldap_server_metadata], context: "#{context}[:pending_ldap_server_metadata]") unless params[:pending_ldap_server_metadata].nil?
        type.pending_security_groups = List____listOf__string.build(params[:pending_security_groups], context: "#{context}[:pending_security_groups]") unless params[:pending_security_groups].nil?
        type.publicly_accessible = params[:publicly_accessible]
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.storage_type = params[:storage_type]
        type.subnet_ids = List____listOf__string.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.users = List____listOfUserSummary.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module DescribeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationInput, context: context)
        type = Types::DescribeConfigurationInput.new
        type.configuration_id = params[:configuration_id]
        type
      end
    end

    module DescribeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationOutput, context: context)
        type = Types::DescribeConfigurationOutput.new
        type.arn = params[:arn]
        type.authentication_strategy = params[:authentication_strategy]
        type.created = params[:created]
        type.description = params[:description]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.id = params[:id]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeConfigurationRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRevisionInput, context: context)
        type = Types::DescribeConfigurationRevisionInput.new
        type.configuration_id = params[:configuration_id]
        type.configuration_revision = params[:configuration_revision]
        type
      end
    end

    module DescribeConfigurationRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRevisionOutput, context: context)
        type = Types::DescribeConfigurationRevisionOutput.new
        type.configuration_id = params[:configuration_id]
        type.created = params[:created]
        type.data = params[:data]
        type.description = params[:description]
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.broker_id = params[:broker_id]
        type.username = params[:username]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.broker_id = params[:broker_id]
        type.console_access = params[:console_access]
        type.groups = List____listOf__string.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.pending = UserPendingChanges.build(params[:pending], context: "#{context}[:pending]") unless params[:pending].nil?
        type.username = params[:username]
        type
      end
    end

    module EncryptionOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionOptions, context: context)
        type = Types::EncryptionOptions.new
        type.kms_key_id = params[:kms_key_id]
        type.use_aws_owned_key = params[:use_aws_owned_key]
        type
      end
    end

    module EngineVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineVersion, context: context)
        type = Types::EngineVersion.new
        type.name = params[:name]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module LdapServerMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LdapServerMetadataInput, context: context)
        type = Types::LdapServerMetadataInput.new
        type.hosts = List____listOf__string.build(params[:hosts], context: "#{context}[:hosts]") unless params[:hosts].nil?
        type.role_base = params[:role_base]
        type.role_name = params[:role_name]
        type.role_search_matching = params[:role_search_matching]
        type.role_search_subtree = params[:role_search_subtree]
        type.service_account_password = params[:service_account_password]
        type.service_account_username = params[:service_account_username]
        type.user_base = params[:user_base]
        type.user_role_name = params[:user_role_name]
        type.user_search_matching = params[:user_search_matching]
        type.user_search_subtree = params[:user_search_subtree]
        type
      end
    end

    module LdapServerMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LdapServerMetadataOutput, context: context)
        type = Types::LdapServerMetadataOutput.new
        type.hosts = List____listOf__string.build(params[:hosts], context: "#{context}[:hosts]") unless params[:hosts].nil?
        type.role_base = params[:role_base]
        type.role_name = params[:role_name]
        type.role_search_matching = params[:role_search_matching]
        type.role_search_subtree = params[:role_search_subtree]
        type.service_account_username = params[:service_account_username]
        type.user_base = params[:user_base]
        type.user_role_name = params[:user_role_name]
        type.user_search_matching = params[:user_search_matching]
        type.user_search_subtree = params[:user_search_subtree]
        type
      end
    end

    module ListBrokersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBrokersInput, context: context)
        type = Types::ListBrokersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBrokersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBrokersOutput, context: context)
        type = Types::ListBrokersOutput.new
        type.broker_summaries = List____listOfBrokerSummary.build(params[:broker_summaries], context: "#{context}[:broker_summaries]") unless params[:broker_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationRevisionsInput, context: context)
        type = Types::ListConfigurationRevisionsInput.new
        type.configuration_id = params[:configuration_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationRevisionsOutput, context: context)
        type = Types::ListConfigurationRevisionsOutput.new
        type.configuration_id = params[:configuration_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.revisions = List____listOfConfigurationRevision.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type
      end
    end

    module ListConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsInput, context: context)
        type = Types::ListConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsOutput, context: context)
        type = Types::ListConfigurationsOutput.new
        type.configurations = List____listOfConfiguration.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = Map____mapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.broker_id = params[:broker_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.broker_id = params[:broker_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.users = List____listOfUserSummary.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module Logs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Logs, context: context)
        type = Types::Logs.new
        type.audit = params[:audit]
        type.general = params[:general]
        type
      end
    end

    module LogsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogsSummary, context: context)
        type = Types::LogsSummary.new
        type.audit = params[:audit]
        type.audit_log_group = params[:audit_log_group]
        type.general = params[:general]
        type.general_log_group = params[:general_log_group]
        type.pending = PendingLogs.build(params[:pending], context: "#{context}[:pending]") unless params[:pending].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module PendingLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingLogs, context: context)
        type = Types::PendingLogs.new
        type.audit = params[:audit]
        type.general = params[:general]
        type
      end
    end

    module RebootBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootBrokerInput, context: context)
        type = Types::RebootBrokerInput.new
        type.broker_id = params[:broker_id]
        type
      end
    end

    module RebootBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootBrokerOutput, context: context)
        type = Types::RebootBrokerOutput.new
        type
      end
    end

    module SanitizationWarning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SanitizationWarning, context: context)
        type = Types::SanitizationWarning.new
        type.attribute_name = params[:attribute_name]
        type.element_name = params[:element_name]
        type.reason = params[:reason]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.error_attribute = params[:error_attribute]
        type.message = params[:message]
        type
      end
    end

    module UpdateBrokerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerInput, context: context)
        type = Types::UpdateBrokerInput.new
        type.authentication_strategy = params[:authentication_strategy]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.broker_id = params[:broker_id]
        type.configuration = ConfigurationId.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.engine_version = params[:engine_version]
        type.host_instance_type = params[:host_instance_type]
        type.ldap_server_metadata = LdapServerMetadataInput.build(params[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless params[:ldap_server_metadata].nil?
        type.logs = Logs.build(params[:logs], context: "#{context}[:logs]") unless params[:logs].nil?
        type.maintenance_window_start_time = WeeklyStartTime.build(params[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless params[:maintenance_window_start_time].nil?
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module UpdateBrokerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrokerOutput, context: context)
        type = Types::UpdateBrokerOutput.new
        type.authentication_strategy = params[:authentication_strategy]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.broker_id = params[:broker_id]
        type.configuration = ConfigurationId.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.engine_version = params[:engine_version]
        type.host_instance_type = params[:host_instance_type]
        type.ldap_server_metadata = LdapServerMetadataOutput.build(params[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless params[:ldap_server_metadata].nil?
        type.logs = Logs.build(params[:logs], context: "#{context}[:logs]") unless params[:logs].nil?
        type.maintenance_window_start_time = WeeklyStartTime.build(params[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless params[:maintenance_window_start_time].nil?
        type.security_groups = List____listOf__string.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module UpdateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationInput, context: context)
        type = Types::UpdateConfigurationInput.new
        type.configuration_id = params[:configuration_id]
        type.data = params[:data]
        type.description = params[:description]
        type
      end
    end

    module UpdateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationOutput, context: context)
        type = Types::UpdateConfigurationOutput.new
        type.arn = params[:arn]
        type.created = params[:created]
        type.id = params[:id]
        type.latest_revision = ConfigurationRevision.build(params[:latest_revision], context: "#{context}[:latest_revision]") unless params[:latest_revision].nil?
        type.name = params[:name]
        type.warnings = List____listOfSanitizationWarning.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.broker_id = params[:broker_id]
        type.console_access = params[:console_access]
        type.groups = List____listOf__string.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.password = params[:password]
        type.username = params[:username]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.console_access = params[:console_access]
        type.groups = List____listOf__string.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.password = params[:password]
        type.username = params[:username]
        type
      end
    end

    module UserPendingChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPendingChanges, context: context)
        type = Types::UserPendingChanges.new
        type.console_access = params[:console_access]
        type.groups = List____listOf__string.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.pending_change = params[:pending_change]
        type
      end
    end

    module UserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSummary, context: context)
        type = Types::UserSummary.new
        type.pending_change = params[:pending_change]
        type.username = params[:username]
        type
      end
    end

    module WeeklyStartTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WeeklyStartTime, context: context)
        type = Types::WeeklyStartTime.new
        type.day_of_week = params[:day_of_week]
        type.time_of_day = params[:time_of_day]
        type.time_zone = params[:time_zone]
        type
      end
    end

    module List____listOfActionRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionRequired.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBrokerEngineType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrokerEngineType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBrokerInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrokerInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBrokerInstanceOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrokerInstanceOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBrokerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrokerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConfigurationId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConfigurationRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDeploymentMode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfEngineVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EngineVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSanitizationWarning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SanitizationWarning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
