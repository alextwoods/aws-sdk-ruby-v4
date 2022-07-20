# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Mq
  module Builders

    # Operation Builder for CreateBroker
    class CreateBroker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/brokers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authenticationStrategy'] = input[:authentication_strategy] unless input[:authentication_strategy].nil?
        data['autoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        data['brokerName'] = input[:broker_name] unless input[:broker_name].nil?
        data['configuration'] = ConfigurationId.build(input[:configuration]) unless input[:configuration].nil?
        data['creatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['deploymentMode'] = input[:deployment_mode] unless input[:deployment_mode].nil?
        data['encryptionOptions'] = EncryptionOptions.build(input[:encryption_options]) unless input[:encryption_options].nil?
        data['engineType'] = input[:engine_type] unless input[:engine_type].nil?
        data['engineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['hostInstanceType'] = input[:host_instance_type] unless input[:host_instance_type].nil?
        data['ldapServerMetadata'] = LdapServerMetadataInput.build(input[:ldap_server_metadata]) unless input[:ldap_server_metadata].nil?
        data['logs'] = Logs.build(input[:logs]) unless input[:logs].nil?
        data['maintenanceWindowStartTime'] = WeeklyStartTime.build(input[:maintenance_window_start_time]) unless input[:maintenance_window_start_time].nil?
        data['publiclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['securityGroups'] = List____listOf__string.build(input[:security_groups]) unless input[:security_groups].nil?
        data['storageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['subnetIds'] = List____listOf__string.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['tags'] = Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['users'] = List____listOfUser.build(input[:users]) unless input[:users].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfUser
    class List____listOfUser
      def self.build(input)
        data = []
        input.each do |element|
          data << User.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for User
    class User
      def self.build(input)
        data = {}
        data['consoleAccess'] = input[:console_access] unless input[:console_access].nil?
        data['groups'] = List____listOf__string.build(input[:groups]) unless input[:groups].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data['username'] = input[:username] unless input[:username].nil?
        data
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for __mapOf__string
    class Map____mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for WeeklyStartTime
    class WeeklyStartTime
      def self.build(input)
        data = {}
        data['dayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data['timeOfDay'] = input[:time_of_day] unless input[:time_of_day].nil?
        data['timeZone'] = input[:time_zone] unless input[:time_zone].nil?
        data
      end
    end

    # Structure Builder for Logs
    class Logs
      def self.build(input)
        data = {}
        data['audit'] = input[:audit] unless input[:audit].nil?
        data['general'] = input[:general] unless input[:general].nil?
        data
      end
    end

    # Structure Builder for LdapServerMetadataInput
    class LdapServerMetadataInput
      def self.build(input)
        data = {}
        data['hosts'] = List____listOf__string.build(input[:hosts]) unless input[:hosts].nil?
        data['roleBase'] = input[:role_base] unless input[:role_base].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['roleSearchMatching'] = input[:role_search_matching] unless input[:role_search_matching].nil?
        data['roleSearchSubtree'] = input[:role_search_subtree] unless input[:role_search_subtree].nil?
        data['serviceAccountPassword'] = input[:service_account_password] unless input[:service_account_password].nil?
        data['serviceAccountUsername'] = input[:service_account_username] unless input[:service_account_username].nil?
        data['userBase'] = input[:user_base] unless input[:user_base].nil?
        data['userRoleName'] = input[:user_role_name] unless input[:user_role_name].nil?
        data['userSearchMatching'] = input[:user_search_matching] unless input[:user_search_matching].nil?
        data['userSearchSubtree'] = input[:user_search_subtree] unless input[:user_search_subtree].nil?
        data
      end
    end

    # Structure Builder for EncryptionOptions
    class EncryptionOptions
      def self.build(input)
        data = {}
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['useAwsOwnedKey'] = input[:use_aws_owned_key] unless input[:use_aws_owned_key].nil?
        data
      end
    end

    # Structure Builder for ConfigurationId
    class ConfigurationId
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['revision'] = input[:revision] unless input[:revision].nil?
        data
      end
    end

    # Operation Builder for CreateConfiguration
    class CreateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authenticationStrategy'] = input[:authentication_strategy] unless input[:authentication_strategy].nil?
        data['engineType'] = input[:engine_type] unless input[:engine_type].nil?
        data['engineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['tags'] = Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        if input[:username].to_s.empty?
          raise ArgumentError, "HTTP label :username cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/users/%<Username>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s),
            Username: Hearth::HTTP.uri_escape(input[:username].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['consoleAccess'] = input[:console_access] unless input[:console_access].nil?
        data['groups'] = List____listOf__string.build(input[:groups]) unless input[:groups].nil?
        data['password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBroker
    class DeleteBroker
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        if input[:username].to_s.empty?
          raise ArgumentError, "HTTP label :username cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/users/%<Username>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s),
            Username: Hearth::HTTP.uri_escape(input[:username].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBroker
    class DescribeBroker
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBrokerEngineTypes
    class DescribeBrokerEngineTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/broker-engine-types')
        params = Hearth::Query::ParamList.new
        params['engineType'] = input[:engine_type].to_s unless input[:engine_type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBrokerInstanceOptions
    class DescribeBrokerInstanceOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/broker-instance-options')
        params = Hearth::Query::ParamList.new
        params['engineType'] = input[:engine_type].to_s unless input[:engine_type].nil?
        params['hostInstanceType'] = input[:host_instance_type].to_s unless input[:host_instance_type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['storageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeConfiguration
    class DescribeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<ConfigurationId>s',
            ConfigurationId: Hearth::HTTP.uri_escape(input[:configuration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeConfigurationRevision
    class DescribeConfigurationRevision
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_id cannot be nil or empty."
        end
        if input[:configuration_revision].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_revision cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<ConfigurationId>s/revisions/%<ConfigurationRevision>s',
            ConfigurationId: Hearth::HTTP.uri_escape(input[:configuration_id].to_s),
            ConfigurationRevision: Hearth::HTTP.uri_escape(input[:configuration_revision].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        if input[:username].to_s.empty?
          raise ArgumentError, "HTTP label :username cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/users/%<Username>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s),
            Username: Hearth::HTTP.uri_escape(input[:username].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBrokers
    class ListBrokers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/brokers')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurationRevisions
    class ListConfigurationRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<ConfigurationId>s/revisions',
            ConfigurationId: Hearth::HTTP.uri_escape(input[:configuration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurations
    class ListConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/configurations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/users',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RebootBroker
    class RebootBroker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/reboot',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateBroker
    class UpdateBroker
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authenticationStrategy'] = input[:authentication_strategy] unless input[:authentication_strategy].nil?
        data['autoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        data['configuration'] = ConfigurationId.build(input[:configuration]) unless input[:configuration].nil?
        data['engineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['hostInstanceType'] = input[:host_instance_type] unless input[:host_instance_type].nil?
        data['ldapServerMetadata'] = LdapServerMetadataInput.build(input[:ldap_server_metadata]) unless input[:ldap_server_metadata].nil?
        data['logs'] = Logs.build(input[:logs]) unless input[:logs].nil?
        data['maintenanceWindowStartTime'] = WeeklyStartTime.build(input[:maintenance_window_start_time]) unless input[:maintenance_window_start_time].nil?
        data['securityGroups'] = List____listOf__string.build(input[:security_groups]) unless input[:security_groups].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConfiguration
    class UpdateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/configurations/%<ConfigurationId>s',
            ConfigurationId: Hearth::HTTP.uri_escape(input[:configuration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['data'] = input[:data] unless input[:data].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:broker_id].to_s.empty?
          raise ArgumentError, "HTTP label :broker_id cannot be nil or empty."
        end
        if input[:username].to_s.empty?
          raise ArgumentError, "HTTP label :username cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/brokers/%<BrokerId>s/users/%<Username>s',
            BrokerId: Hearth::HTTP.uri_escape(input[:broker_id].to_s),
            Username: Hearth::HTTP.uri_escape(input[:username].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['consoleAccess'] = input[:console_access] unless input[:console_access].nil?
        data['groups'] = List____listOf__string.build(input[:groups]) unless input[:groups].nil?
        data['password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
