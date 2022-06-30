# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Mq
  module Parsers

    # Operation Parser for CreateBroker
    class CreateBroker
      def self.parse(http_resp)
        data = Types::CreateBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_arn = map['brokerArn']
        data.broker_id = map['brokerId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateConfiguration
    class CreateConfiguration
      def self.parse(http_resp)
        data = Types::CreateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authentication_strategy = map['authenticationStrategy']
        data.created = Time.parse(map['created']) if map['created']
        data.id = map['id']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data
      end
    end

    class ConfigurationRevision
      def self.parse(map)
        data = Types::ConfigurationRevision.new
        data.created = Time.parse(map['created']) if map['created']
        data.description = map['description']
        data.revision = map['revision']
        return data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_attribute = map['errorAttribute']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBroker
    class DeleteBroker
      def self.parse(http_resp)
        data = Types::DeleteBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_id = map['brokerId']
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeBroker
    class DescribeBroker
      def self.parse(http_resp)
        data = Types::DescribeBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.actions_required = (Parsers::List____listOfActionRequired.parse(map['actionsRequired']) unless map['actionsRequired'].nil?)
        data.authentication_strategy = map['authenticationStrategy']
        data.auto_minor_version_upgrade = map['autoMinorVersionUpgrade']
        data.broker_arn = map['brokerArn']
        data.broker_id = map['brokerId']
        data.broker_instances = (Parsers::List____listOfBrokerInstance.parse(map['brokerInstances']) unless map['brokerInstances'].nil?)
        data.broker_name = map['brokerName']
        data.broker_state = map['brokerState']
        data.configurations = (Parsers::Configurations.parse(map['configurations']) unless map['configurations'].nil?)
        data.created = Time.parse(map['created']) if map['created']
        data.deployment_mode = map['deploymentMode']
        data.encryption_options = (Parsers::EncryptionOptions.parse(map['encryptionOptions']) unless map['encryptionOptions'].nil?)
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        data.host_instance_type = map['hostInstanceType']
        data.ldap_server_metadata = (Parsers::LdapServerMetadataOutput.parse(map['ldapServerMetadata']) unless map['ldapServerMetadata'].nil?)
        data.logs = (Parsers::LogsSummary.parse(map['logs']) unless map['logs'].nil?)
        data.maintenance_window_start_time = (Parsers::WeeklyStartTime.parse(map['maintenanceWindowStartTime']) unless map['maintenanceWindowStartTime'].nil?)
        data.pending_authentication_strategy = map['pendingAuthenticationStrategy']
        data.pending_engine_version = map['pendingEngineVersion']
        data.pending_host_instance_type = map['pendingHostInstanceType']
        data.pending_ldap_server_metadata = (Parsers::LdapServerMetadataOutput.parse(map['pendingLdapServerMetadata']) unless map['pendingLdapServerMetadata'].nil?)
        data.pending_security_groups = (Parsers::List____listOf__string.parse(map['pendingSecurityGroups']) unless map['pendingSecurityGroups'].nil?)
        data.publicly_accessible = map['publiclyAccessible']
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.storage_type = map['storageType']
        data.subnet_ids = (Parsers::List____listOf__string.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.users = (Parsers::List____listOfUserSummary.parse(map['users']) unless map['users'].nil?)
        data
      end
    end

    class List____listOfUserSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserSummary
      def self.parse(map)
        data = Types::UserSummary.new
        data.pending_change = map['pendingChange']
        data.username = map['username']
        return data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LdapServerMetadataOutput
      def self.parse(map)
        data = Types::LdapServerMetadataOutput.new
        data.hosts = (Parsers::List____listOf__string.parse(map['hosts']) unless map['hosts'].nil?)
        data.role_base = map['roleBase']
        data.role_name = map['roleName']
        data.role_search_matching = map['roleSearchMatching']
        data.role_search_subtree = map['roleSearchSubtree']
        data.service_account_username = map['serviceAccountUsername']
        data.user_base = map['userBase']
        data.user_role_name = map['userRoleName']
        data.user_search_matching = map['userSearchMatching']
        data.user_search_subtree = map['userSearchSubtree']
        return data
      end
    end

    class WeeklyStartTime
      def self.parse(map)
        data = Types::WeeklyStartTime.new
        data.day_of_week = map['dayOfWeek']
        data.time_of_day = map['timeOfDay']
        data.time_zone = map['timeZone']
        return data
      end
    end

    class LogsSummary
      def self.parse(map)
        data = Types::LogsSummary.new
        data.audit = map['audit']
        data.audit_log_group = map['auditLogGroup']
        data.general = map['general']
        data.general_log_group = map['generalLogGroup']
        data.pending = (Parsers::PendingLogs.parse(map['pending']) unless map['pending'].nil?)
        return data
      end
    end

    class PendingLogs
      def self.parse(map)
        data = Types::PendingLogs.new
        data.audit = map['audit']
        data.general = map['general']
        return data
      end
    end

    class EncryptionOptions
      def self.parse(map)
        data = Types::EncryptionOptions.new
        data.kms_key_id = map['kmsKeyId']
        data.use_aws_owned_key = map['useAwsOwnedKey']
        return data
      end
    end

    class Configurations
      def self.parse(map)
        data = Types::Configurations.new
        data.current = (Parsers::ConfigurationId.parse(map['current']) unless map['current'].nil?)
        data.history = (Parsers::List____listOfConfigurationId.parse(map['history']) unless map['history'].nil?)
        data.pending = (Parsers::ConfigurationId.parse(map['pending']) unless map['pending'].nil?)
        return data
      end
    end

    class ConfigurationId
      def self.parse(map)
        data = Types::ConfigurationId.new
        data.id = map['id']
        data.revision = map['revision']
        return data
      end
    end

    class List____listOfConfigurationId
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConfigurationId.parse(value) unless value.nil?
        end
        data
      end
    end

    class List____listOfBrokerInstance
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrokerInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrokerInstance
      def self.parse(map)
        data = Types::BrokerInstance.new
        data.console_url = map['consoleURL']
        data.endpoints = (Parsers::List____listOf__string.parse(map['endpoints']) unless map['endpoints'].nil?)
        data.ip_address = map['ipAddress']
        return data
      end
    end

    class List____listOfActionRequired
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActionRequired.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActionRequired
      def self.parse(map)
        data = Types::ActionRequired.new
        data.action_required_code = map['actionRequiredCode']
        data.action_required_info = map['actionRequiredInfo']
        return data
      end
    end

    # Operation Parser for DescribeBrokerEngineTypes
    class DescribeBrokerEngineTypes
      def self.parse(http_resp)
        data = Types::DescribeBrokerEngineTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_engine_types = (Parsers::List____listOfBrokerEngineType.parse(map['brokerEngineTypes']) unless map['brokerEngineTypes'].nil?)
        data.max_results = map['maxResults']
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfBrokerEngineType
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrokerEngineType.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrokerEngineType
      def self.parse(map)
        data = Types::BrokerEngineType.new
        data.engine_type = map['engineType']
        data.engine_versions = (Parsers::List____listOfEngineVersion.parse(map['engineVersions']) unless map['engineVersions'].nil?)
        return data
      end
    end

    class List____listOfEngineVersion
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EngineVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class EngineVersion
      def self.parse(map)
        data = Types::EngineVersion.new
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeBrokerInstanceOptions
    class DescribeBrokerInstanceOptions
      def self.parse(http_resp)
        data = Types::DescribeBrokerInstanceOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_instance_options = (Parsers::List____listOfBrokerInstanceOption.parse(map['brokerInstanceOptions']) unless map['brokerInstanceOptions'].nil?)
        data.max_results = map['maxResults']
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfBrokerInstanceOption
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrokerInstanceOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrokerInstanceOption
      def self.parse(map)
        data = Types::BrokerInstanceOption.new
        data.availability_zones = (Parsers::List____listOfAvailabilityZone.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.engine_type = map['engineType']
        data.host_instance_type = map['hostInstanceType']
        data.storage_type = map['storageType']
        data.supported_deployment_modes = (Parsers::List____listOfDeploymentMode.parse(map['supportedDeploymentModes']) unless map['supportedDeploymentModes'].nil?)
        data.supported_engine_versions = (Parsers::List____listOf__string.parse(map['supportedEngineVersions']) unless map['supportedEngineVersions'].nil?)
        return data
      end
    end

    class List____listOfDeploymentMode
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfAvailabilityZone
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AvailabilityZone.parse(value) unless value.nil?
        end
        data
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeConfiguration
    class DescribeConfiguration
      def self.parse(http_resp)
        data = Types::DescribeConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.authentication_strategy = map['authenticationStrategy']
        data.created = Time.parse(map['created']) if map['created']
        data.description = map['description']
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        data.id = map['id']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.parse(http_resp)
        data = Types::DescribeConfigurationRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration_id = map['configurationId']
        data.created = Time.parse(map['created']) if map['created']
        data.data = map['data']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_id = map['brokerId']
        data.console_access = map['consoleAccess']
        data.groups = (Parsers::List____listOf__string.parse(map['groups']) unless map['groups'].nil?)
        data.pending = (Parsers::UserPendingChanges.parse(map['pending']) unless map['pending'].nil?)
        data.username = map['username']
        data
      end
    end

    class UserPendingChanges
      def self.parse(map)
        data = Types::UserPendingChanges.new
        data.console_access = map['consoleAccess']
        data.groups = (Parsers::List____listOf__string.parse(map['groups']) unless map['groups'].nil?)
        data.pending_change = map['pendingChange']
        return data
      end
    end

    # Operation Parser for ListBrokers
    class ListBrokers
      def self.parse(http_resp)
        data = Types::ListBrokersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_summaries = (Parsers::List____listOfBrokerSummary.parse(map['brokerSummaries']) unless map['brokerSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfBrokerSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrokerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrokerSummary
      def self.parse(map)
        data = Types::BrokerSummary.new
        data.broker_arn = map['brokerArn']
        data.broker_id = map['brokerId']
        data.broker_name = map['brokerName']
        data.broker_state = map['brokerState']
        data.created = Time.parse(map['created']) if map['created']
        data.deployment_mode = map['deploymentMode']
        data.engine_type = map['engineType']
        data.host_instance_type = map['hostInstanceType']
        return data
      end
    end

    # Operation Parser for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.parse(http_resp)
        data = Types::ListConfigurationRevisionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration_id = map['configurationId']
        data.max_results = map['maxResults']
        data.next_token = map['nextToken']
        data.revisions = (Parsers::List____listOfConfigurationRevision.parse(map['revisions']) unless map['revisions'].nil?)
        data
      end
    end

    class List____listOfConfigurationRevision
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConfigurationRevision.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListConfigurations
    class ListConfigurations
      def self.parse(http_resp)
        data = Types::ListConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configurations = (Parsers::List____listOfConfiguration.parse(map['configurations']) unless map['configurations'].nil?)
        data.max_results = map['maxResults']
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfConfiguration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.arn = map['arn']
        data.authentication_strategy = map['authenticationStrategy']
        data.created = Time.parse(map['created']) if map['created']
        data.description = map['description']
        data.engine_type = map['engineType']
        data.engine_version = map['engineVersion']
        data.id = map['id']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Map____mapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.broker_id = map['brokerId']
        data.max_results = map['maxResults']
        data.next_token = map['nextToken']
        data.users = (Parsers::List____listOfUserSummary.parse(map['users']) unless map['users'].nil?)
        data
      end
    end

    # Operation Parser for RebootBroker
    class RebootBroker
      def self.parse(http_resp)
        data = Types::RebootBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateBroker
    class UpdateBroker
      def self.parse(http_resp)
        data = Types::UpdateBrokerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authentication_strategy = map['authenticationStrategy']
        data.auto_minor_version_upgrade = map['autoMinorVersionUpgrade']
        data.broker_id = map['brokerId']
        data.configuration = (Parsers::ConfigurationId.parse(map['configuration']) unless map['configuration'].nil?)
        data.engine_version = map['engineVersion']
        data.host_instance_type = map['hostInstanceType']
        data.ldap_server_metadata = (Parsers::LdapServerMetadataOutput.parse(map['ldapServerMetadata']) unless map['ldapServerMetadata'].nil?)
        data.logs = (Parsers::Logs.parse(map['logs']) unless map['logs'].nil?)
        data.maintenance_window_start_time = (Parsers::WeeklyStartTime.parse(map['maintenanceWindowStartTime']) unless map['maintenanceWindowStartTime'].nil?)
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data
      end
    end

    class Logs
      def self.parse(map)
        data = Types::Logs.new
        data.audit = map['audit']
        data.general = map['general']
        return data
      end
    end

    # Operation Parser for UpdateConfiguration
    class UpdateConfiguration
      def self.parse(http_resp)
        data = Types::UpdateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.created = Time.parse(map['created']) if map['created']
        data.id = map['id']
        data.latest_revision = (Parsers::ConfigurationRevision.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.warnings = (Parsers::List____listOfSanitizationWarning.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    class List____listOfSanitizationWarning
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SanitizationWarning.parse(value) unless value.nil?
        end
        data
      end
    end

    class SanitizationWarning
      def self.parse(map)
        data = Types::SanitizationWarning.new
        data.attribute_name = map['attributeName']
        data.element_name = map['elementName']
        data.reason = map['reason']
        return data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
