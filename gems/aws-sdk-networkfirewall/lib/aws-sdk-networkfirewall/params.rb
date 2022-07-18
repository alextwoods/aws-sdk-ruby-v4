# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkFirewall
  module Params

    module ActionDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionDefinition, context: context)
        type = Types::ActionDefinition.new
        type.publish_metric_action = PublishMetricAction.build(params[:publish_metric_action], context: "#{context}[:publish_metric_action]") unless params[:publish_metric_action].nil?
        type
      end
    end

    module Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Address, context: context)
        type = Types::Address.new
        type.address_definition = params[:address_definition]
        type
      end
    end

    module Addresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Address.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateFirewallPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFirewallPolicyInput, context: context)
        type = Types::AssociateFirewallPolicyInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type
      end
    end

    module AssociateFirewallPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFirewallPolicyOutput, context: context)
        type = Types::AssociateFirewallPolicyOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.update_token = params[:update_token]
        type
      end
    end

    module AssociateSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSubnetsInput, context: context)
        type = Types::AssociateSubnetsInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type
      end
    end

    module AssociateSubnetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSubnetsOutput, context: context)
        type = Types::AssociateSubnetsOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.update_token = params[:update_token]
        type
      end
    end

    module Attachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attachment, context: context)
        type = Types::Attachment.new
        type.subnet_id = params[:subnet_id]
        type.endpoint_id = params[:endpoint_id]
        type.status = params[:status]
        type
      end
    end

    module AzSubnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateFirewallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallInput, context: context)
        type = Types::CreateFirewallInput.new
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.delete_protection = params[:delete_protection]
        type.subnet_change_protection = params[:subnet_change_protection]
        type.firewall_policy_change_protection = params[:firewall_policy_change_protection]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module CreateFirewallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallOutput, context: context)
        type = Types::CreateFirewallOutput.new
        type.firewall = Firewall.build(params[:firewall], context: "#{context}[:firewall]") unless params[:firewall].nil?
        type.firewall_status = FirewallStatus.build(params[:firewall_status], context: "#{context}[:firewall_status]") unless params[:firewall_status].nil?
        type
      end
    end

    module CreateFirewallPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallPolicyInput, context: context)
        type = Types::CreateFirewallPolicyInput.new
        type.firewall_policy_name = params[:firewall_policy_name]
        type.firewall_policy = FirewallPolicy.build(params[:firewall_policy], context: "#{context}[:firewall_policy]") unless params[:firewall_policy].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.dry_run = params[:dry_run]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module CreateFirewallPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallPolicyOutput, context: context)
        type = Types::CreateFirewallPolicyOutput.new
        type.update_token = params[:update_token]
        type.firewall_policy_response = FirewallPolicyResponse.build(params[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless params[:firewall_policy_response].nil?
        type
      end
    end

    module CreateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupInput, context: context)
        type = Types::CreateRuleGroupInput.new
        type.rule_group_name = params[:rule_group_name]
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.rules = params[:rules]
        type.type = params[:type]
        type.description = params[:description]
        type.capacity = params[:capacity]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.dry_run = params[:dry_run]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.source_metadata = SourceMetadata.build(params[:source_metadata], context: "#{context}[:source_metadata]") unless params[:source_metadata].nil?
        type
      end
    end

    module CreateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupOutput, context: context)
        type = Types::CreateRuleGroupOutput.new
        type.update_token = params[:update_token]
        type.rule_group_response = RuleGroupResponse.build(params[:rule_group_response], context: "#{context}[:rule_group_response]") unless params[:rule_group_response].nil?
        type
      end
    end

    module CustomAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAction, context: context)
        type = Types::CustomAction.new
        type.action_name = params[:action_name]
        type.action_definition = ActionDefinition.build(params[:action_definition], context: "#{context}[:action_definition]") unless params[:action_definition].nil?
        type
      end
    end

    module CustomActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteFirewallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallInput, context: context)
        type = Types::DeleteFirewallInput.new
        type.firewall_name = params[:firewall_name]
        type.firewall_arn = params[:firewall_arn]
        type
      end
    end

    module DeleteFirewallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallOutput, context: context)
        type = Types::DeleteFirewallOutput.new
        type.firewall = Firewall.build(params[:firewall], context: "#{context}[:firewall]") unless params[:firewall].nil?
        type.firewall_status = FirewallStatus.build(params[:firewall_status], context: "#{context}[:firewall_status]") unless params[:firewall_status].nil?
        type
      end
    end

    module DeleteFirewallPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallPolicyInput, context: context)
        type = Types::DeleteFirewallPolicyInput.new
        type.firewall_policy_name = params[:firewall_policy_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type
      end
    end

    module DeleteFirewallPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallPolicyOutput, context: context)
        type = Types::DeleteFirewallPolicyOutput.new
        type.firewall_policy_response = FirewallPolicyResponse.build(params[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless params[:firewall_policy_response].nil?
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupInput, context: context)
        type = Types::DeleteRuleGroupInput.new
        type.rule_group_name = params[:rule_group_name]
        type.rule_group_arn = params[:rule_group_arn]
        type.type = params[:type]
        type
      end
    end

    module DeleteRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupOutput, context: context)
        type = Types::DeleteRuleGroupOutput.new
        type.rule_group_response = RuleGroupResponse.build(params[:rule_group_response], context: "#{context}[:rule_group_response]") unless params[:rule_group_response].nil?
        type
      end
    end

    module DescribeFirewallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFirewallInput, context: context)
        type = Types::DescribeFirewallInput.new
        type.firewall_name = params[:firewall_name]
        type.firewall_arn = params[:firewall_arn]
        type
      end
    end

    module DescribeFirewallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFirewallOutput, context: context)
        type = Types::DescribeFirewallOutput.new
        type.update_token = params[:update_token]
        type.firewall = Firewall.build(params[:firewall], context: "#{context}[:firewall]") unless params[:firewall].nil?
        type.firewall_status = FirewallStatus.build(params[:firewall_status], context: "#{context}[:firewall_status]") unless params[:firewall_status].nil?
        type
      end
    end

    module DescribeFirewallPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFirewallPolicyInput, context: context)
        type = Types::DescribeFirewallPolicyInput.new
        type.firewall_policy_name = params[:firewall_policy_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type
      end
    end

    module DescribeFirewallPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFirewallPolicyOutput, context: context)
        type = Types::DescribeFirewallPolicyOutput.new
        type.update_token = params[:update_token]
        type.firewall_policy_response = FirewallPolicyResponse.build(params[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless params[:firewall_policy_response].nil?
        type.firewall_policy = FirewallPolicy.build(params[:firewall_policy], context: "#{context}[:firewall_policy]") unless params[:firewall_policy].nil?
        type
      end
    end

    module DescribeLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingConfigurationInput, context: context)
        type = Types::DescribeLoggingConfigurationInput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type
      end
    end

    module DescribeLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingConfigurationOutput, context: context)
        type = Types::DescribeLoggingConfigurationOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module DescribeResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyInput, context: context)
        type = Types::DescribeResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyOutput, context: context)
        type = Types::DescribeResourcePolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module DescribeRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupInput, context: context)
        type = Types::DescribeRuleGroupInput.new
        type.rule_group_name = params[:rule_group_name]
        type.rule_group_arn = params[:rule_group_arn]
        type.type = params[:type]
        type
      end
    end

    module DescribeRuleGroupMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupMetadataInput, context: context)
        type = Types::DescribeRuleGroupMetadataInput.new
        type.rule_group_name = params[:rule_group_name]
        type.rule_group_arn = params[:rule_group_arn]
        type.type = params[:type]
        type
      end
    end

    module DescribeRuleGroupMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupMetadataOutput, context: context)
        type = Types::DescribeRuleGroupMetadataOutput.new
        type.rule_group_arn = params[:rule_group_arn]
        type.rule_group_name = params[:rule_group_name]
        type.description = params[:description]
        type.type = params[:type]
        type.capacity = params[:capacity]
        type.stateful_rule_options = StatefulRuleOptions.build(params[:stateful_rule_options], context: "#{context}[:stateful_rule_options]") unless params[:stateful_rule_options].nil?
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module DescribeRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupOutput, context: context)
        type = Types::DescribeRuleGroupOutput.new
        type.update_token = params[:update_token]
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.rule_group_response = RuleGroupResponse.build(params[:rule_group_response], context: "#{context}[:rule_group_response]") unless params[:rule_group_response].nil?
        type
      end
    end

    module Dimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        type.value = params[:value]
        type
      end
    end

    module Dimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSubnetsInput, context: context)
        type = Types::DisassociateSubnetsInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_ids = AzSubnets.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module DisassociateSubnetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSubnetsOutput, context: context)
        type = Types::DisassociateSubnetsOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.update_token = params[:update_token]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.key_id = params[:key_id]
        type.type = params[:type]
        type
      end
    end

    module Firewall
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Firewall, context: context)
        type = Types::Firewall.new
        type.firewall_name = params[:firewall_name]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.delete_protection = params[:delete_protection]
        type.subnet_change_protection = params[:subnet_change_protection]
        type.firewall_policy_change_protection = params[:firewall_policy_change_protection]
        type.description = params[:description]
        type.firewall_id = params[:firewall_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module FirewallMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallMetadata, context: context)
        type = Types::FirewallMetadata.new
        type.firewall_name = params[:firewall_name]
        type.firewall_arn = params[:firewall_arn]
        type
      end
    end

    module FirewallPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallPolicyMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicy, context: context)
        type = Types::FirewallPolicy.new
        type.stateless_rule_group_references = StatelessRuleGroupReferences.build(params[:stateless_rule_group_references], context: "#{context}[:stateless_rule_group_references]") unless params[:stateless_rule_group_references].nil?
        type.stateless_default_actions = StatelessActions.build(params[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless params[:stateless_default_actions].nil?
        type.stateless_fragment_default_actions = StatelessActions.build(params[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless params[:stateless_fragment_default_actions].nil?
        type.stateless_custom_actions = CustomActions.build(params[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless params[:stateless_custom_actions].nil?
        type.stateful_rule_group_references = StatefulRuleGroupReferences.build(params[:stateful_rule_group_references], context: "#{context}[:stateful_rule_group_references]") unless params[:stateful_rule_group_references].nil?
        type.stateful_default_actions = StatefulActions.build(params[:stateful_default_actions], context: "#{context}[:stateful_default_actions]") unless params[:stateful_default_actions].nil?
        type.stateful_engine_options = StatefulEngineOptions.build(params[:stateful_engine_options], context: "#{context}[:stateful_engine_options]") unless params[:stateful_engine_options].nil?
        type
      end
    end

    module FirewallPolicyMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyMetadata, context: context)
        type = Types::FirewallPolicyMetadata.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module FirewallPolicyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyResponse, context: context)
        type = Types::FirewallPolicyResponse.new
        type.firewall_policy_name = params[:firewall_policy_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.firewall_policy_id = params[:firewall_policy_id]
        type.description = params[:description]
        type.firewall_policy_status = params[:firewall_policy_status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.consumed_stateless_rule_capacity = params[:consumed_stateless_rule_capacity]
        type.consumed_stateful_rule_capacity = params[:consumed_stateful_rule_capacity]
        type.number_of_associations = params[:number_of_associations]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module FirewallStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallStatus, context: context)
        type = Types::FirewallStatus.new
        type.status = params[:status]
        type.configuration_sync_state_summary = params[:configuration_sync_state_summary]
        type.sync_states = SyncStates.build(params[:sync_states], context: "#{context}[:sync_states]") unless params[:sync_states].nil?
        type
      end
    end

    module Firewalls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Flags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Header
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Header, context: context)
        type = Types::Header.new
        type.protocol = params[:protocol]
        type.source = params[:source]
        type.source_port = params[:source_port]
        type.direction = params[:direction]
        type.destination = params[:destination]
        type.destination_port = params[:destination_port]
        type
      end
    end

    module IPSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSet, context: context)
        type = Types::IPSet.new
        type.definition = VariableDefinitionList.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module IPSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IPSet.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module InsufficientCapacityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientCapacityException, context: context)
        type = Types::InsufficientCapacityException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourcePolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourcePolicyException, context: context)
        type = Types::InvalidResourcePolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTokenException, context: context)
        type = Types::InvalidTokenException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListFirewallPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallPoliciesInput, context: context)
        type = Types::ListFirewallPoliciesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFirewallPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallPoliciesOutput, context: context)
        type = Types::ListFirewallPoliciesOutput.new
        type.next_token = params[:next_token]
        type.firewall_policies = FirewallPolicies.build(params[:firewall_policies], context: "#{context}[:firewall_policies]") unless params[:firewall_policies].nil?
        type
      end
    end

    module ListFirewallsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallsInput, context: context)
        type = Types::ListFirewallsInput.new
        type.next_token = params[:next_token]
        type.vpc_ids = VpcIds.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFirewallsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallsOutput, context: context)
        type = Types::ListFirewallsOutput.new
        type.next_token = params[:next_token]
        type.firewalls = Firewalls.build(params[:firewalls], context: "#{context}[:firewalls]") unless params[:firewalls].nil?
        type
      end
    end

    module ListRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsInput, context: context)
        type = Types::ListRuleGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.scope = params[:scope]
        type.managed_type = params[:managed_type]
        type.type = params[:type]
        type
      end
    end

    module ListRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsOutput, context: context)
        type = Types::ListRuleGroupsOutput.new
        type.next_token = params[:next_token]
        type.rule_groups = RuleGroups.build(params[:rule_groups], context: "#{context}[:rule_groups]") unless params[:rule_groups].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.next_token = params[:next_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogDestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDestinationConfig, context: context)
        type = Types::LogDestinationConfig.new
        type.log_type = params[:log_type]
        type.log_destination_type = params[:log_destination_type]
        type.log_destination = LogDestinationMap.build(params[:log_destination], context: "#{context}[:log_destination]") unless params[:log_destination].nil?
        type
      end
    end

    module LogDestinationConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogDestinationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogDestinationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LogDestinationPermissionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDestinationPermissionException, context: context)
        type = Types::LogDestinationPermissionException.new
        type.message = params[:message]
        type
      end
    end

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.log_destination_configs = LogDestinationConfigs.build(params[:log_destination_configs], context: "#{context}[:log_destination_configs]") unless params[:log_destination_configs].nil?
        type
      end
    end

    module MatchAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchAttributes, context: context)
        type = Types::MatchAttributes.new
        type.sources = Addresses.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.destinations = Addresses.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.source_ports = PortRanges.build(params[:source_ports], context: "#{context}[:source_ports]") unless params[:source_ports].nil?
        type.destination_ports = PortRanges.build(params[:destination_ports], context: "#{context}[:destination_ports]") unless params[:destination_ports].nil?
        type.protocols = ProtocolNumbers.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.tcp_flags = TCPFlags.build(params[:tcp_flags], context: "#{context}[:tcp_flags]") unless params[:tcp_flags].nil?
        type
      end
    end

    module PerObjectStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerObjectStatus, context: context)
        type = Types::PerObjectStatus.new
        type.sync_status = params[:sync_status]
        type.update_token = params[:update_token]
        type
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module PortRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortSet, context: context)
        type = Types::PortSet.new
        type.definition = VariableDefinitionList.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module PortSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PortSet.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProtocolNumbers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PublishMetricAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishMetricAction, context: context)
        type = Types::PublishMetricAction.new
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceOwnerCheckException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceOwnerCheckException, context: context)
        type = Types::ResourceOwnerCheckException.new
        type.message = params[:message]
        type
      end
    end

    module RuleDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleDefinition, context: context)
        type = Types::RuleDefinition.new
        type.match_attributes = MatchAttributes.build(params[:match_attributes], context: "#{context}[:match_attributes]") unless params[:match_attributes].nil?
        type.actions = StatelessActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module RuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroup, context: context)
        type = Types::RuleGroup.new
        type.rule_variables = RuleVariables.build(params[:rule_variables], context: "#{context}[:rule_variables]") unless params[:rule_variables].nil?
        type.rules_source = RulesSource.build(params[:rules_source], context: "#{context}[:rules_source]") unless params[:rules_source].nil?
        type.stateful_rule_options = StatefulRuleOptions.build(params[:stateful_rule_options], context: "#{context}[:stateful_rule_options]") unless params[:stateful_rule_options].nil?
        type
      end
    end

    module RuleGroupMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupMetadata, context: context)
        type = Types::RuleGroupMetadata.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module RuleGroupResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupResponse, context: context)
        type = Types::RuleGroupResponse.new
        type.rule_group_arn = params[:rule_group_arn]
        type.rule_group_name = params[:rule_group_name]
        type.rule_group_id = params[:rule_group_id]
        type.description = params[:description]
        type.type = params[:type]
        type.capacity = params[:capacity]
        type.rule_group_status = params[:rule_group_status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.consumed_capacity = params[:consumed_capacity]
        type.number_of_associations = params[:number_of_associations]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.source_metadata = SourceMetadata.build(params[:source_metadata], context: "#{context}[:source_metadata]") unless params[:source_metadata].nil?
        type.sns_topic = params[:sns_topic]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module RuleGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleOption, context: context)
        type = Types::RuleOption.new
        type.keyword = params[:keyword]
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module RuleOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RuleVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleVariables, context: context)
        type = Types::RuleVariables.new
        type.ip_sets = IPSets.build(params[:ip_sets], context: "#{context}[:ip_sets]") unless params[:ip_sets].nil?
        type.port_sets = PortSets.build(params[:port_sets], context: "#{context}[:port_sets]") unless params[:port_sets].nil?
        type
      end
    end

    module RulesSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulesSource, context: context)
        type = Types::RulesSource.new
        type.rules_string = params[:rules_string]
        type.rules_source_list = RulesSourceList.build(params[:rules_source_list], context: "#{context}[:rules_source_list]") unless params[:rules_source_list].nil?
        type.stateful_rules = StatefulRules.build(params[:stateful_rules], context: "#{context}[:stateful_rules]") unless params[:stateful_rules].nil?
        type.stateless_rules_and_custom_actions = StatelessRulesAndCustomActions.build(params[:stateless_rules_and_custom_actions], context: "#{context}[:stateless_rules_and_custom_actions]") unless params[:stateless_rules_and_custom_actions].nil?
        type
      end
    end

    module RulesSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulesSourceList, context: context)
        type = Types::RulesSourceList.new
        type.targets = RuleTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_types = TargetTypes.build(params[:target_types], context: "#{context}[:target_types]") unless params[:target_types].nil?
        type.generated_rules_type = params[:generated_rules_type]
        type
      end
    end

    module Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceMetadata, context: context)
        type = Types::SourceMetadata.new
        type.source_arn = params[:source_arn]
        type.source_update_token = params[:source_update_token]
        type
      end
    end

    module StatefulActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StatefulEngineOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulEngineOptions, context: context)
        type = Types::StatefulEngineOptions.new
        type.rule_order = params[:rule_order]
        type
      end
    end

    module StatefulRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulRule, context: context)
        type = Types::StatefulRule.new
        type.action = params[:action]
        type.header = Header.build(params[:header], context: "#{context}[:header]") unless params[:header].nil?
        type.rule_options = RuleOptions.build(params[:rule_options], context: "#{context}[:rule_options]") unless params[:rule_options].nil?
        type
      end
    end

    module StatefulRuleGroupOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulRuleGroupOverride, context: context)
        type = Types::StatefulRuleGroupOverride.new
        type.action = params[:action]
        type
      end
    end

    module StatefulRuleGroupReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulRuleGroupReference, context: context)
        type = Types::StatefulRuleGroupReference.new
        type.resource_arn = params[:resource_arn]
        type.priority = params[:priority]
        type.override = StatefulRuleGroupOverride.build(params[:override], context: "#{context}[:override]") unless params[:override].nil?
        type
      end
    end

    module StatefulRuleGroupReferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatefulRuleGroupReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatefulRuleOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulRuleOptions, context: context)
        type = Types::StatefulRuleOptions.new
        type.rule_order = params[:rule_order]
        type
      end
    end

    module StatefulRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatefulRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatelessActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StatelessRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessRule, context: context)
        type = Types::StatelessRule.new
        type.rule_definition = RuleDefinition.build(params[:rule_definition], context: "#{context}[:rule_definition]") unless params[:rule_definition].nil?
        type.priority = params[:priority]
        type
      end
    end

    module StatelessRuleGroupReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessRuleGroupReference, context: context)
        type = Types::StatelessRuleGroupReference.new
        type.resource_arn = params[:resource_arn]
        type.priority = params[:priority]
        type
      end
    end

    module StatelessRuleGroupReferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatelessRuleGroupReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatelessRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatelessRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatelessRulesAndCustomActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessRulesAndCustomActions, context: context)
        type = Types::StatelessRulesAndCustomActions.new
        type.stateless_rules = StatelessRules.build(params[:stateless_rules], context: "#{context}[:stateless_rules]") unless params[:stateless_rules].nil?
        type.custom_actions = CustomActions.build(params[:custom_actions], context: "#{context}[:custom_actions]") unless params[:custom_actions].nil?
        type
      end
    end

    module SubnetMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetMapping, context: context)
        type = Types::SubnetMapping.new
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module SubnetMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubnetMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SyncState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncState, context: context)
        type = Types::SyncState.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.config = SyncStateConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type
      end
    end

    module SyncStateConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PerObjectStatus.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module SyncStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SyncState.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TCPFlagField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TCPFlagField, context: context)
        type = Types::TCPFlagField.new
        type.flags = Flags.build(params[:flags], context: "#{context}[:flags]") unless params[:flags].nil?
        type.masks = Flags.build(params[:masks], context: "#{context}[:masks]") unless params[:masks].nil?
        type
      end
    end

    module TCPFlags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TCPFlagField.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateFirewallDeleteProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDeleteProtectionInput, context: context)
        type = Types::UpdateFirewallDeleteProtectionInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.delete_protection = params[:delete_protection]
        type
      end
    end

    module UpdateFirewallDeleteProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDeleteProtectionOutput, context: context)
        type = Types::UpdateFirewallDeleteProtectionOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.delete_protection = params[:delete_protection]
        type.update_token = params[:update_token]
        type
      end
    end

    module UpdateFirewallDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDescriptionInput, context: context)
        type = Types::UpdateFirewallDescriptionInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateFirewallDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDescriptionOutput, context: context)
        type = Types::UpdateFirewallDescriptionOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.description = params[:description]
        type.update_token = params[:update_token]
        type
      end
    end

    module UpdateFirewallEncryptionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallEncryptionConfigurationInput, context: context)
        type = Types::UpdateFirewallEncryptionConfigurationInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module UpdateFirewallEncryptionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallEncryptionConfigurationOutput, context: context)
        type = Types::UpdateFirewallEncryptionConfigurationOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.update_token = params[:update_token]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module UpdateFirewallPolicyChangeProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallPolicyChangeProtectionInput, context: context)
        type = Types::UpdateFirewallPolicyChangeProtectionInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_change_protection = params[:firewall_policy_change_protection]
        type
      end
    end

    module UpdateFirewallPolicyChangeProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallPolicyChangeProtectionOutput, context: context)
        type = Types::UpdateFirewallPolicyChangeProtectionOutput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_change_protection = params[:firewall_policy_change_protection]
        type
      end
    end

    module UpdateFirewallPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallPolicyInput, context: context)
        type = Types::UpdateFirewallPolicyInput.new
        type.update_token = params[:update_token]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.firewall_policy_name = params[:firewall_policy_name]
        type.firewall_policy = FirewallPolicy.build(params[:firewall_policy], context: "#{context}[:firewall_policy]") unless params[:firewall_policy].nil?
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module UpdateFirewallPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallPolicyOutput, context: context)
        type = Types::UpdateFirewallPolicyOutput.new
        type.update_token = params[:update_token]
        type.firewall_policy_response = FirewallPolicyResponse.build(params[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless params[:firewall_policy_response].nil?
        type
      end
    end

    module UpdateLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoggingConfigurationInput, context: context)
        type = Types::UpdateLoggingConfigurationInput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module UpdateLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoggingConfigurationOutput, context: context)
        type = Types::UpdateLoggingConfigurationOutput.new
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module UpdateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupInput, context: context)
        type = Types::UpdateRuleGroupInput.new
        type.update_token = params[:update_token]
        type.rule_group_arn = params[:rule_group_arn]
        type.rule_group_name = params[:rule_group_name]
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.rules = params[:rules]
        type.type = params[:type]
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.source_metadata = SourceMetadata.build(params[:source_metadata], context: "#{context}[:source_metadata]") unless params[:source_metadata].nil?
        type
      end
    end

    module UpdateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupOutput, context: context)
        type = Types::UpdateRuleGroupOutput.new
        type.update_token = params[:update_token]
        type.rule_group_response = RuleGroupResponse.build(params[:rule_group_response], context: "#{context}[:rule_group_response]") unless params[:rule_group_response].nil?
        type
      end
    end

    module UpdateSubnetChangeProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetChangeProtectionInput, context: context)
        type = Types::UpdateSubnetChangeProtectionInput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_change_protection = params[:subnet_change_protection]
        type
      end
    end

    module UpdateSubnetChangeProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetChangeProtectionOutput, context: context)
        type = Types::UpdateSubnetChangeProtectionOutput.new
        type.update_token = params[:update_token]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_name = params[:firewall_name]
        type.subnet_change_protection = params[:subnet_change_protection]
        type
      end
    end

    module VariableDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
