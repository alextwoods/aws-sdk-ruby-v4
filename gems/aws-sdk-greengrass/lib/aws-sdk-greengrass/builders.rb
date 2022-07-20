# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Greengrass
  module Builders

    # Operation Builder for AssociateRoleToGroup
    class AssociateRoleToGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/role',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConnectorDefinition
    class CreateConnectorDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/connectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::ConnectorDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectorDefinitionVersion
    class ConnectorDefinitionVersion
      def self.build(input)
        data = {}
        data['Connectors'] = Builders::List____listOfConnector.build(input[:connectors]) unless input[:connectors].nil?
        data
      end
    end

    # List Builder for __listOfConnector
    class List____listOfConnector
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Connector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Connector
    class Connector
      def self.build(input)
        data = {}
        data['ConnectorArn'] = input[:connector_arn] unless input[:connector_arn].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Parameters'] = Builders::Map____mapOf__string.build(input[:parameters]) unless input[:parameters].nil?
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

    # Operation Builder for CreateConnectorDefinitionVersion
    class CreateConnectorDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s/versions',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Connectors'] = Builders::List____listOfConnector.build(input[:connectors]) unless input[:connectors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateCoreDefinition
    class CreateCoreDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/cores')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::CoreDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for CoreDefinitionVersion
    class CoreDefinitionVersion
      def self.build(input)
        data = {}
        data['Cores'] = Builders::List____listOfCore.build(input[:cores]) unless input[:cores].nil?
        data
      end
    end

    # List Builder for __listOfCore
    class List____listOfCore
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Core.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Core
    class Core
      def self.build(input)
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['SyncShadow'] = input[:sync_shadow] unless input[:sync_shadow].nil?
        data['ThingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        data
      end
    end

    # Operation Builder for CreateCoreDefinitionVersion
    class CreateCoreDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s/versions',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Cores'] = Builders::List____listOfCore.build(input[:cores]) unless input[:cores].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/deployments',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['DeploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['GroupVersionId'] = input[:group_version_id] unless input[:group_version_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateDeviceDefinition
    class CreateDeviceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/devices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::DeviceDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for DeviceDefinitionVersion
    class DeviceDefinitionVersion
      def self.build(input)
        data = {}
        data['Devices'] = Builders::List____listOfDevice.build(input[:devices]) unless input[:devices].nil?
        data
      end
    end

    # List Builder for __listOfDevice
    class List____listOfDevice
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Device.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Device
    class Device
      def self.build(input)
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['SyncShadow'] = input[:sync_shadow] unless input[:sync_shadow].nil?
        data['ThingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        data
      end
    end

    # Operation Builder for CreateDeviceDefinitionVersion
    class CreateDeviceDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s/versions',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Devices'] = Builders::List____listOfDevice.build(input[:devices]) unless input[:devices].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateFunctionDefinition
    class CreateFunctionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/functions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::FunctionDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for FunctionDefinitionVersion
    class FunctionDefinitionVersion
      def self.build(input)
        data = {}
        data['DefaultConfig'] = Builders::FunctionDefaultConfig.build(input[:default_config]) unless input[:default_config].nil?
        data['Functions'] = Builders::List____listOfFunction.build(input[:functions]) unless input[:functions].nil?
        data
      end
    end

    # List Builder for __listOfFunction
    class List____listOfFunction
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Function.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Function
    class Function
      def self.build(input)
        data = {}
        data['FunctionArn'] = input[:function_arn] unless input[:function_arn].nil?
        data['FunctionConfiguration'] = Builders::FunctionConfiguration.build(input[:function_configuration]) unless input[:function_configuration].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for FunctionConfiguration
    class FunctionConfiguration
      def self.build(input)
        data = {}
        data['EncodingType'] = input[:encoding_type] unless input[:encoding_type].nil?
        data['Environment'] = Builders::FunctionConfigurationEnvironment.build(input[:environment]) unless input[:environment].nil?
        data['ExecArgs'] = input[:exec_args] unless input[:exec_args].nil?
        data['Executable'] = input[:executable] unless input[:executable].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['Pinned'] = input[:pinned] unless input[:pinned].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for FunctionConfigurationEnvironment
    class FunctionConfigurationEnvironment
      def self.build(input)
        data = {}
        data['AccessSysfs'] = input[:access_sysfs] unless input[:access_sysfs].nil?
        data['Execution'] = Builders::FunctionExecutionConfig.build(input[:execution]) unless input[:execution].nil?
        data['ResourceAccessPolicies'] = Builders::List____listOfResourceAccessPolicy.build(input[:resource_access_policies]) unless input[:resource_access_policies].nil?
        data['Variables'] = Builders::Map____mapOf__string.build(input[:variables]) unless input[:variables].nil?
        data
      end
    end

    # List Builder for __listOfResourceAccessPolicy
    class List____listOfResourceAccessPolicy
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceAccessPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceAccessPolicy
    class ResourceAccessPolicy
      def self.build(input)
        data = {}
        data['Permission'] = input[:permission] unless input[:permission].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data
      end
    end

    # Structure Builder for FunctionExecutionConfig
    class FunctionExecutionConfig
      def self.build(input)
        data = {}
        data['IsolationMode'] = input[:isolation_mode] unless input[:isolation_mode].nil?
        data['RunAs'] = Builders::FunctionRunAsConfig.build(input[:run_as]) unless input[:run_as].nil?
        data
      end
    end

    # Structure Builder for FunctionRunAsConfig
    class FunctionRunAsConfig
      def self.build(input)
        data = {}
        data['Gid'] = input[:gid] unless input[:gid].nil?
        data['Uid'] = input[:uid] unless input[:uid].nil?
        data
      end
    end

    # Structure Builder for FunctionDefaultConfig
    class FunctionDefaultConfig
      def self.build(input)
        data = {}
        data['Execution'] = Builders::FunctionDefaultExecutionConfig.build(input[:execution]) unless input[:execution].nil?
        data
      end
    end

    # Structure Builder for FunctionDefaultExecutionConfig
    class FunctionDefaultExecutionConfig
      def self.build(input)
        data = {}
        data['IsolationMode'] = input[:isolation_mode] unless input[:isolation_mode].nil?
        data['RunAs'] = Builders::FunctionRunAsConfig.build(input[:run_as]) unless input[:run_as].nil?
        data
      end
    end

    # Operation Builder for CreateFunctionDefinitionVersion
    class CreateFunctionDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s/versions',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultConfig'] = Builders::FunctionDefaultConfig.build(input[:default_config]) unless input[:default_config].nil?
        data['Functions'] = Builders::List____listOfFunction.build(input[:functions]) unless input[:functions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::GroupVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for GroupVersion
    class GroupVersion
      def self.build(input)
        data = {}
        data['ConnectorDefinitionVersionArn'] = input[:connector_definition_version_arn] unless input[:connector_definition_version_arn].nil?
        data['CoreDefinitionVersionArn'] = input[:core_definition_version_arn] unless input[:core_definition_version_arn].nil?
        data['DeviceDefinitionVersionArn'] = input[:device_definition_version_arn] unless input[:device_definition_version_arn].nil?
        data['FunctionDefinitionVersionArn'] = input[:function_definition_version_arn] unless input[:function_definition_version_arn].nil?
        data['LoggerDefinitionVersionArn'] = input[:logger_definition_version_arn] unless input[:logger_definition_version_arn].nil?
        data['ResourceDefinitionVersionArn'] = input[:resource_definition_version_arn] unless input[:resource_definition_version_arn].nil?
        data['SubscriptionDefinitionVersionArn'] = input[:subscription_definition_version_arn] unless input[:subscription_definition_version_arn].nil?
        data
      end
    end

    # Operation Builder for CreateGroupCertificateAuthority
    class CreateGroupCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/certificateauthorities',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateGroupVersion
    class CreateGroupVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/versions',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConnectorDefinitionVersionArn'] = input[:connector_definition_version_arn] unless input[:connector_definition_version_arn].nil?
        data['CoreDefinitionVersionArn'] = input[:core_definition_version_arn] unless input[:core_definition_version_arn].nil?
        data['DeviceDefinitionVersionArn'] = input[:device_definition_version_arn] unless input[:device_definition_version_arn].nil?
        data['FunctionDefinitionVersionArn'] = input[:function_definition_version_arn] unless input[:function_definition_version_arn].nil?
        data['LoggerDefinitionVersionArn'] = input[:logger_definition_version_arn] unless input[:logger_definition_version_arn].nil?
        data['ResourceDefinitionVersionArn'] = input[:resource_definition_version_arn] unless input[:resource_definition_version_arn].nil?
        data['SubscriptionDefinitionVersionArn'] = input[:subscription_definition_version_arn] unless input[:subscription_definition_version_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateLoggerDefinition
    class CreateLoggerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/loggers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::LoggerDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for LoggerDefinitionVersion
    class LoggerDefinitionVersion
      def self.build(input)
        data = {}
        data['Loggers'] = Builders::List____listOfLogger.build(input[:loggers]) unless input[:loggers].nil?
        data
      end
    end

    # List Builder for __listOfLogger
    class List____listOfLogger
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Logger.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Logger
    class Logger
      def self.build(input)
        data = {}
        data['Component'] = input[:component] unless input[:component].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Level'] = input[:level] unless input[:level].nil?
        data['Space'] = input[:space] unless input[:space].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateLoggerDefinitionVersion
    class CreateLoggerDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s/versions',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Loggers'] = Builders::List____listOfLogger.build(input[:loggers]) unless input[:loggers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateResourceDefinition
    class CreateResourceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::ResourceDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for ResourceDefinitionVersion
    class ResourceDefinitionVersion
      def self.build(input)
        data = {}
        data['Resources'] = Builders::List____listOfResource.build(input[:resources]) unless input[:resources].nil?
        data
      end
    end

    # List Builder for __listOfResource
    class List____listOfResource
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ResourceDataContainer'] = Builders::ResourceDataContainer.build(input[:resource_data_container]) unless input[:resource_data_container].nil?
        data
      end
    end

    # Structure Builder for ResourceDataContainer
    class ResourceDataContainer
      def self.build(input)
        data = {}
        data['LocalDeviceResourceData'] = Builders::LocalDeviceResourceData.build(input[:local_device_resource_data]) unless input[:local_device_resource_data].nil?
        data['LocalVolumeResourceData'] = Builders::LocalVolumeResourceData.build(input[:local_volume_resource_data]) unless input[:local_volume_resource_data].nil?
        data['S3MachineLearningModelResourceData'] = Builders::S3MachineLearningModelResourceData.build(input[:s3_machine_learning_model_resource_data]) unless input[:s3_machine_learning_model_resource_data].nil?
        data['SageMakerMachineLearningModelResourceData'] = Builders::SageMakerMachineLearningModelResourceData.build(input[:sage_maker_machine_learning_model_resource_data]) unless input[:sage_maker_machine_learning_model_resource_data].nil?
        data['SecretsManagerSecretResourceData'] = Builders::SecretsManagerSecretResourceData.build(input[:secrets_manager_secret_resource_data]) unless input[:secrets_manager_secret_resource_data].nil?
        data
      end
    end

    # Structure Builder for SecretsManagerSecretResourceData
    class SecretsManagerSecretResourceData
      def self.build(input)
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['AdditionalStagingLabelsToDownload'] = Builders::List____listOf__string.build(input[:additional_staging_labels_to_download]) unless input[:additional_staging_labels_to_download].nil?
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

    # Structure Builder for SageMakerMachineLearningModelResourceData
    class SageMakerMachineLearningModelResourceData
      def self.build(input)
        data = {}
        data['DestinationPath'] = input[:destination_path] unless input[:destination_path].nil?
        data['OwnerSetting'] = Builders::ResourceDownloadOwnerSetting.build(input[:owner_setting]) unless input[:owner_setting].nil?
        data['SageMakerJobArn'] = input[:sage_maker_job_arn] unless input[:sage_maker_job_arn].nil?
        data
      end
    end

    # Structure Builder for ResourceDownloadOwnerSetting
    class ResourceDownloadOwnerSetting
      def self.build(input)
        data = {}
        data['GroupOwner'] = input[:group_owner] unless input[:group_owner].nil?
        data['GroupPermission'] = input[:group_permission] unless input[:group_permission].nil?
        data
      end
    end

    # Structure Builder for S3MachineLearningModelResourceData
    class S3MachineLearningModelResourceData
      def self.build(input)
        data = {}
        data['DestinationPath'] = input[:destination_path] unless input[:destination_path].nil?
        data['OwnerSetting'] = Builders::ResourceDownloadOwnerSetting.build(input[:owner_setting]) unless input[:owner_setting].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for LocalVolumeResourceData
    class LocalVolumeResourceData
      def self.build(input)
        data = {}
        data['DestinationPath'] = input[:destination_path] unless input[:destination_path].nil?
        data['GroupOwnerSetting'] = Builders::GroupOwnerSetting.build(input[:group_owner_setting]) unless input[:group_owner_setting].nil?
        data['SourcePath'] = input[:source_path] unless input[:source_path].nil?
        data
      end
    end

    # Structure Builder for GroupOwnerSetting
    class GroupOwnerSetting
      def self.build(input)
        data = {}
        data['AutoAddGroupOwner'] = input[:auto_add_group_owner] unless input[:auto_add_group_owner].nil?
        data['GroupOwner'] = input[:group_owner] unless input[:group_owner].nil?
        data
      end
    end

    # Structure Builder for LocalDeviceResourceData
    class LocalDeviceResourceData
      def self.build(input)
        data = {}
        data['GroupOwnerSetting'] = Builders::GroupOwnerSetting.build(input[:group_owner_setting]) unless input[:group_owner_setting].nil?
        data['SourcePath'] = input[:source_path] unless input[:source_path].nil?
        data
      end
    end

    # Operation Builder for CreateResourceDefinitionVersion
    class CreateResourceDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s/versions',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Resources'] = Builders::List____listOfResource.build(input[:resources]) unless input[:resources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for CreateSoftwareUpdateJob
    class CreateSoftwareUpdateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/updates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['S3UrlSignerRole'] = input[:s3_url_signer_role] unless input[:s3_url_signer_role].nil?
        data['SoftwareToUpdate'] = input[:software_to_update] unless input[:software_to_update].nil?
        data['UpdateAgentLogLevel'] = input[:update_agent_log_level] unless input[:update_agent_log_level].nil?
        data['UpdateTargets'] = Builders::UpdateTargets.build(input[:update_targets]) unless input[:update_targets].nil?
        data['UpdateTargetsArchitecture'] = input[:update_targets_architecture] unless input[:update_targets_architecture].nil?
        data['UpdateTargetsOperatingSystem'] = input[:update_targets_operating_system] unless input[:update_targets_operating_system].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # List Builder for UpdateTargets
    class UpdateTargets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSubscriptionDefinition
    class CreateSubscriptionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/definition/subscriptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialVersion'] = Builders::SubscriptionDefinitionVersion.build(input[:initial_version]) unless input[:initial_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Structure Builder for SubscriptionDefinitionVersion
    class SubscriptionDefinitionVersion
      def self.build(input)
        data = {}
        data['Subscriptions'] = Builders::List____listOfSubscription.build(input[:subscriptions]) unless input[:subscriptions].nil?
        data
      end
    end

    # List Builder for __listOfSubscription
    class List____listOfSubscription
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Subscription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Subscription
    class Subscription
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data
      end
    end

    # Operation Builder for CreateSubscriptionDefinitionVersion
    class CreateSubscriptionDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s/versions',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Subscriptions'] = Builders::List____listOfSubscription.build(input[:subscriptions]) unless input[:subscriptions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for DeleteConnectorDefinition
    class DeleteConnectorDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCoreDefinition
    class DeleteCoreDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDeviceDefinition
    class DeleteDeviceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFunctionDefinition
    class DeleteFunctionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteLoggerDefinition
    class DeleteLoggerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourceDefinition
    class DeleteResourceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSubscriptionDefinition
    class DeleteSubscriptionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateRoleFromGroup
    class DisassociateRoleFromGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/role',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssociatedRole
    class GetAssociatedRole
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/role',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBulkDeploymentStatus
    class GetBulkDeploymentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bulk_deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :bulk_deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/bulk/deployments/%<BulkDeploymentId>s/status',
            BulkDeploymentId: Hearth::HTTP.uri_escape(input[:bulk_deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectivityInfo
    class GetConnectivityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<ThingName>s/connectivityInfo',
            ThingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectorDefinition
    class GetConnectorDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnectorDefinitionVersion
    class GetConnectorDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        if input[:connector_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s/versions/%<ConnectorDefinitionVersionId>s',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s),
            ConnectorDefinitionVersionId: Hearth::HTTP.uri_escape(input[:connector_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCoreDefinition
    class GetCoreDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCoreDefinitionVersion
    class GetCoreDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        if input[:core_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s/versions/%<CoreDefinitionVersionId>s',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s),
            CoreDefinitionVersionId: Hearth::HTTP.uri_escape(input[:core_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeploymentStatus
    class GetDeploymentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/deployments/%<DeploymentId>s/status',
            DeploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s),
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeviceDefinition
    class GetDeviceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeviceDefinitionVersion
    class GetDeviceDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        if input[:device_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s/versions/%<DeviceDefinitionVersionId>s',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s),
            DeviceDefinitionVersionId: Hearth::HTTP.uri_escape(input[:device_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFunctionDefinition
    class GetFunctionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFunctionDefinitionVersion
    class GetFunctionDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        if input[:function_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s/versions/%<FunctionDefinitionVersionId>s',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s),
            FunctionDefinitionVersionId: Hearth::HTTP.uri_escape(input[:function_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGroup
    class GetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGroupCertificateAuthority
    class GetGroupCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:certificate_authority_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_authority_id cannot be nil or empty."
        end
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/certificateauthorities/%<CertificateAuthorityId>s',
            CertificateAuthorityId: Hearth::HTTP.uri_escape(input[:certificate_authority_id].to_s),
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGroupCertificateConfiguration
    class GetGroupCertificateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/certificateauthorities/configuration/expiry',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGroupVersion
    class GetGroupVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        if input[:group_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/versions/%<GroupVersionId>s',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s),
            GroupVersionId: Hearth::HTTP.uri_escape(input[:group_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLoggerDefinition
    class GetLoggerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLoggerDefinitionVersion
    class GetLoggerDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        if input[:logger_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s/versions/%<LoggerDefinitionVersionId>s',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s),
            LoggerDefinitionVersionId: Hearth::HTTP.uri_escape(input[:logger_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceDefinition
    class GetResourceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceDefinitionVersion
    class GetResourceDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        if input[:resource_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s/versions/%<ResourceDefinitionVersionId>s',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s),
            ResourceDefinitionVersionId: Hearth::HTTP.uri_escape(input[:resource_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/servicerole')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSubscriptionDefinition
    class GetSubscriptionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSubscriptionDefinitionVersion
    class GetSubscriptionDefinitionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        if input[:subscription_definition_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s/versions/%<SubscriptionDefinitionVersionId>s',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s),
            SubscriptionDefinitionVersionId: Hearth::HTTP.uri_escape(input[:subscription_definition_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetThingRuntimeConfiguration
    class GetThingRuntimeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<ThingName>s/runtimeconfig',
            ThingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBulkDeploymentDetailedReports
    class ListBulkDeploymentDetailedReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bulk_deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :bulk_deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/bulk/deployments/%<BulkDeploymentId>s/detailed-reports',
            BulkDeploymentId: Hearth::HTTP.uri_escape(input[:bulk_deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBulkDeployments
    class ListBulkDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/bulk/deployments')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConnectorDefinitionVersions
    class ListConnectorDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s/versions',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConnectorDefinitions
    class ListConnectorDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/connectors')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCoreDefinitionVersions
    class ListCoreDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s/versions',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCoreDefinitions
    class ListCoreDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/cores')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeployments
    class ListDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/deployments',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeviceDefinitionVersions
    class ListDeviceDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s/versions',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeviceDefinitions
    class ListDeviceDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/devices')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFunctionDefinitionVersions
    class ListFunctionDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s/versions',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFunctionDefinitions
    class ListFunctionDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/functions')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroupCertificateAuthorities
    class ListGroupCertificateAuthorities
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/certificateauthorities',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroupVersions
    class ListGroupVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/versions',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/groups')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLoggerDefinitionVersions
    class ListLoggerDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s/versions',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLoggerDefinitions
    class ListLoggerDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/loggers')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResourceDefinitionVersions
    class ListResourceDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s/versions',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResourceDefinitions
    class ListResourceDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/resources')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSubscriptionDefinitionVersions
    class ListSubscriptionDefinitionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s/versions',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSubscriptionDefinitions
    class ListSubscriptionDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/greengrass/definition/subscriptions')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResetDeployments
    class ResetDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/deployments/$reset',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for StartBulkDeployment
    class StartBulkDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/greengrass/bulk/deployments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['InputFileUri'] = input[:input_file_uri] unless input[:input_file_uri].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:amzn_client_token] unless input[:amzn_client_token].nil? || input[:amzn_client_token].empty?
      end
    end

    # Operation Builder for StopBulkDeployment
    class StopBulkDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bulk_deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :bulk_deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/bulk/deployments/%<BulkDeploymentId>s/$stop',
            BulkDeploymentId: Hearth::HTTP.uri_escape(input[:bulk_deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
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

    # Operation Builder for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<ThingName>s/connectivityInfo',
            ThingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConnectivityInfo'] = Builders::List____listOfConnectivityInfo.build(input[:connectivity_info]) unless input[:connectivity_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfConnectivityInfo
    class List____listOfConnectivityInfo
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConnectivityInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectivityInfo
    class ConnectivityInfo
      def self.build(input)
        data = {}
        data['HostAddress'] = input[:host_address] unless input[:host_address].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['PortNumber'] = input[:port_number] unless input[:port_number].nil?
        data
      end
    end

    # Operation Builder for UpdateConnectorDefinition
    class UpdateConnectorDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:connector_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :connector_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/connectors/%<ConnectorDefinitionId>s',
            ConnectorDefinitionId: Hearth::HTTP.uri_escape(input[:connector_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCoreDefinition
    class UpdateCoreDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:core_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :core_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/cores/%<CoreDefinitionId>s',
            CoreDefinitionId: Hearth::HTTP.uri_escape(input[:core_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeviceDefinition
    class UpdateDeviceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/devices/%<DeviceDefinitionId>s',
            DeviceDefinitionId: Hearth::HTTP.uri_escape(input[:device_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionDefinition
    class UpdateFunctionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/functions/%<FunctionDefinitionId>s',
            FunctionDefinitionId: Hearth::HTTP.uri_escape(input[:function_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGroupCertificateConfiguration
    class UpdateGroupCertificateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:group_id].to_s.empty?
          raise ArgumentError, "HTTP label :group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/groups/%<GroupId>s/certificateauthorities/configuration/expiry',
            GroupId: Hearth::HTTP.uri_escape(input[:group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CertificateExpiryInMilliseconds'] = input[:certificate_expiry_in_milliseconds] unless input[:certificate_expiry_in_milliseconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLoggerDefinition
    class UpdateLoggerDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:logger_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :logger_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/loggers/%<LoggerDefinitionId>s',
            LoggerDefinitionId: Hearth::HTTP.uri_escape(input[:logger_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResourceDefinition
    class UpdateResourceDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/resources/%<ResourceDefinitionId>s',
            ResourceDefinitionId: Hearth::HTTP.uri_escape(input[:resource_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSubscriptionDefinition
    class UpdateSubscriptionDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:subscription_definition_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_definition_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/definition/subscriptions/%<SubscriptionDefinitionId>s',
            SubscriptionDefinitionId: Hearth::HTTP.uri_escape(input[:subscription_definition_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThingRuntimeConfiguration
    class UpdateThingRuntimeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/greengrass/things/%<ThingName>s/runtimeconfig',
            ThingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TelemetryConfiguration'] = Builders::TelemetryConfigurationUpdate.build(input[:telemetry_configuration]) unless input[:telemetry_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TelemetryConfigurationUpdate
    class TelemetryConfigurationUpdate
      def self.build(input)
        data = {}
        data['Telemetry'] = input[:telemetry] unless input[:telemetry].nil?
        data
      end
    end
  end
end
