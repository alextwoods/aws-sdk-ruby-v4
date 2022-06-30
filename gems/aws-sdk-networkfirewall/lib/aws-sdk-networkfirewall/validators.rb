# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkFirewall
  module Validators

    class ActionDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionDefinition, context: context)
        Validators::PublishMetricAction.validate!(input[:publish_metric_action], context: "#{context}[:publish_metric_action]") unless input[:publish_metric_action].nil?
      end
    end

    class Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Address, context: context)
        Hearth::Validator.validate!(input[:address_definition], ::String, context: "#{context}[:address_definition]")
      end
    end

    class Addresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Address.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateFirewallPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFirewallPolicyInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
      end
    end

    class AssociateFirewallPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFirewallPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class AssociateSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSubnetsInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
      end
    end

    class AssociateSubnetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSubnetsOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class Attachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attachment, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AzSubnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateFirewallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallInput, context: context)
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:delete_protection], ::TrueClass, ::FalseClass, context: "#{context}[:delete_protection]")
        Hearth::Validator.validate!(input[:subnet_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:subnet_change_protection]")
        Hearth::Validator.validate!(input[:firewall_policy_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:firewall_policy_change_protection]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class CreateFirewallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallOutput, context: context)
        Validators::Firewall.validate!(input[:firewall], context: "#{context}[:firewall]") unless input[:firewall].nil?
        Validators::FirewallStatus.validate!(input[:firewall_status], context: "#{context}[:firewall_status]") unless input[:firewall_status].nil?
      end
    end

    class CreateFirewallPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallPolicyInput, context: context)
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Validators::FirewallPolicy.validate!(input[:firewall_policy], context: "#{context}[:firewall_policy]") unless input[:firewall_policy].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class CreateFirewallPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::FirewallPolicyResponse.validate!(input[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless input[:firewall_policy_response].nil?
      end
    end

    class CreateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Validators::RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Hearth::Validator.validate!(input[:rules], ::String, context: "#{context}[:rules]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::SourceMetadata.validate!(input[:source_metadata], context: "#{context}[:source_metadata]") unless input[:source_metadata].nil?
      end
    end

    class CreateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::RuleGroupResponse.validate!(input[:rule_group_response], context: "#{context}[:rule_group_response]") unless input[:rule_group_response].nil?
      end
    end

    class CustomAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAction, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Validators::ActionDefinition.validate!(input[:action_definition], context: "#{context}[:action_definition]") unless input[:action_definition].nil?
      end
    end

    class CustomActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteFirewallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallInput, context: context)
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
      end
    end

    class DeleteFirewallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallOutput, context: context)
        Validators::Firewall.validate!(input[:firewall], context: "#{context}[:firewall]") unless input[:firewall].nil?
        Validators::FirewallStatus.validate!(input[:firewall_status], context: "#{context}[:firewall_status]") unless input[:firewall_status].nil?
      end
    end

    class DeleteFirewallPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallPolicyInput, context: context)
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
      end
    end

    class DeleteFirewallPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallPolicyOutput, context: context)
        Validators::FirewallPolicyResponse.validate!(input[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless input[:firewall_policy_response].nil?
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DeleteRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupOutput, context: context)
        Validators::RuleGroupResponse.validate!(input[:rule_group_response], context: "#{context}[:rule_group_response]") unless input[:rule_group_response].nil?
      end
    end

    class DescribeFirewallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFirewallInput, context: context)
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
      end
    end

    class DescribeFirewallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFirewallOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::Firewall.validate!(input[:firewall], context: "#{context}[:firewall]") unless input[:firewall].nil?
        Validators::FirewallStatus.validate!(input[:firewall_status], context: "#{context}[:firewall_status]") unless input[:firewall_status].nil?
      end
    end

    class DescribeFirewallPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFirewallPolicyInput, context: context)
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
      end
    end

    class DescribeFirewallPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFirewallPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::FirewallPolicyResponse.validate!(input[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless input[:firewall_policy_response].nil?
        Validators::FirewallPolicy.validate!(input[:firewall_policy], context: "#{context}[:firewall_policy]") unless input[:firewall_policy].nil?
      end
    end

    class DescribeLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
      end
    end

    class DescribeLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class DescribeResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class DescribeRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DescribeRuleGroupMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupMetadataInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DescribeRuleGroupMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Validators::StatefulRuleOptions.validate!(input[:stateful_rule_options], context: "#{context}[:stateful_rule_options]") unless input[:stateful_rule_options].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class DescribeRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Validators::RuleGroupResponse.validate!(input[:rule_group_response], context: "#{context}[:rule_group_response]") unless input[:rule_group_response].nil?
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimension, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSubnetsInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::AzSubnets.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class DisassociateSubnetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSubnetsOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Firewall
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Firewall, context: context)
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:delete_protection], ::TrueClass, ::FalseClass, context: "#{context}[:delete_protection]")
        Hearth::Validator.validate!(input[:subnet_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:subnet_change_protection]")
        Hearth::Validator.validate!(input[:firewall_policy_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:firewall_policy_change_protection]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:firewall_id], ::String, context: "#{context}[:firewall_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class FirewallMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallMetadata, context: context)
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
      end
    end

    class FirewallPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallPolicyMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicy, context: context)
        Validators::StatelessRuleGroupReferences.validate!(input[:stateless_rule_group_references], context: "#{context}[:stateless_rule_group_references]") unless input[:stateless_rule_group_references].nil?
        Validators::StatelessActions.validate!(input[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless input[:stateless_default_actions].nil?
        Validators::StatelessActions.validate!(input[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless input[:stateless_fragment_default_actions].nil?
        Validators::CustomActions.validate!(input[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless input[:stateless_custom_actions].nil?
        Validators::StatefulRuleGroupReferences.validate!(input[:stateful_rule_group_references], context: "#{context}[:stateful_rule_group_references]") unless input[:stateful_rule_group_references].nil?
        Validators::StatefulActions.validate!(input[:stateful_default_actions], context: "#{context}[:stateful_default_actions]") unless input[:stateful_default_actions].nil?
        Validators::StatefulEngineOptions.validate!(input[:stateful_engine_options], context: "#{context}[:stateful_engine_options]") unless input[:stateful_engine_options].nil?
      end
    end

    class FirewallPolicyMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class FirewallPolicyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyResponse, context: context)
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:firewall_policy_id], ::String, context: "#{context}[:firewall_policy_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:firewall_policy_status], ::String, context: "#{context}[:firewall_policy_status]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:consumed_stateless_rule_capacity], ::Integer, context: "#{context}[:consumed_stateless_rule_capacity]")
        Hearth::Validator.validate!(input[:consumed_stateful_rule_capacity], ::Integer, context: "#{context}[:consumed_stateful_rule_capacity]")
        Hearth::Validator.validate!(input[:number_of_associations], ::Integer, context: "#{context}[:number_of_associations]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class FirewallStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:configuration_sync_state_summary], ::String, context: "#{context}[:configuration_sync_state_summary]")
        Validators::SyncStates.validate!(input[:sync_states], context: "#{context}[:sync_states]") unless input[:sync_states].nil?
      end
    end

    class Firewalls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Flags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Header
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Header, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_port], ::String, context: "#{context}[:source_port]")
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:destination_port], ::String, context: "#{context}[:destination_port]")
      end
    end

    class IPSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSet, context: context)
        Validators::VariableDefinitionList.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class IPSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::IPSet.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class InsufficientCapacityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientCapacityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourcePolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourcePolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListFirewallPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFirewallPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallPoliciesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FirewallPolicies.validate!(input[:firewall_policies], context: "#{context}[:firewall_policies]") unless input[:firewall_policies].nil?
      end
    end

    class ListFirewallsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::VpcIds.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFirewallsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::Firewalls.validate!(input[:firewalls], context: "#{context}[:firewalls]") unless input[:firewalls].nil?
      end
    end

    class ListRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:managed_type], ::String, context: "#{context}[:managed_type]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::RuleGroups.validate!(input[:rule_groups], context: "#{context}[:rule_groups]") unless input[:rule_groups].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogDestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDestinationConfig, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Validators::LogDestinationMap.validate!(input[:log_destination], context: "#{context}[:log_destination]") unless input[:log_destination].nil?
      end
    end

    class LogDestinationConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogDestinationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogDestinationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LogDestinationPermissionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDestinationPermissionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Validators::LogDestinationConfigs.validate!(input[:log_destination_configs], context: "#{context}[:log_destination_configs]") unless input[:log_destination_configs].nil?
      end
    end

    class MatchAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchAttributes, context: context)
        Validators::Addresses.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Validators::Addresses.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Validators::PortRanges.validate!(input[:source_ports], context: "#{context}[:source_ports]") unless input[:source_ports].nil?
        Validators::PortRanges.validate!(input[:destination_ports], context: "#{context}[:destination_ports]") unless input[:destination_ports].nil?
        Validators::ProtocolNumbers.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Validators::TCPFlags.validate!(input[:tcp_flags], context: "#{context}[:tcp_flags]") unless input[:tcp_flags].nil?
      end
    end

    class PerObjectStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerObjectStatus, context: context)
        Hearth::Validator.validate!(input[:sync_status], ::String, context: "#{context}[:sync_status]")
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class PortRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortSet, context: context)
        Validators::VariableDefinitionList.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class PortSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::PortSet.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProtocolNumbers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class PublishMetricAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishMetricAction, context: context)
        Validators::Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceOwnerCheckException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceOwnerCheckException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuleDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleDefinition, context: context)
        Validators::MatchAttributes.validate!(input[:match_attributes], context: "#{context}[:match_attributes]") unless input[:match_attributes].nil?
        Validators::StatelessActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class RuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroup, context: context)
        Validators::RuleVariables.validate!(input[:rule_variables], context: "#{context}[:rule_variables]") unless input[:rule_variables].nil?
        Validators::RulesSource.validate!(input[:rules_source], context: "#{context}[:rules_source]") unless input[:rules_source].nil?
        Validators::StatefulRuleOptions.validate!(input[:stateful_rule_options], context: "#{context}[:stateful_rule_options]") unless input[:stateful_rule_options].nil?
      end
    end

    class RuleGroupMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RuleGroupResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupResponse, context: context)
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:rule_group_status], ::String, context: "#{context}[:rule_group_status]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:consumed_capacity], ::Integer, context: "#{context}[:consumed_capacity]")
        Hearth::Validator.validate!(input[:number_of_associations], ::Integer, context: "#{context}[:number_of_associations]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::SourceMetadata.validate!(input[:source_metadata], context: "#{context}[:source_metadata]") unless input[:source_metadata].nil?
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class RuleGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleOption, context: context)
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Validators::Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class RuleOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RuleVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleVariables, context: context)
        Validators::IPSets.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
        Validators::PortSets.validate!(input[:port_sets], context: "#{context}[:port_sets]") unless input[:port_sets].nil?
      end
    end

    class RulesSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulesSource, context: context)
        Hearth::Validator.validate!(input[:rules_string], ::String, context: "#{context}[:rules_string]")
        Validators::RulesSourceList.validate!(input[:rules_source_list], context: "#{context}[:rules_source_list]") unless input[:rules_source_list].nil?
        Validators::StatefulRules.validate!(input[:stateful_rules], context: "#{context}[:stateful_rules]") unless input[:stateful_rules].nil?
        Validators::StatelessRulesAndCustomActions.validate!(input[:stateless_rules_and_custom_actions], context: "#{context}[:stateless_rules_and_custom_actions]") unless input[:stateless_rules_and_custom_actions].nil?
      end
    end

    class RulesSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulesSourceList, context: context)
        Validators::RuleTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Validators::TargetTypes.validate!(input[:target_types], context: "#{context}[:target_types]") unless input[:target_types].nil?
        Hearth::Validator.validate!(input[:generated_rules_type], ::String, context: "#{context}[:generated_rules_type]")
      end
    end

    class Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceMetadata, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_update_token], ::String, context: "#{context}[:source_update_token]")
      end
    end

    class StatefulActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StatefulEngineOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulEngineOptions, context: context)
        Hearth::Validator.validate!(input[:rule_order], ::String, context: "#{context}[:rule_order]")
      end
    end

    class StatefulRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulRule, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::Header.validate!(input[:header], context: "#{context}[:header]") unless input[:header].nil?
        Validators::RuleOptions.validate!(input[:rule_options], context: "#{context}[:rule_options]") unless input[:rule_options].nil?
      end
    end

    class StatefulRuleGroupOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulRuleGroupOverride, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class StatefulRuleGroupReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulRuleGroupReference, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::StatefulRuleGroupOverride.validate!(input[:override], context: "#{context}[:override]") unless input[:override].nil?
      end
    end

    class StatefulRuleGroupReferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatefulRuleGroupReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatefulRuleOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulRuleOptions, context: context)
        Hearth::Validator.validate!(input[:rule_order], ::String, context: "#{context}[:rule_order]")
      end
    end

    class StatefulRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatefulRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatelessActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StatelessRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessRule, context: context)
        Validators::RuleDefinition.validate!(input[:rule_definition], context: "#{context}[:rule_definition]") unless input[:rule_definition].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class StatelessRuleGroupReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessRuleGroupReference, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class StatelessRuleGroupReferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatelessRuleGroupReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatelessRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatelessRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatelessRulesAndCustomActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessRulesAndCustomActions, context: context)
        Validators::StatelessRules.validate!(input[:stateless_rules], context: "#{context}[:stateless_rules]") unless input[:stateless_rules].nil?
        Validators::CustomActions.validate!(input[:custom_actions], context: "#{context}[:custom_actions]") unless input[:custom_actions].nil?
      end
    end

    class SubnetMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetMapping, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class SubnetMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubnetMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SyncState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncState, context: context)
        Validators::Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Validators::SyncStateConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
      end
    end

    class SyncStateConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::PerObjectStatus.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SyncStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::SyncState.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TCPFlagField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TCPFlagField, context: context)
        Validators::Flags.validate!(input[:flags], context: "#{context}[:flags]") unless input[:flags].nil?
        Validators::Flags.validate!(input[:masks], context: "#{context}[:masks]") unless input[:masks].nil?
      end
    end

    class TCPFlags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TCPFlagField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFirewallDeleteProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDeleteProtectionInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:delete_protection], ::TrueClass, ::FalseClass, context: "#{context}[:delete_protection]")
      end
    end

    class UpdateFirewallDeleteProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDeleteProtectionOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:delete_protection], ::TrueClass, ::FalseClass, context: "#{context}[:delete_protection]")
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class UpdateFirewallDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateFirewallDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDescriptionOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class UpdateFirewallEncryptionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallEncryptionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class UpdateFirewallEncryptionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallEncryptionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class UpdateFirewallPolicyChangeProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallPolicyChangeProtectionInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:firewall_policy_change_protection]")
      end
    end

    class UpdateFirewallPolicyChangeProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallPolicyChangeProtectionOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:firewall_policy_change_protection]")
      end
    end

    class UpdateFirewallPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallPolicyInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Validators::FirewallPolicy.validate!(input[:firewall_policy], context: "#{context}[:firewall_policy]") unless input[:firewall_policy].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class UpdateFirewallPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::FirewallPolicyResponse.validate!(input[:firewall_policy_response], context: "#{context}[:firewall_policy_response]") unless input[:firewall_policy_response].nil?
      end
    end

    class UpdateLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class UpdateLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoggingConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class UpdateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Validators::RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Hearth::Validator.validate!(input[:rules], ::String, context: "#{context}[:rules]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::SourceMetadata.validate!(input[:source_metadata], context: "#{context}[:source_metadata]") unless input[:source_metadata].nil?
      end
    end

    class UpdateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Validators::RuleGroupResponse.validate!(input[:rule_group_response], context: "#{context}[:rule_group_response]") unless input[:rule_group_response].nil?
      end
    end

    class UpdateSubnetChangeProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetChangeProtectionInput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:subnet_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:subnet_change_protection]")
      end
    end

    class UpdateSubnetChangeProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetChangeProtectionOutput, context: context)
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:subnet_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:subnet_change_protection]")
      end
    end

    class VariableDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
