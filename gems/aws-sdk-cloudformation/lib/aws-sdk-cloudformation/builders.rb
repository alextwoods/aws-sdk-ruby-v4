# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Builders

    # Operation Builder for ActivateType
    class ActivateType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ActivateType'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'PublicTypeArn'] = input[:public_type_arn].to_s unless input[:public_type_arn].nil?
        params[context + 'PublisherId'] = input[:publisher_id].to_s unless input[:publisher_id].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'TypeNameAlias'] = input[:type_name_alias].to_s unless input[:type_name_alias].nil?
        params[context + 'AutoUpdate'] = input[:auto_update].to_s unless input[:auto_update].nil?
        Builders::LoggingConfig.build(input[:logging_config], params, context: context + 'LoggingConfig' + '.') unless input[:logging_config].nil?
        params[context + 'ExecutionRoleArn'] = input[:execution_role_arn].to_s unless input[:execution_role_arn].nil?
        params[context + 'VersionBump'] = input[:version_bump].to_s unless input[:version_bump].nil?
        params[context + 'MajorVersion'] = input[:major_version].to_s unless input[:major_version].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for LoggingConfig
    class LoggingConfig
      def self.build(input, params, context: nil)
        params[context + 'LogRoleArn'] = input[:log_role_arn].to_s unless input[:log_role_arn].nil?
        params[context + 'LogGroupName'] = input[:log_group_name].to_s unless input[:log_group_name].nil?
      end
    end

    # Operation Builder for BatchDescribeTypeConfigurations
    class BatchDescribeTypeConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchDescribeTypeConfigurations'
        params['Version'] = '2010-05-15'
        Builders::TypeConfigurationIdentifiers.build(input[:type_configuration_identifiers], params, context: context + 'TypeConfigurationIdentifiers' + '.member') unless input[:type_configuration_identifiers].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TypeConfigurationIdentifiers
    class TypeConfigurationIdentifiers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::TypeConfigurationIdentifier.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TypeConfigurationIdentifier
    class TypeConfigurationIdentifier
      def self.build(input, params, context: nil)
        params[context + 'TypeArn'] = input[:type_arn].to_s unless input[:type_arn].nil?
        params[context + 'TypeConfigurationAlias'] = input[:type_configuration_alias].to_s unless input[:type_configuration_alias].nil?
        params[context + 'TypeConfigurationArn'] = input[:type_configuration_arn].to_s unless input[:type_configuration_arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
      end
    end

    # Operation Builder for CancelUpdateStack
    class CancelUpdateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelUpdateStack'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ContinueUpdateRollback
    class ContinueUpdateRollback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ContinueUpdateRollback'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        Builders::ResourcesToSkip.build(input[:resources_to_skip], params, context: context + 'ResourcesToSkip' + '.member') unless input[:resources_to_skip].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ResourcesToSkip
    class ResourcesToSkip
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateChangeSet
    class CreateChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateChangeSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        params[context + 'UsePreviousTemplate'] = input[:use_previous_template].to_s unless input[:use_previous_template].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        Builders::Capabilities.build(input[:capabilities], params, context: context + 'Capabilities' + '.member') unless input[:capabilities].nil?
        Builders::ResourceTypes.build(input[:resource_types], params, context: context + 'ResourceTypes' + '.member') unless input[:resource_types].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        Builders::RollbackConfiguration.build(input[:rollback_configuration], params, context: context + 'RollbackConfiguration' + '.') unless input[:rollback_configuration].nil?
        Builders::NotificationARNs.build(input[:notification_ar_ns], params, context: context + 'NotificationARNs' + '.member') unless input[:notification_ar_ns].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ChangeSetType'] = input[:change_set_type].to_s unless input[:change_set_type].nil?
        Builders::ResourcesToImport.build(input[:resources_to_import], params, context: context + 'ResourcesToImport' + '.member') unless input[:resources_to_import].nil?
        params[context + 'IncludeNestedStacks'] = input[:include_nested_stacks].to_s unless input[:include_nested_stacks].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ResourcesToImport
    class ResourcesToImport
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ResourceToImport.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ResourceToImport
    class ResourceToImport
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        Builders::ResourceIdentifierProperties.build(input[:resource_identifier], params, context: context + 'ResourceIdentifier' + '.entry') unless input[:resource_identifier].nil?
      end
    end

    # Map Builder for ResourceIdentifierProperties
    class ResourceIdentifierProperties
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for NotificationARNs
    class NotificationARNs
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for RollbackConfiguration
    class RollbackConfiguration
      def self.build(input, params, context: nil)
        Builders::RollbackTriggers.build(input[:rollback_triggers], params, context: context + 'RollbackTriggers' + '.member') unless input[:rollback_triggers].nil?
        params[context + 'MonitoringTimeInMinutes'] = input[:monitoring_time_in_minutes].to_s unless input[:monitoring_time_in_minutes].nil?
      end
    end

    # List Builder for RollbackTriggers
    class RollbackTriggers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::RollbackTrigger.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RollbackTrigger
    class RollbackTrigger
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
      end
    end

    # List Builder for ResourceTypes
    class ResourceTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Capabilities
    class Capabilities
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Parameters
    class Parameters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Parameter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Parameter
    class Parameter
      def self.build(input, params, context: nil)
        params[context + 'ParameterKey'] = input[:parameter_key].to_s unless input[:parameter_key].nil?
        params[context + 'ParameterValue'] = input[:parameter_value].to_s unless input[:parameter_value].nil?
        params[context + 'UsePreviousValue'] = input[:use_previous_value].to_s unless input[:use_previous_value].nil?
        params[context + 'ResolvedValue'] = input[:resolved_value].to_s unless input[:resolved_value].nil?
      end
    end

    # Operation Builder for CreateStack
    class CreateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateStack'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        params[context + 'DisableRollback'] = input[:disable_rollback].to_s unless input[:disable_rollback].nil?
        Builders::RollbackConfiguration.build(input[:rollback_configuration], params, context: context + 'RollbackConfiguration' + '.') unless input[:rollback_configuration].nil?
        params[context + 'TimeoutInMinutes'] = input[:timeout_in_minutes].to_s unless input[:timeout_in_minutes].nil?
        Builders::NotificationARNs.build(input[:notification_ar_ns], params, context: context + 'NotificationARNs' + '.member') unless input[:notification_ar_ns].nil?
        Builders::Capabilities.build(input[:capabilities], params, context: context + 'Capabilities' + '.member') unless input[:capabilities].nil?
        Builders::ResourceTypes.build(input[:resource_types], params, context: context + 'ResourceTypes' + '.member') unless input[:resource_types].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'OnFailure'] = input[:on_failure].to_s unless input[:on_failure].nil?
        params[context + 'StackPolicyBody'] = input[:stack_policy_body].to_s unless input[:stack_policy_body].nil?
        params[context + 'StackPolicyURL'] = input[:stack_policy_url].to_s unless input[:stack_policy_url].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        params[context + 'EnableTerminationProtection'] = input[:enable_termination_protection].to_s unless input[:enable_termination_protection].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateStackInstances
    class CreateStackInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateStackInstances'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        Builders::AccountList.build(input[:accounts], params, context: context + 'Accounts' + '.member') unless input[:accounts].nil?
        Builders::DeploymentTargets.build(input[:deployment_targets], params, context: context + 'DeploymentTargets' + '.') unless input[:deployment_targets].nil?
        Builders::RegionList.build(input[:regions], params, context: context + 'Regions' + '.member') unless input[:regions].nil?
        Builders::Parameters.build(input[:parameter_overrides], params, context: context + 'ParameterOverrides' + '.member') unless input[:parameter_overrides].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for StackSetOperationPreferences
    class StackSetOperationPreferences
      def self.build(input, params, context: nil)
        params[context + 'RegionConcurrencyType'] = input[:region_concurrency_type].to_s unless input[:region_concurrency_type].nil?
        Builders::RegionList.build(input[:region_order], params, context: context + 'RegionOrder' + '.member') unless input[:region_order].nil?
        params[context + 'FailureToleranceCount'] = input[:failure_tolerance_count].to_s unless input[:failure_tolerance_count].nil?
        params[context + 'FailureTolerancePercentage'] = input[:failure_tolerance_percentage].to_s unless input[:failure_tolerance_percentage].nil?
        params[context + 'MaxConcurrentCount'] = input[:max_concurrent_count].to_s unless input[:max_concurrent_count].nil?
        params[context + 'MaxConcurrentPercentage'] = input[:max_concurrent_percentage].to_s unless input[:max_concurrent_percentage].nil?
      end
    end

    # List Builder for RegionList
    class RegionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for DeploymentTargets
    class DeploymentTargets
      def self.build(input, params, context: nil)
        Builders::AccountList.build(input[:accounts], params, context: context + 'Accounts' + '.member') unless input[:accounts].nil?
        params[context + 'AccountsUrl'] = input[:accounts_url].to_s unless input[:accounts_url].nil?
        Builders::OrganizationalUnitIdList.build(input[:organizational_unit_ids], params, context: context + 'OrganizationalUnitIds' + '.member') unless input[:organizational_unit_ids].nil?
      end
    end

    # List Builder for OrganizationalUnitIdList
    class OrganizationalUnitIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AccountList
    class AccountList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateStackSet
    class CreateStackSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateStackSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        params[context + 'StackId'] = input[:stack_id].to_s unless input[:stack_id].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        Builders::Capabilities.build(input[:capabilities], params, context: context + 'Capabilities' + '.member') unless input[:capabilities].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'AdministrationRoleARN'] = input[:administration_role_arn].to_s unless input[:administration_role_arn].nil?
        params[context + 'ExecutionRoleName'] = input[:execution_role_name].to_s unless input[:execution_role_name].nil?
        params[context + 'PermissionModel'] = input[:permission_model].to_s unless input[:permission_model].nil?
        Builders::AutoDeployment.build(input[:auto_deployment], params, context: context + 'AutoDeployment' + '.') unless input[:auto_deployment].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        Builders::ManagedExecution.build(input[:managed_execution], params, context: context + 'ManagedExecution' + '.') unless input[:managed_execution].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ManagedExecution
    class ManagedExecution
      def self.build(input, params, context: nil)
        params[context + 'Active'] = input[:active].to_s unless input[:active].nil?
      end
    end

    # Structure Builder for AutoDeployment
    class AutoDeployment
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'RetainStacksOnAccountRemoval'] = input[:retain_stacks_on_account_removal].to_s unless input[:retain_stacks_on_account_removal].nil?
      end
    end

    # Operation Builder for DeactivateType
    class DeactivateType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeactivateType'
        params['Version'] = '2010-05-15'
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteChangeSet
    class DeleteChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteChangeSet'
        params['Version'] = '2010-05-15'
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteStack
    class DeleteStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteStack'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        Builders::RetainResources.build(input[:retain_resources], params, context: context + 'RetainResources' + '.member') unless input[:retain_resources].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RetainResources
    class RetainResources
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteStackInstances
    class DeleteStackInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteStackInstances'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        Builders::AccountList.build(input[:accounts], params, context: context + 'Accounts' + '.member') unless input[:accounts].nil?
        Builders::DeploymentTargets.build(input[:deployment_targets], params, context: context + 'DeploymentTargets' + '.') unless input[:deployment_targets].nil?
        Builders::RegionList.build(input[:regions], params, context: context + 'Regions' + '.member') unless input[:regions].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'RetainStacks'] = input[:retain_stacks].to_s unless input[:retain_stacks].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteStackSet
    class DeleteStackSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteStackSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterType
    class DeregisterType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterType'
        params['Version'] = '2010-05-15'
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountLimits
    class DescribeAccountLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountLimits'
        params['Version'] = '2010-05-15'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeChangeSet
    class DescribeChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeChangeSet'
        params['Version'] = '2010-05-15'
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeChangeSetHooks
    class DescribeChangeSetHooks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeChangeSetHooks'
        params['Version'] = '2010-05-15'
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribePublisher
    class DescribePublisher
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePublisher'
        params['Version'] = '2010-05-15'
        params[context + 'PublisherId'] = input[:publisher_id].to_s unless input[:publisher_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackDriftDetectionStatus
    class DescribeStackDriftDetectionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackDriftDetectionStatus'
        params['Version'] = '2010-05-15'
        params[context + 'StackDriftDetectionId'] = input[:stack_drift_detection_id].to_s unless input[:stack_drift_detection_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackEvents
    class DescribeStackEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackEvents'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackInstance
    class DescribeStackInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackInstance'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'StackInstanceAccount'] = input[:stack_instance_account].to_s unless input[:stack_instance_account].nil?
        params[context + 'StackInstanceRegion'] = input[:stack_instance_region].to_s unless input[:stack_instance_region].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackResource
    class DescribeStackResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackResource'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackResourceDrifts
    class DescribeStackResourceDrifts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackResourceDrifts'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        Builders::StackResourceDriftStatusFilters.build(input[:stack_resource_drift_status_filters], params, context: context + 'StackResourceDriftStatusFilters' + '.member') unless input[:stack_resource_drift_status_filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for StackResourceDriftStatusFilters
    class StackResourceDriftStatusFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeStackResources
    class DescribeStackResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackResources'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        params[context + 'PhysicalResourceId'] = input[:physical_resource_id].to_s unless input[:physical_resource_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackSet
    class DescribeStackSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStackSetOperation
    class DescribeStackSetOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStackSetOperation'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStacks
    class DescribeStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStacks'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeType
    class DescribeType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeType'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        params[context + 'PublisherId'] = input[:publisher_id].to_s unless input[:publisher_id].nil?
        params[context + 'PublicVersionNumber'] = input[:public_version_number].to_s unless input[:public_version_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTypeRegistration
    class DescribeTypeRegistration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTypeRegistration'
        params['Version'] = '2010-05-15'
        params[context + 'RegistrationToken'] = input[:registration_token].to_s unless input[:registration_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetectStackDrift
    class DetectStackDrift
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetectStackDrift'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        Builders::LogicalResourceIds.build(input[:logical_resource_ids], params, context: context + 'LogicalResourceIds' + '.member') unless input[:logical_resource_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LogicalResourceIds
    class LogicalResourceIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DetectStackResourceDrift
    class DetectStackResourceDrift
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetectStackResourceDrift'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetectStackSetDrift
    class DetectStackSetDrift
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetectStackSetDrift'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EstimateTemplateCost
    class EstimateTemplateCost
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EstimateTemplateCost'
        params['Version'] = '2010-05-15'
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExecuteChangeSet
    class ExecuteChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExecuteChangeSet'
        params['Version'] = '2010-05-15'
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        params[context + 'DisableRollback'] = input[:disable_rollback].to_s unless input[:disable_rollback].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetStackPolicy
    class GetStackPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetStackPolicy'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTemplate
    class GetTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTemplate'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'ChangeSetName'] = input[:change_set_name].to_s unless input[:change_set_name].nil?
        params[context + 'TemplateStage'] = input[:template_stage].to_s unless input[:template_stage].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTemplateSummary
    class GetTemplateSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTemplateSummary'
        params['Version'] = '2010-05-15'
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ImportStacksToStackSet
    class ImportStacksToStackSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportStacksToStackSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        Builders::StackIdList.build(input[:stack_ids], params, context: context + 'StackIds' + '.member') unless input[:stack_ids].nil?
        params[context + 'StackIdsUrl'] = input[:stack_ids_url].to_s unless input[:stack_ids_url].nil?
        Builders::OrganizationalUnitIdList.build(input[:organizational_unit_ids], params, context: context + 'OrganizationalUnitIds' + '.member') unless input[:organizational_unit_ids].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for StackIdList
    class StackIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ListChangeSets
    class ListChangeSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListChangeSets'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListExports
    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListExports'
        params['Version'] = '2010-05-15'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListImports
    class ListImports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListImports'
        params['Version'] = '2010-05-15'
        params[context + 'ExportName'] = input[:export_name].to_s unless input[:export_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListStackInstances
    class ListStackInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStackInstances'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::StackInstanceFilters.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
        params[context + 'StackInstanceAccount'] = input[:stack_instance_account].to_s unless input[:stack_instance_account].nil?
        params[context + 'StackInstanceRegion'] = input[:stack_instance_region].to_s unless input[:stack_instance_region].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for StackInstanceFilters
    class StackInstanceFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::StackInstanceFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for StackInstanceFilter
    class StackInstanceFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Values'] = input[:values].to_s unless input[:values].nil?
      end
    end

    # Operation Builder for ListStackResources
    class ListStackResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStackResources'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListStackSetOperationResults
    class ListStackSetOperationResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStackSetOperationResults'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListStackSetOperations
    class ListStackSetOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStackSetOperations'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListStackSets
    class ListStackSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStackSets'
        params['Version'] = '2010-05-15'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListStacks
    class ListStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListStacks'
        params['Version'] = '2010-05-15'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::StackStatusFilter.build(input[:stack_status_filter], params, context: context + 'StackStatusFilter' + '.member') unless input[:stack_status_filter].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for StackStatusFilter
    class StackStatusFilter
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ListTypeRegistrations
    class ListTypeRegistrations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTypeRegistrations'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'TypeArn'] = input[:type_arn].to_s unless input[:type_arn].nil?
        params[context + 'RegistrationStatusFilter'] = input[:registration_status_filter].to_s unless input[:registration_status_filter].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTypeVersions
    class ListTypeVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTypeVersions'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DeprecatedStatus'] = input[:deprecated_status].to_s unless input[:deprecated_status].nil?
        params[context + 'PublisherId'] = input[:publisher_id].to_s unless input[:publisher_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTypes
    class ListTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTypes'
        params['Version'] = '2010-05-15'
        params[context + 'Visibility'] = input[:visibility].to_s unless input[:visibility].nil?
        params[context + 'ProvisioningType'] = input[:provisioning_type].to_s unless input[:provisioning_type].nil?
        params[context + 'DeprecatedStatus'] = input[:deprecated_status].to_s unless input[:deprecated_status].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        Builders::TypeFilters.build(input[:filters], params, context: context + 'Filters' + '.') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for TypeFilters
    class TypeFilters
      def self.build(input, params, context: nil)
        params[context + 'Category'] = input[:category].to_s unless input[:category].nil?
        params[context + 'PublisherId'] = input[:publisher_id].to_s unless input[:publisher_id].nil?
        params[context + 'TypeNamePrefix'] = input[:type_name_prefix].to_s unless input[:type_name_prefix].nil?
      end
    end

    # Operation Builder for PublishType
    class PublishType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PublishType'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'PublicVersionNumber'] = input[:public_version_number].to_s unless input[:public_version_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RecordHandlerProgress
    class RecordHandlerProgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RecordHandlerProgress'
        params['Version'] = '2010-05-15'
        params[context + 'BearerToken'] = input[:bearer_token].to_s unless input[:bearer_token].nil?
        params[context + 'OperationStatus'] = input[:operation_status].to_s unless input[:operation_status].nil?
        params[context + 'CurrentOperationStatus'] = input[:current_operation_status].to_s unless input[:current_operation_status].nil?
        params[context + 'StatusMessage'] = input[:status_message].to_s unless input[:status_message].nil?
        params[context + 'ErrorCode'] = input[:error_code].to_s unless input[:error_code].nil?
        params[context + 'ResourceModel'] = input[:resource_model].to_s unless input[:resource_model].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RegisterPublisher
    class RegisterPublisher
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterPublisher'
        params['Version'] = '2010-05-15'
        params[context + 'AcceptTermsAndConditions'] = input[:accept_terms_and_conditions].to_s unless input[:accept_terms_and_conditions].nil?
        params[context + 'ConnectionArn'] = input[:connection_arn].to_s unless input[:connection_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RegisterType
    class RegisterType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterType'
        params['Version'] = '2010-05-15'
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'SchemaHandlerPackage'] = input[:schema_handler_package].to_s unless input[:schema_handler_package].nil?
        Builders::LoggingConfig.build(input[:logging_config], params, context: context + 'LoggingConfig' + '.') unless input[:logging_config].nil?
        params[context + 'ExecutionRoleArn'] = input[:execution_role_arn].to_s unless input[:execution_role_arn].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RollbackStack
    class RollbackStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RollbackStack'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetStackPolicy
    class SetStackPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetStackPolicy'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'StackPolicyBody'] = input[:stack_policy_body].to_s unless input[:stack_policy_body].nil?
        params[context + 'StackPolicyURL'] = input[:stack_policy_url].to_s unless input[:stack_policy_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetTypeConfiguration
    class SetTypeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetTypeConfiguration'
        params['Version'] = '2010-05-15'
        params[context + 'TypeArn'] = input[:type_arn].to_s unless input[:type_arn].nil?
        params[context + 'Configuration'] = input[:configuration].to_s unless input[:configuration].nil?
        params[context + 'ConfigurationAlias'] = input[:configuration_alias].to_s unless input[:configuration_alias].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetTypeDefaultVersion
    class SetTypeDefaultVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetTypeDefaultVersion'
        params['Version'] = '2010-05-15'
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SignalResource
    class SignalResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SignalResource'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'LogicalResourceId'] = input[:logical_resource_id].to_s unless input[:logical_resource_id].nil?
        params[context + 'UniqueId'] = input[:unique_id].to_s unless input[:unique_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopStackSetOperation
    class StopStackSetOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopStackSetOperation'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TestType
    class TestType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TestType'
        params['Version'] = '2010-05-15'
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TypeName'] = input[:type_name].to_s unless input[:type_name].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        params[context + 'LogDeliveryBucket'] = input[:log_delivery_bucket].to_s unless input[:log_delivery_bucket].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateStack
    class UpdateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateStack'
        params['Version'] = '2010-05-15'
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        params[context + 'UsePreviousTemplate'] = input[:use_previous_template].to_s unless input[:use_previous_template].nil?
        params[context + 'StackPolicyDuringUpdateBody'] = input[:stack_policy_during_update_body].to_s unless input[:stack_policy_during_update_body].nil?
        params[context + 'StackPolicyDuringUpdateURL'] = input[:stack_policy_during_update_url].to_s unless input[:stack_policy_during_update_url].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        Builders::Capabilities.build(input[:capabilities], params, context: context + 'Capabilities' + '.member') unless input[:capabilities].nil?
        Builders::ResourceTypes.build(input[:resource_types], params, context: context + 'ResourceTypes' + '.member') unless input[:resource_types].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        Builders::RollbackConfiguration.build(input[:rollback_configuration], params, context: context + 'RollbackConfiguration' + '.') unless input[:rollback_configuration].nil?
        params[context + 'StackPolicyBody'] = input[:stack_policy_body].to_s unless input[:stack_policy_body].nil?
        params[context + 'StackPolicyURL'] = input[:stack_policy_url].to_s unless input[:stack_policy_url].nil?
        Builders::NotificationARNs.build(input[:notification_ar_ns], params, context: context + 'NotificationARNs' + '.member') unless input[:notification_ar_ns].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'DisableRollback'] = input[:disable_rollback].to_s unless input[:disable_rollback].nil?
        params[context + 'ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateStackInstances
    class UpdateStackInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateStackInstances'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        Builders::AccountList.build(input[:accounts], params, context: context + 'Accounts' + '.member') unless input[:accounts].nil?
        Builders::DeploymentTargets.build(input[:deployment_targets], params, context: context + 'DeploymentTargets' + '.') unless input[:deployment_targets].nil?
        Builders::RegionList.build(input[:regions], params, context: context + 'Regions' + '.member') unless input[:regions].nil?
        Builders::Parameters.build(input[:parameter_overrides], params, context: context + 'ParameterOverrides' + '.member') unless input[:parameter_overrides].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateStackSet
    class UpdateStackSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateStackSet'
        params['Version'] = '2010-05-15'
        params[context + 'StackSetName'] = input[:stack_set_name].to_s unless input[:stack_set_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        params[context + 'UsePreviousTemplate'] = input[:use_previous_template].to_s unless input[:use_previous_template].nil?
        Builders::Parameters.build(input[:parameters], params, context: context + 'Parameters' + '.member') unless input[:parameters].nil?
        Builders::Capabilities.build(input[:capabilities], params, context: context + 'Capabilities' + '.member') unless input[:capabilities].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        Builders::StackSetOperationPreferences.build(input[:operation_preferences], params, context: context + 'OperationPreferences' + '.') unless input[:operation_preferences].nil?
        params[context + 'AdministrationRoleARN'] = input[:administration_role_arn].to_s unless input[:administration_role_arn].nil?
        params[context + 'ExecutionRoleName'] = input[:execution_role_name].to_s unless input[:execution_role_name].nil?
        Builders::DeploymentTargets.build(input[:deployment_targets], params, context: context + 'DeploymentTargets' + '.') unless input[:deployment_targets].nil?
        params[context + 'PermissionModel'] = input[:permission_model].to_s unless input[:permission_model].nil?
        Builders::AutoDeployment.build(input[:auto_deployment], params, context: context + 'AutoDeployment' + '.') unless input[:auto_deployment].nil?
        params[context + 'OperationId'] = input[:operation_id].to_s unless input[:operation_id].nil?
        Builders::AccountList.build(input[:accounts], params, context: context + 'Accounts' + '.member') unless input[:accounts].nil?
        Builders::RegionList.build(input[:regions], params, context: context + 'Regions' + '.member') unless input[:regions].nil?
        params[context + 'CallAs'] = input[:call_as].to_s unless input[:call_as].nil?
        Builders::ManagedExecution.build(input[:managed_execution], params, context: context + 'ManagedExecution' + '.') unless input[:managed_execution].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateTerminationProtection
    class UpdateTerminationProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateTerminationProtection'
        params['Version'] = '2010-05-15'
        params[context + 'EnableTerminationProtection'] = input[:enable_termination_protection].to_s unless input[:enable_termination_protection].nil?
        params[context + 'StackName'] = input[:stack_name].to_s unless input[:stack_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ValidateTemplate
    class ValidateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ValidateTemplate'
        params['Version'] = '2010-05-15'
        params[context + 'TemplateBody'] = input[:template_body].to_s unless input[:template_body].nil?
        params[context + 'TemplateURL'] = input[:template_url].to_s unless input[:template_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
