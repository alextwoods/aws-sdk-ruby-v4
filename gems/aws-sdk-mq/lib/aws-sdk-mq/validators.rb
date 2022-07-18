# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Mq
  module Validators

    class ActionRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionRequired, context: context)
        Hearth::Validator.validate!(input[:action_required_code], ::String, context: "#{context}[:action_required_code]")
        Hearth::Validator.validate!(input[:action_required_info], ::String, context: "#{context}[:action_required_info]")
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BrokerEngineType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerEngineType, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        List____listOfEngineVersion.validate!(input[:engine_versions], context: "#{context}[:engine_versions]") unless input[:engine_versions].nil?
      end
    end

    class BrokerInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerInstance, context: context)
        Hearth::Validator.validate!(input[:console_url], ::String, context: "#{context}[:console_url]")
        List____listOf__string.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class BrokerInstanceOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerInstanceOption, context: context)
        List____listOfAvailabilityZone.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        List____listOfDeploymentMode.validate!(input[:supported_deployment_modes], context: "#{context}[:supported_deployment_modes]") unless input[:supported_deployment_modes].nil?
        List____listOf__string.validate!(input[:supported_engine_versions], context: "#{context}[:supported_engine_versions]") unless input[:supported_engine_versions].nil?
      end
    end

    class BrokerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrokerSummary, context: context)
        Hearth::Validator.validate!(input[:broker_arn], ::String, context: "#{context}[:broker_arn]")
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:broker_name], ::String, context: "#{context}[:broker_name]")
        Hearth::Validator.validate!(input[:broker_state], ::String, context: "#{context}[:broker_state]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:deployment_mode], ::String, context: "#{context}[:deployment_mode]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConfigurationId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationId, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class ConfigurationRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationRevision, context: context)
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class Configurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configurations, context: context)
        ConfigurationId.validate!(input[:current], context: "#{context}[:current]") unless input[:current].nil?
        List____listOfConfigurationId.validate!(input[:history], context: "#{context}[:history]") unless input[:history].nil?
        ConfigurationId.validate!(input[:pending], context: "#{context}[:pending]") unless input[:pending].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBrokerInput, context: context)
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:broker_name], ::String, context: "#{context}[:broker_name]")
        ConfigurationId.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:deployment_mode], ::String, context: "#{context}[:deployment_mode]")
        EncryptionOptions.validate!(input[:encryption_options], context: "#{context}[:encryption_options]") unless input[:encryption_options].nil?
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        LdapServerMetadataInput.validate!(input[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless input[:ldap_server_metadata].nil?
        Logs.validate!(input[:logs], context: "#{context}[:logs]") unless input[:logs].nil?
        WeeklyStartTime.validate!(input[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless input[:maintenance_window_start_time].nil?
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfUser.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class CreateBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBrokerOutput, context: context)
        Hearth::Validator.validate!(input[:broker_arn], ::String, context: "#{context}[:broker_arn]")
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
      end
    end

    class CreateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:console_access], ::TrueClass, ::FalseClass, context: "#{context}[:console_access]")
        List____listOf__string.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
      end
    end

    class DeleteBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBrokerInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
      end
    end

    class DeleteBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBrokerOutput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DescribeBrokerEngineTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerEngineTypesInput, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBrokerEngineTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerEngineTypesOutput, context: context)
        List____listOfBrokerEngineType.validate!(input[:broker_engine_types], context: "#{context}[:broker_engine_types]") unless input[:broker_engine_types].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
      end
    end

    class DescribeBrokerInstanceOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerInstanceOptionsInput, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
      end
    end

    class DescribeBrokerInstanceOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerInstanceOptionsOutput, context: context)
        List____listOfBrokerInstanceOption.validate!(input[:broker_instance_options], context: "#{context}[:broker_instance_options]") unless input[:broker_instance_options].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBrokerOutput, context: context)
        List____listOfActionRequired.validate!(input[:actions_required], context: "#{context}[:actions_required]") unless input[:actions_required].nil?
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:broker_arn], ::String, context: "#{context}[:broker_arn]")
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        List____listOfBrokerInstance.validate!(input[:broker_instances], context: "#{context}[:broker_instances]") unless input[:broker_instances].nil?
        Hearth::Validator.validate!(input[:broker_name], ::String, context: "#{context}[:broker_name]")
        Hearth::Validator.validate!(input[:broker_state], ::String, context: "#{context}[:broker_state]")
        Configurations.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:deployment_mode], ::String, context: "#{context}[:deployment_mode]")
        EncryptionOptions.validate!(input[:encryption_options], context: "#{context}[:encryption_options]") unless input[:encryption_options].nil?
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        LdapServerMetadataOutput.validate!(input[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless input[:ldap_server_metadata].nil?
        LogsSummary.validate!(input[:logs], context: "#{context}[:logs]") unless input[:logs].nil?
        WeeklyStartTime.validate!(input[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless input[:maintenance_window_start_time].nil?
        Hearth::Validator.validate!(input[:pending_authentication_strategy], ::String, context: "#{context}[:pending_authentication_strategy]")
        Hearth::Validator.validate!(input[:pending_engine_version], ::String, context: "#{context}[:pending_engine_version]")
        Hearth::Validator.validate!(input[:pending_host_instance_type], ::String, context: "#{context}[:pending_host_instance_type]")
        LdapServerMetadataOutput.validate!(input[:pending_ldap_server_metadata], context: "#{context}[:pending_ldap_server_metadata]") unless input[:pending_ldap_server_metadata].nil?
        List____listOf__string.validate!(input[:pending_security_groups], context: "#{context}[:pending_security_groups]") unless input[:pending_security_groups].nil?
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        List____listOf__string.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        List____listOfUserSummary.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class DescribeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
      end
    end

    class DescribeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeConfigurationRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRevisionInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:configuration_revision], ::String, context: "#{context}[:configuration_revision]")
      end
    end

    class DescribeConfigurationRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DescribeUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class DescribeUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserOutput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:console_access], ::TrueClass, ::FalseClass, context: "#{context}[:console_access]")
        List____listOf__string.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        UserPendingChanges.validate!(input[:pending], context: "#{context}[:pending]") unless input[:pending].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class EncryptionOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionOptions, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:use_aws_owned_key], ::TrueClass, ::FalseClass, context: "#{context}[:use_aws_owned_key]")
      end
    end

    class EngineVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineVersion, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LdapServerMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LdapServerMetadataInput, context: context)
        List____listOf__string.validate!(input[:hosts], context: "#{context}[:hosts]") unless input[:hosts].nil?
        Hearth::Validator.validate!(input[:role_base], ::String, context: "#{context}[:role_base]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:role_search_matching], ::String, context: "#{context}[:role_search_matching]")
        Hearth::Validator.validate!(input[:role_search_subtree], ::TrueClass, ::FalseClass, context: "#{context}[:role_search_subtree]")
        Hearth::Validator.validate!(input[:service_account_password], ::String, context: "#{context}[:service_account_password]")
        Hearth::Validator.validate!(input[:service_account_username], ::String, context: "#{context}[:service_account_username]")
        Hearth::Validator.validate!(input[:user_base], ::String, context: "#{context}[:user_base]")
        Hearth::Validator.validate!(input[:user_role_name], ::String, context: "#{context}[:user_role_name]")
        Hearth::Validator.validate!(input[:user_search_matching], ::String, context: "#{context}[:user_search_matching]")
        Hearth::Validator.validate!(input[:user_search_subtree], ::TrueClass, ::FalseClass, context: "#{context}[:user_search_subtree]")
      end
    end

    class LdapServerMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LdapServerMetadataOutput, context: context)
        List____listOf__string.validate!(input[:hosts], context: "#{context}[:hosts]") unless input[:hosts].nil?
        Hearth::Validator.validate!(input[:role_base], ::String, context: "#{context}[:role_base]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:role_search_matching], ::String, context: "#{context}[:role_search_matching]")
        Hearth::Validator.validate!(input[:role_search_subtree], ::TrueClass, ::FalseClass, context: "#{context}[:role_search_subtree]")
        Hearth::Validator.validate!(input[:service_account_username], ::String, context: "#{context}[:service_account_username]")
        Hearth::Validator.validate!(input[:user_base], ::String, context: "#{context}[:user_base]")
        Hearth::Validator.validate!(input[:user_role_name], ::String, context: "#{context}[:user_role_name]")
        Hearth::Validator.validate!(input[:user_search_matching], ::String, context: "#{context}[:user_search_matching]")
        Hearth::Validator.validate!(input[:user_search_subtree], ::TrueClass, ::FalseClass, context: "#{context}[:user_search_subtree]")
      end
    end

    class ListBrokersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBrokersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBrokersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBrokersOutput, context: context)
        List____listOfBrokerSummary.validate!(input[:broker_summaries], context: "#{context}[:broker_summaries]") unless input[:broker_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationRevisionsOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfConfigurationRevision.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
      end
    end

    class ListConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsOutput, context: context)
        List____listOfConfiguration.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Map____mapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfUserSummary.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class Logs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Logs, context: context)
        Hearth::Validator.validate!(input[:audit], ::TrueClass, ::FalseClass, context: "#{context}[:audit]")
        Hearth::Validator.validate!(input[:general], ::TrueClass, ::FalseClass, context: "#{context}[:general]")
      end
    end

    class LogsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogsSummary, context: context)
        Hearth::Validator.validate!(input[:audit], ::TrueClass, ::FalseClass, context: "#{context}[:audit]")
        Hearth::Validator.validate!(input[:audit_log_group], ::String, context: "#{context}[:audit_log_group]")
        Hearth::Validator.validate!(input[:general], ::TrueClass, ::FalseClass, context: "#{context}[:general]")
        Hearth::Validator.validate!(input[:general_log_group], ::String, context: "#{context}[:general_log_group]")
        PendingLogs.validate!(input[:pending], context: "#{context}[:pending]") unless input[:pending].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PendingLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingLogs, context: context)
        Hearth::Validator.validate!(input[:audit], ::TrueClass, ::FalseClass, context: "#{context}[:audit]")
        Hearth::Validator.validate!(input[:general], ::TrueClass, ::FalseClass, context: "#{context}[:general]")
      end
    end

    class RebootBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootBrokerInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
      end
    end

    class RebootBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootBrokerOutput, context: context)
      end
    end

    class SanitizationWarning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SanitizationWarning, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:element_name], ::String, context: "#{context}[:element_name]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:error_attribute], ::String, context: "#{context}[:error_attribute]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateBrokerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerInput, context: context)
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        ConfigurationId.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        LdapServerMetadataInput.validate!(input[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless input[:ldap_server_metadata].nil?
        Logs.validate!(input[:logs], context: "#{context}[:logs]") unless input[:logs].nil?
        WeeklyStartTime.validate!(input[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless input[:maintenance_window_start_time].nil?
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class UpdateBrokerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrokerOutput, context: context)
        Hearth::Validator.validate!(input[:authentication_strategy], ::String, context: "#{context}[:authentication_strategy]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        ConfigurationId.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:host_instance_type], ::String, context: "#{context}[:host_instance_type]")
        LdapServerMetadataOutput.validate!(input[:ldap_server_metadata], context: "#{context}[:ldap_server_metadata]") unless input[:ldap_server_metadata].nil?
        Logs.validate!(input[:logs], context: "#{context}[:logs]") unless input[:logs].nil?
        WeeklyStartTime.validate!(input[:maintenance_window_start_time], context: "#{context}[:maintenance_window_start_time]") unless input[:maintenance_window_start_time].nil?
        List____listOf__string.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class UpdateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ConfigurationRevision.validate!(input[:latest_revision], context: "#{context}[:latest_revision]") unless input[:latest_revision].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        List____listOfSanitizationWarning.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:broker_id], ::String, context: "#{context}[:broker_id]")
        Hearth::Validator.validate!(input[:console_access], ::TrueClass, ::FalseClass, context: "#{context}[:console_access]")
        List____listOf__string.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:console_access], ::TrueClass, ::FalseClass, context: "#{context}[:console_access]")
        List____listOf__string.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class UserPendingChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPendingChanges, context: context)
        Hearth::Validator.validate!(input[:console_access], ::TrueClass, ::FalseClass, context: "#{context}[:console_access]")
        List____listOf__string.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:pending_change], ::String, context: "#{context}[:pending_change]")
      end
    end

    class UserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSummary, context: context)
        Hearth::Validator.validate!(input[:pending_change], ::String, context: "#{context}[:pending_change]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class WeeklyStartTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WeeklyStartTime, context: context)
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
        Hearth::Validator.validate!(input[:time_of_day], ::String, context: "#{context}[:time_of_day]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
      end
    end

    class List____listOfActionRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionRequired.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBrokerEngineType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BrokerEngineType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBrokerInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BrokerInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBrokerInstanceOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BrokerInstanceOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBrokerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BrokerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConfigurationId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConfigurationRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDeploymentMode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfEngineVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EngineVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSanitizationWarning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SanitizationWarning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
