# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::NetworkFirewall
  module Builders

    # Operation Builder for AssociateFirewallPolicy
    class AssociateFirewallPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.AssociateFirewallPolicy'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSubnets
    class AssociateSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.AssociateSubnets'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['SubnetMappings'] = SubnetMappings.build(input[:subnet_mappings]) unless input[:subnet_mappings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetMappings
    class SubnetMappings
      def self.build(input)
        data = []
        input.each do |element|
          data << SubnetMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SubnetMapping
    class SubnetMapping
      def self.build(input)
        data = {}
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data
      end
    end

    # Operation Builder for CreateFirewall
    class CreateFirewall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.CreateFirewall'
        data = {}
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetMappings'] = SubnetMappings.build(input[:subnet_mappings]) unless input[:subnet_mappings].nil?
        data['DeleteProtection'] = input[:delete_protection] unless input[:delete_protection].nil?
        data['SubnetChangeProtection'] = input[:subnet_change_protection] unless input[:subnet_change_protection].nil?
        data['FirewallPolicyChangeProtection'] = input[:firewall_policy_change_protection] unless input[:firewall_policy_change_protection].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateFirewallPolicy
    class CreateFirewallPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.CreateFirewallPolicy'
        data = {}
        data['FirewallPolicyName'] = input[:firewall_policy_name] unless input[:firewall_policy_name].nil?
        data['FirewallPolicy'] = FirewallPolicy.build(input[:firewall_policy]) unless input[:firewall_policy].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FirewallPolicy
    class FirewallPolicy
      def self.build(input)
        data = {}
        data['StatelessRuleGroupReferences'] = StatelessRuleGroupReferences.build(input[:stateless_rule_group_references]) unless input[:stateless_rule_group_references].nil?
        data['StatelessDefaultActions'] = StatelessActions.build(input[:stateless_default_actions]) unless input[:stateless_default_actions].nil?
        data['StatelessFragmentDefaultActions'] = StatelessActions.build(input[:stateless_fragment_default_actions]) unless input[:stateless_fragment_default_actions].nil?
        data['StatelessCustomActions'] = CustomActions.build(input[:stateless_custom_actions]) unless input[:stateless_custom_actions].nil?
        data['StatefulRuleGroupReferences'] = StatefulRuleGroupReferences.build(input[:stateful_rule_group_references]) unless input[:stateful_rule_group_references].nil?
        data['StatefulDefaultActions'] = StatefulActions.build(input[:stateful_default_actions]) unless input[:stateful_default_actions].nil?
        data['StatefulEngineOptions'] = StatefulEngineOptions.build(input[:stateful_engine_options]) unless input[:stateful_engine_options].nil?
        data
      end
    end

    # Structure Builder for StatefulEngineOptions
    class StatefulEngineOptions
      def self.build(input)
        data = {}
        data['RuleOrder'] = input[:rule_order] unless input[:rule_order].nil?
        data
      end
    end

    # List Builder for StatefulActions
    class StatefulActions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StatefulRuleGroupReferences
    class StatefulRuleGroupReferences
      def self.build(input)
        data = []
        input.each do |element|
          data << StatefulRuleGroupReference.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatefulRuleGroupReference
    class StatefulRuleGroupReference
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Override'] = StatefulRuleGroupOverride.build(input[:override]) unless input[:override].nil?
        data
      end
    end

    # Structure Builder for StatefulRuleGroupOverride
    class StatefulRuleGroupOverride
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # List Builder for CustomActions
    class CustomActions
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomAction
    class CustomAction
      def self.build(input)
        data = {}
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        data['ActionDefinition'] = ActionDefinition.build(input[:action_definition]) unless input[:action_definition].nil?
        data
      end
    end

    # Structure Builder for ActionDefinition
    class ActionDefinition
      def self.build(input)
        data = {}
        data['PublishMetricAction'] = PublishMetricAction.build(input[:publish_metric_action]) unless input[:publish_metric_action].nil?
        data
      end
    end

    # Structure Builder for PublishMetricAction
    class PublishMetricAction
      def self.build(input)
        data = {}
        data['Dimensions'] = Dimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data
      end
    end

    # List Builder for Dimensions
    class Dimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << Dimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Dimension
    class Dimension
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for StatelessActions
    class StatelessActions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StatelessRuleGroupReferences
    class StatelessRuleGroupReferences
      def self.build(input)
        data = []
        input.each do |element|
          data << StatelessRuleGroupReference.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatelessRuleGroupReference
    class StatelessRuleGroupReference
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data
      end
    end

    # Operation Builder for CreateRuleGroup
    class CreateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.CreateRuleGroup'
        data = {}
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['RuleGroup'] = RuleGroup.build(input[:rule_group]) unless input[:rule_group].nil?
        data['Rules'] = input[:rules] unless input[:rules].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Capacity'] = input[:capacity] unless input[:capacity].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['SourceMetadata'] = SourceMetadata.build(input[:source_metadata]) unless input[:source_metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SourceMetadata
    class SourceMetadata
      def self.build(input)
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['SourceUpdateToken'] = input[:source_update_token] unless input[:source_update_token].nil?
        data
      end
    end

    # Structure Builder for RuleGroup
    class RuleGroup
      def self.build(input)
        data = {}
        data['RuleVariables'] = RuleVariables.build(input[:rule_variables]) unless input[:rule_variables].nil?
        data['RulesSource'] = RulesSource.build(input[:rules_source]) unless input[:rules_source].nil?
        data['StatefulRuleOptions'] = StatefulRuleOptions.build(input[:stateful_rule_options]) unless input[:stateful_rule_options].nil?
        data
      end
    end

    # Structure Builder for StatefulRuleOptions
    class StatefulRuleOptions
      def self.build(input)
        data = {}
        data['RuleOrder'] = input[:rule_order] unless input[:rule_order].nil?
        data
      end
    end

    # Structure Builder for RulesSource
    class RulesSource
      def self.build(input)
        data = {}
        data['RulesString'] = input[:rules_string] unless input[:rules_string].nil?
        data['RulesSourceList'] = RulesSourceList.build(input[:rules_source_list]) unless input[:rules_source_list].nil?
        data['StatefulRules'] = StatefulRules.build(input[:stateful_rules]) unless input[:stateful_rules].nil?
        data['StatelessRulesAndCustomActions'] = StatelessRulesAndCustomActions.build(input[:stateless_rules_and_custom_actions]) unless input[:stateless_rules_and_custom_actions].nil?
        data
      end
    end

    # Structure Builder for StatelessRulesAndCustomActions
    class StatelessRulesAndCustomActions
      def self.build(input)
        data = {}
        data['StatelessRules'] = StatelessRules.build(input[:stateless_rules]) unless input[:stateless_rules].nil?
        data['CustomActions'] = CustomActions.build(input[:custom_actions]) unless input[:custom_actions].nil?
        data
      end
    end

    # List Builder for StatelessRules
    class StatelessRules
      def self.build(input)
        data = []
        input.each do |element|
          data << StatelessRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatelessRule
    class StatelessRule
      def self.build(input)
        data = {}
        data['RuleDefinition'] = RuleDefinition.build(input[:rule_definition]) unless input[:rule_definition].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data
      end
    end

    # Structure Builder for RuleDefinition
    class RuleDefinition
      def self.build(input)
        data = {}
        data['MatchAttributes'] = MatchAttributes.build(input[:match_attributes]) unless input[:match_attributes].nil?
        data['Actions'] = StatelessActions.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # Structure Builder for MatchAttributes
    class MatchAttributes
      def self.build(input)
        data = {}
        data['Sources'] = Addresses.build(input[:sources]) unless input[:sources].nil?
        data['Destinations'] = Addresses.build(input[:destinations]) unless input[:destinations].nil?
        data['SourcePorts'] = PortRanges.build(input[:source_ports]) unless input[:source_ports].nil?
        data['DestinationPorts'] = PortRanges.build(input[:destination_ports]) unless input[:destination_ports].nil?
        data['Protocols'] = ProtocolNumbers.build(input[:protocols]) unless input[:protocols].nil?
        data['TCPFlags'] = TCPFlags.build(input[:tcp_flags]) unless input[:tcp_flags].nil?
        data
      end
    end

    # List Builder for TCPFlags
    class TCPFlags
      def self.build(input)
        data = []
        input.each do |element|
          data << TCPFlagField.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TCPFlagField
    class TCPFlagField
      def self.build(input)
        data = {}
        data['Flags'] = Flags.build(input[:flags]) unless input[:flags].nil?
        data['Masks'] = Flags.build(input[:masks]) unless input[:masks].nil?
        data
      end
    end

    # List Builder for Flags
    class Flags
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ProtocolNumbers
    class ProtocolNumbers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PortRanges
    class PortRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << PortRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortRange
    class PortRange
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data
      end
    end

    # List Builder for Addresses
    class Addresses
      def self.build(input)
        data = []
        input.each do |element|
          data << Address.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Address
    class Address
      def self.build(input)
        data = {}
        data['AddressDefinition'] = input[:address_definition] unless input[:address_definition].nil?
        data
      end
    end

    # List Builder for StatefulRules
    class StatefulRules
      def self.build(input)
        data = []
        input.each do |element|
          data << StatefulRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatefulRule
    class StatefulRule
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Header'] = Header.build(input[:header]) unless input[:header].nil?
        data['RuleOptions'] = RuleOptions.build(input[:rule_options]) unless input[:rule_options].nil?
        data
      end
    end

    # List Builder for RuleOptions
    class RuleOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << RuleOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleOption
    class RuleOption
      def self.build(input)
        data = {}
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        data['Settings'] = Settings.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # List Builder for Settings
    class Settings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Header
    class Header
      def self.build(input)
        data = {}
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['SourcePort'] = input[:source_port] unless input[:source_port].nil?
        data['Direction'] = input[:direction] unless input[:direction].nil?
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data['DestinationPort'] = input[:destination_port] unless input[:destination_port].nil?
        data
      end
    end

    # Structure Builder for RulesSourceList
    class RulesSourceList
      def self.build(input)
        data = {}
        data['Targets'] = RuleTargets.build(input[:targets]) unless input[:targets].nil?
        data['TargetTypes'] = TargetTypes.build(input[:target_types]) unless input[:target_types].nil?
        data['GeneratedRulesType'] = input[:generated_rules_type] unless input[:generated_rules_type].nil?
        data
      end
    end

    # List Builder for TargetTypes
    class TargetTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RuleTargets
    class RuleTargets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleVariables
    class RuleVariables
      def self.build(input)
        data = {}
        data['IPSets'] = IPSets.build(input[:ip_sets]) unless input[:ip_sets].nil?
        data['PortSets'] = PortSets.build(input[:port_sets]) unless input[:port_sets].nil?
        data
      end
    end

    # Map Builder for PortSets
    class PortSets
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = PortSet.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PortSet
    class PortSet
      def self.build(input)
        data = {}
        data['Definition'] = VariableDefinitionList.build(input[:definition]) unless input[:definition].nil?
        data
      end
    end

    # List Builder for VariableDefinitionList
    class VariableDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for IPSets
    class IPSets
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = IPSet.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for IPSet
    class IPSet
      def self.build(input)
        data = {}
        data['Definition'] = VariableDefinitionList.build(input[:definition]) unless input[:definition].nil?
        data
      end
    end

    # Operation Builder for DeleteFirewall
    class DeleteFirewall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DeleteFirewall'
        data = {}
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFirewallPolicy
    class DeleteFirewallPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DeleteFirewallPolicy'
        data = {}
        data['FirewallPolicyName'] = input[:firewall_policy_name] unless input[:firewall_policy_name].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DeleteResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRuleGroup
    class DeleteRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DeleteRuleGroup'
        data = {}
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['RuleGroupArn'] = input[:rule_group_arn] unless input[:rule_group_arn].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFirewall
    class DescribeFirewall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeFirewall'
        data = {}
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFirewallPolicy
    class DescribeFirewallPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeFirewallPolicy'
        data = {}
        data['FirewallPolicyName'] = input[:firewall_policy_name] unless input[:firewall_policy_name].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLoggingConfiguration
    class DescribeLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeLoggingConfiguration'
        data = {}
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRuleGroup
    class DescribeRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeRuleGroup'
        data = {}
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['RuleGroupArn'] = input[:rule_group_arn] unless input[:rule_group_arn].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRuleGroupMetadata
    class DescribeRuleGroupMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DescribeRuleGroupMetadata'
        data = {}
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['RuleGroupArn'] = input[:rule_group_arn] unless input[:rule_group_arn].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateSubnets
    class DisassociateSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.DisassociateSubnets'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['SubnetIds'] = AzSubnets.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AzSubnets
    class AzSubnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFirewallPolicies
    class ListFirewallPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.ListFirewallPolicies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewalls
    class ListFirewalls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.ListFirewalls'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['VpcIds'] = VpcIds.build(input[:vpc_ids]) unless input[:vpc_ids].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VpcIds
    class VpcIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRuleGroups
    class ListRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.ListRuleGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['ManagedType'] = input[:managed_type] unless input[:managed_type].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.ListTagsForResource'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.PutResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateFirewallDeleteProtection
    class UpdateFirewallDeleteProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateFirewallDeleteProtection'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['DeleteProtection'] = input[:delete_protection] unless input[:delete_protection].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallDescription
    class UpdateFirewallDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateFirewallDescription'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallEncryptionConfiguration
    class UpdateFirewallEncryptionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateFirewallEncryptionConfiguration'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallPolicy
    class UpdateFirewallPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateFirewallPolicy'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallPolicyArn'] = input[:firewall_policy_arn] unless input[:firewall_policy_arn].nil?
        data['FirewallPolicyName'] = input[:firewall_policy_name] unless input[:firewall_policy_name].nil?
        data['FirewallPolicy'] = FirewallPolicy.build(input[:firewall_policy]) unless input[:firewall_policy].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallPolicyChangeProtection
    class UpdateFirewallPolicyChangeProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateFirewallPolicyChangeProtection'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['FirewallPolicyChangeProtection'] = input[:firewall_policy_change_protection] unless input[:firewall_policy_change_protection].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLoggingConfiguration
    class UpdateLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateLoggingConfiguration'
        data = {}
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['LoggingConfiguration'] = LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingConfiguration
    class LoggingConfiguration
      def self.build(input)
        data = {}
        data['LogDestinationConfigs'] = LogDestinationConfigs.build(input[:log_destination_configs]) unless input[:log_destination_configs].nil?
        data
      end
    end

    # List Builder for LogDestinationConfigs
    class LogDestinationConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << LogDestinationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LogDestinationConfig
    class LogDestinationConfig
      def self.build(input)
        data = {}
        data['LogType'] = input[:log_type] unless input[:log_type].nil?
        data['LogDestinationType'] = input[:log_destination_type] unless input[:log_destination_type].nil?
        data['LogDestination'] = LogDestinationMap.build(input[:log_destination]) unless input[:log_destination].nil?
        data
      end
    end

    # Map Builder for LogDestinationMap
    class LogDestinationMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateRuleGroup
    class UpdateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateRuleGroup'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['RuleGroupArn'] = input[:rule_group_arn] unless input[:rule_group_arn].nil?
        data['RuleGroupName'] = input[:rule_group_name] unless input[:rule_group_name].nil?
        data['RuleGroup'] = RuleGroup.build(input[:rule_group]) unless input[:rule_group].nil?
        data['Rules'] = input[:rules] unless input[:rules].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['SourceMetadata'] = SourceMetadata.build(input[:source_metadata]) unless input[:source_metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSubnetChangeProtection
    class UpdateSubnetChangeProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'NetworkFirewall_20201112.UpdateSubnetChangeProtection'
        data = {}
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        data['FirewallArn'] = input[:firewall_arn] unless input[:firewall_arn].nil?
        data['FirewallName'] = input[:firewall_name] unless input[:firewall_name].nil?
        data['SubnetChangeProtection'] = input[:subnet_change_protection] unless input[:subnet_change_protection].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
