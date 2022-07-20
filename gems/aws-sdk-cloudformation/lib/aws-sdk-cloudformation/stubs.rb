# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Stubs

    # Operation Stubber for ActivateType
    class ActivateType
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ActivateTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ActivateTypeResult')
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDescribeTypeConfigurations
    class BatchDescribeTypeConfigurations
      def self.default(visited=[])
        {
          errors: BatchDescribeTypeConfigurationsErrors.default(visited),
          unprocessed_type_configurations: UnprocessedTypeConfigurations.default(visited),
          type_configurations: TypeConfigurationDetailsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchDescribeTypeConfigurationsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('BatchDescribeTypeConfigurationsResult')
        xml << Hearth::XML::Node.new('Errors', Stubs::BatchDescribeTypeConfigurationsErrors.stub('member', stub[:errors])) unless stub[:errors].nil?
        xml << Hearth::XML::Node.new('UnprocessedTypeConfigurations', Stubs::UnprocessedTypeConfigurations.stub('member', stub[:unprocessed_type_configurations])) unless stub[:unprocessed_type_configurations].nil?
        xml << Hearth::XML::Node.new('TypeConfigurations', Stubs::TypeConfigurationDetailsList.stub('member', stub[:type_configurations])) unless stub[:type_configurations].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TypeConfigurationDetailsList
    class TypeConfigurationDetailsList
      def self.default(visited=[])
        return nil if visited.include?('TypeConfigurationDetailsList')
        visited = visited + ['TypeConfigurationDetailsList']
        [
          TypeConfigurationDetails.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TypeConfigurationDetails.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TypeConfigurationDetails
    class TypeConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('TypeConfigurationDetails')
        visited = visited + ['TypeConfigurationDetails']
        {
          arn: 'arn',
          alias: 'alias',
          configuration: 'configuration',
          last_updated: Time.now,
          type_arn: 'type_arn',
          type_name: 'type_name',
          is_default_configuration: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TypeConfigurationDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        xml << Hearth::XML::Node.new('Configuration', stub[:configuration].to_s) unless stub[:configuration].nil?
        xml << Hearth::XML::Node.new('LastUpdated', Hearth::TimeHelper.to_date_time(stub[:last_updated])) unless stub[:last_updated].nil?
        xml << Hearth::XML::Node.new('TypeArn', stub[:type_arn].to_s) unless stub[:type_arn].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml << Hearth::XML::Node.new('IsDefaultConfiguration', stub[:is_default_configuration].to_s) unless stub[:is_default_configuration].nil?
        xml
      end
    end

    # List Stubber for UnprocessedTypeConfigurations
    class UnprocessedTypeConfigurations
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedTypeConfigurations')
        visited = visited + ['UnprocessedTypeConfigurations']
        [
          TypeConfigurationIdentifier.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TypeConfigurationIdentifier.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TypeConfigurationIdentifier
    class TypeConfigurationIdentifier
      def self.default(visited=[])
        return nil if visited.include?('TypeConfigurationIdentifier')
        visited = visited + ['TypeConfigurationIdentifier']
        {
          type_arn: 'type_arn',
          type_configuration_alias: 'type_configuration_alias',
          type_configuration_arn: 'type_configuration_arn',
          type: 'type',
          type_name: 'type_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TypeConfigurationIdentifier.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TypeArn', stub[:type_arn].to_s) unless stub[:type_arn].nil?
        xml << Hearth::XML::Node.new('TypeConfigurationAlias', stub[:type_configuration_alias].to_s) unless stub[:type_configuration_alias].nil?
        xml << Hearth::XML::Node.new('TypeConfigurationArn', stub[:type_configuration_arn].to_s) unless stub[:type_configuration_arn].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml
      end
    end

    # List Stubber for BatchDescribeTypeConfigurationsErrors
    class BatchDescribeTypeConfigurationsErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeTypeConfigurationsErrors')
        visited = visited + ['BatchDescribeTypeConfigurationsErrors']
        [
          BatchDescribeTypeConfigurationsError.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::BatchDescribeTypeConfigurationsError.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BatchDescribeTypeConfigurationsError
    class BatchDescribeTypeConfigurationsError
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeTypeConfigurationsError')
        visited = visited + ['BatchDescribeTypeConfigurationsError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          type_configuration_identifier: TypeConfigurationIdentifier.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BatchDescribeTypeConfigurationsError.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ErrorCode', stub[:error_code].to_s) unless stub[:error_code].nil?
        xml << Hearth::XML::Node.new('ErrorMessage', stub[:error_message].to_s) unless stub[:error_message].nil?
        xml << Stubs::TypeConfigurationIdentifier.stub('TypeConfigurationIdentifier', stub[:type_configuration_identifier]) unless stub[:type_configuration_identifier].nil?
        xml
      end
    end

    # Operation Stubber for CancelUpdateStack
    class CancelUpdateStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CancelUpdateStackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('CancelUpdateStackResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ContinueUpdateRollback
    class ContinueUpdateRollback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ContinueUpdateRollbackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ContinueUpdateRollbackResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateChangeSet
    class CreateChangeSet
      def self.default(visited=[])
        {
          id: 'id',
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateChangeSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('CreateChangeSetResult')
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStack
    class CreateStack
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateStackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('CreateStackResult')
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStackInstances
    class CreateStackInstances
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateStackInstancesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('CreateStackInstancesResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStackSet
    class CreateStackSet
      def self.default(visited=[])
        {
          stack_set_id: 'stack_set_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateStackSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('CreateStackSetResult')
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeactivateType
    class DeactivateType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeactivateTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeactivateTypeResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteChangeSet
    class DeleteChangeSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteChangeSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeleteChangeSetResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStack
    class DeleteStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteStackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeleteStackResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStackInstances
    class DeleteStackInstances
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteStackInstancesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeleteStackInstancesResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStackSet
    class DeleteStackSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteStackSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeleteStackSetResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterType
    class DeregisterType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeregisterTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DeregisterTypeResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountLimits
    class DescribeAccountLimits
      def self.default(visited=[])
        {
          account_limits: AccountLimitList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountLimitsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeAccountLimitsResult')
        xml << Hearth::XML::Node.new('AccountLimits', Stubs::AccountLimitList.stub('member', stub[:account_limits])) unless stub[:account_limits].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AccountLimitList
    class AccountLimitList
      def self.default(visited=[])
        return nil if visited.include?('AccountLimitList')
        visited = visited + ['AccountLimitList']
        [
          AccountLimit.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AccountLimit.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccountLimit
    class AccountLimit
      def self.default(visited=[])
        return nil if visited.include?('AccountLimit')
        visited = visited + ['AccountLimit']
        {
          name: 'name',
          value: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountLimit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeChangeSet
    class DescribeChangeSet
      def self.default(visited=[])
        {
          change_set_name: 'change_set_name',
          change_set_id: 'change_set_id',
          stack_id: 'stack_id',
          stack_name: 'stack_name',
          description: 'description',
          parameters: Parameters.default(visited),
          creation_time: Time.now,
          execution_status: 'execution_status',
          status: 'status',
          status_reason: 'status_reason',
          notification_ar_ns: NotificationARNs.default(visited),
          rollback_configuration: RollbackConfiguration.default(visited),
          capabilities: Capabilities.default(visited),
          tags: Tags.default(visited),
          changes: Changes.default(visited),
          next_token: 'next_token',
          include_nested_stacks: false,
          parent_change_set_id: 'parent_change_set_id',
          root_change_set_id: 'root_change_set_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeChangeSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeChangeSetResult')
        xml << Hearth::XML::Node.new('ChangeSetName', stub[:change_set_name].to_s) unless stub[:change_set_name].nil?
        xml << Hearth::XML::Node.new('ChangeSetId', stub[:change_set_id].to_s) unless stub[:change_set_id].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::Parameters.stub('member', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('ExecutionStatus', stub[:execution_status].to_s) unless stub[:execution_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Hearth::XML::Node.new('NotificationARNs', Stubs::NotificationARNs.stub('member', stub[:notification_ar_ns])) unless stub[:notification_ar_ns].nil?
        xml << Stubs::RollbackConfiguration.stub('RollbackConfiguration', stub[:rollback_configuration]) unless stub[:rollback_configuration].nil?
        xml << Hearth::XML::Node.new('Capabilities', Stubs::Capabilities.stub('member', stub[:capabilities])) unless stub[:capabilities].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::Tags.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('Changes', Stubs::Changes.stub('member', stub[:changes])) unless stub[:changes].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('IncludeNestedStacks', stub[:include_nested_stacks].to_s) unless stub[:include_nested_stacks].nil?
        xml << Hearth::XML::Node.new('ParentChangeSetId', stub[:parent_change_set_id].to_s) unless stub[:parent_change_set_id].nil?
        xml << Hearth::XML::Node.new('RootChangeSetId', stub[:root_change_set_id].to_s) unless stub[:root_change_set_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Changes
    class Changes
      def self.default(visited=[])
        return nil if visited.include?('Changes')
        visited = visited + ['Changes']
        [
          Change.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Change.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Change
    class Change
      def self.default(visited=[])
        return nil if visited.include?('Change')
        visited = visited + ['Change']
        {
          type: 'type',
          hook_invocation_count: 1,
          resource_change: ResourceChange.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Change.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('HookInvocationCount', stub[:hook_invocation_count].to_s) unless stub[:hook_invocation_count].nil?
        xml << Stubs::ResourceChange.stub('ResourceChange', stub[:resource_change]) unless stub[:resource_change].nil?
        xml
      end
    end

    # Structure Stubber for ResourceChange
    class ResourceChange
      def self.default(visited=[])
        return nil if visited.include?('ResourceChange')
        visited = visited + ['ResourceChange']
        {
          action: 'action',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          replacement: 'replacement',
          scope: Scope.default(visited),
          details: ResourceChangeDetails.default(visited),
          change_set_id: 'change_set_id',
          module_info: ModuleInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceChange.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Action', stub[:action].to_s) unless stub[:action].nil?
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('Replacement', stub[:replacement].to_s) unless stub[:replacement].nil?
        xml << Hearth::XML::Node.new('Scope', Stubs::Scope.stub('member', stub[:scope])) unless stub[:scope].nil?
        xml << Hearth::XML::Node.new('Details', Stubs::ResourceChangeDetails.stub('member', stub[:details])) unless stub[:details].nil?
        xml << Hearth::XML::Node.new('ChangeSetId', stub[:change_set_id].to_s) unless stub[:change_set_id].nil?
        xml << Stubs::ModuleInfo.stub('ModuleInfo', stub[:module_info]) unless stub[:module_info].nil?
        xml
      end
    end

    # Structure Stubber for ModuleInfo
    class ModuleInfo
      def self.default(visited=[])
        return nil if visited.include?('ModuleInfo')
        visited = visited + ['ModuleInfo']
        {
          type_hierarchy: 'type_hierarchy',
          logical_id_hierarchy: 'logical_id_hierarchy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ModuleInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TypeHierarchy', stub[:type_hierarchy].to_s) unless stub[:type_hierarchy].nil?
        xml << Hearth::XML::Node.new('LogicalIdHierarchy', stub[:logical_id_hierarchy].to_s) unless stub[:logical_id_hierarchy].nil?
        xml
      end
    end

    # List Stubber for ResourceChangeDetails
    class ResourceChangeDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceChangeDetails')
        visited = visited + ['ResourceChangeDetails']
        [
          ResourceChangeDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ResourceChangeDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResourceChangeDetail
    class ResourceChangeDetail
      def self.default(visited=[])
        return nil if visited.include?('ResourceChangeDetail')
        visited = visited + ['ResourceChangeDetail']
        {
          target: ResourceTargetDefinition.default(visited),
          evaluation: 'evaluation',
          change_source: 'change_source',
          causing_entity: 'causing_entity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceChangeDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ResourceTargetDefinition.stub('Target', stub[:target]) unless stub[:target].nil?
        xml << Hearth::XML::Node.new('Evaluation', stub[:evaluation].to_s) unless stub[:evaluation].nil?
        xml << Hearth::XML::Node.new('ChangeSource', stub[:change_source].to_s) unless stub[:change_source].nil?
        xml << Hearth::XML::Node.new('CausingEntity', stub[:causing_entity].to_s) unless stub[:causing_entity].nil?
        xml
      end
    end

    # Structure Stubber for ResourceTargetDefinition
    class ResourceTargetDefinition
      def self.default(visited=[])
        return nil if visited.include?('ResourceTargetDefinition')
        visited = visited + ['ResourceTargetDefinition']
        {
          attribute: 'attribute',
          name: 'name',
          requires_recreation: 'requires_recreation',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceTargetDefinition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Attribute', stub[:attribute].to_s) unless stub[:attribute].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('RequiresRecreation', stub[:requires_recreation].to_s) unless stub[:requires_recreation].nil?
        xml
      end
    end

    # List Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # List Stubber for Capabilities
    class Capabilities
      def self.default(visited=[])
        return nil if visited.include?('Capabilities')
        visited = visited + ['Capabilities']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RollbackConfiguration
    class RollbackConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RollbackConfiguration')
        visited = visited + ['RollbackConfiguration']
        {
          rollback_triggers: RollbackTriggers.default(visited),
          monitoring_time_in_minutes: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RollbackConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RollbackTriggers', Stubs::RollbackTriggers.stub('member', stub[:rollback_triggers])) unless stub[:rollback_triggers].nil?
        xml << Hearth::XML::Node.new('MonitoringTimeInMinutes', stub[:monitoring_time_in_minutes].to_s) unless stub[:monitoring_time_in_minutes].nil?
        xml
      end
    end

    # List Stubber for RollbackTriggers
    class RollbackTriggers
      def self.default(visited=[])
        return nil if visited.include?('RollbackTriggers')
        visited = visited + ['RollbackTriggers']
        [
          RollbackTrigger.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::RollbackTrigger.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RollbackTrigger
    class RollbackTrigger
      def self.default(visited=[])
        return nil if visited.include?('RollbackTrigger')
        visited = visited + ['RollbackTrigger']
        {
          arn: 'arn',
          type: 'type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RollbackTrigger.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml
      end
    end

    # List Stubber for NotificationARNs
    class NotificationARNs
      def self.default(visited=[])
        return nil if visited.include?('NotificationARNs')
        visited = visited + ['NotificationARNs']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for Parameters
    class Parameters
      def self.default(visited=[])
        return nil if visited.include?('Parameters')
        visited = visited + ['Parameters']
        [
          Parameter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Parameter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          parameter_key: 'parameter_key',
          parameter_value: 'parameter_value',
          use_previous_value: false,
          resolved_value: 'resolved_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Parameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterKey', stub[:parameter_key].to_s) unless stub[:parameter_key].nil?
        xml << Hearth::XML::Node.new('ParameterValue', stub[:parameter_value].to_s) unless stub[:parameter_value].nil?
        xml << Hearth::XML::Node.new('UsePreviousValue', stub[:use_previous_value].to_s) unless stub[:use_previous_value].nil?
        xml << Hearth::XML::Node.new('ResolvedValue', stub[:resolved_value].to_s) unless stub[:resolved_value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeChangeSetHooks
    class DescribeChangeSetHooks
      def self.default(visited=[])
        {
          change_set_id: 'change_set_id',
          change_set_name: 'change_set_name',
          hooks: ChangeSetHooks.default(visited),
          status: 'status',
          next_token: 'next_token',
          stack_id: 'stack_id',
          stack_name: 'stack_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeChangeSetHooksResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeChangeSetHooksResult')
        xml << Hearth::XML::Node.new('ChangeSetId', stub[:change_set_id].to_s) unless stub[:change_set_id].nil?
        xml << Hearth::XML::Node.new('ChangeSetName', stub[:change_set_name].to_s) unless stub[:change_set_name].nil?
        xml << Hearth::XML::Node.new('Hooks', Stubs::ChangeSetHooks.stub('member', stub[:hooks])) unless stub[:hooks].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ChangeSetHooks
    class ChangeSetHooks
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetHooks')
        visited = visited + ['ChangeSetHooks']
        [
          ChangeSetHook.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ChangeSetHook.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ChangeSetHook
    class ChangeSetHook
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetHook')
        visited = visited + ['ChangeSetHook']
        {
          invocation_point: 'invocation_point',
          failure_mode: 'failure_mode',
          type_name: 'type_name',
          type_version_id: 'type_version_id',
          type_configuration_version_id: 'type_configuration_version_id',
          target_details: ChangeSetHookTargetDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeSetHook.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InvocationPoint', stub[:invocation_point].to_s) unless stub[:invocation_point].nil?
        xml << Hearth::XML::Node.new('FailureMode', stub[:failure_mode].to_s) unless stub[:failure_mode].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml << Hearth::XML::Node.new('TypeVersionId', stub[:type_version_id].to_s) unless stub[:type_version_id].nil?
        xml << Hearth::XML::Node.new('TypeConfigurationVersionId', stub[:type_configuration_version_id].to_s) unless stub[:type_configuration_version_id].nil?
        xml << Stubs::ChangeSetHookTargetDetails.stub('TargetDetails', stub[:target_details]) unless stub[:target_details].nil?
        xml
      end
    end

    # Structure Stubber for ChangeSetHookTargetDetails
    class ChangeSetHookTargetDetails
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetHookTargetDetails')
        visited = visited + ['ChangeSetHookTargetDetails']
        {
          target_type: 'target_type',
          resource_target_details: ChangeSetHookResourceTargetDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeSetHookTargetDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetType', stub[:target_type].to_s) unless stub[:target_type].nil?
        xml << Stubs::ChangeSetHookResourceTargetDetails.stub('ResourceTargetDetails', stub[:resource_target_details]) unless stub[:resource_target_details].nil?
        xml
      end
    end

    # Structure Stubber for ChangeSetHookResourceTargetDetails
    class ChangeSetHookResourceTargetDetails
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetHookResourceTargetDetails')
        visited = visited + ['ChangeSetHookResourceTargetDetails']
        {
          logical_resource_id: 'logical_resource_id',
          resource_type: 'resource_type',
          resource_action: 'resource_action',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeSetHookResourceTargetDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('ResourceAction', stub[:resource_action].to_s) unless stub[:resource_action].nil?
        xml
      end
    end

    # Operation Stubber for DescribePublisher
    class DescribePublisher
      def self.default(visited=[])
        {
          publisher_id: 'publisher_id',
          publisher_status: 'publisher_status',
          identity_provider: 'identity_provider',
          publisher_profile: 'publisher_profile',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribePublisherResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribePublisherResult')
        xml << Hearth::XML::Node.new('PublisherId', stub[:publisher_id].to_s) unless stub[:publisher_id].nil?
        xml << Hearth::XML::Node.new('PublisherStatus', stub[:publisher_status].to_s) unless stub[:publisher_status].nil?
        xml << Hearth::XML::Node.new('IdentityProvider', stub[:identity_provider].to_s) unless stub[:identity_provider].nil?
        xml << Hearth::XML::Node.new('PublisherProfile', stub[:publisher_profile].to_s) unless stub[:publisher_profile].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStackDriftDetectionStatus
    class DescribeStackDriftDetectionStatus
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
          stack_drift_detection_id: 'stack_drift_detection_id',
          stack_drift_status: 'stack_drift_status',
          detection_status: 'detection_status',
          detection_status_reason: 'detection_status_reason',
          drifted_stack_resource_count: 1,
          timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackDriftDetectionStatusResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackDriftDetectionStatusResult')
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackDriftDetectionId', stub[:stack_drift_detection_id].to_s) unless stub[:stack_drift_detection_id].nil?
        xml << Hearth::XML::Node.new('StackDriftStatus', stub[:stack_drift_status].to_s) unless stub[:stack_drift_status].nil?
        xml << Hearth::XML::Node.new('DetectionStatus', stub[:detection_status].to_s) unless stub[:detection_status].nil?
        xml << Hearth::XML::Node.new('DetectionStatusReason', stub[:detection_status_reason].to_s) unless stub[:detection_status_reason].nil?
        xml << Hearth::XML::Node.new('DriftedStackResourceCount', stub[:drifted_stack_resource_count].to_s) unless stub[:drifted_stack_resource_count].nil?
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStackEvents
    class DescribeStackEvents
      def self.default(visited=[])
        {
          stack_events: StackEvents.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackEventsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackEventsResult')
        xml << Hearth::XML::Node.new('StackEvents', Stubs::StackEvents.stub('member', stub[:stack_events])) unless stub[:stack_events].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackEvents
    class StackEvents
      def self.default(visited=[])
        return nil if visited.include?('StackEvents')
        visited = visited + ['StackEvents']
        [
          StackEvent.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackEvent.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackEvent
    class StackEvent
      def self.default(visited=[])
        return nil if visited.include?('StackEvent')
        visited = visited + ['StackEvent']
        {
          stack_id: 'stack_id',
          event_id: 'event_id',
          stack_name: 'stack_name',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          timestamp: Time.now,
          resource_status: 'resource_status',
          resource_status_reason: 'resource_status_reason',
          resource_properties: 'resource_properties',
          client_request_token: 'client_request_token',
          hook_type: 'hook_type',
          hook_status: 'hook_status',
          hook_status_reason: 'hook_status_reason',
          hook_invocation_point: 'hook_invocation_point',
          hook_failure_mode: 'hook_failure_mode',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('EventId', stub[:event_id].to_s) unless stub[:event_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('ResourceStatus', stub[:resource_status].to_s) unless stub[:resource_status].nil?
        xml << Hearth::XML::Node.new('ResourceStatusReason', stub[:resource_status_reason].to_s) unless stub[:resource_status_reason].nil?
        xml << Hearth::XML::Node.new('ResourceProperties', stub[:resource_properties].to_s) unless stub[:resource_properties].nil?
        xml << Hearth::XML::Node.new('ClientRequestToken', stub[:client_request_token].to_s) unless stub[:client_request_token].nil?
        xml << Hearth::XML::Node.new('HookType', stub[:hook_type].to_s) unless stub[:hook_type].nil?
        xml << Hearth::XML::Node.new('HookStatus', stub[:hook_status].to_s) unless stub[:hook_status].nil?
        xml << Hearth::XML::Node.new('HookStatusReason', stub[:hook_status_reason].to_s) unless stub[:hook_status_reason].nil?
        xml << Hearth::XML::Node.new('HookInvocationPoint', stub[:hook_invocation_point].to_s) unless stub[:hook_invocation_point].nil?
        xml << Hearth::XML::Node.new('HookFailureMode', stub[:hook_failure_mode].to_s) unless stub[:hook_failure_mode].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackInstance
    class DescribeStackInstance
      def self.default(visited=[])
        {
          stack_instance: StackInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackInstanceResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackInstanceResult')
        xml << Stubs::StackInstance.stub('StackInstance', stub[:stack_instance]) unless stub[:stack_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for StackInstance
    class StackInstance
      def self.default(visited=[])
        return nil if visited.include?('StackInstance')
        visited = visited + ['StackInstance']
        {
          stack_set_id: 'stack_set_id',
          region: 'region',
          account: 'account',
          stack_id: 'stack_id',
          parameter_overrides: Parameters.default(visited),
          status: 'status',
          stack_instance_status: StackInstanceComprehensiveStatus.default(visited),
          status_reason: 'status_reason',
          organizational_unit_id: 'organizational_unit_id',
          drift_status: 'drift_status',
          last_drift_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackInstance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('ParameterOverrides', Stubs::Parameters.stub('member', stub[:parameter_overrides])) unless stub[:parameter_overrides].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::StackInstanceComprehensiveStatus.stub('StackInstanceStatus', stub[:stack_instance_status]) unless stub[:stack_instance_status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Hearth::XML::Node.new('OrganizationalUnitId', stub[:organizational_unit_id].to_s) unless stub[:organizational_unit_id].nil?
        xml << Hearth::XML::Node.new('DriftStatus', stub[:drift_status].to_s) unless stub[:drift_status].nil?
        xml << Hearth::XML::Node.new('LastDriftCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_drift_check_timestamp])) unless stub[:last_drift_check_timestamp].nil?
        xml
      end
    end

    # Structure Stubber for StackInstanceComprehensiveStatus
    class StackInstanceComprehensiveStatus
      def self.default(visited=[])
        return nil if visited.include?('StackInstanceComprehensiveStatus')
        visited = visited + ['StackInstanceComprehensiveStatus']
        {
          detailed_status: 'detailed_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackInstanceComprehensiveStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DetailedStatus', stub[:detailed_status].to_s) unless stub[:detailed_status].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackResource
    class DescribeStackResource
      def self.default(visited=[])
        {
          stack_resource_detail: StackResourceDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackResourceResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackResourceResult')
        xml << Stubs::StackResourceDetail.stub('StackResourceDetail', stub[:stack_resource_detail]) unless stub[:stack_resource_detail].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for StackResourceDetail
    class StackResourceDetail
      def self.default(visited=[])
        return nil if visited.include?('StackResourceDetail')
        visited = visited + ['StackResourceDetail']
        {
          stack_name: 'stack_name',
          stack_id: 'stack_id',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          last_updated_timestamp: Time.now,
          resource_status: 'resource_status',
          resource_status_reason: 'resource_status_reason',
          description: 'description',
          metadata: 'metadata',
          drift_information: StackResourceDriftInformation.default(visited),
          module_info: ModuleInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResourceDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('LastUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_updated_timestamp])) unless stub[:last_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('ResourceStatus', stub[:resource_status].to_s) unless stub[:resource_status].nil?
        xml << Hearth::XML::Node.new('ResourceStatusReason', stub[:resource_status_reason].to_s) unless stub[:resource_status_reason].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Metadata', stub[:metadata].to_s) unless stub[:metadata].nil?
        xml << Stubs::StackResourceDriftInformation.stub('DriftInformation', stub[:drift_information]) unless stub[:drift_information].nil?
        xml << Stubs::ModuleInfo.stub('ModuleInfo', stub[:module_info]) unless stub[:module_info].nil?
        xml
      end
    end

    # Structure Stubber for StackResourceDriftInformation
    class StackResourceDriftInformation
      def self.default(visited=[])
        return nil if visited.include?('StackResourceDriftInformation')
        visited = visited + ['StackResourceDriftInformation']
        {
          stack_resource_drift_status: 'stack_resource_drift_status',
          last_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResourceDriftInformation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackResourceDriftStatus', stub[:stack_resource_drift_status].to_s) unless stub[:stack_resource_drift_status].nil?
        xml << Hearth::XML::Node.new('LastCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_check_timestamp])) unless stub[:last_check_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackResourceDrifts
    class DescribeStackResourceDrifts
      def self.default(visited=[])
        {
          stack_resource_drifts: StackResourceDrifts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackResourceDriftsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackResourceDriftsResult')
        xml << Hearth::XML::Node.new('StackResourceDrifts', Stubs::StackResourceDrifts.stub('member', stub[:stack_resource_drifts])) unless stub[:stack_resource_drifts].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackResourceDrifts
    class StackResourceDrifts
      def self.default(visited=[])
        return nil if visited.include?('StackResourceDrifts')
        visited = visited + ['StackResourceDrifts']
        [
          StackResourceDrift.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackResourceDrift.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackResourceDrift
    class StackResourceDrift
      def self.default(visited=[])
        return nil if visited.include?('StackResourceDrift')
        visited = visited + ['StackResourceDrift']
        {
          stack_id: 'stack_id',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          physical_resource_id_context: PhysicalResourceIdContext.default(visited),
          resource_type: 'resource_type',
          expected_properties: 'expected_properties',
          actual_properties: 'actual_properties',
          property_differences: PropertyDifferences.default(visited),
          stack_resource_drift_status: 'stack_resource_drift_status',
          timestamp: Time.now,
          module_info: ModuleInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResourceDrift.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceIdContext', Stubs::PhysicalResourceIdContext.stub('member', stub[:physical_resource_id_context])) unless stub[:physical_resource_id_context].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('ExpectedProperties', stub[:expected_properties].to_s) unless stub[:expected_properties].nil?
        xml << Hearth::XML::Node.new('ActualProperties', stub[:actual_properties].to_s) unless stub[:actual_properties].nil?
        xml << Hearth::XML::Node.new('PropertyDifferences', Stubs::PropertyDifferences.stub('member', stub[:property_differences])) unless stub[:property_differences].nil?
        xml << Hearth::XML::Node.new('StackResourceDriftStatus', stub[:stack_resource_drift_status].to_s) unless stub[:stack_resource_drift_status].nil?
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Stubs::ModuleInfo.stub('ModuleInfo', stub[:module_info]) unless stub[:module_info].nil?
        xml
      end
    end

    # List Stubber for PropertyDifferences
    class PropertyDifferences
      def self.default(visited=[])
        return nil if visited.include?('PropertyDifferences')
        visited = visited + ['PropertyDifferences']
        [
          PropertyDifference.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PropertyDifference.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PropertyDifference
    class PropertyDifference
      def self.default(visited=[])
        return nil if visited.include?('PropertyDifference')
        visited = visited + ['PropertyDifference']
        {
          property_path: 'property_path',
          expected_value: 'expected_value',
          actual_value: 'actual_value',
          difference_type: 'difference_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PropertyDifference.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PropertyPath', stub[:property_path].to_s) unless stub[:property_path].nil?
        xml << Hearth::XML::Node.new('ExpectedValue', stub[:expected_value].to_s) unless stub[:expected_value].nil?
        xml << Hearth::XML::Node.new('ActualValue', stub[:actual_value].to_s) unless stub[:actual_value].nil?
        xml << Hearth::XML::Node.new('DifferenceType', stub[:difference_type].to_s) unless stub[:difference_type].nil?
        xml
      end
    end

    # List Stubber for PhysicalResourceIdContext
    class PhysicalResourceIdContext
      def self.default(visited=[])
        return nil if visited.include?('PhysicalResourceIdContext')
        visited = visited + ['PhysicalResourceIdContext']
        [
          PhysicalResourceIdContextKeyValuePair.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PhysicalResourceIdContextKeyValuePair.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PhysicalResourceIdContextKeyValuePair
    class PhysicalResourceIdContextKeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('PhysicalResourceIdContextKeyValuePair')
        visited = visited + ['PhysicalResourceIdContextKeyValuePair']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PhysicalResourceIdContextKeyValuePair.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackResources
    class DescribeStackResources
      def self.default(visited=[])
        {
          stack_resources: StackResources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackResourcesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackResourcesResult')
        xml << Hearth::XML::Node.new('StackResources', Stubs::StackResources.stub('member', stub[:stack_resources])) unless stub[:stack_resources].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackResources
    class StackResources
      def self.default(visited=[])
        return nil if visited.include?('StackResources')
        visited = visited + ['StackResources']
        [
          StackResource.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackResource.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackResource
    class StackResource
      def self.default(visited=[])
        return nil if visited.include?('StackResource')
        visited = visited + ['StackResource']
        {
          stack_name: 'stack_name',
          stack_id: 'stack_id',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          timestamp: Time.now,
          resource_status: 'resource_status',
          resource_status_reason: 'resource_status_reason',
          description: 'description',
          drift_information: StackResourceDriftInformation.default(visited),
          module_info: ModuleInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResource.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('ResourceStatus', stub[:resource_status].to_s) unless stub[:resource_status].nil?
        xml << Hearth::XML::Node.new('ResourceStatusReason', stub[:resource_status_reason].to_s) unless stub[:resource_status_reason].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Stubs::StackResourceDriftInformation.stub('DriftInformation', stub[:drift_information]) unless stub[:drift_information].nil?
        xml << Stubs::ModuleInfo.stub('ModuleInfo', stub[:module_info]) unless stub[:module_info].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackSet
    class DescribeStackSet
      def self.default(visited=[])
        {
          stack_set: StackSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackSetResult')
        xml << Stubs::StackSet.stub('StackSet', stub[:stack_set]) unless stub[:stack_set].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for StackSet
    class StackSet
      def self.default(visited=[])
        return nil if visited.include?('StackSet')
        visited = visited + ['StackSet']
        {
          stack_set_name: 'stack_set_name',
          stack_set_id: 'stack_set_id',
          description: 'description',
          status: 'status',
          template_body: 'template_body',
          parameters: Parameters.default(visited),
          capabilities: Capabilities.default(visited),
          tags: Tags.default(visited),
          stack_set_arn: 'stack_set_arn',
          administration_role_arn: 'administration_role_arn',
          execution_role_name: 'execution_role_name',
          stack_set_drift_detection_details: StackSetDriftDetectionDetails.default(visited),
          auto_deployment: AutoDeployment.default(visited),
          permission_model: 'permission_model',
          organizational_unit_ids: OrganizationalUnitIdList.default(visited),
          managed_execution: ManagedExecution.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackSetName', stub[:stack_set_name].to_s) unless stub[:stack_set_name].nil?
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('TemplateBody', stub[:template_body].to_s) unless stub[:template_body].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::Parameters.stub('member', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Capabilities', Stubs::Capabilities.stub('member', stub[:capabilities])) unless stub[:capabilities].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::Tags.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('StackSetARN', stub[:stack_set_arn].to_s) unless stub[:stack_set_arn].nil?
        xml << Hearth::XML::Node.new('AdministrationRoleARN', stub[:administration_role_arn].to_s) unless stub[:administration_role_arn].nil?
        xml << Hearth::XML::Node.new('ExecutionRoleName', stub[:execution_role_name].to_s) unless stub[:execution_role_name].nil?
        xml << Stubs::StackSetDriftDetectionDetails.stub('StackSetDriftDetectionDetails', stub[:stack_set_drift_detection_details]) unless stub[:stack_set_drift_detection_details].nil?
        xml << Stubs::AutoDeployment.stub('AutoDeployment', stub[:auto_deployment]) unless stub[:auto_deployment].nil?
        xml << Hearth::XML::Node.new('PermissionModel', stub[:permission_model].to_s) unless stub[:permission_model].nil?
        xml << Hearth::XML::Node.new('OrganizationalUnitIds', Stubs::OrganizationalUnitIdList.stub('member', stub[:organizational_unit_ids])) unless stub[:organizational_unit_ids].nil?
        xml << Stubs::ManagedExecution.stub('ManagedExecution', stub[:managed_execution]) unless stub[:managed_execution].nil?
        xml
      end
    end

    # Structure Stubber for ManagedExecution
    class ManagedExecution
      def self.default(visited=[])
        return nil if visited.include?('ManagedExecution')
        visited = visited + ['ManagedExecution']
        {
          active: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ManagedExecution.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Active', stub[:active].to_s) unless stub[:active].nil?
        xml
      end
    end

    # List Stubber for OrganizationalUnitIdList
    class OrganizationalUnitIdList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnitIdList')
        visited = visited + ['OrganizationalUnitIdList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AutoDeployment
    class AutoDeployment
      def self.default(visited=[])
        return nil if visited.include?('AutoDeployment')
        visited = visited + ['AutoDeployment']
        {
          enabled: false,
          retain_stacks_on_account_removal: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AutoDeployment.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('RetainStacksOnAccountRemoval', stub[:retain_stacks_on_account_removal].to_s) unless stub[:retain_stacks_on_account_removal].nil?
        xml
      end
    end

    # Structure Stubber for StackSetDriftDetectionDetails
    class StackSetDriftDetectionDetails
      def self.default(visited=[])
        return nil if visited.include?('StackSetDriftDetectionDetails')
        visited = visited + ['StackSetDriftDetectionDetails']
        {
          drift_status: 'drift_status',
          drift_detection_status: 'drift_detection_status',
          last_drift_check_timestamp: Time.now,
          total_stack_instances_count: 1,
          drifted_stack_instances_count: 1,
          in_sync_stack_instances_count: 1,
          in_progress_stack_instances_count: 1,
          failed_stack_instances_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetDriftDetectionDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DriftStatus', stub[:drift_status].to_s) unless stub[:drift_status].nil?
        xml << Hearth::XML::Node.new('DriftDetectionStatus', stub[:drift_detection_status].to_s) unless stub[:drift_detection_status].nil?
        xml << Hearth::XML::Node.new('LastDriftCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_drift_check_timestamp])) unless stub[:last_drift_check_timestamp].nil?
        xml << Hearth::XML::Node.new('TotalStackInstancesCount', stub[:total_stack_instances_count].to_s) unless stub[:total_stack_instances_count].nil?
        xml << Hearth::XML::Node.new('DriftedStackInstancesCount', stub[:drifted_stack_instances_count].to_s) unless stub[:drifted_stack_instances_count].nil?
        xml << Hearth::XML::Node.new('InSyncStackInstancesCount', stub[:in_sync_stack_instances_count].to_s) unless stub[:in_sync_stack_instances_count].nil?
        xml << Hearth::XML::Node.new('InProgressStackInstancesCount', stub[:in_progress_stack_instances_count].to_s) unless stub[:in_progress_stack_instances_count].nil?
        xml << Hearth::XML::Node.new('FailedStackInstancesCount', stub[:failed_stack_instances_count].to_s) unless stub[:failed_stack_instances_count].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStackSetOperation
    class DescribeStackSetOperation
      def self.default(visited=[])
        {
          stack_set_operation: StackSetOperation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStackSetOperationResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStackSetOperationResult')
        xml << Stubs::StackSetOperation.stub('StackSetOperation', stub[:stack_set_operation]) unless stub[:stack_set_operation].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for StackSetOperation
    class StackSetOperation
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperation')
        visited = visited + ['StackSetOperation']
        {
          operation_id: 'operation_id',
          stack_set_id: 'stack_set_id',
          action: 'action',
          status: 'status',
          operation_preferences: StackSetOperationPreferences.default(visited),
          retain_stacks: false,
          administration_role_arn: 'administration_role_arn',
          execution_role_name: 'execution_role_name',
          creation_timestamp: Time.now,
          end_timestamp: Time.now,
          deployment_targets: DeploymentTargets.default(visited),
          stack_set_drift_detection_details: StackSetDriftDetectionDetails.default(visited),
          status_reason: 'status_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        xml << Hearth::XML::Node.new('Action', stub[:action].to_s) unless stub[:action].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::StackSetOperationPreferences.stub('OperationPreferences', stub[:operation_preferences]) unless stub[:operation_preferences].nil?
        xml << Hearth::XML::Node.new('RetainStacks', stub[:retain_stacks].to_s) unless stub[:retain_stacks].nil?
        xml << Hearth::XML::Node.new('AdministrationRoleARN', stub[:administration_role_arn].to_s) unless stub[:administration_role_arn].nil?
        xml << Hearth::XML::Node.new('ExecutionRoleName', stub[:execution_role_name].to_s) unless stub[:execution_role_name].nil?
        xml << Hearth::XML::Node.new('CreationTimestamp', Hearth::TimeHelper.to_date_time(stub[:creation_timestamp])) unless stub[:creation_timestamp].nil?
        xml << Hearth::XML::Node.new('EndTimestamp', Hearth::TimeHelper.to_date_time(stub[:end_timestamp])) unless stub[:end_timestamp].nil?
        xml << Stubs::DeploymentTargets.stub('DeploymentTargets', stub[:deployment_targets]) unless stub[:deployment_targets].nil?
        xml << Stubs::StackSetDriftDetectionDetails.stub('StackSetDriftDetectionDetails', stub[:stack_set_drift_detection_details]) unless stub[:stack_set_drift_detection_details].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml
      end
    end

    # Structure Stubber for DeploymentTargets
    class DeploymentTargets
      def self.default(visited=[])
        return nil if visited.include?('DeploymentTargets')
        visited = visited + ['DeploymentTargets']
        {
          accounts: AccountList.default(visited),
          accounts_url: 'accounts_url',
          organizational_unit_ids: OrganizationalUnitIdList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeploymentTargets.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Accounts', Stubs::AccountList.stub('member', stub[:accounts])) unless stub[:accounts].nil?
        xml << Hearth::XML::Node.new('AccountsUrl', stub[:accounts_url].to_s) unless stub[:accounts_url].nil?
        xml << Hearth::XML::Node.new('OrganizationalUnitIds', Stubs::OrganizationalUnitIdList.stub('member', stub[:organizational_unit_ids])) unless stub[:organizational_unit_ids].nil?
        xml
      end
    end

    # List Stubber for AccountList
    class AccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountList')
        visited = visited + ['AccountList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackSetOperationPreferences
    class StackSetOperationPreferences
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperationPreferences')
        visited = visited + ['StackSetOperationPreferences']
        {
          region_concurrency_type: 'region_concurrency_type',
          region_order: RegionList.default(visited),
          failure_tolerance_count: 1,
          failure_tolerance_percentage: 1,
          max_concurrent_count: 1,
          max_concurrent_percentage: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetOperationPreferences.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RegionConcurrencyType', stub[:region_concurrency_type].to_s) unless stub[:region_concurrency_type].nil?
        xml << Hearth::XML::Node.new('RegionOrder', Stubs::RegionList.stub('member', stub[:region_order])) unless stub[:region_order].nil?
        xml << Hearth::XML::Node.new('FailureToleranceCount', stub[:failure_tolerance_count].to_s) unless stub[:failure_tolerance_count].nil?
        xml << Hearth::XML::Node.new('FailureTolerancePercentage', stub[:failure_tolerance_percentage].to_s) unless stub[:failure_tolerance_percentage].nil?
        xml << Hearth::XML::Node.new('MaxConcurrentCount', stub[:max_concurrent_count].to_s) unless stub[:max_concurrent_count].nil?
        xml << Hearth::XML::Node.new('MaxConcurrentPercentage', stub[:max_concurrent_percentage].to_s) unless stub[:max_concurrent_percentage].nil?
        xml
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeStacks
    class DescribeStacks
      def self.default(visited=[])
        {
          stacks: Stacks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStacksResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeStacksResult')
        xml << Hearth::XML::Node.new('Stacks', Stubs::Stacks.stub('member', stub[:stacks])) unless stub[:stacks].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Stacks
    class Stacks
      def self.default(visited=[])
        return nil if visited.include?('Stacks')
        visited = visited + ['Stacks']
        [
          Stack.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Stack.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Stack
    class Stack
      def self.default(visited=[])
        return nil if visited.include?('Stack')
        visited = visited + ['Stack']
        {
          stack_id: 'stack_id',
          stack_name: 'stack_name',
          change_set_id: 'change_set_id',
          description: 'description',
          parameters: Parameters.default(visited),
          creation_time: Time.now,
          deletion_time: Time.now,
          last_updated_time: Time.now,
          rollback_configuration: RollbackConfiguration.default(visited),
          stack_status: 'stack_status',
          stack_status_reason: 'stack_status_reason',
          disable_rollback: false,
          notification_ar_ns: NotificationARNs.default(visited),
          timeout_in_minutes: 1,
          capabilities: Capabilities.default(visited),
          outputs: Outputs.default(visited),
          role_arn: 'role_arn',
          tags: Tags.default(visited),
          enable_termination_protection: false,
          parent_id: 'parent_id',
          root_id: 'root_id',
          drift_information: StackDriftInformation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Stack.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('ChangeSetId', stub[:change_set_id].to_s) unless stub[:change_set_id].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::Parameters.stub('member', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('DeletionTime', Hearth::TimeHelper.to_date_time(stub[:deletion_time])) unless stub[:deletion_time].nil?
        xml << Hearth::XML::Node.new('LastUpdatedTime', Hearth::TimeHelper.to_date_time(stub[:last_updated_time])) unless stub[:last_updated_time].nil?
        xml << Stubs::RollbackConfiguration.stub('RollbackConfiguration', stub[:rollback_configuration]) unless stub[:rollback_configuration].nil?
        xml << Hearth::XML::Node.new('StackStatus', stub[:stack_status].to_s) unless stub[:stack_status].nil?
        xml << Hearth::XML::Node.new('StackStatusReason', stub[:stack_status_reason].to_s) unless stub[:stack_status_reason].nil?
        xml << Hearth::XML::Node.new('DisableRollback', stub[:disable_rollback].to_s) unless stub[:disable_rollback].nil?
        xml << Hearth::XML::Node.new('NotificationARNs', Stubs::NotificationARNs.stub('member', stub[:notification_ar_ns])) unless stub[:notification_ar_ns].nil?
        xml << Hearth::XML::Node.new('TimeoutInMinutes', stub[:timeout_in_minutes].to_s) unless stub[:timeout_in_minutes].nil?
        xml << Hearth::XML::Node.new('Capabilities', Stubs::Capabilities.stub('member', stub[:capabilities])) unless stub[:capabilities].nil?
        xml << Hearth::XML::Node.new('Outputs', Stubs::Outputs.stub('member', stub[:outputs])) unless stub[:outputs].nil?
        xml << Hearth::XML::Node.new('RoleARN', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::Tags.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('EnableTerminationProtection', stub[:enable_termination_protection].to_s) unless stub[:enable_termination_protection].nil?
        xml << Hearth::XML::Node.new('ParentId', stub[:parent_id].to_s) unless stub[:parent_id].nil?
        xml << Hearth::XML::Node.new('RootId', stub[:root_id].to_s) unless stub[:root_id].nil?
        xml << Stubs::StackDriftInformation.stub('DriftInformation', stub[:drift_information]) unless stub[:drift_information].nil?
        xml
      end
    end

    # Structure Stubber for StackDriftInformation
    class StackDriftInformation
      def self.default(visited=[])
        return nil if visited.include?('StackDriftInformation')
        visited = visited + ['StackDriftInformation']
        {
          stack_drift_status: 'stack_drift_status',
          last_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackDriftInformation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackDriftStatus', stub[:stack_drift_status].to_s) unless stub[:stack_drift_status].nil?
        xml << Hearth::XML::Node.new('LastCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_check_timestamp])) unless stub[:last_check_timestamp].nil?
        xml
      end
    end

    # List Stubber for Outputs
    class Outputs
      def self.default(visited=[])
        return nil if visited.include?('Outputs')
        visited = visited + ['Outputs']
        [
          Output.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Output.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Output
    class Output
      def self.default(visited=[])
        return nil if visited.include?('Output')
        visited = visited + ['Output']
        {
          output_key: 'output_key',
          output_value: 'output_value',
          description: 'description',
          export_name: 'export_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Output.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OutputKey', stub[:output_key].to_s) unless stub[:output_key].nil?
        xml << Hearth::XML::Node.new('OutputValue', stub[:output_value].to_s) unless stub[:output_value].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('ExportName', stub[:export_name].to_s) unless stub[:export_name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeType
    class DescribeType
      def self.default(visited=[])
        {
          arn: 'arn',
          type: 'type',
          type_name: 'type_name',
          default_version_id: 'default_version_id',
          is_default_version: false,
          type_tests_status: 'type_tests_status',
          type_tests_status_description: 'type_tests_status_description',
          description: 'description',
          schema: 'schema',
          provisioning_type: 'provisioning_type',
          deprecated_status: 'deprecated_status',
          logging_config: LoggingConfig.default(visited),
          required_activated_types: RequiredActivatedTypes.default(visited),
          execution_role_arn: 'execution_role_arn',
          visibility: 'visibility',
          source_url: 'source_url',
          documentation_url: 'documentation_url',
          last_updated: Time.now,
          time_created: Time.now,
          configuration_schema: 'configuration_schema',
          publisher_id: 'publisher_id',
          original_type_name: 'original_type_name',
          original_type_arn: 'original_type_arn',
          public_version_number: 'public_version_number',
          latest_public_version: 'latest_public_version',
          is_activated: false,
          auto_update: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeTypeResult')
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml << Hearth::XML::Node.new('DefaultVersionId', stub[:default_version_id].to_s) unless stub[:default_version_id].nil?
        xml << Hearth::XML::Node.new('IsDefaultVersion', stub[:is_default_version].to_s) unless stub[:is_default_version].nil?
        xml << Hearth::XML::Node.new('TypeTestsStatus', stub[:type_tests_status].to_s) unless stub[:type_tests_status].nil?
        xml << Hearth::XML::Node.new('TypeTestsStatusDescription', stub[:type_tests_status_description].to_s) unless stub[:type_tests_status_description].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Schema', stub[:schema].to_s) unless stub[:schema].nil?
        xml << Hearth::XML::Node.new('ProvisioningType', stub[:provisioning_type].to_s) unless stub[:provisioning_type].nil?
        xml << Hearth::XML::Node.new('DeprecatedStatus', stub[:deprecated_status].to_s) unless stub[:deprecated_status].nil?
        xml << Stubs::LoggingConfig.stub('LoggingConfig', stub[:logging_config]) unless stub[:logging_config].nil?
        xml << Hearth::XML::Node.new('RequiredActivatedTypes', Stubs::RequiredActivatedTypes.stub('member', stub[:required_activated_types])) unless stub[:required_activated_types].nil?
        xml << Hearth::XML::Node.new('ExecutionRoleArn', stub[:execution_role_arn].to_s) unless stub[:execution_role_arn].nil?
        xml << Hearth::XML::Node.new('Visibility', stub[:visibility].to_s) unless stub[:visibility].nil?
        xml << Hearth::XML::Node.new('SourceUrl', stub[:source_url].to_s) unless stub[:source_url].nil?
        xml << Hearth::XML::Node.new('DocumentationUrl', stub[:documentation_url].to_s) unless stub[:documentation_url].nil?
        xml << Hearth::XML::Node.new('LastUpdated', Hearth::TimeHelper.to_date_time(stub[:last_updated])) unless stub[:last_updated].nil?
        xml << Hearth::XML::Node.new('TimeCreated', Hearth::TimeHelper.to_date_time(stub[:time_created])) unless stub[:time_created].nil?
        xml << Hearth::XML::Node.new('ConfigurationSchema', stub[:configuration_schema].to_s) unless stub[:configuration_schema].nil?
        xml << Hearth::XML::Node.new('PublisherId', stub[:publisher_id].to_s) unless stub[:publisher_id].nil?
        xml << Hearth::XML::Node.new('OriginalTypeName', stub[:original_type_name].to_s) unless stub[:original_type_name].nil?
        xml << Hearth::XML::Node.new('OriginalTypeArn', stub[:original_type_arn].to_s) unless stub[:original_type_arn].nil?
        xml << Hearth::XML::Node.new('PublicVersionNumber', stub[:public_version_number].to_s) unless stub[:public_version_number].nil?
        xml << Hearth::XML::Node.new('LatestPublicVersion', stub[:latest_public_version].to_s) unless stub[:latest_public_version].nil?
        xml << Hearth::XML::Node.new('IsActivated', stub[:is_activated].to_s) unless stub[:is_activated].nil?
        xml << Hearth::XML::Node.new('AutoUpdate', stub[:auto_update].to_s) unless stub[:auto_update].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for RequiredActivatedTypes
    class RequiredActivatedTypes
      def self.default(visited=[])
        return nil if visited.include?('RequiredActivatedTypes')
        visited = visited + ['RequiredActivatedTypes']
        [
          RequiredActivatedType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::RequiredActivatedType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RequiredActivatedType
    class RequiredActivatedType
      def self.default(visited=[])
        return nil if visited.include?('RequiredActivatedType')
        visited = visited + ['RequiredActivatedType']
        {
          type_name_alias: 'type_name_alias',
          original_type_name: 'original_type_name',
          publisher_id: 'publisher_id',
          supported_major_versions: SupportedMajorVersions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RequiredActivatedType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TypeNameAlias', stub[:type_name_alias].to_s) unless stub[:type_name_alias].nil?
        xml << Hearth::XML::Node.new('OriginalTypeName', stub[:original_type_name].to_s) unless stub[:original_type_name].nil?
        xml << Hearth::XML::Node.new('PublisherId', stub[:publisher_id].to_s) unless stub[:publisher_id].nil?
        xml << Hearth::XML::Node.new('SupportedMajorVersions', Stubs::SupportedMajorVersions.stub('member', stub[:supported_major_versions])) unless stub[:supported_major_versions].nil?
        xml
      end
    end

    # List Stubber for SupportedMajorVersions
    class SupportedMajorVersions
      def self.default(visited=[])
        return nil if visited.include?('SupportedMajorVersions')
        visited = visited + ['SupportedMajorVersions']
        [
          1
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoggingConfig
    class LoggingConfig
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfig')
        visited = visited + ['LoggingConfig']
        {
          log_role_arn: 'log_role_arn',
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoggingConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogRoleArn', stub[:log_role_arn].to_s) unless stub[:log_role_arn].nil?
        xml << Hearth::XML::Node.new('LogGroupName', stub[:log_group_name].to_s) unless stub[:log_group_name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTypeRegistration
    class DescribeTypeRegistration
      def self.default(visited=[])
        {
          progress_status: 'progress_status',
          description: 'description',
          type_arn: 'type_arn',
          type_version_arn: 'type_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTypeRegistrationResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DescribeTypeRegistrationResult')
        xml << Hearth::XML::Node.new('ProgressStatus', stub[:progress_status].to_s) unless stub[:progress_status].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('TypeArn', stub[:type_arn].to_s) unless stub[:type_arn].nil?
        xml << Hearth::XML::Node.new('TypeVersionArn', stub[:type_version_arn].to_s) unless stub[:type_version_arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectStackDrift
    class DetectStackDrift
      def self.default(visited=[])
        {
          stack_drift_detection_id: 'stack_drift_detection_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetectStackDriftResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DetectStackDriftResult')
        xml << Hearth::XML::Node.new('StackDriftDetectionId', stub[:stack_drift_detection_id].to_s) unless stub[:stack_drift_detection_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectStackResourceDrift
    class DetectStackResourceDrift
      def self.default(visited=[])
        {
          stack_resource_drift: StackResourceDrift.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetectStackResourceDriftResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DetectStackResourceDriftResult')
        xml << Stubs::StackResourceDrift.stub('StackResourceDrift', stub[:stack_resource_drift]) unless stub[:stack_resource_drift].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectStackSetDrift
    class DetectStackSetDrift
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetectStackSetDriftResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('DetectStackSetDriftResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EstimateTemplateCost
    class EstimateTemplateCost
      def self.default(visited=[])
        {
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EstimateTemplateCostResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('EstimateTemplateCostResult')
        xml << Hearth::XML::Node.new('Url', stub[:url].to_s) unless stub[:url].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteChangeSet
    class ExecuteChangeSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ExecuteChangeSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ExecuteChangeSetResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetStackPolicy
    class GetStackPolicy
      def self.default(visited=[])
        {
          stack_policy_body: 'stack_policy_body',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetStackPolicyResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('GetStackPolicyResult')
        xml << Hearth::XML::Node.new('StackPolicyBody', stub[:stack_policy_body].to_s) unless stub[:stack_policy_body].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTemplate
    class GetTemplate
      def self.default(visited=[])
        {
          template_body: 'template_body',
          stages_available: StageList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetTemplateResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('GetTemplateResult')
        xml << Hearth::XML::Node.new('TemplateBody', stub[:template_body].to_s) unless stub[:template_body].nil?
        xml << Hearth::XML::Node.new('StagesAvailable', Stubs::StageList.stub('member', stub[:stages_available])) unless stub[:stages_available].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StageList
    class StageList
      def self.default(visited=[])
        return nil if visited.include?('StageList')
        visited = visited + ['StageList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetTemplateSummary
    class GetTemplateSummary
      def self.default(visited=[])
        {
          parameters: ParameterDeclarations.default(visited),
          description: 'description',
          capabilities: Capabilities.default(visited),
          capabilities_reason: 'capabilities_reason',
          resource_types: ResourceTypes.default(visited),
          version: 'version',
          metadata: 'metadata',
          declared_transforms: TransformsList.default(visited),
          resource_identifier_summaries: ResourceIdentifierSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetTemplateSummaryResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('GetTemplateSummaryResult')
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParameterDeclarations.stub('member', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Capabilities', Stubs::Capabilities.stub('member', stub[:capabilities])) unless stub[:capabilities].nil?
        xml << Hearth::XML::Node.new('CapabilitiesReason', stub[:capabilities_reason].to_s) unless stub[:capabilities_reason].nil?
        xml << Hearth::XML::Node.new('ResourceTypes', Stubs::ResourceTypes.stub('member', stub[:resource_types])) unless stub[:resource_types].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml << Hearth::XML::Node.new('Metadata', stub[:metadata].to_s) unless stub[:metadata].nil?
        xml << Hearth::XML::Node.new('DeclaredTransforms', Stubs::TransformsList.stub('member', stub[:declared_transforms])) unless stub[:declared_transforms].nil?
        xml << Hearth::XML::Node.new('ResourceIdentifierSummaries', Stubs::ResourceIdentifierSummaries.stub('member', stub[:resource_identifier_summaries])) unless stub[:resource_identifier_summaries].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceIdentifierSummaries
    class ResourceIdentifierSummaries
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifierSummaries')
        visited = visited + ['ResourceIdentifierSummaries']
        [
          ResourceIdentifierSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ResourceIdentifierSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResourceIdentifierSummary
    class ResourceIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifierSummary')
        visited = visited + ['ResourceIdentifierSummary']
        {
          resource_type: 'resource_type',
          logical_resource_ids: LogicalResourceIds.default(visited),
          resource_identifiers: ResourceIdentifiers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceIdentifierSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('LogicalResourceIds', Stubs::LogicalResourceIds.stub('member', stub[:logical_resource_ids])) unless stub[:logical_resource_ids].nil?
        xml << Hearth::XML::Node.new('ResourceIdentifiers', Stubs::ResourceIdentifiers.stub('member', stub[:resource_identifiers])) unless stub[:resource_identifiers].nil?
        xml
      end
    end

    # List Stubber for ResourceIdentifiers
    class ResourceIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifiers')
        visited = visited + ['ResourceIdentifiers']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for LogicalResourceIds
    class LogicalResourceIds
      def self.default(visited=[])
        return nil if visited.include?('LogicalResourceIds')
        visited = visited + ['LogicalResourceIds']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for TransformsList
    class TransformsList
      def self.default(visited=[])
        return nil if visited.include?('TransformsList')
        visited = visited + ['TransformsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ResourceTypes
    class ResourceTypes
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypes')
        visited = visited + ['ResourceTypes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ParameterDeclarations
    class ParameterDeclarations
      def self.default(visited=[])
        return nil if visited.include?('ParameterDeclarations')
        visited = visited + ['ParameterDeclarations']
        [
          ParameterDeclaration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ParameterDeclaration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ParameterDeclaration
    class ParameterDeclaration
      def self.default(visited=[])
        return nil if visited.include?('ParameterDeclaration')
        visited = visited + ['ParameterDeclaration']
        {
          parameter_key: 'parameter_key',
          default_value: 'default_value',
          parameter_type: 'parameter_type',
          no_echo: false,
          description: 'description',
          parameter_constraints: ParameterConstraints.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ParameterDeclaration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterKey', stub[:parameter_key].to_s) unless stub[:parameter_key].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('ParameterType', stub[:parameter_type].to_s) unless stub[:parameter_type].nil?
        xml << Hearth::XML::Node.new('NoEcho', stub[:no_echo].to_s) unless stub[:no_echo].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Stubs::ParameterConstraints.stub('ParameterConstraints', stub[:parameter_constraints]) unless stub[:parameter_constraints].nil?
        xml
      end
    end

    # Structure Stubber for ParameterConstraints
    class ParameterConstraints
      def self.default(visited=[])
        return nil if visited.include?('ParameterConstraints')
        visited = visited + ['ParameterConstraints']
        {
          allowed_values: AllowedValues.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ParameterConstraints.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AllowedValues', Stubs::AllowedValues.stub('member', stub[:allowed_values])) unless stub[:allowed_values].nil?
        xml
      end
    end

    # List Stubber for AllowedValues
    class AllowedValues
      def self.default(visited=[])
        return nil if visited.include?('AllowedValues')
        visited = visited + ['AllowedValues']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ImportStacksToStackSet
    class ImportStacksToStackSet
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ImportStacksToStackSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ImportStacksToStackSetResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListChangeSets
    class ListChangeSets
      def self.default(visited=[])
        {
          summaries: ChangeSetSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListChangeSetsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListChangeSetsResult')
        xml << Hearth::XML::Node.new('Summaries', Stubs::ChangeSetSummaries.stub('member', stub[:summaries])) unless stub[:summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ChangeSetSummaries
    class ChangeSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetSummaries')
        visited = visited + ['ChangeSetSummaries']
        [
          ChangeSetSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ChangeSetSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ChangeSetSummary
    class ChangeSetSummary
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetSummary')
        visited = visited + ['ChangeSetSummary']
        {
          stack_id: 'stack_id',
          stack_name: 'stack_name',
          change_set_id: 'change_set_id',
          change_set_name: 'change_set_name',
          execution_status: 'execution_status',
          status: 'status',
          status_reason: 'status_reason',
          creation_time: Time.now,
          description: 'description',
          include_nested_stacks: false,
          parent_change_set_id: 'parent_change_set_id',
          root_change_set_id: 'root_change_set_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeSetSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('ChangeSetId', stub[:change_set_id].to_s) unless stub[:change_set_id].nil?
        xml << Hearth::XML::Node.new('ChangeSetName', stub[:change_set_name].to_s) unless stub[:change_set_name].nil?
        xml << Hearth::XML::Node.new('ExecutionStatus', stub[:execution_status].to_s) unless stub[:execution_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('IncludeNestedStacks', stub[:include_nested_stacks].to_s) unless stub[:include_nested_stacks].nil?
        xml << Hearth::XML::Node.new('ParentChangeSetId', stub[:parent_change_set_id].to_s) unless stub[:parent_change_set_id].nil?
        xml << Hearth::XML::Node.new('RootChangeSetId', stub[:root_change_set_id].to_s) unless stub[:root_change_set_id].nil?
        xml
      end
    end

    # Operation Stubber for ListExports
    class ListExports
      def self.default(visited=[])
        {
          exports: Exports.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListExportsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListExportsResult')
        xml << Hearth::XML::Node.new('Exports', Stubs::Exports.stub('member', stub[:exports])) unless stub[:exports].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Exports
    class Exports
      def self.default(visited=[])
        return nil if visited.include?('Exports')
        visited = visited + ['Exports']
        [
          Export.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Export.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Export
    class Export
      def self.default(visited=[])
        return nil if visited.include?('Export')
        visited = visited + ['Export']
        {
          exporting_stack_id: 'exporting_stack_id',
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Export.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExportingStackId', stub[:exporting_stack_id].to_s) unless stub[:exporting_stack_id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for ListImports
    class ListImports
      def self.default(visited=[])
        {
          imports: Imports.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListImportsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListImportsResult')
        xml << Hearth::XML::Node.new('Imports', Stubs::Imports.stub('member', stub[:imports])) unless stub[:imports].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Imports
    class Imports
      def self.default(visited=[])
        return nil if visited.include?('Imports')
        visited = visited + ['Imports']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListStackInstances
    class ListStackInstances
      def self.default(visited=[])
        {
          summaries: StackInstanceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStackInstancesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStackInstancesResult')
        xml << Hearth::XML::Node.new('Summaries', Stubs::StackInstanceSummaries.stub('member', stub[:summaries])) unless stub[:summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackInstanceSummaries
    class StackInstanceSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackInstanceSummaries')
        visited = visited + ['StackInstanceSummaries']
        [
          StackInstanceSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackInstanceSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackInstanceSummary
    class StackInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('StackInstanceSummary')
        visited = visited + ['StackInstanceSummary']
        {
          stack_set_id: 'stack_set_id',
          region: 'region',
          account: 'account',
          stack_id: 'stack_id',
          status: 'status',
          status_reason: 'status_reason',
          stack_instance_status: StackInstanceComprehensiveStatus.default(visited),
          organizational_unit_id: 'organizational_unit_id',
          drift_status: 'drift_status',
          last_drift_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackInstanceSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Stubs::StackInstanceComprehensiveStatus.stub('StackInstanceStatus', stub[:stack_instance_status]) unless stub[:stack_instance_status].nil?
        xml << Hearth::XML::Node.new('OrganizationalUnitId', stub[:organizational_unit_id].to_s) unless stub[:organizational_unit_id].nil?
        xml << Hearth::XML::Node.new('DriftStatus', stub[:drift_status].to_s) unless stub[:drift_status].nil?
        xml << Hearth::XML::Node.new('LastDriftCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_drift_check_timestamp])) unless stub[:last_drift_check_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for ListStackResources
    class ListStackResources
      def self.default(visited=[])
        {
          stack_resource_summaries: StackResourceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStackResourcesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStackResourcesResult')
        xml << Hearth::XML::Node.new('StackResourceSummaries', Stubs::StackResourceSummaries.stub('member', stub[:stack_resource_summaries])) unless stub[:stack_resource_summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackResourceSummaries
    class StackResourceSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackResourceSummaries')
        visited = visited + ['StackResourceSummaries']
        [
          StackResourceSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackResourceSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackResourceSummary
    class StackResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('StackResourceSummary')
        visited = visited + ['StackResourceSummary']
        {
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          last_updated_timestamp: Time.now,
          resource_status: 'resource_status',
          resource_status_reason: 'resource_status_reason',
          drift_information: StackResourceDriftInformationSummary.default(visited),
          module_info: ModuleInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResourceSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogicalResourceId', stub[:logical_resource_id].to_s) unless stub[:logical_resource_id].nil?
        xml << Hearth::XML::Node.new('PhysicalResourceId', stub[:physical_resource_id].to_s) unless stub[:physical_resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('LastUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_updated_timestamp])) unless stub[:last_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('ResourceStatus', stub[:resource_status].to_s) unless stub[:resource_status].nil?
        xml << Hearth::XML::Node.new('ResourceStatusReason', stub[:resource_status_reason].to_s) unless stub[:resource_status_reason].nil?
        xml << Stubs::StackResourceDriftInformationSummary.stub('DriftInformation', stub[:drift_information]) unless stub[:drift_information].nil?
        xml << Stubs::ModuleInfo.stub('ModuleInfo', stub[:module_info]) unless stub[:module_info].nil?
        xml
      end
    end

    # Structure Stubber for StackResourceDriftInformationSummary
    class StackResourceDriftInformationSummary
      def self.default(visited=[])
        return nil if visited.include?('StackResourceDriftInformationSummary')
        visited = visited + ['StackResourceDriftInformationSummary']
        {
          stack_resource_drift_status: 'stack_resource_drift_status',
          last_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackResourceDriftInformationSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackResourceDriftStatus', stub[:stack_resource_drift_status].to_s) unless stub[:stack_resource_drift_status].nil?
        xml << Hearth::XML::Node.new('LastCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_check_timestamp])) unless stub[:last_check_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for ListStackSetOperationResults
    class ListStackSetOperationResults
      def self.default(visited=[])
        {
          summaries: StackSetOperationResultSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStackSetOperationResultsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStackSetOperationResultsResult')
        xml << Hearth::XML::Node.new('Summaries', Stubs::StackSetOperationResultSummaries.stub('member', stub[:summaries])) unless stub[:summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackSetOperationResultSummaries
    class StackSetOperationResultSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperationResultSummaries')
        visited = visited + ['StackSetOperationResultSummaries']
        [
          StackSetOperationResultSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackSetOperationResultSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackSetOperationResultSummary
    class StackSetOperationResultSummary
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperationResultSummary')
        visited = visited + ['StackSetOperationResultSummary']
        {
          account: 'account',
          region: 'region',
          status: 'status',
          status_reason: 'status_reason',
          account_gate_result: AccountGateResult.default(visited),
          organizational_unit_id: 'organizational_unit_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetOperationResultSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Stubs::AccountGateResult.stub('AccountGateResult', stub[:account_gate_result]) unless stub[:account_gate_result].nil?
        xml << Hearth::XML::Node.new('OrganizationalUnitId', stub[:organizational_unit_id].to_s) unless stub[:organizational_unit_id].nil?
        xml
      end
    end

    # Structure Stubber for AccountGateResult
    class AccountGateResult
      def self.default(visited=[])
        return nil if visited.include?('AccountGateResult')
        visited = visited + ['AccountGateResult']
        {
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountGateResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml
      end
    end

    # Operation Stubber for ListStackSetOperations
    class ListStackSetOperations
      def self.default(visited=[])
        {
          summaries: StackSetOperationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStackSetOperationsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStackSetOperationsResult')
        xml << Hearth::XML::Node.new('Summaries', Stubs::StackSetOperationSummaries.stub('member', stub[:summaries])) unless stub[:summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackSetOperationSummaries
    class StackSetOperationSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperationSummaries')
        visited = visited + ['StackSetOperationSummaries']
        [
          StackSetOperationSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackSetOperationSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackSetOperationSummary
    class StackSetOperationSummary
      def self.default(visited=[])
        return nil if visited.include?('StackSetOperationSummary')
        visited = visited + ['StackSetOperationSummary']
        {
          operation_id: 'operation_id',
          action: 'action',
          status: 'status',
          creation_timestamp: Time.now,
          end_timestamp: Time.now,
          status_reason: 'status_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetOperationSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        xml << Hearth::XML::Node.new('Action', stub[:action].to_s) unless stub[:action].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CreationTimestamp', Hearth::TimeHelper.to_date_time(stub[:creation_timestamp])) unless stub[:creation_timestamp].nil?
        xml << Hearth::XML::Node.new('EndTimestamp', Hearth::TimeHelper.to_date_time(stub[:end_timestamp])) unless stub[:end_timestamp].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml
      end
    end

    # Operation Stubber for ListStackSets
    class ListStackSets
      def self.default(visited=[])
        {
          summaries: StackSetSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStackSetsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStackSetsResult')
        xml << Hearth::XML::Node.new('Summaries', Stubs::StackSetSummaries.stub('member', stub[:summaries])) unless stub[:summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackSetSummaries
    class StackSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackSetSummaries')
        visited = visited + ['StackSetSummaries']
        [
          StackSetSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackSetSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackSetSummary
    class StackSetSummary
      def self.default(visited=[])
        return nil if visited.include?('StackSetSummary')
        visited = visited + ['StackSetSummary']
        {
          stack_set_name: 'stack_set_name',
          stack_set_id: 'stack_set_id',
          description: 'description',
          status: 'status',
          auto_deployment: AutoDeployment.default(visited),
          permission_model: 'permission_model',
          drift_status: 'drift_status',
          last_drift_check_timestamp: Time.now,
          managed_execution: ManagedExecution.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSetSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackSetName', stub[:stack_set_name].to_s) unless stub[:stack_set_name].nil?
        xml << Hearth::XML::Node.new('StackSetId', stub[:stack_set_id].to_s) unless stub[:stack_set_id].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::AutoDeployment.stub('AutoDeployment', stub[:auto_deployment]) unless stub[:auto_deployment].nil?
        xml << Hearth::XML::Node.new('PermissionModel', stub[:permission_model].to_s) unless stub[:permission_model].nil?
        xml << Hearth::XML::Node.new('DriftStatus', stub[:drift_status].to_s) unless stub[:drift_status].nil?
        xml << Hearth::XML::Node.new('LastDriftCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_drift_check_timestamp])) unless stub[:last_drift_check_timestamp].nil?
        xml << Stubs::ManagedExecution.stub('ManagedExecution', stub[:managed_execution]) unless stub[:managed_execution].nil?
        xml
      end
    end

    # Operation Stubber for ListStacks
    class ListStacks
      def self.default(visited=[])
        {
          stack_summaries: StackSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListStacksResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListStacksResult')
        xml << Hearth::XML::Node.new('StackSummaries', Stubs::StackSummaries.stub('member', stub[:stack_summaries])) unless stub[:stack_summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StackSummaries
    class StackSummaries
      def self.default(visited=[])
        return nil if visited.include?('StackSummaries')
        visited = visited + ['StackSummaries']
        [
          StackSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StackSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StackSummary
    class StackSummary
      def self.default(visited=[])
        return nil if visited.include?('StackSummary')
        visited = visited + ['StackSummary']
        {
          stack_id: 'stack_id',
          stack_name: 'stack_name',
          template_description: 'template_description',
          creation_time: Time.now,
          last_updated_time: Time.now,
          deletion_time: Time.now,
          stack_status: 'stack_status',
          stack_status_reason: 'stack_status_reason',
          parent_id: 'parent_id',
          root_id: 'root_id',
          drift_information: StackDriftInformationSummary.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        xml << Hearth::XML::Node.new('StackName', stub[:stack_name].to_s) unless stub[:stack_name].nil?
        xml << Hearth::XML::Node.new('TemplateDescription', stub[:template_description].to_s) unless stub[:template_description].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('LastUpdatedTime', Hearth::TimeHelper.to_date_time(stub[:last_updated_time])) unless stub[:last_updated_time].nil?
        xml << Hearth::XML::Node.new('DeletionTime', Hearth::TimeHelper.to_date_time(stub[:deletion_time])) unless stub[:deletion_time].nil?
        xml << Hearth::XML::Node.new('StackStatus', stub[:stack_status].to_s) unless stub[:stack_status].nil?
        xml << Hearth::XML::Node.new('StackStatusReason', stub[:stack_status_reason].to_s) unless stub[:stack_status_reason].nil?
        xml << Hearth::XML::Node.new('ParentId', stub[:parent_id].to_s) unless stub[:parent_id].nil?
        xml << Hearth::XML::Node.new('RootId', stub[:root_id].to_s) unless stub[:root_id].nil?
        xml << Stubs::StackDriftInformationSummary.stub('DriftInformation', stub[:drift_information]) unless stub[:drift_information].nil?
        xml
      end
    end

    # Structure Stubber for StackDriftInformationSummary
    class StackDriftInformationSummary
      def self.default(visited=[])
        return nil if visited.include?('StackDriftInformationSummary')
        visited = visited + ['StackDriftInformationSummary']
        {
          stack_drift_status: 'stack_drift_status',
          last_check_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StackDriftInformationSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StackDriftStatus', stub[:stack_drift_status].to_s) unless stub[:stack_drift_status].nil?
        xml << Hearth::XML::Node.new('LastCheckTimestamp', Hearth::TimeHelper.to_date_time(stub[:last_check_timestamp])) unless stub[:last_check_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for ListTypeRegistrations
    class ListTypeRegistrations
      def self.default(visited=[])
        {
          registration_token_list: RegistrationTokenList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTypeRegistrationsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListTypeRegistrationsResult')
        xml << Hearth::XML::Node.new('RegistrationTokenList', Stubs::RegistrationTokenList.stub('member', stub[:registration_token_list])) unless stub[:registration_token_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for RegistrationTokenList
    class RegistrationTokenList
      def self.default(visited=[])
        return nil if visited.include?('RegistrationTokenList')
        visited = visited + ['RegistrationTokenList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTypeVersions
    class ListTypeVersions
      def self.default(visited=[])
        {
          type_version_summaries: TypeVersionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTypeVersionsResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListTypeVersionsResult')
        xml << Hearth::XML::Node.new('TypeVersionSummaries', Stubs::TypeVersionSummaries.stub('member', stub[:type_version_summaries])) unless stub[:type_version_summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TypeVersionSummaries
    class TypeVersionSummaries
      def self.default(visited=[])
        return nil if visited.include?('TypeVersionSummaries')
        visited = visited + ['TypeVersionSummaries']
        [
          TypeVersionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TypeVersionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TypeVersionSummary
    class TypeVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('TypeVersionSummary')
        visited = visited + ['TypeVersionSummary']
        {
          type: 'type',
          type_name: 'type_name',
          version_id: 'version_id',
          is_default_version: false,
          arn: 'arn',
          time_created: Time.now,
          description: 'description',
          public_version_number: 'public_version_number',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TypeVersionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('IsDefaultVersion', stub[:is_default_version].to_s) unless stub[:is_default_version].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('TimeCreated', Hearth::TimeHelper.to_date_time(stub[:time_created])) unless stub[:time_created].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('PublicVersionNumber', stub[:public_version_number].to_s) unless stub[:public_version_number].nil?
        xml
      end
    end

    # Operation Stubber for ListTypes
    class ListTypes
      def self.default(visited=[])
        {
          type_summaries: TypeSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTypesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ListTypesResult')
        xml << Hearth::XML::Node.new('TypeSummaries', Stubs::TypeSummaries.stub('member', stub[:type_summaries])) unless stub[:type_summaries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TypeSummaries
    class TypeSummaries
      def self.default(visited=[])
        return nil if visited.include?('TypeSummaries')
        visited = visited + ['TypeSummaries']
        [
          TypeSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TypeSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TypeSummary
    class TypeSummary
      def self.default(visited=[])
        return nil if visited.include?('TypeSummary')
        visited = visited + ['TypeSummary']
        {
          type: 'type',
          type_name: 'type_name',
          default_version_id: 'default_version_id',
          type_arn: 'type_arn',
          last_updated: Time.now,
          description: 'description',
          publisher_id: 'publisher_id',
          original_type_name: 'original_type_name',
          public_version_number: 'public_version_number',
          latest_public_version: 'latest_public_version',
          publisher_identity: 'publisher_identity',
          publisher_name: 'publisher_name',
          is_activated: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TypeSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('TypeName', stub[:type_name].to_s) unless stub[:type_name].nil?
        xml << Hearth::XML::Node.new('DefaultVersionId', stub[:default_version_id].to_s) unless stub[:default_version_id].nil?
        xml << Hearth::XML::Node.new('TypeArn', stub[:type_arn].to_s) unless stub[:type_arn].nil?
        xml << Hearth::XML::Node.new('LastUpdated', Hearth::TimeHelper.to_date_time(stub[:last_updated])) unless stub[:last_updated].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('PublisherId', stub[:publisher_id].to_s) unless stub[:publisher_id].nil?
        xml << Hearth::XML::Node.new('OriginalTypeName', stub[:original_type_name].to_s) unless stub[:original_type_name].nil?
        xml << Hearth::XML::Node.new('PublicVersionNumber', stub[:public_version_number].to_s) unless stub[:public_version_number].nil?
        xml << Hearth::XML::Node.new('LatestPublicVersion', stub[:latest_public_version].to_s) unless stub[:latest_public_version].nil?
        xml << Hearth::XML::Node.new('PublisherIdentity', stub[:publisher_identity].to_s) unless stub[:publisher_identity].nil?
        xml << Hearth::XML::Node.new('PublisherName', stub[:publisher_name].to_s) unless stub[:publisher_name].nil?
        xml << Hearth::XML::Node.new('IsActivated', stub[:is_activated].to_s) unless stub[:is_activated].nil?
        xml
      end
    end

    # Operation Stubber for PublishType
    class PublishType
      def self.default(visited=[])
        {
          public_type_arn: 'public_type_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PublishTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('PublishTypeResult')
        xml << Hearth::XML::Node.new('PublicTypeArn', stub[:public_type_arn].to_s) unless stub[:public_type_arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RecordHandlerProgress
    class RecordHandlerProgress
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RecordHandlerProgressResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('RecordHandlerProgressResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterPublisher
    class RegisterPublisher
      def self.default(visited=[])
        {
          publisher_id: 'publisher_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RegisterPublisherResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('RegisterPublisherResult')
        xml << Hearth::XML::Node.new('PublisherId', stub[:publisher_id].to_s) unless stub[:publisher_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterType
    class RegisterType
      def self.default(visited=[])
        {
          registration_token: 'registration_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RegisterTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('RegisterTypeResult')
        xml << Hearth::XML::Node.new('RegistrationToken', stub[:registration_token].to_s) unless stub[:registration_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RollbackStack
    class RollbackStack
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RollbackStackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('RollbackStackResult')
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetStackPolicy
    class SetStackPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetStackPolicyResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('SetStackPolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTypeConfiguration
    class SetTypeConfiguration
      def self.default(visited=[])
        {
          configuration_arn: 'configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetTypeConfigurationResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('SetTypeConfigurationResult')
        xml << Hearth::XML::Node.new('ConfigurationArn', stub[:configuration_arn].to_s) unless stub[:configuration_arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTypeDefaultVersion
    class SetTypeDefaultVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetTypeDefaultVersionResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('SetTypeDefaultVersionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SignalResource
    class SignalResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SignalResourceResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('SignalResourceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopStackSetOperation
    class StopStackSetOperation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopStackSetOperationResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('StopStackSetOperationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestType
    class TestType
      def self.default(visited=[])
        {
          type_version_arn: 'type_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TestTypeResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('TestTypeResult')
        xml << Hearth::XML::Node.new('TypeVersionArn', stub[:type_version_arn].to_s) unless stub[:type_version_arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStack
    class UpdateStack
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateStackResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('UpdateStackResult')
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStackInstances
    class UpdateStackInstances
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateStackInstancesResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('UpdateStackInstancesResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStackSet
    class UpdateStackSet
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateStackSetResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('UpdateStackSetResult')
        xml << Hearth::XML::Node.new('OperationId', stub[:operation_id].to_s) unless stub[:operation_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTerminationProtection
    class UpdateTerminationProtection
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateTerminationProtectionResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('UpdateTerminationProtectionResult')
        xml << Hearth::XML::Node.new('StackId', stub[:stack_id].to_s) unless stub[:stack_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidateTemplate
    class ValidateTemplate
      def self.default(visited=[])
        {
          parameters: TemplateParameters.default(visited),
          description: 'description',
          capabilities: Capabilities.default(visited),
          capabilities_reason: 'capabilities_reason',
          declared_transforms: TransformsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ValidateTemplateResponse')
        response.attributes['xmlns'] = 'http://cloudformation.amazonaws.com/doc/2010-05-15/'
        xml = Hearth::XML::Node.new('ValidateTemplateResult')
        xml << Hearth::XML::Node.new('Parameters', Stubs::TemplateParameters.stub('member', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Capabilities', Stubs::Capabilities.stub('member', stub[:capabilities])) unless stub[:capabilities].nil?
        xml << Hearth::XML::Node.new('CapabilitiesReason', stub[:capabilities_reason].to_s) unless stub[:capabilities_reason].nil?
        xml << Hearth::XML::Node.new('DeclaredTransforms', Stubs::TransformsList.stub('member', stub[:declared_transforms])) unless stub[:declared_transforms].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TemplateParameters
    class TemplateParameters
      def self.default(visited=[])
        return nil if visited.include?('TemplateParameters')
        visited = visited + ['TemplateParameters']
        [
          TemplateParameter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TemplateParameter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TemplateParameter
    class TemplateParameter
      def self.default(visited=[])
        return nil if visited.include?('TemplateParameter')
        visited = visited + ['TemplateParameter']
        {
          parameter_key: 'parameter_key',
          default_value: 'default_value',
          no_echo: false,
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TemplateParameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterKey', stub[:parameter_key].to_s) unless stub[:parameter_key].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('NoEcho', stub[:no_echo].to_s) unless stub[:no_echo].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end
  end
end
