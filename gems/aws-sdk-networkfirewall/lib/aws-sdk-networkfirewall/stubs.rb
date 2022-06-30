# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkFirewall
  module Stubs

    # Operation Stubber for AssociateFirewallPolicy
    class AssociateFirewallPolicy
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          firewall_policy_arn: 'firewall_policy_arn',
          update_token: 'update_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['FirewallPolicyArn'] = stub[:firewall_policy_arn] unless stub[:firewall_policy_arn].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSubnets
    class AssociateSubnets
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          subnet_mappings: Stubs::SubnetMappings.default(visited),
          update_token: 'update_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['SubnetMappings'] = Stubs::SubnetMappings.stub(stub[:subnet_mappings]) unless stub[:subnet_mappings].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubnetMappings
    class SubnetMappings
      def self.default(visited=[])
        return nil if visited.include?('SubnetMappings')
        visited = visited + ['SubnetMappings']
        [
          Stubs::SubnetMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubnetMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubnetMapping
    class SubnetMapping
      def self.default(visited=[])
        return nil if visited.include?('SubnetMapping')
        visited = visited + ['SubnetMapping']
        {
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubnetMapping.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data
      end
    end

    # Operation Stubber for CreateFirewall
    class CreateFirewall
      def self.default(visited=[])
        {
          firewall: Stubs::Firewall.default(visited),
          firewall_status: Stubs::FirewallStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Firewall'] = Stubs::Firewall.stub(stub[:firewall]) unless stub[:firewall].nil?
        data['FirewallStatus'] = Stubs::FirewallStatus.stub(stub[:firewall_status]) unless stub[:firewall_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallStatus
    class FirewallStatus
      def self.default(visited=[])
        return nil if visited.include?('FirewallStatus')
        visited = visited + ['FirewallStatus']
        {
          status: 'status',
          configuration_sync_state_summary: 'configuration_sync_state_summary',
          sync_states: Stubs::SyncStates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ConfigurationSyncStateSummary'] = stub[:configuration_sync_state_summary] unless stub[:configuration_sync_state_summary].nil?
        data['SyncStates'] = Stubs::SyncStates.stub(stub[:sync_states]) unless stub[:sync_states].nil?
        data
      end
    end

    # Map Stubber for SyncStates
    class SyncStates
      def self.default(visited=[])
        return nil if visited.include?('SyncStates')
        visited = visited + ['SyncStates']
        {
          test_key: Stubs::SyncState.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::SyncState.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for SyncState
    class SyncState
      def self.default(visited=[])
        return nil if visited.include?('SyncState')
        visited = visited + ['SyncState']
        {
          attachment: Stubs::Attachment.default(visited),
          config: Stubs::SyncStateConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SyncState.new
        data = {}
        data['Attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        data['Config'] = Stubs::SyncStateConfig.stub(stub[:config]) unless stub[:config].nil?
        data
      end
    end

    # Map Stubber for SyncStateConfig
    class SyncStateConfig
      def self.default(visited=[])
        return nil if visited.include?('SyncStateConfig')
        visited = visited + ['SyncStateConfig']
        {
          test_key: Stubs::PerObjectStatus.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PerObjectStatus.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PerObjectStatus
    class PerObjectStatus
      def self.default(visited=[])
        return nil if visited.include?('PerObjectStatus')
        visited = visited + ['PerObjectStatus']
        {
          sync_status: 'sync_status',
          update_token: 'update_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::PerObjectStatus.new
        data = {}
        data['SyncStatus'] = stub[:sync_status] unless stub[:sync_status].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data
      end
    end

    # Structure Stubber for Attachment
    class Attachment
      def self.default(visited=[])
        return nil if visited.include?('Attachment')
        visited = visited + ['Attachment']
        {
          subnet_id: 'subnet_id',
          endpoint_id: 'endpoint_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attachment.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for Firewall
    class Firewall
      def self.default(visited=[])
        return nil if visited.include?('Firewall')
        visited = visited + ['Firewall']
        {
          firewall_name: 'firewall_name',
          firewall_arn: 'firewall_arn',
          firewall_policy_arn: 'firewall_policy_arn',
          vpc_id: 'vpc_id',
          subnet_mappings: Stubs::SubnetMappings.default(visited),
          delete_protection: false,
          subnet_change_protection: false,
          firewall_policy_change_protection: false,
          description: 'description',
          firewall_id: 'firewall_id',
          tags: Stubs::TagList.default(visited),
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Firewall.new
        data = {}
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallPolicyArn'] = stub[:firewall_policy_arn] unless stub[:firewall_policy_arn].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetMappings'] = Stubs::SubnetMappings.stub(stub[:subnet_mappings]) unless stub[:subnet_mappings].nil?
        data['DeleteProtection'] = stub[:delete_protection] unless stub[:delete_protection].nil?
        data['SubnetChangeProtection'] = stub[:subnet_change_protection] unless stub[:subnet_change_protection].nil?
        data['FirewallPolicyChangeProtection'] = stub[:firewall_policy_change_protection] unless stub[:firewall_policy_change_protection].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FirewallId'] = stub[:firewall_id] unless stub[:firewall_id].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          key_id: 'key_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateFirewallPolicy
    class CreateFirewallPolicy
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall_policy_response: Stubs::FirewallPolicyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['FirewallPolicyResponse'] = Stubs::FirewallPolicyResponse.stub(stub[:firewall_policy_response]) unless stub[:firewall_policy_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallPolicyResponse
    class FirewallPolicyResponse
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyResponse')
        visited = visited + ['FirewallPolicyResponse']
        {
          firewall_policy_name: 'firewall_policy_name',
          firewall_policy_arn: 'firewall_policy_arn',
          firewall_policy_id: 'firewall_policy_id',
          description: 'description',
          firewall_policy_status: 'firewall_policy_status',
          tags: Stubs::TagList.default(visited),
          consumed_stateless_rule_capacity: 1,
          consumed_stateful_rule_capacity: 1,
          number_of_associations: 1,
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyResponse.new
        data = {}
        data['FirewallPolicyName'] = stub[:firewall_policy_name] unless stub[:firewall_policy_name].nil?
        data['FirewallPolicyArn'] = stub[:firewall_policy_arn] unless stub[:firewall_policy_arn].nil?
        data['FirewallPolicyId'] = stub[:firewall_policy_id] unless stub[:firewall_policy_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FirewallPolicyStatus'] = stub[:firewall_policy_status] unless stub[:firewall_policy_status].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ConsumedStatelessRuleCapacity'] = stub[:consumed_stateless_rule_capacity] unless stub[:consumed_stateless_rule_capacity].nil?
        data['ConsumedStatefulRuleCapacity'] = stub[:consumed_stateful_rule_capacity] unless stub[:consumed_stateful_rule_capacity].nil?
        data['NumberOfAssociations'] = stub[:number_of_associations] unless stub[:number_of_associations].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for CreateRuleGroup
    class CreateRuleGroup
      def self.default(visited=[])
        {
          update_token: 'update_token',
          rule_group_response: Stubs::RuleGroupResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['RuleGroupResponse'] = Stubs::RuleGroupResponse.stub(stub[:rule_group_response]) unless stub[:rule_group_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RuleGroupResponse
    class RuleGroupResponse
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupResponse')
        visited = visited + ['RuleGroupResponse']
        {
          rule_group_arn: 'rule_group_arn',
          rule_group_name: 'rule_group_name',
          rule_group_id: 'rule_group_id',
          description: 'description',
          type: 'type',
          capacity: 1,
          rule_group_status: 'rule_group_status',
          tags: Stubs::TagList.default(visited),
          consumed_capacity: 1,
          number_of_associations: 1,
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
          source_metadata: Stubs::SourceMetadata.default(visited),
          sns_topic: 'sns_topic',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupResponse.new
        data = {}
        data['RuleGroupArn'] = stub[:rule_group_arn] unless stub[:rule_group_arn].nil?
        data['RuleGroupName'] = stub[:rule_group_name] unless stub[:rule_group_name].nil?
        data['RuleGroupId'] = stub[:rule_group_id] unless stub[:rule_group_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['RuleGroupStatus'] = stub[:rule_group_status] unless stub[:rule_group_status].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ConsumedCapacity'] = stub[:consumed_capacity] unless stub[:consumed_capacity].nil?
        data['NumberOfAssociations'] = stub[:number_of_associations] unless stub[:number_of_associations].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['SourceMetadata'] = Stubs::SourceMetadata.stub(stub[:source_metadata]) unless stub[:source_metadata].nil?
        data['SnsTopic'] = stub[:sns_topic] unless stub[:sns_topic].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Structure Stubber for SourceMetadata
    class SourceMetadata
      def self.default(visited=[])
        return nil if visited.include?('SourceMetadata')
        visited = visited + ['SourceMetadata']
        {
          source_arn: 'source_arn',
          source_update_token: 'source_update_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceMetadata.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['SourceUpdateToken'] = stub[:source_update_token] unless stub[:source_update_token].nil?
        data
      end
    end

    # Operation Stubber for DeleteFirewall
    class DeleteFirewall
      def self.default(visited=[])
        {
          firewall: Stubs::Firewall.default(visited),
          firewall_status: Stubs::FirewallStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Firewall'] = Stubs::Firewall.stub(stub[:firewall]) unless stub[:firewall].nil?
        data['FirewallStatus'] = Stubs::FirewallStatus.stub(stub[:firewall_status]) unless stub[:firewall_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFirewallPolicy
    class DeleteFirewallPolicy
      def self.default(visited=[])
        {
          firewall_policy_response: Stubs::FirewallPolicyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallPolicyResponse'] = Stubs::FirewallPolicyResponse.stub(stub[:firewall_policy_response]) unless stub[:firewall_policy_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRuleGroup
    class DeleteRuleGroup
      def self.default(visited=[])
        {
          rule_group_response: Stubs::RuleGroupResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroupResponse'] = Stubs::RuleGroupResponse.stub(stub[:rule_group_response]) unless stub[:rule_group_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFirewall
    class DescribeFirewall
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall: Stubs::Firewall.default(visited),
          firewall_status: Stubs::FirewallStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['Firewall'] = Stubs::Firewall.stub(stub[:firewall]) unless stub[:firewall].nil?
        data['FirewallStatus'] = Stubs::FirewallStatus.stub(stub[:firewall_status]) unless stub[:firewall_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFirewallPolicy
    class DescribeFirewallPolicy
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall_policy_response: Stubs::FirewallPolicyResponse.default(visited),
          firewall_policy: Stubs::FirewallPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['FirewallPolicyResponse'] = Stubs::FirewallPolicyResponse.stub(stub[:firewall_policy_response]) unless stub[:firewall_policy_response].nil?
        data['FirewallPolicy'] = Stubs::FirewallPolicy.stub(stub[:firewall_policy]) unless stub[:firewall_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallPolicy
    class FirewallPolicy
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicy')
        visited = visited + ['FirewallPolicy']
        {
          stateless_rule_group_references: Stubs::StatelessRuleGroupReferences.default(visited),
          stateless_default_actions: Stubs::StatelessActions.default(visited),
          stateless_fragment_default_actions: Stubs::StatelessActions.default(visited),
          stateless_custom_actions: Stubs::CustomActions.default(visited),
          stateful_rule_group_references: Stubs::StatefulRuleGroupReferences.default(visited),
          stateful_default_actions: Stubs::StatefulActions.default(visited),
          stateful_engine_options: Stubs::StatefulEngineOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicy.new
        data = {}
        data['StatelessRuleGroupReferences'] = Stubs::StatelessRuleGroupReferences.stub(stub[:stateless_rule_group_references]) unless stub[:stateless_rule_group_references].nil?
        data['StatelessDefaultActions'] = Stubs::StatelessActions.stub(stub[:stateless_default_actions]) unless stub[:stateless_default_actions].nil?
        data['StatelessFragmentDefaultActions'] = Stubs::StatelessActions.stub(stub[:stateless_fragment_default_actions]) unless stub[:stateless_fragment_default_actions].nil?
        data['StatelessCustomActions'] = Stubs::CustomActions.stub(stub[:stateless_custom_actions]) unless stub[:stateless_custom_actions].nil?
        data['StatefulRuleGroupReferences'] = Stubs::StatefulRuleGroupReferences.stub(stub[:stateful_rule_group_references]) unless stub[:stateful_rule_group_references].nil?
        data['StatefulDefaultActions'] = Stubs::StatefulActions.stub(stub[:stateful_default_actions]) unless stub[:stateful_default_actions].nil?
        data['StatefulEngineOptions'] = Stubs::StatefulEngineOptions.stub(stub[:stateful_engine_options]) unless stub[:stateful_engine_options].nil?
        data
      end
    end

    # Structure Stubber for StatefulEngineOptions
    class StatefulEngineOptions
      def self.default(visited=[])
        return nil if visited.include?('StatefulEngineOptions')
        visited = visited + ['StatefulEngineOptions']
        {
          rule_order: 'rule_order',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulEngineOptions.new
        data = {}
        data['RuleOrder'] = stub[:rule_order] unless stub[:rule_order].nil?
        data
      end
    end

    # List Stubber for StatefulActions
    class StatefulActions
      def self.default(visited=[])
        return nil if visited.include?('StatefulActions')
        visited = visited + ['StatefulActions']
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

    # List Stubber for StatefulRuleGroupReferences
    class StatefulRuleGroupReferences
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleGroupReferences')
        visited = visited + ['StatefulRuleGroupReferences']
        [
          Stubs::StatefulRuleGroupReference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatefulRuleGroupReference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatefulRuleGroupReference
    class StatefulRuleGroupReference
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleGroupReference')
        visited = visited + ['StatefulRuleGroupReference']
        {
          resource_arn: 'resource_arn',
          priority: 1,
          override: Stubs::StatefulRuleGroupOverride.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulRuleGroupReference.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Override'] = Stubs::StatefulRuleGroupOverride.stub(stub[:override]) unless stub[:override].nil?
        data
      end
    end

    # Structure Stubber for StatefulRuleGroupOverride
    class StatefulRuleGroupOverride
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleGroupOverride')
        visited = visited + ['StatefulRuleGroupOverride']
        {
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulRuleGroupOverride.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # List Stubber for CustomActions
    class CustomActions
      def self.default(visited=[])
        return nil if visited.include?('CustomActions')
        visited = visited + ['CustomActions']
        [
          Stubs::CustomAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomAction
    class CustomAction
      def self.default(visited=[])
        return nil if visited.include?('CustomAction')
        visited = visited + ['CustomAction']
        {
          action_name: 'action_name',
          action_definition: Stubs::ActionDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomAction.new
        data = {}
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['ActionDefinition'] = Stubs::ActionDefinition.stub(stub[:action_definition]) unless stub[:action_definition].nil?
        data
      end
    end

    # Structure Stubber for ActionDefinition
    class ActionDefinition
      def self.default(visited=[])
        return nil if visited.include?('ActionDefinition')
        visited = visited + ['ActionDefinition']
        {
          publish_metric_action: Stubs::PublishMetricAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionDefinition.new
        data = {}
        data['PublishMetricAction'] = Stubs::PublishMetricAction.stub(stub[:publish_metric_action]) unless stub[:publish_metric_action].nil?
        data
      end
    end

    # Structure Stubber for PublishMetricAction
    class PublishMetricAction
      def self.default(visited=[])
        return nil if visited.include?('PublishMetricAction')
        visited = visited + ['PublishMetricAction']
        {
          dimensions: Stubs::Dimensions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PublishMetricAction.new
        data = {}
        data['Dimensions'] = Stubs::Dimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # List Stubber for Dimensions
    class Dimensions
      def self.default(visited=[])
        return nil if visited.include?('Dimensions')
        visited = visited + ['Dimensions']
        [
          Stubs::Dimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Dimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Dimension
    class Dimension
      def self.default(visited=[])
        return nil if visited.include?('Dimension')
        visited = visited + ['Dimension']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Dimension.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for StatelessActions
    class StatelessActions
      def self.default(visited=[])
        return nil if visited.include?('StatelessActions')
        visited = visited + ['StatelessActions']
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

    # List Stubber for StatelessRuleGroupReferences
    class StatelessRuleGroupReferences
      def self.default(visited=[])
        return nil if visited.include?('StatelessRuleGroupReferences')
        visited = visited + ['StatelessRuleGroupReferences']
        [
          Stubs::StatelessRuleGroupReference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatelessRuleGroupReference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatelessRuleGroupReference
    class StatelessRuleGroupReference
      def self.default(visited=[])
        return nil if visited.include?('StatelessRuleGroupReference')
        visited = visited + ['StatelessRuleGroupReference']
        {
          resource_arn: 'resource_arn',
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessRuleGroupReference.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Operation Stubber for DescribeLoggingConfiguration
    class DescribeLoggingConfiguration
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          log_destination_configs: Stubs::LogDestinationConfigs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['LogDestinationConfigs'] = Stubs::LogDestinationConfigs.stub(stub[:log_destination_configs]) unless stub[:log_destination_configs].nil?
        data
      end
    end

    # List Stubber for LogDestinationConfigs
    class LogDestinationConfigs
      def self.default(visited=[])
        return nil if visited.include?('LogDestinationConfigs')
        visited = visited + ['LogDestinationConfigs']
        [
          Stubs::LogDestinationConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogDestinationConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogDestinationConfig
    class LogDestinationConfig
      def self.default(visited=[])
        return nil if visited.include?('LogDestinationConfig')
        visited = visited + ['LogDestinationConfig']
        {
          log_type: 'log_type',
          log_destination_type: 'log_destination_type',
          log_destination: Stubs::LogDestinationMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogDestinationConfig.new
        data = {}
        data['LogType'] = stub[:log_type] unless stub[:log_type].nil?
        data['LogDestinationType'] = stub[:log_destination_type] unless stub[:log_destination_type].nil?
        data['LogDestination'] = Stubs::LogDestinationMap.stub(stub[:log_destination]) unless stub[:log_destination].nil?
        data
      end
    end

    # Map Stubber for LogDestinationMap
    class LogDestinationMap
      def self.default(visited=[])
        return nil if visited.include?('LogDestinationMap')
        visited = visited + ['LogDestinationMap']
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

    # Operation Stubber for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRuleGroup
    class DescribeRuleGroup
      def self.default(visited=[])
        {
          update_token: 'update_token',
          rule_group: Stubs::RuleGroup.default(visited),
          rule_group_response: Stubs::RuleGroupResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['RuleGroup'] = Stubs::RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        data['RuleGroupResponse'] = Stubs::RuleGroupResponse.stub(stub[:rule_group_response]) unless stub[:rule_group_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RuleGroup
    class RuleGroup
      def self.default(visited=[])
        return nil if visited.include?('RuleGroup')
        visited = visited + ['RuleGroup']
        {
          rule_variables: Stubs::RuleVariables.default(visited),
          rules_source: Stubs::RulesSource.default(visited),
          stateful_rule_options: Stubs::StatefulRuleOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroup.new
        data = {}
        data['RuleVariables'] = Stubs::RuleVariables.stub(stub[:rule_variables]) unless stub[:rule_variables].nil?
        data['RulesSource'] = Stubs::RulesSource.stub(stub[:rules_source]) unless stub[:rules_source].nil?
        data['StatefulRuleOptions'] = Stubs::StatefulRuleOptions.stub(stub[:stateful_rule_options]) unless stub[:stateful_rule_options].nil?
        data
      end
    end

    # Structure Stubber for StatefulRuleOptions
    class StatefulRuleOptions
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleOptions')
        visited = visited + ['StatefulRuleOptions']
        {
          rule_order: 'rule_order',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulRuleOptions.new
        data = {}
        data['RuleOrder'] = stub[:rule_order] unless stub[:rule_order].nil?
        data
      end
    end

    # Structure Stubber for RulesSource
    class RulesSource
      def self.default(visited=[])
        return nil if visited.include?('RulesSource')
        visited = visited + ['RulesSource']
        {
          rules_string: 'rules_string',
          rules_source_list: Stubs::RulesSourceList.default(visited),
          stateful_rules: Stubs::StatefulRules.default(visited),
          stateless_rules_and_custom_actions: Stubs::StatelessRulesAndCustomActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RulesSource.new
        data = {}
        data['RulesString'] = stub[:rules_string] unless stub[:rules_string].nil?
        data['RulesSourceList'] = Stubs::RulesSourceList.stub(stub[:rules_source_list]) unless stub[:rules_source_list].nil?
        data['StatefulRules'] = Stubs::StatefulRules.stub(stub[:stateful_rules]) unless stub[:stateful_rules].nil?
        data['StatelessRulesAndCustomActions'] = Stubs::StatelessRulesAndCustomActions.stub(stub[:stateless_rules_and_custom_actions]) unless stub[:stateless_rules_and_custom_actions].nil?
        data
      end
    end

    # Structure Stubber for StatelessRulesAndCustomActions
    class StatelessRulesAndCustomActions
      def self.default(visited=[])
        return nil if visited.include?('StatelessRulesAndCustomActions')
        visited = visited + ['StatelessRulesAndCustomActions']
        {
          stateless_rules: Stubs::StatelessRules.default(visited),
          custom_actions: Stubs::CustomActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessRulesAndCustomActions.new
        data = {}
        data['StatelessRules'] = Stubs::StatelessRules.stub(stub[:stateless_rules]) unless stub[:stateless_rules].nil?
        data['CustomActions'] = Stubs::CustomActions.stub(stub[:custom_actions]) unless stub[:custom_actions].nil?
        data
      end
    end

    # List Stubber for StatelessRules
    class StatelessRules
      def self.default(visited=[])
        return nil if visited.include?('StatelessRules')
        visited = visited + ['StatelessRules']
        [
          Stubs::StatelessRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatelessRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatelessRule
    class StatelessRule
      def self.default(visited=[])
        return nil if visited.include?('StatelessRule')
        visited = visited + ['StatelessRule']
        {
          rule_definition: Stubs::RuleDefinition.default(visited),
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessRule.new
        data = {}
        data['RuleDefinition'] = Stubs::RuleDefinition.stub(stub[:rule_definition]) unless stub[:rule_definition].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Structure Stubber for RuleDefinition
    class RuleDefinition
      def self.default(visited=[])
        return nil if visited.include?('RuleDefinition')
        visited = visited + ['RuleDefinition']
        {
          match_attributes: Stubs::MatchAttributes.default(visited),
          actions: Stubs::StatelessActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleDefinition.new
        data = {}
        data['MatchAttributes'] = Stubs::MatchAttributes.stub(stub[:match_attributes]) unless stub[:match_attributes].nil?
        data['Actions'] = Stubs::StatelessActions.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # Structure Stubber for MatchAttributes
    class MatchAttributes
      def self.default(visited=[])
        return nil if visited.include?('MatchAttributes')
        visited = visited + ['MatchAttributes']
        {
          sources: Stubs::Addresses.default(visited),
          destinations: Stubs::Addresses.default(visited),
          source_ports: Stubs::PortRanges.default(visited),
          destination_ports: Stubs::PortRanges.default(visited),
          protocols: Stubs::ProtocolNumbers.default(visited),
          tcp_flags: Stubs::TCPFlags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchAttributes.new
        data = {}
        data['Sources'] = Stubs::Addresses.stub(stub[:sources]) unless stub[:sources].nil?
        data['Destinations'] = Stubs::Addresses.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['SourcePorts'] = Stubs::PortRanges.stub(stub[:source_ports]) unless stub[:source_ports].nil?
        data['DestinationPorts'] = Stubs::PortRanges.stub(stub[:destination_ports]) unless stub[:destination_ports].nil?
        data['Protocols'] = Stubs::ProtocolNumbers.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['TCPFlags'] = Stubs::TCPFlags.stub(stub[:tcp_flags]) unless stub[:tcp_flags].nil?
        data
      end
    end

    # List Stubber for TCPFlags
    class TCPFlags
      def self.default(visited=[])
        return nil if visited.include?('TCPFlags')
        visited = visited + ['TCPFlags']
        [
          Stubs::TCPFlagField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TCPFlagField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TCPFlagField
    class TCPFlagField
      def self.default(visited=[])
        return nil if visited.include?('TCPFlagField')
        visited = visited + ['TCPFlagField']
        {
          flags: Stubs::Flags.default(visited),
          masks: Stubs::Flags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TCPFlagField.new
        data = {}
        data['Flags'] = Stubs::Flags.stub(stub[:flags]) unless stub[:flags].nil?
        data['Masks'] = Stubs::Flags.stub(stub[:masks]) unless stub[:masks].nil?
        data
      end
    end

    # List Stubber for Flags
    class Flags
      def self.default(visited=[])
        return nil if visited.include?('Flags')
        visited = visited + ['Flags']
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

    # List Stubber for ProtocolNumbers
    class ProtocolNumbers
      def self.default(visited=[])
        return nil if visited.include?('ProtocolNumbers')
        visited = visited + ['ProtocolNumbers']
        [
          1
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

    # List Stubber for PortRanges
    class PortRanges
      def self.default(visited=[])
        return nil if visited.include?('PortRanges')
        visited = visited + ['PortRanges']
        [
          Stubs::PortRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange
      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRange.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data
      end
    end

    # List Stubber for Addresses
    class Addresses
      def self.default(visited=[])
        return nil if visited.include?('Addresses')
        visited = visited + ['Addresses']
        [
          Stubs::Address.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Address.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Address
    class Address
      def self.default(visited=[])
        return nil if visited.include?('Address')
        visited = visited + ['Address']
        {
          address_definition: 'address_definition',
        }
      end

      def self.stub(stub)
        stub ||= Types::Address.new
        data = {}
        data['AddressDefinition'] = stub[:address_definition] unless stub[:address_definition].nil?
        data
      end
    end

    # List Stubber for StatefulRules
    class StatefulRules
      def self.default(visited=[])
        return nil if visited.include?('StatefulRules')
        visited = visited + ['StatefulRules']
        [
          Stubs::StatefulRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatefulRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatefulRule
    class StatefulRule
      def self.default(visited=[])
        return nil if visited.include?('StatefulRule')
        visited = visited + ['StatefulRule']
        {
          action: 'action',
          header: Stubs::Header.default(visited),
          rule_options: Stubs::RuleOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulRule.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Header'] = Stubs::Header.stub(stub[:header]) unless stub[:header].nil?
        data['RuleOptions'] = Stubs::RuleOptions.stub(stub[:rule_options]) unless stub[:rule_options].nil?
        data
      end
    end

    # List Stubber for RuleOptions
    class RuleOptions
      def self.default(visited=[])
        return nil if visited.include?('RuleOptions')
        visited = visited + ['RuleOptions']
        [
          Stubs::RuleOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RuleOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleOption
    class RuleOption
      def self.default(visited=[])
        return nil if visited.include?('RuleOption')
        visited = visited + ['RuleOption']
        {
          keyword: 'keyword',
          settings: Stubs::Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleOption.new
        data = {}
        data['Keyword'] = stub[:keyword] unless stub[:keyword].nil?
        data['Settings'] = Stubs::Settings.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # List Stubber for Settings
    class Settings
      def self.default(visited=[])
        return nil if visited.include?('Settings')
        visited = visited + ['Settings']
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

    # Structure Stubber for Header
    class Header
      def self.default(visited=[])
        return nil if visited.include?('Header')
        visited = visited + ['Header']
        {
          protocol: 'protocol',
          source: 'source',
          source_port: 'source_port',
          direction: 'direction',
          destination: 'destination',
          destination_port: 'destination_port',
        }
      end

      def self.stub(stub)
        stub ||= Types::Header.new
        data = {}
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['SourcePort'] = stub[:source_port] unless stub[:source_port].nil?
        data['Direction'] = stub[:direction] unless stub[:direction].nil?
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data['DestinationPort'] = stub[:destination_port] unless stub[:destination_port].nil?
        data
      end
    end

    # Structure Stubber for RulesSourceList
    class RulesSourceList
      def self.default(visited=[])
        return nil if visited.include?('RulesSourceList')
        visited = visited + ['RulesSourceList']
        {
          targets: Stubs::RuleTargets.default(visited),
          target_types: Stubs::TargetTypes.default(visited),
          generated_rules_type: 'generated_rules_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RulesSourceList.new
        data = {}
        data['Targets'] = Stubs::RuleTargets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TargetTypes'] = Stubs::TargetTypes.stub(stub[:target_types]) unless stub[:target_types].nil?
        data['GeneratedRulesType'] = stub[:generated_rules_type] unless stub[:generated_rules_type].nil?
        data
      end
    end

    # List Stubber for TargetTypes
    class TargetTypes
      def self.default(visited=[])
        return nil if visited.include?('TargetTypes')
        visited = visited + ['TargetTypes']
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

    # List Stubber for RuleTargets
    class RuleTargets
      def self.default(visited=[])
        return nil if visited.include?('RuleTargets')
        visited = visited + ['RuleTargets']
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

    # Structure Stubber for RuleVariables
    class RuleVariables
      def self.default(visited=[])
        return nil if visited.include?('RuleVariables')
        visited = visited + ['RuleVariables']
        {
          ip_sets: Stubs::IPSets.default(visited),
          port_sets: Stubs::PortSets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleVariables.new
        data = {}
        data['IPSets'] = Stubs::IPSets.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        data['PortSets'] = Stubs::PortSets.stub(stub[:port_sets]) unless stub[:port_sets].nil?
        data
      end
    end

    # Map Stubber for PortSets
    class PortSets
      def self.default(visited=[])
        return nil if visited.include?('PortSets')
        visited = visited + ['PortSets']
        {
          test_key: Stubs::PortSet.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PortSet.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PortSet
    class PortSet
      def self.default(visited=[])
        return nil if visited.include?('PortSet')
        visited = visited + ['PortSet']
        {
          definition: Stubs::VariableDefinitionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortSet.new
        data = {}
        data['Definition'] = Stubs::VariableDefinitionList.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # List Stubber for VariableDefinitionList
    class VariableDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('VariableDefinitionList')
        visited = visited + ['VariableDefinitionList']
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

    # Map Stubber for IPSets
    class IPSets
      def self.default(visited=[])
        return nil if visited.include?('IPSets')
        visited = visited + ['IPSets']
        {
          test_key: Stubs::IPSet.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::IPSet.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for IPSet
    class IPSet
      def self.default(visited=[])
        return nil if visited.include?('IPSet')
        visited = visited + ['IPSet']
        {
          definition: Stubs::VariableDefinitionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSet.new
        data = {}
        data['Definition'] = Stubs::VariableDefinitionList.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # Operation Stubber for DescribeRuleGroupMetadata
    class DescribeRuleGroupMetadata
      def self.default(visited=[])
        {
          rule_group_arn: 'rule_group_arn',
          rule_group_name: 'rule_group_name',
          description: 'description',
          type: 'type',
          capacity: 1,
          stateful_rule_options: Stubs::StatefulRuleOptions.default(visited),
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroupArn'] = stub[:rule_group_arn] unless stub[:rule_group_arn].nil?
        data['RuleGroupName'] = stub[:rule_group_name] unless stub[:rule_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['StatefulRuleOptions'] = Stubs::StatefulRuleOptions.stub(stub[:stateful_rule_options]) unless stub[:stateful_rule_options].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateSubnets
    class DisassociateSubnets
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          subnet_mappings: Stubs::SubnetMappings.default(visited),
          update_token: 'update_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['SubnetMappings'] = Stubs::SubnetMappings.stub(stub[:subnet_mappings]) unless stub[:subnet_mappings].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListFirewallPolicies
    class ListFirewallPolicies
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_policies: Stubs::FirewallPolicies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallPolicies'] = Stubs::FirewallPolicies.stub(stub[:firewall_policies]) unless stub[:firewall_policies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallPolicies
    class FirewallPolicies
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicies')
        visited = visited + ['FirewallPolicies']
        [
          Stubs::FirewallPolicyMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FirewallPolicyMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallPolicyMetadata
    class FirewallPolicyMetadata
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyMetadata')
        visited = visited + ['FirewallPolicyMetadata']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyMetadata.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListFirewalls
    class ListFirewalls
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewalls: Stubs::Firewalls.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Firewalls'] = Stubs::Firewalls.stub(stub[:firewalls]) unless stub[:firewalls].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Firewalls
    class Firewalls
      def self.default(visited=[])
        return nil if visited.include?('Firewalls')
        visited = visited + ['Firewalls']
        [
          Stubs::FirewallMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FirewallMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallMetadata
    class FirewallMetadata
      def self.default(visited=[])
        return nil if visited.include?('FirewallMetadata')
        visited = visited + ['FirewallMetadata']
        {
          firewall_name: 'firewall_name',
          firewall_arn: 'firewall_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallMetadata.new
        data = {}
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data
      end
    end

    # Operation Stubber for ListRuleGroups
    class ListRuleGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          rule_groups: Stubs::RuleGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RuleGroups'] = Stubs::RuleGroups.stub(stub[:rule_groups]) unless stub[:rule_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleGroups
    class RuleGroups
      def self.default(visited=[])
        return nil if visited.include?('RuleGroups')
        visited = visited + ['RuleGroups']
        [
          Stubs::RuleGroupMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RuleGroupMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupMetadata
    class RuleGroupMetadata
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupMetadata')
        visited = visited + ['RuleGroupMetadata']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupMetadata.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallDeleteProtection
    class UpdateFirewallDeleteProtection
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          delete_protection: false,
          update_token: 'update_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['DeleteProtection'] = stub[:delete_protection] unless stub[:delete_protection].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallDescription
    class UpdateFirewallDescription
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          description: 'description',
          update_token: 'update_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallEncryptionConfiguration
    class UpdateFirewallEncryptionConfiguration
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          update_token: 'update_token',
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallPolicy
    class UpdateFirewallPolicy
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall_policy_response: Stubs::FirewallPolicyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['FirewallPolicyResponse'] = Stubs::FirewallPolicyResponse.stub(stub[:firewall_policy_response]) unless stub[:firewall_policy_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallPolicyChangeProtection
    class UpdateFirewallPolicyChangeProtection
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          firewall_policy_change_protection: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['FirewallPolicyChangeProtection'] = stub[:firewall_policy_change_protection] unless stub[:firewall_policy_change_protection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLoggingConfiguration
    class UpdateLoggingConfiguration
      def self.default(visited=[])
        {
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuleGroup
    class UpdateRuleGroup
      def self.default(visited=[])
        {
          update_token: 'update_token',
          rule_group_response: Stubs::RuleGroupResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['RuleGroupResponse'] = Stubs::RuleGroupResponse.stub(stub[:rule_group_response]) unless stub[:rule_group_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSubnetChangeProtection
    class UpdateSubnetChangeProtection
      def self.default(visited=[])
        {
          update_token: 'update_token',
          firewall_arn: 'firewall_arn',
          firewall_name: 'firewall_name',
          subnet_change_protection: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateToken'] = stub[:update_token] unless stub[:update_token].nil?
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['SubnetChangeProtection'] = stub[:subnet_change_protection] unless stub[:subnet_change_protection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
