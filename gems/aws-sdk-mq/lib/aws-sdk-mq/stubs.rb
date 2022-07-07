# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mq
  module Stubs

    # Operation Stubber for CreateBroker
    class CreateBroker
      def self.default(visited=[])
        {
          broker_arn: 'broker_arn',
          broker_id: 'broker_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerArn'] = stub[:broker_arn] unless stub[:broker_arn].nil?
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConfiguration
    class CreateConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          authentication_strategy: 'authentication_strategy',
          created: Time.now,
          id: 'id',
          latest_revision: Stubs::ConfigurationRevision.default(visited),
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authenticationStrategy'] = stub[:authentication_strategy] unless stub[:authentication_strategy].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConfigurationRevision
    class ConfigurationRevision
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRevision')
        visited = visited + ['ConfigurationRevision']
        {
          created: Time.now,
          description: 'description',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationRevision.new
        data = {}
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # Operation Stubber for CreateTags
    class CreateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBroker
    class DeleteBroker
      def self.default(visited=[])
        {
          broker_id: 'broker_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBroker
    class DescribeBroker
      def self.default(visited=[])
        {
          actions_required: Stubs::List____listOfActionRequired.default(visited),
          authentication_strategy: 'authentication_strategy',
          auto_minor_version_upgrade: false,
          broker_arn: 'broker_arn',
          broker_id: 'broker_id',
          broker_instances: Stubs::List____listOfBrokerInstance.default(visited),
          broker_name: 'broker_name',
          broker_state: 'broker_state',
          configurations: Stubs::Configurations.default(visited),
          created: Time.now,
          deployment_mode: 'deployment_mode',
          encryption_options: Stubs::EncryptionOptions.default(visited),
          engine_type: 'engine_type',
          engine_version: 'engine_version',
          host_instance_type: 'host_instance_type',
          ldap_server_metadata: Stubs::LdapServerMetadataOutput.default(visited),
          logs: Stubs::LogsSummary.default(visited),
          maintenance_window_start_time: Stubs::WeeklyStartTime.default(visited),
          pending_authentication_strategy: 'pending_authentication_strategy',
          pending_engine_version: 'pending_engine_version',
          pending_host_instance_type: 'pending_host_instance_type',
          pending_ldap_server_metadata: Stubs::LdapServerMetadataOutput.default(visited),
          pending_security_groups: Stubs::List____listOf__string.default(visited),
          publicly_accessible: false,
          security_groups: Stubs::List____listOf__string.default(visited),
          storage_type: 'storage_type',
          subnet_ids: Stubs::List____listOf__string.default(visited),
          tags: Stubs::Map____mapOf__string.default(visited),
          users: Stubs::List____listOfUserSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionsRequired'] = Stubs::List____listOfActionRequired.stub(stub[:actions_required]) unless stub[:actions_required].nil?
        data['authenticationStrategy'] = stub[:authentication_strategy] unless stub[:authentication_strategy].nil?
        data['autoMinorVersionUpgrade'] = stub[:auto_minor_version_upgrade] unless stub[:auto_minor_version_upgrade].nil?
        data['brokerArn'] = stub[:broker_arn] unless stub[:broker_arn].nil?
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        data['brokerInstances'] = Stubs::List____listOfBrokerInstance.stub(stub[:broker_instances]) unless stub[:broker_instances].nil?
        data['brokerName'] = stub[:broker_name] unless stub[:broker_name].nil?
        data['brokerState'] = stub[:broker_state] unless stub[:broker_state].nil?
        data['configurations'] = Stubs::Configurations.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['deploymentMode'] = stub[:deployment_mode] unless stub[:deployment_mode].nil?
        data['encryptionOptions'] = Stubs::EncryptionOptions.stub(stub[:encryption_options]) unless stub[:encryption_options].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['hostInstanceType'] = stub[:host_instance_type] unless stub[:host_instance_type].nil?
        data['ldapServerMetadata'] = Stubs::LdapServerMetadataOutput.stub(stub[:ldap_server_metadata]) unless stub[:ldap_server_metadata].nil?
        data['logs'] = Stubs::LogsSummary.stub(stub[:logs]) unless stub[:logs].nil?
        data['maintenanceWindowStartTime'] = Stubs::WeeklyStartTime.stub(stub[:maintenance_window_start_time]) unless stub[:maintenance_window_start_time].nil?
        data['pendingAuthenticationStrategy'] = stub[:pending_authentication_strategy] unless stub[:pending_authentication_strategy].nil?
        data['pendingEngineVersion'] = stub[:pending_engine_version] unless stub[:pending_engine_version].nil?
        data['pendingHostInstanceType'] = stub[:pending_host_instance_type] unless stub[:pending_host_instance_type].nil?
        data['pendingLdapServerMetadata'] = Stubs::LdapServerMetadataOutput.stub(stub[:pending_ldap_server_metadata]) unless stub[:pending_ldap_server_metadata].nil?
        data['pendingSecurityGroups'] = Stubs::List____listOf__string.stub(stub[:pending_security_groups]) unless stub[:pending_security_groups].nil?
        data['publiclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['storageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['subnetIds'] = Stubs::List____listOf__string.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['users'] = Stubs::List____listOfUserSummary.stub(stub[:users]) unless stub[:users].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfUserSummary
    class List____listOfUserSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUserSummary')
        visited = visited + ['List____listOfUserSummary']
        [
          Stubs::UserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserSummary
    class UserSummary
      def self.default(visited=[])
        return nil if visited.include?('UserSummary')
        visited = visited + ['UserSummary']
        {
          pending_change: 'pending_change',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSummary.new
        data = {}
        data['pendingChange'] = stub[:pending_change] unless stub[:pending_change].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LdapServerMetadataOutput
    class LdapServerMetadataOutput
      def self.default(visited=[])
        return nil if visited.include?('LdapServerMetadataOutput')
        visited = visited + ['LdapServerMetadataOutput']
        {
          hosts: Stubs::List____listOf__string.default(visited),
          role_base: 'role_base',
          role_name: 'role_name',
          role_search_matching: 'role_search_matching',
          role_search_subtree: false,
          service_account_username: 'service_account_username',
          user_base: 'user_base',
          user_role_name: 'user_role_name',
          user_search_matching: 'user_search_matching',
          user_search_subtree: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LdapServerMetadataOutput.new
        data = {}
        data['hosts'] = Stubs::List____listOf__string.stub(stub[:hosts]) unless stub[:hosts].nil?
        data['roleBase'] = stub[:role_base] unless stub[:role_base].nil?
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['roleSearchMatching'] = stub[:role_search_matching] unless stub[:role_search_matching].nil?
        data['roleSearchSubtree'] = stub[:role_search_subtree] unless stub[:role_search_subtree].nil?
        data['serviceAccountUsername'] = stub[:service_account_username] unless stub[:service_account_username].nil?
        data['userBase'] = stub[:user_base] unless stub[:user_base].nil?
        data['userRoleName'] = stub[:user_role_name] unless stub[:user_role_name].nil?
        data['userSearchMatching'] = stub[:user_search_matching] unless stub[:user_search_matching].nil?
        data['userSearchSubtree'] = stub[:user_search_subtree] unless stub[:user_search_subtree].nil?
        data
      end
    end

    # Structure Stubber for WeeklyStartTime
    class WeeklyStartTime
      def self.default(visited=[])
        return nil if visited.include?('WeeklyStartTime')
        visited = visited + ['WeeklyStartTime']
        {
          day_of_week: 'day_of_week',
          time_of_day: 'time_of_day',
          time_zone: 'time_zone',
        }
      end

      def self.stub(stub)
        stub ||= Types::WeeklyStartTime.new
        data = {}
        data['dayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data['timeOfDay'] = stub[:time_of_day] unless stub[:time_of_day].nil?
        data['timeZone'] = stub[:time_zone] unless stub[:time_zone].nil?
        data
      end
    end

    # Structure Stubber for LogsSummary
    class LogsSummary
      def self.default(visited=[])
        return nil if visited.include?('LogsSummary')
        visited = visited + ['LogsSummary']
        {
          audit: false,
          audit_log_group: 'audit_log_group',
          general: false,
          general_log_group: 'general_log_group',
          pending: Stubs::PendingLogs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogsSummary.new
        data = {}
        data['audit'] = stub[:audit] unless stub[:audit].nil?
        data['auditLogGroup'] = stub[:audit_log_group] unless stub[:audit_log_group].nil?
        data['general'] = stub[:general] unless stub[:general].nil?
        data['generalLogGroup'] = stub[:general_log_group] unless stub[:general_log_group].nil?
        data['pending'] = Stubs::PendingLogs.stub(stub[:pending]) unless stub[:pending].nil?
        data
      end
    end

    # Structure Stubber for PendingLogs
    class PendingLogs
      def self.default(visited=[])
        return nil if visited.include?('PendingLogs')
        visited = visited + ['PendingLogs']
        {
          audit: false,
          general: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingLogs.new
        data = {}
        data['audit'] = stub[:audit] unless stub[:audit].nil?
        data['general'] = stub[:general] unless stub[:general].nil?
        data
      end
    end

    # Structure Stubber for EncryptionOptions
    class EncryptionOptions
      def self.default(visited=[])
        return nil if visited.include?('EncryptionOptions')
        visited = visited + ['EncryptionOptions']
        {
          kms_key_id: 'kms_key_id',
          use_aws_owned_key: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionOptions.new
        data = {}
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['useAwsOwnedKey'] = stub[:use_aws_owned_key] unless stub[:use_aws_owned_key].nil?
        data
      end
    end

    # Structure Stubber for Configurations
    class Configurations
      def self.default(visited=[])
        return nil if visited.include?('Configurations')
        visited = visited + ['Configurations']
        {
          current: Stubs::ConfigurationId.default(visited),
          history: Stubs::List____listOfConfigurationId.default(visited),
          pending: Stubs::ConfigurationId.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Configurations.new
        data = {}
        data['current'] = Stubs::ConfigurationId.stub(stub[:current]) unless stub[:current].nil?
        data['history'] = Stubs::List____listOfConfigurationId.stub(stub[:history]) unless stub[:history].nil?
        data['pending'] = Stubs::ConfigurationId.stub(stub[:pending]) unless stub[:pending].nil?
        data
      end
    end

    # Structure Stubber for ConfigurationId
    class ConfigurationId
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationId')
        visited = visited + ['ConfigurationId']
        {
          id: 'id',
          revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationId.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # List Stubber for __listOfConfigurationId
    class List____listOfConfigurationId
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConfigurationId')
        visited = visited + ['List____listOfConfigurationId']
        [
          Stubs::ConfigurationId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationId.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for __listOfBrokerInstance
    class List____listOfBrokerInstance
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBrokerInstance')
        visited = visited + ['List____listOfBrokerInstance']
        [
          Stubs::BrokerInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrokerInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrokerInstance
    class BrokerInstance
      def self.default(visited=[])
        return nil if visited.include?('BrokerInstance')
        visited = visited + ['BrokerInstance']
        {
          console_url: 'console_url',
          endpoints: Stubs::List____listOf__string.default(visited),
          ip_address: 'ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerInstance.new
        data = {}
        data['consoleURL'] = stub[:console_url] unless stub[:console_url].nil?
        data['endpoints'] = Stubs::List____listOf__string.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data
      end
    end

    # List Stubber for __listOfActionRequired
    class List____listOfActionRequired
      def self.default(visited=[])
        return nil if visited.include?('List____listOfActionRequired')
        visited = visited + ['List____listOfActionRequired']
        [
          Stubs::ActionRequired.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionRequired.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionRequired
    class ActionRequired
      def self.default(visited=[])
        return nil if visited.include?('ActionRequired')
        visited = visited + ['ActionRequired']
        {
          action_required_code: 'action_required_code',
          action_required_info: 'action_required_info',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionRequired.new
        data = {}
        data['actionRequiredCode'] = stub[:action_required_code] unless stub[:action_required_code].nil?
        data['actionRequiredInfo'] = stub[:action_required_info] unless stub[:action_required_info].nil?
        data
      end
    end

    # Operation Stubber for DescribeBrokerEngineTypes
    class DescribeBrokerEngineTypes
      def self.default(visited=[])
        {
          broker_engine_types: Stubs::List____listOfBrokerEngineType.default(visited),
          max_results: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerEngineTypes'] = Stubs::List____listOfBrokerEngineType.stub(stub[:broker_engine_types]) unless stub[:broker_engine_types].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfBrokerEngineType
    class List____listOfBrokerEngineType
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBrokerEngineType')
        visited = visited + ['List____listOfBrokerEngineType']
        [
          Stubs::BrokerEngineType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrokerEngineType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrokerEngineType
    class BrokerEngineType
      def self.default(visited=[])
        return nil if visited.include?('BrokerEngineType')
        visited = visited + ['BrokerEngineType']
        {
          engine_type: 'engine_type',
          engine_versions: Stubs::List____listOfEngineVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerEngineType.new
        data = {}
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersions'] = Stubs::List____listOfEngineVersion.stub(stub[:engine_versions]) unless stub[:engine_versions].nil?
        data
      end
    end

    # List Stubber for __listOfEngineVersion
    class List____listOfEngineVersion
      def self.default(visited=[])
        return nil if visited.include?('List____listOfEngineVersion')
        visited = visited + ['List____listOfEngineVersion']
        [
          Stubs::EngineVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EngineVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EngineVersion
    class EngineVersion
      def self.default(visited=[])
        return nil if visited.include?('EngineVersion')
        visited = visited + ['EngineVersion']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::EngineVersion.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeBrokerInstanceOptions
    class DescribeBrokerInstanceOptions
      def self.default(visited=[])
        {
          broker_instance_options: Stubs::List____listOfBrokerInstanceOption.default(visited),
          max_results: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerInstanceOptions'] = Stubs::List____listOfBrokerInstanceOption.stub(stub[:broker_instance_options]) unless stub[:broker_instance_options].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfBrokerInstanceOption
    class List____listOfBrokerInstanceOption
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBrokerInstanceOption')
        visited = visited + ['List____listOfBrokerInstanceOption']
        [
          Stubs::BrokerInstanceOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrokerInstanceOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrokerInstanceOption
    class BrokerInstanceOption
      def self.default(visited=[])
        return nil if visited.include?('BrokerInstanceOption')
        visited = visited + ['BrokerInstanceOption']
        {
          availability_zones: Stubs::List____listOfAvailabilityZone.default(visited),
          engine_type: 'engine_type',
          host_instance_type: 'host_instance_type',
          storage_type: 'storage_type',
          supported_deployment_modes: Stubs::List____listOfDeploymentMode.default(visited),
          supported_engine_versions: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerInstanceOption.new
        data = {}
        data['availabilityZones'] = Stubs::List____listOfAvailabilityZone.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['hostInstanceType'] = stub[:host_instance_type] unless stub[:host_instance_type].nil?
        data['storageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['supportedDeploymentModes'] = Stubs::List____listOfDeploymentMode.stub(stub[:supported_deployment_modes]) unless stub[:supported_deployment_modes].nil?
        data['supportedEngineVersions'] = Stubs::List____listOf__string.stub(stub[:supported_engine_versions]) unless stub[:supported_engine_versions].nil?
        data
      end
    end

    # List Stubber for __listOfDeploymentMode
    class List____listOfDeploymentMode
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDeploymentMode')
        visited = visited + ['List____listOfDeploymentMode']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for __listOfAvailabilityZone
    class List____listOfAvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAvailabilityZone')
        visited = visited + ['List____listOfAvailabilityZone']
        [
          Stubs::AvailabilityZone.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AvailabilityZone.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailabilityZone.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfiguration
    class DescribeConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          authentication_strategy: 'authentication_strategy',
          created: Time.now,
          description: 'description',
          engine_type: 'engine_type',
          engine_version: 'engine_version',
          id: 'id',
          latest_revision: Stubs::ConfigurationRevision.default(visited),
          name: 'name',
          tags: Stubs::Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authenticationStrategy'] = stub[:authentication_strategy] unless stub[:authentication_strategy].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.default(visited=[])
        {
          configuration_id: 'configuration_id',
          created: Time.now,
          data: 'data',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['data'] = stub[:data] unless stub[:data].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          broker_id: 'broker_id',
          console_access: false,
          groups: Stubs::List____listOf__string.default(visited),
          pending: Stubs::UserPendingChanges.default(visited),
          username: 'username',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        data['consoleAccess'] = stub[:console_access] unless stub[:console_access].nil?
        data['groups'] = Stubs::List____listOf__string.stub(stub[:groups]) unless stub[:groups].nil?
        data['pending'] = Stubs::UserPendingChanges.stub(stub[:pending]) unless stub[:pending].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UserPendingChanges
    class UserPendingChanges
      def self.default(visited=[])
        return nil if visited.include?('UserPendingChanges')
        visited = visited + ['UserPendingChanges']
        {
          console_access: false,
          groups: Stubs::List____listOf__string.default(visited),
          pending_change: 'pending_change',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPendingChanges.new
        data = {}
        data['consoleAccess'] = stub[:console_access] unless stub[:console_access].nil?
        data['groups'] = Stubs::List____listOf__string.stub(stub[:groups]) unless stub[:groups].nil?
        data['pendingChange'] = stub[:pending_change] unless stub[:pending_change].nil?
        data
      end
    end

    # Operation Stubber for ListBrokers
    class ListBrokers
      def self.default(visited=[])
        {
          broker_summaries: Stubs::List____listOfBrokerSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerSummaries'] = Stubs::List____listOfBrokerSummary.stub(stub[:broker_summaries]) unless stub[:broker_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfBrokerSummary
    class List____listOfBrokerSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBrokerSummary')
        visited = visited + ['List____listOfBrokerSummary']
        [
          Stubs::BrokerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrokerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrokerSummary
    class BrokerSummary
      def self.default(visited=[])
        return nil if visited.include?('BrokerSummary')
        visited = visited + ['BrokerSummary']
        {
          broker_arn: 'broker_arn',
          broker_id: 'broker_id',
          broker_name: 'broker_name',
          broker_state: 'broker_state',
          created: Time.now,
          deployment_mode: 'deployment_mode',
          engine_type: 'engine_type',
          host_instance_type: 'host_instance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::BrokerSummary.new
        data = {}
        data['brokerArn'] = stub[:broker_arn] unless stub[:broker_arn].nil?
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        data['brokerName'] = stub[:broker_name] unless stub[:broker_name].nil?
        data['brokerState'] = stub[:broker_state] unless stub[:broker_state].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['deploymentMode'] = stub[:deployment_mode] unless stub[:deployment_mode].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['hostInstanceType'] = stub[:host_instance_type] unless stub[:host_instance_type].nil?
        data
      end
    end

    # Operation Stubber for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.default(visited=[])
        {
          configuration_id: 'configuration_id',
          max_results: 1,
          next_token: 'next_token',
          revisions: Stubs::List____listOfConfigurationRevision.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['revisions'] = Stubs::List____listOfConfigurationRevision.stub(stub[:revisions]) unless stub[:revisions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConfigurationRevision
    class List____listOfConfigurationRevision
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConfigurationRevision')
        visited = visited + ['List____listOfConfigurationRevision']
        [
          Stubs::ConfigurationRevision.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationRevision.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConfigurations
    class ListConfigurations
      def self.default(visited=[])
        {
          configurations: Stubs::List____listOfConfiguration.default(visited),
          max_results: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configurations'] = Stubs::List____listOfConfiguration.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConfiguration
    class List____listOfConfiguration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConfiguration')
        visited = visited + ['List____listOfConfiguration']
        [
          Stubs::Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          arn: 'arn',
          authentication_strategy: 'authentication_strategy',
          created: Time.now,
          description: 'description',
          engine_type: 'engine_type',
          engine_version: 'engine_version',
          id: 'id',
          latest_revision: Stubs::ConfigurationRevision.default(visited),
          name: 'name',
          tags: Stubs::Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Configuration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['authenticationStrategy'] = stub[:authentication_strategy] unless stub[:authentication_strategy].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['engineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: Stubs::Map____mapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Map____mapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          broker_id: 'broker_id',
          max_results: 1,
          next_token: 'next_token',
          users: Stubs::List____listOfUserSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['users'] = Stubs::List____listOfUserSummary.stub(stub[:users]) unless stub[:users].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RebootBroker
    class RebootBroker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBroker
    class UpdateBroker
      def self.default(visited=[])
        {
          authentication_strategy: 'authentication_strategy',
          auto_minor_version_upgrade: false,
          broker_id: 'broker_id',
          configuration: Stubs::ConfigurationId.default(visited),
          engine_version: 'engine_version',
          host_instance_type: 'host_instance_type',
          ldap_server_metadata: Stubs::LdapServerMetadataOutput.default(visited),
          logs: Stubs::Logs.default(visited),
          maintenance_window_start_time: Stubs::WeeklyStartTime.default(visited),
          security_groups: Stubs::List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authenticationStrategy'] = stub[:authentication_strategy] unless stub[:authentication_strategy].nil?
        data['autoMinorVersionUpgrade'] = stub[:auto_minor_version_upgrade] unless stub[:auto_minor_version_upgrade].nil?
        data['brokerId'] = stub[:broker_id] unless stub[:broker_id].nil?
        data['configuration'] = Stubs::ConfigurationId.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['hostInstanceType'] = stub[:host_instance_type] unless stub[:host_instance_type].nil?
        data['ldapServerMetadata'] = Stubs::LdapServerMetadataOutput.stub(stub[:ldap_server_metadata]) unless stub[:ldap_server_metadata].nil?
        data['logs'] = Stubs::Logs.stub(stub[:logs]) unless stub[:logs].nil?
        data['maintenanceWindowStartTime'] = Stubs::WeeklyStartTime.stub(stub[:maintenance_window_start_time]) unless stub[:maintenance_window_start_time].nil?
        data['securityGroups'] = Stubs::List____listOf__string.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Logs
    class Logs
      def self.default(visited=[])
        return nil if visited.include?('Logs')
        visited = visited + ['Logs']
        {
          audit: false,
          general: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Logs.new
        data = {}
        data['audit'] = stub[:audit] unless stub[:audit].nil?
        data['general'] = stub[:general] unless stub[:general].nil?
        data
      end
    end

    # Operation Stubber for UpdateConfiguration
    class UpdateConfiguration
      def self.default(visited=[])
        {
          arn: 'arn',
          created: Time.now,
          id: 'id',
          latest_revision: Stubs::ConfigurationRevision.default(visited),
          name: 'name',
          warnings: Stubs::List____listOfSanitizationWarning.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['latestRevision'] = Stubs::ConfigurationRevision.stub(stub[:latest_revision]) unless stub[:latest_revision].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['warnings'] = Stubs::List____listOfSanitizationWarning.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfSanitizationWarning
    class List____listOfSanitizationWarning
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSanitizationWarning')
        visited = visited + ['List____listOfSanitizationWarning']
        [
          Stubs::SanitizationWarning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SanitizationWarning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SanitizationWarning
    class SanitizationWarning
      def self.default(visited=[])
        return nil if visited.include?('SanitizationWarning')
        visited = visited + ['SanitizationWarning']
        {
          attribute_name: 'attribute_name',
          element_name: 'element_name',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::SanitizationWarning.new
        data = {}
        data['attributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['elementName'] = stub[:element_name] unless stub[:element_name].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end