# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Parsers

    # Operation Parser for ActivateType
    class ActivateType
      def self.parse(http_resp)
        data = Types::ActivateTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ActivateTypeResult')
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CFNRegistryException
    class CFNRegistryException
      def self.parse(http_resp)
        data = Types::CFNRegistryException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TypeNotFoundException
    class TypeNotFoundException
      def self.parse(http_resp)
        data = Types::TypeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for BatchDescribeTypeConfigurations
    class BatchDescribeTypeConfigurations
      def self.parse(http_resp)
        data = Types::BatchDescribeTypeConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchDescribeTypeConfigurationsResult')
        xml.at('Errors') do |node|
          children = node.children('member')
          data.errors = Parsers::BatchDescribeTypeConfigurationsErrors.parse(children)
        end
        xml.at('UnprocessedTypeConfigurations') do |node|
          children = node.children('member')
          data.unprocessed_type_configurations = Parsers::UnprocessedTypeConfigurations.parse(children)
        end
        xml.at('TypeConfigurations') do |node|
          children = node.children('member')
          data.type_configurations = Parsers::TypeConfigurationDetailsList.parse(children)
        end
        data
      end
    end

    class TypeConfigurationDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TypeConfigurationDetails.parse(node)
        end
        data
      end
    end

    class TypeConfigurationDetails
      def self.parse(xml)
        data = Types::TypeConfigurationDetails.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        xml.at('Configuration') do |node|
          data.configuration = (node.text || '')
        end
        xml.at('LastUpdated') do |node|
          data.last_updated = Time.parse(node.text) if node.text
        end
        xml.at('TypeArn') do |node|
          data.type_arn = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        xml.at('IsDefaultConfiguration') do |node|
          data.is_default_configuration = (node.text == 'true')
        end
        return data
      end
    end

    class UnprocessedTypeConfigurations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TypeConfigurationIdentifier.parse(node)
        end
        data
      end
    end

    class TypeConfigurationIdentifier
      def self.parse(xml)
        data = Types::TypeConfigurationIdentifier.new
        xml.at('TypeArn') do |node|
          data.type_arn = (node.text || '')
        end
        xml.at('TypeConfigurationAlias') do |node|
          data.type_configuration_alias = (node.text || '')
        end
        xml.at('TypeConfigurationArn') do |node|
          data.type_configuration_arn = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        return data
      end
    end

    class BatchDescribeTypeConfigurationsErrors
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BatchDescribeTypeConfigurationsError.parse(node)
        end
        data
      end
    end

    class BatchDescribeTypeConfigurationsError
      def self.parse(xml)
        data = Types::BatchDescribeTypeConfigurationsError.new
        xml.at('ErrorCode') do |node|
          data.error_code = (node.text || '')
        end
        xml.at('ErrorMessage') do |node|
          data.error_message = (node.text || '')
        end
        xml.at('TypeConfigurationIdentifier') do |node|
          data.type_configuration_identifier = Parsers::TypeConfigurationIdentifier.parse(node)
        end
        return data
      end
    end

    # Error Parser for TypeConfigurationNotFoundException
    class TypeConfigurationNotFoundException
      def self.parse(http_resp)
        data = Types::TypeConfigurationNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CancelUpdateStack
    class CancelUpdateStack
      def self.parse(http_resp)
        data = Types::CancelUpdateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CancelUpdateStackResult')
        data
      end
    end

    # Error Parser for TokenAlreadyExistsException
    class TokenAlreadyExistsException
      def self.parse(http_resp)
        data = Types::TokenAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ContinueUpdateRollback
    class ContinueUpdateRollback
      def self.parse(http_resp)
        data = Types::ContinueUpdateRollbackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ContinueUpdateRollbackResult')
        data
      end
    end

    # Operation Parser for CreateChangeSet
    class CreateChangeSet
      def self.parse(http_resp)
        data = Types::CreateChangeSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateChangeSetResult')
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientCapabilitiesException
    class InsufficientCapabilitiesException
      def self.parse(http_resp)
        data = Types::InsufficientCapabilitiesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStack
    class CreateStack
      def self.parse(http_resp)
        data = Types::CreateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateStackResult')
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStackInstances
    class CreateStackInstances
      def self.parse(http_resp)
        data = Types::CreateStackInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateStackInstancesResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OperationIdAlreadyExistsException
    class OperationIdAlreadyExistsException
      def self.parse(http_resp)
        data = Types::OperationIdAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OperationInProgressException
    class OperationInProgressException
      def self.parse(http_resp)
        data = Types::OperationInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StackSetNotFoundException
    class StackSetNotFoundException
      def self.parse(http_resp)
        data = Types::StackSetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StaleRequestException
    class StaleRequestException
      def self.parse(http_resp)
        data = Types::StaleRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStackSet
    class CreateStackSet
      def self.parse(http_resp)
        data = Types::CreateStackSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateStackSetResult')
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CreatedButModifiedException
    class CreatedButModifiedException
      def self.parse(http_resp)
        data = Types::CreatedButModifiedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NameAlreadyExistsException
    class NameAlreadyExistsException
      def self.parse(http_resp)
        data = Types::NameAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeactivateType
    class DeactivateType
      def self.parse(http_resp)
        data = Types::DeactivateTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeactivateTypeResult')
        data
      end
    end

    # Operation Parser for DeleteChangeSet
    class DeleteChangeSet
      def self.parse(http_resp)
        data = Types::DeleteChangeSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteChangeSetResult')
        data
      end
    end

    # Error Parser for InvalidChangeSetStatusException
    class InvalidChangeSetStatusException
      def self.parse(http_resp)
        data = Types::InvalidChangeSetStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteStack
    class DeleteStack
      def self.parse(http_resp)
        data = Types::DeleteStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteStackResult')
        data
      end
    end

    # Operation Parser for DeleteStackInstances
    class DeleteStackInstances
      def self.parse(http_resp)
        data = Types::DeleteStackInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteStackInstancesResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteStackSet
    class DeleteStackSet
      def self.parse(http_resp)
        data = Types::DeleteStackSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteStackSetResult')
        data
      end
    end

    # Error Parser for StackSetNotEmptyException
    class StackSetNotEmptyException
      def self.parse(http_resp)
        data = Types::StackSetNotEmptyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeregisterType
    class DeregisterType
      def self.parse(http_resp)
        data = Types::DeregisterTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeregisterTypeResult')
        data
      end
    end

    # Operation Parser for DescribeAccountLimits
    class DescribeAccountLimits
      def self.parse(http_resp)
        data = Types::DescribeAccountLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountLimitsResult')
        xml.at('AccountLimits') do |node|
          children = node.children('member')
          data.account_limits = Parsers::AccountLimitList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AccountLimitList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountLimit.parse(node)
        end
        data
      end
    end

    class AccountLimit
      def self.parse(xml)
        data = Types::AccountLimit.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeChangeSet
    class DescribeChangeSet
      def self.parse(http_resp)
        data = Types::DescribeChangeSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeChangeSetResult')
        xml.at('ChangeSetName') do |node|
          data.change_set_name = (node.text || '')
        end
        xml.at('ChangeSetId') do |node|
          data.change_set_id = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('member')
          data.parameters = Parsers::Parameters.parse(children)
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('ExecutionStatus') do |node|
          data.execution_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('NotificationARNs') do |node|
          children = node.children('member')
          data.notification_ar_ns = Parsers::NotificationARNs.parse(children)
        end
        xml.at('RollbackConfiguration') do |node|
          data.rollback_configuration = Parsers::RollbackConfiguration.parse(node)
        end
        xml.at('Capabilities') do |node|
          children = node.children('member')
          data.capabilities = Parsers::Capabilities.parse(children)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::Tags.parse(children)
        end
        xml.at('Changes') do |node|
          children = node.children('member')
          data.changes = Parsers::Changes.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('IncludeNestedStacks') do |node|
          data.include_nested_stacks = (node.text == 'true')
        end
        xml.at('ParentChangeSetId') do |node|
          data.parent_change_set_id = (node.text || '')
        end
        xml.at('RootChangeSetId') do |node|
          data.root_change_set_id = (node.text || '')
        end
        data
      end
    end

    class Changes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Change.parse(node)
        end
        data
      end
    end

    class Change
      def self.parse(xml)
        data = Types::Change.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('HookInvocationCount') do |node|
          data.hook_invocation_count = node.text&.to_i
        end
        xml.at('ResourceChange') do |node|
          data.resource_change = Parsers::ResourceChange.parse(node)
        end
        return data
      end
    end

    class ResourceChange
      def self.parse(xml)
        data = Types::ResourceChange.new
        xml.at('Action') do |node|
          data.action = (node.text || '')
        end
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('Replacement') do |node|
          data.replacement = (node.text || '')
        end
        xml.at('Scope') do |node|
          children = node.children('member')
          data.scope = Parsers::Scope.parse(children)
        end
        xml.at('Details') do |node|
          children = node.children('member')
          data.details = Parsers::ResourceChangeDetails.parse(children)
        end
        xml.at('ChangeSetId') do |node|
          data.change_set_id = (node.text || '')
        end
        xml.at('ModuleInfo') do |node|
          data.module_info = Parsers::ModuleInfo.parse(node)
        end
        return data
      end
    end

    class ModuleInfo
      def self.parse(xml)
        data = Types::ModuleInfo.new
        xml.at('TypeHierarchy') do |node|
          data.type_hierarchy = (node.text || '')
        end
        xml.at('LogicalIdHierarchy') do |node|
          data.logical_id_hierarchy = (node.text || '')
        end
        return data
      end
    end

    class ResourceChangeDetails
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceChangeDetail.parse(node)
        end
        data
      end
    end

    class ResourceChangeDetail
      def self.parse(xml)
        data = Types::ResourceChangeDetail.new
        xml.at('Target') do |node|
          data.target = Parsers::ResourceTargetDefinition.parse(node)
        end
        xml.at('Evaluation') do |node|
          data.evaluation = (node.text || '')
        end
        xml.at('ChangeSource') do |node|
          data.change_source = (node.text || '')
        end
        xml.at('CausingEntity') do |node|
          data.causing_entity = (node.text || '')
        end
        return data
      end
    end

    class ResourceTargetDefinition
      def self.parse(xml)
        data = Types::ResourceTargetDefinition.new
        xml.at('Attribute') do |node|
          data.attribute = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('RequiresRecreation') do |node|
          data.requires_recreation = (node.text || '')
        end
        return data
      end
    end

    class Scope
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Tags
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class Capabilities
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class RollbackConfiguration
      def self.parse(xml)
        data = Types::RollbackConfiguration.new
        xml.at('RollbackTriggers') do |node|
          children = node.children('member')
          data.rollback_triggers = Parsers::RollbackTriggers.parse(children)
        end
        xml.at('MonitoringTimeInMinutes') do |node|
          data.monitoring_time_in_minutes = node.text&.to_i
        end
        return data
      end
    end

    class RollbackTriggers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RollbackTrigger.parse(node)
        end
        data
      end
    end

    class RollbackTrigger
      def self.parse(xml)
        data = Types::RollbackTrigger.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        return data
      end
    end

    class NotificationARNs
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Parameters
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Parameter.parse(node)
        end
        data
      end
    end

    class Parameter
      def self.parse(xml)
        data = Types::Parameter.new
        xml.at('ParameterKey') do |node|
          data.parameter_key = (node.text || '')
        end
        xml.at('ParameterValue') do |node|
          data.parameter_value = (node.text || '')
        end
        xml.at('UsePreviousValue') do |node|
          data.use_previous_value = (node.text == 'true')
        end
        xml.at('ResolvedValue') do |node|
          data.resolved_value = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ChangeSetNotFoundException
    class ChangeSetNotFoundException
      def self.parse(http_resp)
        data = Types::ChangeSetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeChangeSetHooks
    class DescribeChangeSetHooks
      def self.parse(http_resp)
        data = Types::DescribeChangeSetHooksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeChangeSetHooksResult')
        xml.at('ChangeSetId') do |node|
          data.change_set_id = (node.text || '')
        end
        xml.at('ChangeSetName') do |node|
          data.change_set_name = (node.text || '')
        end
        xml.at('Hooks') do |node|
          children = node.children('member')
          data.hooks = Parsers::ChangeSetHooks.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        data
      end
    end

    class ChangeSetHooks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ChangeSetHook.parse(node)
        end
        data
      end
    end

    class ChangeSetHook
      def self.parse(xml)
        data = Types::ChangeSetHook.new
        xml.at('InvocationPoint') do |node|
          data.invocation_point = (node.text || '')
        end
        xml.at('FailureMode') do |node|
          data.failure_mode = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        xml.at('TypeVersionId') do |node|
          data.type_version_id = (node.text || '')
        end
        xml.at('TypeConfigurationVersionId') do |node|
          data.type_configuration_version_id = (node.text || '')
        end
        xml.at('TargetDetails') do |node|
          data.target_details = Parsers::ChangeSetHookTargetDetails.parse(node)
        end
        return data
      end
    end

    class ChangeSetHookTargetDetails
      def self.parse(xml)
        data = Types::ChangeSetHookTargetDetails.new
        xml.at('TargetType') do |node|
          data.target_type = (node.text || '')
        end
        xml.at('ResourceTargetDetails') do |node|
          data.resource_target_details = Parsers::ChangeSetHookResourceTargetDetails.parse(node)
        end
        return data
      end
    end

    class ChangeSetHookResourceTargetDetails
      def self.parse(xml)
        data = Types::ChangeSetHookResourceTargetDetails.new
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('ResourceAction') do |node|
          data.resource_action = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribePublisher
    class DescribePublisher
      def self.parse(http_resp)
        data = Types::DescribePublisherOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribePublisherResult')
        xml.at('PublisherId') do |node|
          data.publisher_id = (node.text || '')
        end
        xml.at('PublisherStatus') do |node|
          data.publisher_status = (node.text || '')
        end
        xml.at('IdentityProvider') do |node|
          data.identity_provider = (node.text || '')
        end
        xml.at('PublisherProfile') do |node|
          data.publisher_profile = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeStackDriftDetectionStatus
    class DescribeStackDriftDetectionStatus
      def self.parse(http_resp)
        data = Types::DescribeStackDriftDetectionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackDriftDetectionStatusResult')
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackDriftDetectionId') do |node|
          data.stack_drift_detection_id = (node.text || '')
        end
        xml.at('StackDriftStatus') do |node|
          data.stack_drift_status = (node.text || '')
        end
        xml.at('DetectionStatus') do |node|
          data.detection_status = (node.text || '')
        end
        xml.at('DetectionStatusReason') do |node|
          data.detection_status_reason = (node.text || '')
        end
        xml.at('DriftedStackResourceCount') do |node|
          data.drifted_stack_resource_count = node.text&.to_i
        end
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for DescribeStackEvents
    class DescribeStackEvents
      def self.parse(http_resp)
        data = Types::DescribeStackEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackEventsResult')
        xml.at('StackEvents') do |node|
          children = node.children('member')
          data.stack_events = Parsers::StackEvents.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackEvents
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackEvent.parse(node)
        end
        data
      end
    end

    class StackEvent
      def self.parse(xml)
        data = Types::StackEvent.new
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('EventId') do |node|
          data.event_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ResourceStatus') do |node|
          data.resource_status = (node.text || '')
        end
        xml.at('ResourceStatusReason') do |node|
          data.resource_status_reason = (node.text || '')
        end
        xml.at('ResourceProperties') do |node|
          data.resource_properties = (node.text || '')
        end
        xml.at('ClientRequestToken') do |node|
          data.client_request_token = (node.text || '')
        end
        xml.at('HookType') do |node|
          data.hook_type = (node.text || '')
        end
        xml.at('HookStatus') do |node|
          data.hook_status = (node.text || '')
        end
        xml.at('HookStatusReason') do |node|
          data.hook_status_reason = (node.text || '')
        end
        xml.at('HookInvocationPoint') do |node|
          data.hook_invocation_point = (node.text || '')
        end
        xml.at('HookFailureMode') do |node|
          data.hook_failure_mode = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeStackInstance
    class DescribeStackInstance
      def self.parse(http_resp)
        data = Types::DescribeStackInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackInstanceResult')
        xml.at('StackInstance') do |node|
          data.stack_instance = Parsers::StackInstance.parse(node)
        end
        data
      end
    end

    class StackInstance
      def self.parse(xml)
        data = Types::StackInstance.new
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('ParameterOverrides') do |node|
          children = node.children('member')
          data.parameter_overrides = Parsers::Parameters.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StackInstanceStatus') do |node|
          data.stack_instance_status = Parsers::StackInstanceComprehensiveStatus.parse(node)
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('OrganizationalUnitId') do |node|
          data.organizational_unit_id = (node.text || '')
        end
        xml.at('DriftStatus') do |node|
          data.drift_status = (node.text || '')
        end
        xml.at('LastDriftCheckTimestamp') do |node|
          data.last_drift_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class StackInstanceComprehensiveStatus
      def self.parse(xml)
        data = Types::StackInstanceComprehensiveStatus.new
        xml.at('DetailedStatus') do |node|
          data.detailed_status = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for StackInstanceNotFoundException
    class StackInstanceNotFoundException
      def self.parse(http_resp)
        data = Types::StackInstanceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeStackResource
    class DescribeStackResource
      def self.parse(http_resp)
        data = Types::DescribeStackResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackResourceResult')
        xml.at('StackResourceDetail') do |node|
          data.stack_resource_detail = Parsers::StackResourceDetail.parse(node)
        end
        data
      end
    end

    class StackResourceDetail
      def self.parse(xml)
        data = Types::StackResourceDetail.new
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('LastUpdatedTimestamp') do |node|
          data.last_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ResourceStatus') do |node|
          data.resource_status = (node.text || '')
        end
        xml.at('ResourceStatusReason') do |node|
          data.resource_status_reason = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Metadata') do |node|
          data.metadata = (node.text || '')
        end
        xml.at('DriftInformation') do |node|
          data.drift_information = Parsers::StackResourceDriftInformation.parse(node)
        end
        xml.at('ModuleInfo') do |node|
          data.module_info = Parsers::ModuleInfo.parse(node)
        end
        return data
      end
    end

    class StackResourceDriftInformation
      def self.parse(xml)
        data = Types::StackResourceDriftInformation.new
        xml.at('StackResourceDriftStatus') do |node|
          data.stack_resource_drift_status = (node.text || '')
        end
        xml.at('LastCheckTimestamp') do |node|
          data.last_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeStackResourceDrifts
    class DescribeStackResourceDrifts
      def self.parse(http_resp)
        data = Types::DescribeStackResourceDriftsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackResourceDriftsResult')
        xml.at('StackResourceDrifts') do |node|
          children = node.children('member')
          data.stack_resource_drifts = Parsers::StackResourceDrifts.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackResourceDrifts
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackResourceDrift.parse(node)
        end
        data
      end
    end

    class StackResourceDrift
      def self.parse(xml)
        data = Types::StackResourceDrift.new
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceIdContext') do |node|
          children = node.children('member')
          data.physical_resource_id_context = Parsers::PhysicalResourceIdContext.parse(children)
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('ExpectedProperties') do |node|
          data.expected_properties = (node.text || '')
        end
        xml.at('ActualProperties') do |node|
          data.actual_properties = (node.text || '')
        end
        xml.at('PropertyDifferences') do |node|
          children = node.children('member')
          data.property_differences = Parsers::PropertyDifferences.parse(children)
        end
        xml.at('StackResourceDriftStatus') do |node|
          data.stack_resource_drift_status = (node.text || '')
        end
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ModuleInfo') do |node|
          data.module_info = Parsers::ModuleInfo.parse(node)
        end
        return data
      end
    end

    class PropertyDifferences
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PropertyDifference.parse(node)
        end
        data
      end
    end

    class PropertyDifference
      def self.parse(xml)
        data = Types::PropertyDifference.new
        xml.at('PropertyPath') do |node|
          data.property_path = (node.text || '')
        end
        xml.at('ExpectedValue') do |node|
          data.expected_value = (node.text || '')
        end
        xml.at('ActualValue') do |node|
          data.actual_value = (node.text || '')
        end
        xml.at('DifferenceType') do |node|
          data.difference_type = (node.text || '')
        end
        return data
      end
    end

    class PhysicalResourceIdContext
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PhysicalResourceIdContextKeyValuePair.parse(node)
        end
        data
      end
    end

    class PhysicalResourceIdContextKeyValuePair
      def self.parse(xml)
        data = Types::PhysicalResourceIdContextKeyValuePair.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeStackResources
    class DescribeStackResources
      def self.parse(http_resp)
        data = Types::DescribeStackResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackResourcesResult')
        xml.at('StackResources') do |node|
          children = node.children('member')
          data.stack_resources = Parsers::StackResources.parse(children)
        end
        data
      end
    end

    class StackResources
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackResource.parse(node)
        end
        data
      end
    end

    class StackResource
      def self.parse(xml)
        data = Types::StackResource.new
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ResourceStatus') do |node|
          data.resource_status = (node.text || '')
        end
        xml.at('ResourceStatusReason') do |node|
          data.resource_status_reason = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DriftInformation') do |node|
          data.drift_information = Parsers::StackResourceDriftInformation.parse(node)
        end
        xml.at('ModuleInfo') do |node|
          data.module_info = Parsers::ModuleInfo.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeStackSet
    class DescribeStackSet
      def self.parse(http_resp)
        data = Types::DescribeStackSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackSetResult')
        xml.at('StackSet') do |node|
          data.stack_set = Parsers::StackSet.parse(node)
        end
        data
      end
    end

    class StackSet
      def self.parse(xml)
        data = Types::StackSet.new
        xml.at('StackSetName') do |node|
          data.stack_set_name = (node.text || '')
        end
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('TemplateBody') do |node|
          data.template_body = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('member')
          data.parameters = Parsers::Parameters.parse(children)
        end
        xml.at('Capabilities') do |node|
          children = node.children('member')
          data.capabilities = Parsers::Capabilities.parse(children)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::Tags.parse(children)
        end
        xml.at('StackSetARN') do |node|
          data.stack_set_arn = (node.text || '')
        end
        xml.at('AdministrationRoleARN') do |node|
          data.administration_role_arn = (node.text || '')
        end
        xml.at('ExecutionRoleName') do |node|
          data.execution_role_name = (node.text || '')
        end
        xml.at('StackSetDriftDetectionDetails') do |node|
          data.stack_set_drift_detection_details = Parsers::StackSetDriftDetectionDetails.parse(node)
        end
        xml.at('AutoDeployment') do |node|
          data.auto_deployment = Parsers::AutoDeployment.parse(node)
        end
        xml.at('PermissionModel') do |node|
          data.permission_model = (node.text || '')
        end
        xml.at('OrganizationalUnitIds') do |node|
          children = node.children('member')
          data.organizational_unit_ids = Parsers::OrganizationalUnitIdList.parse(children)
        end
        xml.at('ManagedExecution') do |node|
          data.managed_execution = Parsers::ManagedExecution.parse(node)
        end
        return data
      end
    end

    class ManagedExecution
      def self.parse(xml)
        data = Types::ManagedExecution.new
        xml.at('Active') do |node|
          data.active = (node.text == 'true')
        end
        return data
      end
    end

    class OrganizationalUnitIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AutoDeployment
      def self.parse(xml)
        data = Types::AutoDeployment.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('RetainStacksOnAccountRemoval') do |node|
          data.retain_stacks_on_account_removal = (node.text == 'true')
        end
        return data
      end
    end

    class StackSetDriftDetectionDetails
      def self.parse(xml)
        data = Types::StackSetDriftDetectionDetails.new
        xml.at('DriftStatus') do |node|
          data.drift_status = (node.text || '')
        end
        xml.at('DriftDetectionStatus') do |node|
          data.drift_detection_status = (node.text || '')
        end
        xml.at('LastDriftCheckTimestamp') do |node|
          data.last_drift_check_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('TotalStackInstancesCount') do |node|
          data.total_stack_instances_count = node.text&.to_i
        end
        xml.at('DriftedStackInstancesCount') do |node|
          data.drifted_stack_instances_count = node.text&.to_i
        end
        xml.at('InSyncStackInstancesCount') do |node|
          data.in_sync_stack_instances_count = node.text&.to_i
        end
        xml.at('InProgressStackInstancesCount') do |node|
          data.in_progress_stack_instances_count = node.text&.to_i
        end
        xml.at('FailedStackInstancesCount') do |node|
          data.failed_stack_instances_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeStackSetOperation
    class DescribeStackSetOperation
      def self.parse(http_resp)
        data = Types::DescribeStackSetOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStackSetOperationResult')
        xml.at('StackSetOperation') do |node|
          data.stack_set_operation = Parsers::StackSetOperation.parse(node)
        end
        data
      end
    end

    class StackSetOperation
      def self.parse(xml)
        data = Types::StackSetOperation.new
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        xml.at('Action') do |node|
          data.action = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('OperationPreferences') do |node|
          data.operation_preferences = Parsers::StackSetOperationPreferences.parse(node)
        end
        xml.at('RetainStacks') do |node|
          data.retain_stacks = (node.text == 'true')
        end
        xml.at('AdministrationRoleARN') do |node|
          data.administration_role_arn = (node.text || '')
        end
        xml.at('ExecutionRoleName') do |node|
          data.execution_role_name = (node.text || '')
        end
        xml.at('CreationTimestamp') do |node|
          data.creation_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('EndTimestamp') do |node|
          data.end_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('DeploymentTargets') do |node|
          data.deployment_targets = Parsers::DeploymentTargets.parse(node)
        end
        xml.at('StackSetDriftDetectionDetails') do |node|
          data.stack_set_drift_detection_details = Parsers::StackSetDriftDetectionDetails.parse(node)
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        return data
      end
    end

    class DeploymentTargets
      def self.parse(xml)
        data = Types::DeploymentTargets.new
        xml.at('Accounts') do |node|
          children = node.children('member')
          data.accounts = Parsers::AccountList.parse(children)
        end
        xml.at('AccountsUrl') do |node|
          data.accounts_url = (node.text || '')
        end
        xml.at('OrganizationalUnitIds') do |node|
          children = node.children('member')
          data.organizational_unit_ids = Parsers::OrganizationalUnitIdList.parse(children)
        end
        return data
      end
    end

    class AccountList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class StackSetOperationPreferences
      def self.parse(xml)
        data = Types::StackSetOperationPreferences.new
        xml.at('RegionConcurrencyType') do |node|
          data.region_concurrency_type = (node.text || '')
        end
        xml.at('RegionOrder') do |node|
          children = node.children('member')
          data.region_order = Parsers::RegionList.parse(children)
        end
        xml.at('FailureToleranceCount') do |node|
          data.failure_tolerance_count = node.text&.to_i
        end
        xml.at('FailureTolerancePercentage') do |node|
          data.failure_tolerance_percentage = node.text&.to_i
        end
        xml.at('MaxConcurrentCount') do |node|
          data.max_concurrent_count = node.text&.to_i
        end
        xml.at('MaxConcurrentPercentage') do |node|
          data.max_concurrent_percentage = node.text&.to_i
        end
        return data
      end
    end

    class RegionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for OperationNotFoundException
    class OperationNotFoundException
      def self.parse(http_resp)
        data = Types::OperationNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeStacks
    class DescribeStacks
      def self.parse(http_resp)
        data = Types::DescribeStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStacksResult')
        xml.at('Stacks') do |node|
          children = node.children('member')
          data.stacks = Parsers::Stacks.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Stacks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Stack.parse(node)
        end
        data
      end
    end

    class Stack
      def self.parse(xml)
        data = Types::Stack.new
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('ChangeSetId') do |node|
          data.change_set_id = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('member')
          data.parameters = Parsers::Parameters.parse(children)
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('DeletionTime') do |node|
          data.deletion_time = Time.parse(node.text) if node.text
        end
        xml.at('LastUpdatedTime') do |node|
          data.last_updated_time = Time.parse(node.text) if node.text
        end
        xml.at('RollbackConfiguration') do |node|
          data.rollback_configuration = Parsers::RollbackConfiguration.parse(node)
        end
        xml.at('StackStatus') do |node|
          data.stack_status = (node.text || '')
        end
        xml.at('StackStatusReason') do |node|
          data.stack_status_reason = (node.text || '')
        end
        xml.at('DisableRollback') do |node|
          data.disable_rollback = (node.text == 'true')
        end
        xml.at('NotificationARNs') do |node|
          children = node.children('member')
          data.notification_ar_ns = Parsers::NotificationARNs.parse(children)
        end
        xml.at('TimeoutInMinutes') do |node|
          data.timeout_in_minutes = node.text&.to_i
        end
        xml.at('Capabilities') do |node|
          children = node.children('member')
          data.capabilities = Parsers::Capabilities.parse(children)
        end
        xml.at('Outputs') do |node|
          children = node.children('member')
          data.outputs = Parsers::Outputs.parse(children)
        end
        xml.at('RoleARN') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::Tags.parse(children)
        end
        xml.at('EnableTerminationProtection') do |node|
          data.enable_termination_protection = (node.text == 'true')
        end
        xml.at('ParentId') do |node|
          data.parent_id = (node.text || '')
        end
        xml.at('RootId') do |node|
          data.root_id = (node.text || '')
        end
        xml.at('DriftInformation') do |node|
          data.drift_information = Parsers::StackDriftInformation.parse(node)
        end
        return data
      end
    end

    class StackDriftInformation
      def self.parse(xml)
        data = Types::StackDriftInformation.new
        xml.at('StackDriftStatus') do |node|
          data.stack_drift_status = (node.text || '')
        end
        xml.at('LastCheckTimestamp') do |node|
          data.last_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class Outputs
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Output.parse(node)
        end
        data
      end
    end

    class Output
      def self.parse(xml)
        data = Types::Output.new
        xml.at('OutputKey') do |node|
          data.output_key = (node.text || '')
        end
        xml.at('OutputValue') do |node|
          data.output_value = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('ExportName') do |node|
          data.export_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeType
    class DescribeType
      def self.parse(http_resp)
        data = Types::DescribeTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTypeResult')
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        xml.at('DefaultVersionId') do |node|
          data.default_version_id = (node.text || '')
        end
        xml.at('IsDefaultVersion') do |node|
          data.is_default_version = (node.text == 'true')
        end
        xml.at('TypeTestsStatus') do |node|
          data.type_tests_status = (node.text || '')
        end
        xml.at('TypeTestsStatusDescription') do |node|
          data.type_tests_status_description = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Schema') do |node|
          data.schema = (node.text || '')
        end
        xml.at('ProvisioningType') do |node|
          data.provisioning_type = (node.text || '')
        end
        xml.at('DeprecatedStatus') do |node|
          data.deprecated_status = (node.text || '')
        end
        xml.at('LoggingConfig') do |node|
          data.logging_config = Parsers::LoggingConfig.parse(node)
        end
        xml.at('RequiredActivatedTypes') do |node|
          children = node.children('member')
          data.required_activated_types = Parsers::RequiredActivatedTypes.parse(children)
        end
        xml.at('ExecutionRoleArn') do |node|
          data.execution_role_arn = (node.text || '')
        end
        xml.at('Visibility') do |node|
          data.visibility = (node.text || '')
        end
        xml.at('SourceUrl') do |node|
          data.source_url = (node.text || '')
        end
        xml.at('DocumentationUrl') do |node|
          data.documentation_url = (node.text || '')
        end
        xml.at('LastUpdated') do |node|
          data.last_updated = Time.parse(node.text) if node.text
        end
        xml.at('TimeCreated') do |node|
          data.time_created = Time.parse(node.text) if node.text
        end
        xml.at('ConfigurationSchema') do |node|
          data.configuration_schema = (node.text || '')
        end
        xml.at('PublisherId') do |node|
          data.publisher_id = (node.text || '')
        end
        xml.at('OriginalTypeName') do |node|
          data.original_type_name = (node.text || '')
        end
        xml.at('OriginalTypeArn') do |node|
          data.original_type_arn = (node.text || '')
        end
        xml.at('PublicVersionNumber') do |node|
          data.public_version_number = (node.text || '')
        end
        xml.at('LatestPublicVersion') do |node|
          data.latest_public_version = (node.text || '')
        end
        xml.at('IsActivated') do |node|
          data.is_activated = (node.text == 'true')
        end
        xml.at('AutoUpdate') do |node|
          data.auto_update = (node.text == 'true')
        end
        data
      end
    end

    class RequiredActivatedTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RequiredActivatedType.parse(node)
        end
        data
      end
    end

    class RequiredActivatedType
      def self.parse(xml)
        data = Types::RequiredActivatedType.new
        xml.at('TypeNameAlias') do |node|
          data.type_name_alias = (node.text || '')
        end
        xml.at('OriginalTypeName') do |node|
          data.original_type_name = (node.text || '')
        end
        xml.at('PublisherId') do |node|
          data.publisher_id = (node.text || '')
        end
        xml.at('SupportedMajorVersions') do |node|
          children = node.children('member')
          data.supported_major_versions = Parsers::SupportedMajorVersions.parse(children)
        end
        return data
      end
    end

    class SupportedMajorVersions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    class LoggingConfig
      def self.parse(xml)
        data = Types::LoggingConfig.new
        xml.at('LogRoleArn') do |node|
          data.log_role_arn = (node.text || '')
        end
        xml.at('LogGroupName') do |node|
          data.log_group_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeTypeRegistration
    class DescribeTypeRegistration
      def self.parse(http_resp)
        data = Types::DescribeTypeRegistrationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTypeRegistrationResult')
        xml.at('ProgressStatus') do |node|
          data.progress_status = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('TypeArn') do |node|
          data.type_arn = (node.text || '')
        end
        xml.at('TypeVersionArn') do |node|
          data.type_version_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DetectStackDrift
    class DetectStackDrift
      def self.parse(http_resp)
        data = Types::DetectStackDriftOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetectStackDriftResult')
        xml.at('StackDriftDetectionId') do |node|
          data.stack_drift_detection_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DetectStackResourceDrift
    class DetectStackResourceDrift
      def self.parse(http_resp)
        data = Types::DetectStackResourceDriftOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetectStackResourceDriftResult')
        xml.at('StackResourceDrift') do |node|
          data.stack_resource_drift = Parsers::StackResourceDrift.parse(node)
        end
        data
      end
    end

    # Operation Parser for DetectStackSetDrift
    class DetectStackSetDrift
      def self.parse(http_resp)
        data = Types::DetectStackSetDriftOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetectStackSetDriftResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for EstimateTemplateCost
    class EstimateTemplateCost
      def self.parse(http_resp)
        data = Types::EstimateTemplateCostOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EstimateTemplateCostResult')
        xml.at('Url') do |node|
          data.url = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ExecuteChangeSet
    class ExecuteChangeSet
      def self.parse(http_resp)
        data = Types::ExecuteChangeSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ExecuteChangeSetResult')
        data
      end
    end

    # Operation Parser for GetStackPolicy
    class GetStackPolicy
      def self.parse(http_resp)
        data = Types::GetStackPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetStackPolicyResult')
        xml.at('StackPolicyBody') do |node|
          data.stack_policy_body = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetTemplate
    class GetTemplate
      def self.parse(http_resp)
        data = Types::GetTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetTemplateResult')
        xml.at('TemplateBody') do |node|
          data.template_body = (node.text || '')
        end
        xml.at('StagesAvailable') do |node|
          children = node.children('member')
          data.stages_available = Parsers::StageList.parse(children)
        end
        data
      end
    end

    class StageList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetTemplateSummary
    class GetTemplateSummary
      def self.parse(http_resp)
        data = Types::GetTemplateSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetTemplateSummaryResult')
        xml.at('Parameters') do |node|
          children = node.children('member')
          data.parameters = Parsers::ParameterDeclarations.parse(children)
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Capabilities') do |node|
          children = node.children('member')
          data.capabilities = Parsers::Capabilities.parse(children)
        end
        xml.at('CapabilitiesReason') do |node|
          data.capabilities_reason = (node.text || '')
        end
        xml.at('ResourceTypes') do |node|
          children = node.children('member')
          data.resource_types = Parsers::ResourceTypes.parse(children)
        end
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        xml.at('Metadata') do |node|
          data.metadata = (node.text || '')
        end
        xml.at('DeclaredTransforms') do |node|
          children = node.children('member')
          data.declared_transforms = Parsers::TransformsList.parse(children)
        end
        xml.at('ResourceIdentifierSummaries') do |node|
          children = node.children('member')
          data.resource_identifier_summaries = Parsers::ResourceIdentifierSummaries.parse(children)
        end
        data
      end
    end

    class ResourceIdentifierSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceIdentifierSummary.parse(node)
        end
        data
      end
    end

    class ResourceIdentifierSummary
      def self.parse(xml)
        data = Types::ResourceIdentifierSummary.new
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('LogicalResourceIds') do |node|
          children = node.children('member')
          data.logical_resource_ids = Parsers::LogicalResourceIds.parse(children)
        end
        xml.at('ResourceIdentifiers') do |node|
          children = node.children('member')
          data.resource_identifiers = Parsers::ResourceIdentifiers.parse(children)
        end
        return data
      end
    end

    class ResourceIdentifiers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class LogicalResourceIds
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class TransformsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ResourceTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ParameterDeclarations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ParameterDeclaration.parse(node)
        end
        data
      end
    end

    class ParameterDeclaration
      def self.parse(xml)
        data = Types::ParameterDeclaration.new
        xml.at('ParameterKey') do |node|
          data.parameter_key = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('ParameterType') do |node|
          data.parameter_type = (node.text || '')
        end
        xml.at('NoEcho') do |node|
          data.no_echo = (node.text == 'true')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('ParameterConstraints') do |node|
          data.parameter_constraints = Parsers::ParameterConstraints.parse(node)
        end
        return data
      end
    end

    class ParameterConstraints
      def self.parse(xml)
        data = Types::ParameterConstraints.new
        xml.at('AllowedValues') do |node|
          children = node.children('member')
          data.allowed_values = Parsers::AllowedValues.parse(children)
        end
        return data
      end
    end

    class AllowedValues
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ImportStacksToStackSet
    class ImportStacksToStackSet
      def self.parse(http_resp)
        data = Types::ImportStacksToStackSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ImportStacksToStackSetResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StackNotFoundException
    class StackNotFoundException
      def self.parse(http_resp)
        data = Types::StackNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListChangeSets
    class ListChangeSets
      def self.parse(http_resp)
        data = Types::ListChangeSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListChangeSetsResult')
        xml.at('Summaries') do |node|
          children = node.children('member')
          data.summaries = Parsers::ChangeSetSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ChangeSetSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ChangeSetSummary.parse(node)
        end
        data
      end
    end

    class ChangeSetSummary
      def self.parse(xml)
        data = Types::ChangeSetSummary.new
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('ChangeSetId') do |node|
          data.change_set_id = (node.text || '')
        end
        xml.at('ChangeSetName') do |node|
          data.change_set_name = (node.text || '')
        end
        xml.at('ExecutionStatus') do |node|
          data.execution_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('IncludeNestedStacks') do |node|
          data.include_nested_stacks = (node.text == 'true')
        end
        xml.at('ParentChangeSetId') do |node|
          data.parent_change_set_id = (node.text || '')
        end
        xml.at('RootChangeSetId') do |node|
          data.root_change_set_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListExports
    class ListExports
      def self.parse(http_resp)
        data = Types::ListExportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListExportsResult')
        xml.at('Exports') do |node|
          children = node.children('member')
          data.exports = Parsers::Exports.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Exports
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Export.parse(node)
        end
        data
      end
    end

    class Export
      def self.parse(xml)
        data = Types::Export.new
        xml.at('ExportingStackId') do |node|
          data.exporting_stack_id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListImports
    class ListImports
      def self.parse(http_resp)
        data = Types::ListImportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListImportsResult')
        xml.at('Imports') do |node|
          children = node.children('member')
          data.imports = Parsers::Imports.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Imports
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListStackInstances
    class ListStackInstances
      def self.parse(http_resp)
        data = Types::ListStackInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStackInstancesResult')
        xml.at('Summaries') do |node|
          children = node.children('member')
          data.summaries = Parsers::StackInstanceSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackInstanceSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackInstanceSummary.parse(node)
        end
        data
      end
    end

    class StackInstanceSummary
      def self.parse(xml)
        data = Types::StackInstanceSummary.new
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('StackInstanceStatus') do |node|
          data.stack_instance_status = Parsers::StackInstanceComprehensiveStatus.parse(node)
        end
        xml.at('OrganizationalUnitId') do |node|
          data.organizational_unit_id = (node.text || '')
        end
        xml.at('DriftStatus') do |node|
          data.drift_status = (node.text || '')
        end
        xml.at('LastDriftCheckTimestamp') do |node|
          data.last_drift_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListStackResources
    class ListStackResources
      def self.parse(http_resp)
        data = Types::ListStackResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStackResourcesResult')
        xml.at('StackResourceSummaries') do |node|
          children = node.children('member')
          data.stack_resource_summaries = Parsers::StackResourceSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackResourceSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackResourceSummary.parse(node)
        end
        data
      end
    end

    class StackResourceSummary
      def self.parse(xml)
        data = Types::StackResourceSummary.new
        xml.at('LogicalResourceId') do |node|
          data.logical_resource_id = (node.text || '')
        end
        xml.at('PhysicalResourceId') do |node|
          data.physical_resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('LastUpdatedTimestamp') do |node|
          data.last_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ResourceStatus') do |node|
          data.resource_status = (node.text || '')
        end
        xml.at('ResourceStatusReason') do |node|
          data.resource_status_reason = (node.text || '')
        end
        xml.at('DriftInformation') do |node|
          data.drift_information = Parsers::StackResourceDriftInformationSummary.parse(node)
        end
        xml.at('ModuleInfo') do |node|
          data.module_info = Parsers::ModuleInfo.parse(node)
        end
        return data
      end
    end

    class StackResourceDriftInformationSummary
      def self.parse(xml)
        data = Types::StackResourceDriftInformationSummary.new
        xml.at('StackResourceDriftStatus') do |node|
          data.stack_resource_drift_status = (node.text || '')
        end
        xml.at('LastCheckTimestamp') do |node|
          data.last_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListStackSetOperationResults
    class ListStackSetOperationResults
      def self.parse(http_resp)
        data = Types::ListStackSetOperationResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStackSetOperationResultsResult')
        xml.at('Summaries') do |node|
          children = node.children('member')
          data.summaries = Parsers::StackSetOperationResultSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackSetOperationResultSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackSetOperationResultSummary.parse(node)
        end
        data
      end
    end

    class StackSetOperationResultSummary
      def self.parse(xml)
        data = Types::StackSetOperationResultSummary.new
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('AccountGateResult') do |node|
          data.account_gate_result = Parsers::AccountGateResult.parse(node)
        end
        xml.at('OrganizationalUnitId') do |node|
          data.organizational_unit_id = (node.text || '')
        end
        return data
      end
    end

    class AccountGateResult
      def self.parse(xml)
        data = Types::AccountGateResult.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListStackSetOperations
    class ListStackSetOperations
      def self.parse(http_resp)
        data = Types::ListStackSetOperationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStackSetOperationsResult')
        xml.at('Summaries') do |node|
          children = node.children('member')
          data.summaries = Parsers::StackSetOperationSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackSetOperationSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackSetOperationSummary.parse(node)
        end
        data
      end
    end

    class StackSetOperationSummary
      def self.parse(xml)
        data = Types::StackSetOperationSummary.new
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        xml.at('Action') do |node|
          data.action = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CreationTimestamp') do |node|
          data.creation_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('EndTimestamp') do |node|
          data.end_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListStackSets
    class ListStackSets
      def self.parse(http_resp)
        data = Types::ListStackSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStackSetsResult')
        xml.at('Summaries') do |node|
          children = node.children('member')
          data.summaries = Parsers::StackSetSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackSetSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackSetSummary.parse(node)
        end
        data
      end
    end

    class StackSetSummary
      def self.parse(xml)
        data = Types::StackSetSummary.new
        xml.at('StackSetName') do |node|
          data.stack_set_name = (node.text || '')
        end
        xml.at('StackSetId') do |node|
          data.stack_set_id = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AutoDeployment') do |node|
          data.auto_deployment = Parsers::AutoDeployment.parse(node)
        end
        xml.at('PermissionModel') do |node|
          data.permission_model = (node.text || '')
        end
        xml.at('DriftStatus') do |node|
          data.drift_status = (node.text || '')
        end
        xml.at('LastDriftCheckTimestamp') do |node|
          data.last_drift_check_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ManagedExecution') do |node|
          data.managed_execution = Parsers::ManagedExecution.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListStacks
    class ListStacks
      def self.parse(http_resp)
        data = Types::ListStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListStacksResult')
        xml.at('StackSummaries') do |node|
          children = node.children('member')
          data.stack_summaries = Parsers::StackSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StackSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StackSummary.parse(node)
        end
        data
      end
    end

    class StackSummary
      def self.parse(xml)
        data = Types::StackSummary.new
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        xml.at('StackName') do |node|
          data.stack_name = (node.text || '')
        end
        xml.at('TemplateDescription') do |node|
          data.template_description = (node.text || '')
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('LastUpdatedTime') do |node|
          data.last_updated_time = Time.parse(node.text) if node.text
        end
        xml.at('DeletionTime') do |node|
          data.deletion_time = Time.parse(node.text) if node.text
        end
        xml.at('StackStatus') do |node|
          data.stack_status = (node.text || '')
        end
        xml.at('StackStatusReason') do |node|
          data.stack_status_reason = (node.text || '')
        end
        xml.at('ParentId') do |node|
          data.parent_id = (node.text || '')
        end
        xml.at('RootId') do |node|
          data.root_id = (node.text || '')
        end
        xml.at('DriftInformation') do |node|
          data.drift_information = Parsers::StackDriftInformationSummary.parse(node)
        end
        return data
      end
    end

    class StackDriftInformationSummary
      def self.parse(xml)
        data = Types::StackDriftInformationSummary.new
        xml.at('StackDriftStatus') do |node|
          data.stack_drift_status = (node.text || '')
        end
        xml.at('LastCheckTimestamp') do |node|
          data.last_check_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListTypeRegistrations
    class ListTypeRegistrations
      def self.parse(http_resp)
        data = Types::ListTypeRegistrationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTypeRegistrationsResult')
        xml.at('RegistrationTokenList') do |node|
          children = node.children('member')
          data.registration_token_list = Parsers::RegistrationTokenList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class RegistrationTokenList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListTypeVersions
    class ListTypeVersions
      def self.parse(http_resp)
        data = Types::ListTypeVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTypeVersionsResult')
        xml.at('TypeVersionSummaries') do |node|
          children = node.children('member')
          data.type_version_summaries = Parsers::TypeVersionSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TypeVersionSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TypeVersionSummary.parse(node)
        end
        data
      end
    end

    class TypeVersionSummary
      def self.parse(xml)
        data = Types::TypeVersionSummary.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('IsDefaultVersion') do |node|
          data.is_default_version = (node.text == 'true')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('TimeCreated') do |node|
          data.time_created = Time.parse(node.text) if node.text
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('PublicVersionNumber') do |node|
          data.public_version_number = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListTypes
    class ListTypes
      def self.parse(http_resp)
        data = Types::ListTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTypesResult')
        xml.at('TypeSummaries') do |node|
          children = node.children('member')
          data.type_summaries = Parsers::TypeSummaries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TypeSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TypeSummary.parse(node)
        end
        data
      end
    end

    class TypeSummary
      def self.parse(xml)
        data = Types::TypeSummary.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('TypeName') do |node|
          data.type_name = (node.text || '')
        end
        xml.at('DefaultVersionId') do |node|
          data.default_version_id = (node.text || '')
        end
        xml.at('TypeArn') do |node|
          data.type_arn = (node.text || '')
        end
        xml.at('LastUpdated') do |node|
          data.last_updated = Time.parse(node.text) if node.text
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('PublisherId') do |node|
          data.publisher_id = (node.text || '')
        end
        xml.at('OriginalTypeName') do |node|
          data.original_type_name = (node.text || '')
        end
        xml.at('PublicVersionNumber') do |node|
          data.public_version_number = (node.text || '')
        end
        xml.at('LatestPublicVersion') do |node|
          data.latest_public_version = (node.text || '')
        end
        xml.at('PublisherIdentity') do |node|
          data.publisher_identity = (node.text || '')
        end
        xml.at('PublisherName') do |node|
          data.publisher_name = (node.text || '')
        end
        xml.at('IsActivated') do |node|
          data.is_activated = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for PublishType
    class PublishType
      def self.parse(http_resp)
        data = Types::PublishTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PublishTypeResult')
        xml.at('PublicTypeArn') do |node|
          data.public_type_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RecordHandlerProgress
    class RecordHandlerProgress
      def self.parse(http_resp)
        data = Types::RecordHandlerProgressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RecordHandlerProgressResult')
        data
      end
    end

    # Error Parser for InvalidStateTransitionException
    class InvalidStateTransitionException
      def self.parse(http_resp)
        data = Types::InvalidStateTransitionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OperationStatusCheckFailedException
    class OperationStatusCheckFailedException
      def self.parse(http_resp)
        data = Types::OperationStatusCheckFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RegisterPublisher
    class RegisterPublisher
      def self.parse(http_resp)
        data = Types::RegisterPublisherOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RegisterPublisherResult')
        xml.at('PublisherId') do |node|
          data.publisher_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RegisterType
    class RegisterType
      def self.parse(http_resp)
        data = Types::RegisterTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RegisterTypeResult')
        xml.at('RegistrationToken') do |node|
          data.registration_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RollbackStack
    class RollbackStack
      def self.parse(http_resp)
        data = Types::RollbackStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RollbackStackResult')
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetStackPolicy
    class SetStackPolicy
      def self.parse(http_resp)
        data = Types::SetStackPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetStackPolicyResult')
        data
      end
    end

    # Operation Parser for SetTypeConfiguration
    class SetTypeConfiguration
      def self.parse(http_resp)
        data = Types::SetTypeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetTypeConfigurationResult')
        xml.at('ConfigurationArn') do |node|
          data.configuration_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetTypeDefaultVersion
    class SetTypeDefaultVersion
      def self.parse(http_resp)
        data = Types::SetTypeDefaultVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetTypeDefaultVersionResult')
        data
      end
    end

    # Operation Parser for SignalResource
    class SignalResource
      def self.parse(http_resp)
        data = Types::SignalResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SignalResourceResult')
        data
      end
    end

    # Operation Parser for StopStackSetOperation
    class StopStackSetOperation
      def self.parse(http_resp)
        data = Types::StopStackSetOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopStackSetOperationResult')
        data
      end
    end

    # Operation Parser for TestType
    class TestType
      def self.parse(http_resp)
        data = Types::TestTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TestTypeResult')
        xml.at('TypeVersionArn') do |node|
          data.type_version_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateStack
    class UpdateStack
      def self.parse(http_resp)
        data = Types::UpdateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateStackResult')
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateStackInstances
    class UpdateStackInstances
      def self.parse(http_resp)
        data = Types::UpdateStackInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateStackInstancesResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateStackSet
    class UpdateStackSet
      def self.parse(http_resp)
        data = Types::UpdateStackSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateStackSetResult')
        xml.at('OperationId') do |node|
          data.operation_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateTerminationProtection
    class UpdateTerminationProtection
      def self.parse(http_resp)
        data = Types::UpdateTerminationProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateTerminationProtectionResult')
        xml.at('StackId') do |node|
          data.stack_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ValidateTemplate
    class ValidateTemplate
      def self.parse(http_resp)
        data = Types::ValidateTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ValidateTemplateResult')
        xml.at('Parameters') do |node|
          children = node.children('member')
          data.parameters = Parsers::TemplateParameters.parse(children)
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Capabilities') do |node|
          children = node.children('member')
          data.capabilities = Parsers::Capabilities.parse(children)
        end
        xml.at('CapabilitiesReason') do |node|
          data.capabilities_reason = (node.text || '')
        end
        xml.at('DeclaredTransforms') do |node|
          children = node.children('member')
          data.declared_transforms = Parsers::TransformsList.parse(children)
        end
        data
      end
    end

    class TemplateParameters
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TemplateParameter.parse(node)
        end
        data
      end
    end

    class TemplateParameter
      def self.parse(xml)
        data = Types::TemplateParameter.new
        xml.at('ParameterKey') do |node|
          data.parameter_key = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('NoEcho') do |node|
          data.no_echo = (node.text == 'true')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end
  end
end
