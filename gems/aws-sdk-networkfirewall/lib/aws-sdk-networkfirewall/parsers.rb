# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkFirewall
  module Parsers

    # Operation Parser for AssociateFirewallPolicy
    class AssociateFirewallPolicy
      def self.parse(http_resp)
        data = Types::AssociateFirewallPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.firewall_policy_arn = map['FirewallPolicyArn']
        data.update_token = map['UpdateToken']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTokenException
    class InvalidTokenException
      def self.parse(http_resp)
        data = Types::InvalidTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateSubnets
    class AssociateSubnets
      def self.parse(http_resp)
        data = Types::AssociateSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.subnet_mappings = (SubnetMappings.parse(map['SubnetMappings']) unless map['SubnetMappings'].nil?)
        data.update_token = map['UpdateToken']
        data
      end
    end

    class SubnetMappings
      def self.parse(list)
        list.map do |value|
          SubnetMapping.parse(value) unless value.nil?
        end
      end
    end

    class SubnetMapping
      def self.parse(map)
        data = Types::SubnetMapping.new
        data.subnet_id = map['SubnetId']
        return data
      end
    end

    # Error Parser for InsufficientCapacityException
    class InsufficientCapacityException
      def self.parse(http_resp)
        data = Types::InsufficientCapacityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFirewall
    class CreateFirewall
      def self.parse(http_resp)
        data = Types::CreateFirewallOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall = (Firewall.parse(map['Firewall']) unless map['Firewall'].nil?)
        data.firewall_status = (FirewallStatus.parse(map['FirewallStatus']) unless map['FirewallStatus'].nil?)
        data
      end
    end

    class FirewallStatus
      def self.parse(map)
        data = Types::FirewallStatus.new
        data.status = map['Status']
        data.configuration_sync_state_summary = map['ConfigurationSyncStateSummary']
        data.sync_states = (SyncStates.parse(map['SyncStates']) unless map['SyncStates'].nil?)
        return data
      end
    end

    class SyncStates
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = SyncState.parse(value) unless value.nil?
        end
        data
      end
    end

    class SyncState
      def self.parse(map)
        data = Types::SyncState.new
        data.attachment = (Attachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data.config = (SyncStateConfig.parse(map['Config']) unless map['Config'].nil?)
        return data
      end
    end

    class SyncStateConfig
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = PerObjectStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    class PerObjectStatus
      def self.parse(map)
        data = Types::PerObjectStatus.new
        data.sync_status = map['SyncStatus']
        data.update_token = map['UpdateToken']
        return data
      end
    end

    class Attachment
      def self.parse(map)
        data = Types::Attachment.new
        data.subnet_id = map['SubnetId']
        data.endpoint_id = map['EndpointId']
        data.status = map['Status']
        return data
      end
    end

    class Firewall
      def self.parse(map)
        data = Types::Firewall.new
        data.firewall_name = map['FirewallName']
        data.firewall_arn = map['FirewallArn']
        data.firewall_policy_arn = map['FirewallPolicyArn']
        data.vpc_id = map['VpcId']
        data.subnet_mappings = (SubnetMappings.parse(map['SubnetMappings']) unless map['SubnetMappings'].nil?)
        data.delete_protection = map['DeleteProtection']
        data.subnet_change_protection = map['SubnetChangeProtection']
        data.firewall_policy_change_protection = map['FirewallPolicyChangeProtection']
        data.description = map['Description']
        data.firewall_id = map['FirewallId']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.key_id = map['KeyId']
        data.type = map['Type']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFirewallPolicy
    class CreateFirewallPolicy
      def self.parse(http_resp)
        data = Types::CreateFirewallPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall_policy_response = (FirewallPolicyResponse.parse(map['FirewallPolicyResponse']) unless map['FirewallPolicyResponse'].nil?)
        data
      end
    end

    class FirewallPolicyResponse
      def self.parse(map)
        data = Types::FirewallPolicyResponse.new
        data.firewall_policy_name = map['FirewallPolicyName']
        data.firewall_policy_arn = map['FirewallPolicyArn']
        data.firewall_policy_id = map['FirewallPolicyId']
        data.description = map['Description']
        data.firewall_policy_status = map['FirewallPolicyStatus']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.consumed_stateless_rule_capacity = map['ConsumedStatelessRuleCapacity']
        data.consumed_stateful_rule_capacity = map['ConsumedStatefulRuleCapacity']
        data.number_of_associations = map['NumberOfAssociations']
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for CreateRuleGroup
    class CreateRuleGroup
      def self.parse(http_resp)
        data = Types::CreateRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.rule_group_response = (RuleGroupResponse.parse(map['RuleGroupResponse']) unless map['RuleGroupResponse'].nil?)
        data
      end
    end

    class RuleGroupResponse
      def self.parse(map)
        data = Types::RuleGroupResponse.new
        data.rule_group_arn = map['RuleGroupArn']
        data.rule_group_name = map['RuleGroupName']
        data.rule_group_id = map['RuleGroupId']
        data.description = map['Description']
        data.type = map['Type']
        data.capacity = map['Capacity']
        data.rule_group_status = map['RuleGroupStatus']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.consumed_capacity = map['ConsumedCapacity']
        data.number_of_associations = map['NumberOfAssociations']
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.source_metadata = (SourceMetadata.parse(map['SourceMetadata']) unless map['SourceMetadata'].nil?)
        data.sns_topic = map['SnsTopic']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    class SourceMetadata
      def self.parse(map)
        data = Types::SourceMetadata.new
        data.source_arn = map['SourceArn']
        data.source_update_token = map['SourceUpdateToken']
        return data
      end
    end

    # Operation Parser for DeleteFirewall
    class DeleteFirewall
      def self.parse(http_resp)
        data = Types::DeleteFirewallOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall = (Firewall.parse(map['Firewall']) unless map['Firewall'].nil?)
        data.firewall_status = (FirewallStatus.parse(map['FirewallStatus']) unless map['FirewallStatus'].nil?)
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFirewallPolicy
    class DeleteFirewallPolicy
      def self.parse(http_resp)
        data = Types::DeleteFirewallPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_policy_response = (FirewallPolicyResponse.parse(map['FirewallPolicyResponse']) unless map['FirewallPolicyResponse'].nil?)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidResourcePolicyException
    class InvalidResourcePolicyException
      def self.parse(http_resp)
        data = Types::InvalidResourcePolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteRuleGroup
    class DeleteRuleGroup
      def self.parse(http_resp)
        data = Types::DeleteRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_group_response = (RuleGroupResponse.parse(map['RuleGroupResponse']) unless map['RuleGroupResponse'].nil?)
        data
      end
    end

    # Operation Parser for DescribeFirewall
    class DescribeFirewall
      def self.parse(http_resp)
        data = Types::DescribeFirewallOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall = (Firewall.parse(map['Firewall']) unless map['Firewall'].nil?)
        data.firewall_status = (FirewallStatus.parse(map['FirewallStatus']) unless map['FirewallStatus'].nil?)
        data
      end
    end

    # Operation Parser for DescribeFirewallPolicy
    class DescribeFirewallPolicy
      def self.parse(http_resp)
        data = Types::DescribeFirewallPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall_policy_response = (FirewallPolicyResponse.parse(map['FirewallPolicyResponse']) unless map['FirewallPolicyResponse'].nil?)
        data.firewall_policy = (FirewallPolicy.parse(map['FirewallPolicy']) unless map['FirewallPolicy'].nil?)
        data
      end
    end

    class FirewallPolicy
      def self.parse(map)
        data = Types::FirewallPolicy.new
        data.stateless_rule_group_references = (StatelessRuleGroupReferences.parse(map['StatelessRuleGroupReferences']) unless map['StatelessRuleGroupReferences'].nil?)
        data.stateless_default_actions = (StatelessActions.parse(map['StatelessDefaultActions']) unless map['StatelessDefaultActions'].nil?)
        data.stateless_fragment_default_actions = (StatelessActions.parse(map['StatelessFragmentDefaultActions']) unless map['StatelessFragmentDefaultActions'].nil?)
        data.stateless_custom_actions = (CustomActions.parse(map['StatelessCustomActions']) unless map['StatelessCustomActions'].nil?)
        data.stateful_rule_group_references = (StatefulRuleGroupReferences.parse(map['StatefulRuleGroupReferences']) unless map['StatefulRuleGroupReferences'].nil?)
        data.stateful_default_actions = (StatefulActions.parse(map['StatefulDefaultActions']) unless map['StatefulDefaultActions'].nil?)
        data.stateful_engine_options = (StatefulEngineOptions.parse(map['StatefulEngineOptions']) unless map['StatefulEngineOptions'].nil?)
        return data
      end
    end

    class StatefulEngineOptions
      def self.parse(map)
        data = Types::StatefulEngineOptions.new
        data.rule_order = map['RuleOrder']
        return data
      end
    end

    class StatefulActions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StatefulRuleGroupReferences
      def self.parse(list)
        list.map do |value|
          StatefulRuleGroupReference.parse(value) unless value.nil?
        end
      end
    end

    class StatefulRuleGroupReference
      def self.parse(map)
        data = Types::StatefulRuleGroupReference.new
        data.resource_arn = map['ResourceArn']
        data.priority = map['Priority']
        data.override = (StatefulRuleGroupOverride.parse(map['Override']) unless map['Override'].nil?)
        return data
      end
    end

    class StatefulRuleGroupOverride
      def self.parse(map)
        data = Types::StatefulRuleGroupOverride.new
        data.action = map['Action']
        return data
      end
    end

    class CustomActions
      def self.parse(list)
        list.map do |value|
          CustomAction.parse(value) unless value.nil?
        end
      end
    end

    class CustomAction
      def self.parse(map)
        data = Types::CustomAction.new
        data.action_name = map['ActionName']
        data.action_definition = (ActionDefinition.parse(map['ActionDefinition']) unless map['ActionDefinition'].nil?)
        return data
      end
    end

    class ActionDefinition
      def self.parse(map)
        data = Types::ActionDefinition.new
        data.publish_metric_action = (PublishMetricAction.parse(map['PublishMetricAction']) unless map['PublishMetricAction'].nil?)
        return data
      end
    end

    class PublishMetricAction
      def self.parse(map)
        data = Types::PublishMetricAction.new
        data.dimensions = (Dimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    class Dimensions
      def self.parse(list)
        list.map do |value|
          Dimension.parse(value) unless value.nil?
        end
      end
    end

    class Dimension
      def self.parse(map)
        data = Types::Dimension.new
        data.value = map['Value']
        return data
      end
    end

    class StatelessActions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StatelessRuleGroupReferences
      def self.parse(list)
        list.map do |value|
          StatelessRuleGroupReference.parse(value) unless value.nil?
        end
      end
    end

    class StatelessRuleGroupReference
      def self.parse(map)
        data = Types::StatelessRuleGroupReference.new
        data.resource_arn = map['ResourceArn']
        data.priority = map['Priority']
        return data
      end
    end

    # Operation Parser for DescribeLoggingConfiguration
    class DescribeLoggingConfiguration
      def self.parse(http_resp)
        data = Types::DescribeLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.logging_configuration = (LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.log_destination_configs = (LogDestinationConfigs.parse(map['LogDestinationConfigs']) unless map['LogDestinationConfigs'].nil?)
        return data
      end
    end

    class LogDestinationConfigs
      def self.parse(list)
        list.map do |value|
          LogDestinationConfig.parse(value) unless value.nil?
        end
      end
    end

    class LogDestinationConfig
      def self.parse(map)
        data = Types::LogDestinationConfig.new
        data.log_type = map['LogType']
        data.log_destination_type = map['LogDestinationType']
        data.log_destination = (LogDestinationMap.parse(map['LogDestination']) unless map['LogDestination'].nil?)
        return data
      end
    end

    class LogDestinationMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.parse(http_resp)
        data = Types::DescribeResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for DescribeRuleGroup
    class DescribeRuleGroup
      def self.parse(http_resp)
        data = Types::DescribeRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.rule_group = (RuleGroup.parse(map['RuleGroup']) unless map['RuleGroup'].nil?)
        data.rule_group_response = (RuleGroupResponse.parse(map['RuleGroupResponse']) unless map['RuleGroupResponse'].nil?)
        data
      end
    end

    class RuleGroup
      def self.parse(map)
        data = Types::RuleGroup.new
        data.rule_variables = (RuleVariables.parse(map['RuleVariables']) unless map['RuleVariables'].nil?)
        data.rules_source = (RulesSource.parse(map['RulesSource']) unless map['RulesSource'].nil?)
        data.stateful_rule_options = (StatefulRuleOptions.parse(map['StatefulRuleOptions']) unless map['StatefulRuleOptions'].nil?)
        return data
      end
    end

    class StatefulRuleOptions
      def self.parse(map)
        data = Types::StatefulRuleOptions.new
        data.rule_order = map['RuleOrder']
        return data
      end
    end

    class RulesSource
      def self.parse(map)
        data = Types::RulesSource.new
        data.rules_string = map['RulesString']
        data.rules_source_list = (RulesSourceList.parse(map['RulesSourceList']) unless map['RulesSourceList'].nil?)
        data.stateful_rules = (StatefulRules.parse(map['StatefulRules']) unless map['StatefulRules'].nil?)
        data.stateless_rules_and_custom_actions = (StatelessRulesAndCustomActions.parse(map['StatelessRulesAndCustomActions']) unless map['StatelessRulesAndCustomActions'].nil?)
        return data
      end
    end

    class StatelessRulesAndCustomActions
      def self.parse(map)
        data = Types::StatelessRulesAndCustomActions.new
        data.stateless_rules = (StatelessRules.parse(map['StatelessRules']) unless map['StatelessRules'].nil?)
        data.custom_actions = (CustomActions.parse(map['CustomActions']) unless map['CustomActions'].nil?)
        return data
      end
    end

    class StatelessRules
      def self.parse(list)
        list.map do |value|
          StatelessRule.parse(value) unless value.nil?
        end
      end
    end

    class StatelessRule
      def self.parse(map)
        data = Types::StatelessRule.new
        data.rule_definition = (RuleDefinition.parse(map['RuleDefinition']) unless map['RuleDefinition'].nil?)
        data.priority = map['Priority']
        return data
      end
    end

    class RuleDefinition
      def self.parse(map)
        data = Types::RuleDefinition.new
        data.match_attributes = (MatchAttributes.parse(map['MatchAttributes']) unless map['MatchAttributes'].nil?)
        data.actions = (StatelessActions.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class MatchAttributes
      def self.parse(map)
        data = Types::MatchAttributes.new
        data.sources = (Addresses.parse(map['Sources']) unless map['Sources'].nil?)
        data.destinations = (Addresses.parse(map['Destinations']) unless map['Destinations'].nil?)
        data.source_ports = (PortRanges.parse(map['SourcePorts']) unless map['SourcePorts'].nil?)
        data.destination_ports = (PortRanges.parse(map['DestinationPorts']) unless map['DestinationPorts'].nil?)
        data.protocols = (ProtocolNumbers.parse(map['Protocols']) unless map['Protocols'].nil?)
        data.tcp_flags = (TCPFlags.parse(map['TCPFlags']) unless map['TCPFlags'].nil?)
        return data
      end
    end

    class TCPFlags
      def self.parse(list)
        list.map do |value|
          TCPFlagField.parse(value) unless value.nil?
        end
      end
    end

    class TCPFlagField
      def self.parse(map)
        data = Types::TCPFlagField.new
        data.flags = (Flags.parse(map['Flags']) unless map['Flags'].nil?)
        data.masks = (Flags.parse(map['Masks']) unless map['Masks'].nil?)
        return data
      end
    end

    class Flags
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProtocolNumbers
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PortRanges
      def self.parse(list)
        list.map do |value|
          PortRange.parse(value) unless value.nil?
        end
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        return data
      end
    end

    class Addresses
      def self.parse(list)
        list.map do |value|
          Address.parse(value) unless value.nil?
        end
      end
    end

    class Address
      def self.parse(map)
        data = Types::Address.new
        data.address_definition = map['AddressDefinition']
        return data
      end
    end

    class StatefulRules
      def self.parse(list)
        list.map do |value|
          StatefulRule.parse(value) unless value.nil?
        end
      end
    end

    class StatefulRule
      def self.parse(map)
        data = Types::StatefulRule.new
        data.action = map['Action']
        data.header = (Header.parse(map['Header']) unless map['Header'].nil?)
        data.rule_options = (RuleOptions.parse(map['RuleOptions']) unless map['RuleOptions'].nil?)
        return data
      end
    end

    class RuleOptions
      def self.parse(list)
        list.map do |value|
          RuleOption.parse(value) unless value.nil?
        end
      end
    end

    class RuleOption
      def self.parse(map)
        data = Types::RuleOption.new
        data.keyword = map['Keyword']
        data.settings = (Settings.parse(map['Settings']) unless map['Settings'].nil?)
        return data
      end
    end

    class Settings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Header
      def self.parse(map)
        data = Types::Header.new
        data.protocol = map['Protocol']
        data.source = map['Source']
        data.source_port = map['SourcePort']
        data.direction = map['Direction']
        data.destination = map['Destination']
        data.destination_port = map['DestinationPort']
        return data
      end
    end

    class RulesSourceList
      def self.parse(map)
        data = Types::RulesSourceList.new
        data.targets = (RuleTargets.parse(map['Targets']) unless map['Targets'].nil?)
        data.target_types = (TargetTypes.parse(map['TargetTypes']) unless map['TargetTypes'].nil?)
        data.generated_rules_type = map['GeneratedRulesType']
        return data
      end
    end

    class TargetTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RuleTargets
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RuleVariables
      def self.parse(map)
        data = Types::RuleVariables.new
        data.ip_sets = (IPSets.parse(map['IPSets']) unless map['IPSets'].nil?)
        data.port_sets = (PortSets.parse(map['PortSets']) unless map['PortSets'].nil?)
        return data
      end
    end

    class PortSets
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = PortSet.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortSet
      def self.parse(map)
        data = Types::PortSet.new
        data.definition = (VariableDefinitionList.parse(map['Definition']) unless map['Definition'].nil?)
        return data
      end
    end

    class VariableDefinitionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IPSets
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = IPSet.parse(value) unless value.nil?
        end
        data
      end
    end

    class IPSet
      def self.parse(map)
        data = Types::IPSet.new
        data.definition = (VariableDefinitionList.parse(map['Definition']) unless map['Definition'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeRuleGroupMetadata
    class DescribeRuleGroupMetadata
      def self.parse(http_resp)
        data = Types::DescribeRuleGroupMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_group_arn = map['RuleGroupArn']
        data.rule_group_name = map['RuleGroupName']
        data.description = map['Description']
        data.type = map['Type']
        data.capacity = map['Capacity']
        data.stateful_rule_options = (StatefulRuleOptions.parse(map['StatefulRuleOptions']) unless map['StatefulRuleOptions'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for DisassociateSubnets
    class DisassociateSubnets
      def self.parse(http_resp)
        data = Types::DisassociateSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.subnet_mappings = (SubnetMappings.parse(map['SubnetMappings']) unless map['SubnetMappings'].nil?)
        data.update_token = map['UpdateToken']
        data
      end
    end

    # Operation Parser for ListFirewallPolicies
    class ListFirewallPolicies
      def self.parse(http_resp)
        data = Types::ListFirewallPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_policies = (FirewallPolicies.parse(map['FirewallPolicies']) unless map['FirewallPolicies'].nil?)
        data
      end
    end

    class FirewallPolicies
      def self.parse(list)
        list.map do |value|
          FirewallPolicyMetadata.parse(value) unless value.nil?
        end
      end
    end

    class FirewallPolicyMetadata
      def self.parse(map)
        data = Types::FirewallPolicyMetadata.new
        data.name = map['Name']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListFirewalls
    class ListFirewalls
      def self.parse(http_resp)
        data = Types::ListFirewallsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewalls = (Firewalls.parse(map['Firewalls']) unless map['Firewalls'].nil?)
        data
      end
    end

    class Firewalls
      def self.parse(list)
        list.map do |value|
          FirewallMetadata.parse(value) unless value.nil?
        end
      end
    end

    class FirewallMetadata
      def self.parse(map)
        data = Types::FirewallMetadata.new
        data.firewall_name = map['FirewallName']
        data.firewall_arn = map['FirewallArn']
        return data
      end
    end

    # Operation Parser for ListRuleGroups
    class ListRuleGroups
      def self.parse(http_resp)
        data = Types::ListRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.rule_groups = (RuleGroups.parse(map['RuleGroups']) unless map['RuleGroups'].nil?)
        data
      end
    end

    class RuleGroups
      def self.parse(list)
        list.map do |value|
          RuleGroupMetadata.parse(value) unless value.nil?
        end
      end
    end

    class RuleGroupMetadata
      def self.parse(map)
        data = Types::RuleGroupMetadata.new
        data.name = map['Name']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateFirewallDeleteProtection
    class UpdateFirewallDeleteProtection
      def self.parse(http_resp)
        data = Types::UpdateFirewallDeleteProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.delete_protection = map['DeleteProtection']
        data.update_token = map['UpdateToken']
        data
      end
    end

    # Error Parser for ResourceOwnerCheckException
    class ResourceOwnerCheckException
      def self.parse(http_resp)
        data = Types::ResourceOwnerCheckException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateFirewallDescription
    class UpdateFirewallDescription
      def self.parse(http_resp)
        data = Types::UpdateFirewallDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.description = map['Description']
        data.update_token = map['UpdateToken']
        data
      end
    end

    # Operation Parser for UpdateFirewallEncryptionConfiguration
    class UpdateFirewallEncryptionConfiguration
      def self.parse(http_resp)
        data = Types::UpdateFirewallEncryptionConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.update_token = map['UpdateToken']
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFirewallPolicy
    class UpdateFirewallPolicy
      def self.parse(http_resp)
        data = Types::UpdateFirewallPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall_policy_response = (FirewallPolicyResponse.parse(map['FirewallPolicyResponse']) unless map['FirewallPolicyResponse'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFirewallPolicyChangeProtection
    class UpdateFirewallPolicyChangeProtection
      def self.parse(http_resp)
        data = Types::UpdateFirewallPolicyChangeProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.firewall_policy_change_protection = map['FirewallPolicyChangeProtection']
        data
      end
    end

    # Operation Parser for UpdateLoggingConfiguration
    class UpdateLoggingConfiguration
      def self.parse(http_resp)
        data = Types::UpdateLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.logging_configuration = (LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    # Error Parser for LogDestinationPermissionException
    class LogDestinationPermissionException
      def self.parse(http_resp)
        data = Types::LogDestinationPermissionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateRuleGroup
    class UpdateRuleGroup
      def self.parse(http_resp)
        data = Types::UpdateRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.rule_group_response = (RuleGroupResponse.parse(map['RuleGroupResponse']) unless map['RuleGroupResponse'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSubnetChangeProtection
    class UpdateSubnetChangeProtection
      def self.parse(http_resp)
        data = Types::UpdateSubnetChangeProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_token = map['UpdateToken']
        data.firewall_arn = map['FirewallArn']
        data.firewall_name = map['FirewallName']
        data.subnet_change_protection = map['SubnetChangeProtection']
        data
      end
    end
  end
end
