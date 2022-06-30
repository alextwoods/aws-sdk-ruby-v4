# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Stubs

    # Operation Stubber for CreateAnomalyMonitor
    class CreateAnomalyMonitor
      def self.default(visited=[])
        {
          monitor_arn: 'monitor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAnomalySubscription
    class CreateAnomalySubscription
      def self.default(visited=[])
        {
          subscription_arn: 'subscription_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubscriptionArn'] = stub[:subscription_arn] unless stub[:subscription_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCostCategoryDefinition
    class CreateCostCategoryDefinition
      def self.default(visited=[])
        {
          cost_category_arn: 'cost_category_arn',
          effective_start: 'effective_start',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostCategoryArn'] = stub[:cost_category_arn] unless stub[:cost_category_arn].nil?
        data['EffectiveStart'] = stub[:effective_start] unless stub[:effective_start].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAnomalyMonitor
    class DeleteAnomalyMonitor
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

    # Operation Stubber for DeleteAnomalySubscription
    class DeleteAnomalySubscription
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

    # Operation Stubber for DeleteCostCategoryDefinition
    class DeleteCostCategoryDefinition
      def self.default(visited=[])
        {
          cost_category_arn: 'cost_category_arn',
          effective_end: 'effective_end',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostCategoryArn'] = stub[:cost_category_arn] unless stub[:cost_category_arn].nil?
        data['EffectiveEnd'] = stub[:effective_end] unless stub[:effective_end].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCostCategoryDefinition
    class DescribeCostCategoryDefinition
      def self.default(visited=[])
        {
          cost_category: Stubs::CostCategory.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostCategory'] = Stubs::CostCategory.stub(stub[:cost_category]) unless stub[:cost_category].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CostCategory
    class CostCategory
      def self.default(visited=[])
        return nil if visited.include?('CostCategory')
        visited = visited + ['CostCategory']
        {
          cost_category_arn: 'cost_category_arn',
          effective_start: 'effective_start',
          effective_end: 'effective_end',
          name: 'name',
          rule_version: 'rule_version',
          rules: Stubs::CostCategoryRulesList.default(visited),
          split_charge_rules: Stubs::CostCategorySplitChargeRulesList.default(visited),
          processing_status: Stubs::CostCategoryProcessingStatusList.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategory.new
        data = {}
        data['CostCategoryArn'] = stub[:cost_category_arn] unless stub[:cost_category_arn].nil?
        data['EffectiveStart'] = stub[:effective_start] unless stub[:effective_start].nil?
        data['EffectiveEnd'] = stub[:effective_end] unless stub[:effective_end].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RuleVersion'] = stub[:rule_version] unless stub[:rule_version].nil?
        data['Rules'] = Stubs::CostCategoryRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        data['SplitChargeRules'] = Stubs::CostCategorySplitChargeRulesList.stub(stub[:split_charge_rules]) unless stub[:split_charge_rules].nil?
        data['ProcessingStatus'] = Stubs::CostCategoryProcessingStatusList.stub(stub[:processing_status]) unless stub[:processing_status].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for CostCategoryProcessingStatusList
    class CostCategoryProcessingStatusList
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryProcessingStatusList')
        visited = visited + ['CostCategoryProcessingStatusList']
        [
          Stubs::CostCategoryProcessingStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostCategoryProcessingStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostCategoryProcessingStatus
    class CostCategoryProcessingStatus
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryProcessingStatus')
        visited = visited + ['CostCategoryProcessingStatus']
        {
          component: 'component',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategoryProcessingStatus.new
        data = {}
        data['Component'] = stub[:component] unless stub[:component].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for CostCategorySplitChargeRulesList
    class CostCategorySplitChargeRulesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRulesList')
        visited = visited + ['CostCategorySplitChargeRulesList']
        [
          Stubs::CostCategorySplitChargeRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostCategorySplitChargeRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostCategorySplitChargeRule
    class CostCategorySplitChargeRule
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRule')
        visited = visited + ['CostCategorySplitChargeRule']
        {
          source: 'source',
          targets: Stubs::CostCategorySplitChargeRuleTargetsList.default(visited),
          member_method: 'member_method',
          parameters: Stubs::CostCategorySplitChargeRuleParametersList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategorySplitChargeRule.new
        data = {}
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Targets'] = Stubs::CostCategorySplitChargeRuleTargetsList.stub(stub[:targets]) unless stub[:targets].nil?
        data['Method'] = stub[:member_method] unless stub[:member_method].nil?
        data['Parameters'] = Stubs::CostCategorySplitChargeRuleParametersList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for CostCategorySplitChargeRuleParametersList
    class CostCategorySplitChargeRuleParametersList
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRuleParametersList')
        visited = visited + ['CostCategorySplitChargeRuleParametersList']
        [
          Stubs::CostCategorySplitChargeRuleParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostCategorySplitChargeRuleParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostCategorySplitChargeRuleParameter
    class CostCategorySplitChargeRuleParameter
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRuleParameter')
        visited = visited + ['CostCategorySplitChargeRuleParameter']
        {
          type: 'type',
          values: Stubs::CostCategorySplitChargeRuleParameterValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategorySplitChargeRuleParameter.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Values'] = Stubs::CostCategorySplitChargeRuleParameterValuesList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for CostCategorySplitChargeRuleParameterValuesList
    class CostCategorySplitChargeRuleParameterValuesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRuleParameterValuesList')
        visited = visited + ['CostCategorySplitChargeRuleParameterValuesList']
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

    # List Stubber for CostCategorySplitChargeRuleTargetsList
    class CostCategorySplitChargeRuleTargetsList
      def self.default(visited=[])
        return nil if visited.include?('CostCategorySplitChargeRuleTargetsList')
        visited = visited + ['CostCategorySplitChargeRuleTargetsList']
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

    # List Stubber for CostCategoryRulesList
    class CostCategoryRulesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryRulesList')
        visited = visited + ['CostCategoryRulesList']
        [
          Stubs::CostCategoryRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostCategoryRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostCategoryRule
    class CostCategoryRule
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryRule')
        visited = visited + ['CostCategoryRule']
        {
          value: 'value',
          rule: Stubs::Expression.default(visited),
          inherited_value: Stubs::CostCategoryInheritedValueDimension.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategoryRule.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Rule'] = Stubs::Expression.stub(stub[:rule]) unless stub[:rule].nil?
        data['InheritedValue'] = Stubs::CostCategoryInheritedValueDimension.stub(stub[:inherited_value]) unless stub[:inherited_value].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for CostCategoryInheritedValueDimension
    class CostCategoryInheritedValueDimension
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryInheritedValueDimension')
        visited = visited + ['CostCategoryInheritedValueDimension']
        {
          dimension_name: 'dimension_name',
          dimension_key: 'dimension_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategoryInheritedValueDimension.new
        data = {}
        data['DimensionName'] = stub[:dimension_name] unless stub[:dimension_name].nil?
        data['DimensionKey'] = stub[:dimension_key] unless stub[:dimension_key].nil?
        data
      end
    end

    # Structure Stubber for Expression
    class Expression
      def self.default(visited=[])
        return nil if visited.include?('Expression')
        visited = visited + ['Expression']
        {
          or: Stubs::Expressions.default(visited),
          and: Stubs::Expressions.default(visited),
          not: Stubs::Expression.default(visited),
          dimensions: Stubs::DimensionValues.default(visited),
          tags: Stubs::TagValues.default(visited),
          cost_categories: Stubs::CostCategoryValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Expression.new
        data = {}
        data['Or'] = Stubs::Expressions.stub(stub[:or]) unless stub[:or].nil?
        data['And'] = Stubs::Expressions.stub(stub[:and]) unless stub[:and].nil?
        data['Not'] = Stubs::Expression.stub(stub[:not]) unless stub[:not].nil?
        data['Dimensions'] = Stubs::DimensionValues.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Tags'] = Stubs::TagValues.stub(stub[:tags]) unless stub[:tags].nil?
        data['CostCategories'] = Stubs::CostCategoryValues.stub(stub[:cost_categories]) unless stub[:cost_categories].nil?
        data
      end
    end

    # Structure Stubber for CostCategoryValues
    class CostCategoryValues
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryValues')
        visited = visited + ['CostCategoryValues']
        {
          key: 'key',
          values: Stubs::Values.default(visited),
          match_options: Stubs::MatchOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategoryValues.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::Values.stub(stub[:values]) unless stub[:values].nil?
        data['MatchOptions'] = Stubs::MatchOptions.stub(stub[:match_options]) unless stub[:match_options].nil?
        data
      end
    end

    # List Stubber for MatchOptions
    class MatchOptions
      def self.default(visited=[])
        return nil if visited.include?('MatchOptions')
        visited = visited + ['MatchOptions']
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

    # List Stubber for Values
    class Values
      def self.default(visited=[])
        return nil if visited.include?('Values')
        visited = visited + ['Values']
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

    # Structure Stubber for TagValues
    class TagValues
      def self.default(visited=[])
        return nil if visited.include?('TagValues')
        visited = visited + ['TagValues']
        {
          key: 'key',
          values: Stubs::Values.default(visited),
          match_options: Stubs::MatchOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagValues.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::Values.stub(stub[:values]) unless stub[:values].nil?
        data['MatchOptions'] = Stubs::MatchOptions.stub(stub[:match_options]) unless stub[:match_options].nil?
        data
      end
    end

    # Structure Stubber for DimensionValues
    class DimensionValues
      def self.default(visited=[])
        return nil if visited.include?('DimensionValues')
        visited = visited + ['DimensionValues']
        {
          key: 'key',
          values: Stubs::Values.default(visited),
          match_options: Stubs::MatchOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionValues.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::Values.stub(stub[:values]) unless stub[:values].nil?
        data['MatchOptions'] = Stubs::MatchOptions.stub(stub[:match_options]) unless stub[:match_options].nil?
        data
      end
    end

    # List Stubber for Expressions
    class Expressions
      def self.default(visited=[])
        return nil if visited.include?('Expressions')
        visited = visited + ['Expressions']
        [
          Stubs::Expression.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Expression.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetAnomalies
    class GetAnomalies
      def self.default(visited=[])
        {
          anomalies: Stubs::Anomalies.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Anomalies'] = Stubs::Anomalies.stub(stub[:anomalies]) unless stub[:anomalies].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Anomalies
    class Anomalies
      def self.default(visited=[])
        return nil if visited.include?('Anomalies')
        visited = visited + ['Anomalies']
        [
          Stubs::Anomaly.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Anomaly.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Anomaly
    class Anomaly
      def self.default(visited=[])
        return nil if visited.include?('Anomaly')
        visited = visited + ['Anomaly']
        {
          anomaly_id: 'anomaly_id',
          anomaly_start_date: 'anomaly_start_date',
          anomaly_end_date: 'anomaly_end_date',
          dimension_value: 'dimension_value',
          root_causes: Stubs::RootCauses.default(visited),
          anomaly_score: Stubs::AnomalyScore.default(visited),
          impact: Stubs::Impact.default(visited),
          monitor_arn: 'monitor_arn',
          feedback: 'feedback',
        }
      end

      def self.stub(stub)
        stub ||= Types::Anomaly.new
        data = {}
        data['AnomalyId'] = stub[:anomaly_id] unless stub[:anomaly_id].nil?
        data['AnomalyStartDate'] = stub[:anomaly_start_date] unless stub[:anomaly_start_date].nil?
        data['AnomalyEndDate'] = stub[:anomaly_end_date] unless stub[:anomaly_end_date].nil?
        data['DimensionValue'] = stub[:dimension_value] unless stub[:dimension_value].nil?
        data['RootCauses'] = Stubs::RootCauses.stub(stub[:root_causes]) unless stub[:root_causes].nil?
        data['AnomalyScore'] = Stubs::AnomalyScore.stub(stub[:anomaly_score]) unless stub[:anomaly_score].nil?
        data['Impact'] = Stubs::Impact.stub(stub[:impact]) unless stub[:impact].nil?
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['Feedback'] = stub[:feedback] unless stub[:feedback].nil?
        data
      end
    end

    # Structure Stubber for Impact
    class Impact
      def self.default(visited=[])
        return nil if visited.include?('Impact')
        visited = visited + ['Impact']
        {
          max_impact: 1.0,
          total_impact: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Impact.new
        data = {}
        data['MaxImpact'] = Hearth::NumberHelper.serialize(stub[:max_impact])
        data['TotalImpact'] = Hearth::NumberHelper.serialize(stub[:total_impact])
        data
      end
    end

    # Structure Stubber for AnomalyScore
    class AnomalyScore
      def self.default(visited=[])
        return nil if visited.include?('AnomalyScore')
        visited = visited + ['AnomalyScore']
        {
          max_score: 1.0,
          current_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyScore.new
        data = {}
        data['MaxScore'] = Hearth::NumberHelper.serialize(stub[:max_score])
        data['CurrentScore'] = Hearth::NumberHelper.serialize(stub[:current_score])
        data
      end
    end

    # List Stubber for RootCauses
    class RootCauses
      def self.default(visited=[])
        return nil if visited.include?('RootCauses')
        visited = visited + ['RootCauses']
        [
          Stubs::RootCause.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RootCause.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RootCause
    class RootCause
      def self.default(visited=[])
        return nil if visited.include?('RootCause')
        visited = visited + ['RootCause']
        {
          service: 'service',
          region: 'region',
          linked_account: 'linked_account',
          usage_type: 'usage_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RootCause.new
        data = {}
        data['Service'] = stub[:service] unless stub[:service].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['LinkedAccount'] = stub[:linked_account] unless stub[:linked_account].nil?
        data['UsageType'] = stub[:usage_type] unless stub[:usage_type].nil?
        data
      end
    end

    # Operation Stubber for GetAnomalyMonitors
    class GetAnomalyMonitors
      def self.default(visited=[])
        {
          anomaly_monitors: Stubs::AnomalyMonitors.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AnomalyMonitors'] = Stubs::AnomalyMonitors.stub(stub[:anomaly_monitors]) unless stub[:anomaly_monitors].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AnomalyMonitors
    class AnomalyMonitors
      def self.default(visited=[])
        return nil if visited.include?('AnomalyMonitors')
        visited = visited + ['AnomalyMonitors']
        [
          Stubs::AnomalyMonitor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalyMonitor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalyMonitor
    class AnomalyMonitor
      def self.default(visited=[])
        return nil if visited.include?('AnomalyMonitor')
        visited = visited + ['AnomalyMonitor']
        {
          monitor_arn: 'monitor_arn',
          monitor_name: 'monitor_name',
          creation_date: 'creation_date',
          last_updated_date: 'last_updated_date',
          last_evaluated_date: 'last_evaluated_date',
          monitor_type: 'monitor_type',
          monitor_dimension: 'monitor_dimension',
          monitor_specification: Stubs::Expression.default(visited),
          dimensional_value_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyMonitor.new
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['MonitorName'] = stub[:monitor_name] unless stub[:monitor_name].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['LastUpdatedDate'] = stub[:last_updated_date] unless stub[:last_updated_date].nil?
        data['LastEvaluatedDate'] = stub[:last_evaluated_date] unless stub[:last_evaluated_date].nil?
        data['MonitorType'] = stub[:monitor_type] unless stub[:monitor_type].nil?
        data['MonitorDimension'] = stub[:monitor_dimension] unless stub[:monitor_dimension].nil?
        data['MonitorSpecification'] = Stubs::Expression.stub(stub[:monitor_specification]) unless stub[:monitor_specification].nil?
        data['DimensionalValueCount'] = stub[:dimensional_value_count] unless stub[:dimensional_value_count].nil?
        data
      end
    end

    # Operation Stubber for GetAnomalySubscriptions
    class GetAnomalySubscriptions
      def self.default(visited=[])
        {
          anomaly_subscriptions: Stubs::AnomalySubscriptions.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AnomalySubscriptions'] = Stubs::AnomalySubscriptions.stub(stub[:anomaly_subscriptions]) unless stub[:anomaly_subscriptions].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AnomalySubscriptions
    class AnomalySubscriptions
      def self.default(visited=[])
        return nil if visited.include?('AnomalySubscriptions')
        visited = visited + ['AnomalySubscriptions']
        [
          Stubs::AnomalySubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalySubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalySubscription
    class AnomalySubscription
      def self.default(visited=[])
        return nil if visited.include?('AnomalySubscription')
        visited = visited + ['AnomalySubscription']
        {
          subscription_arn: 'subscription_arn',
          account_id: 'account_id',
          monitor_arn_list: Stubs::MonitorArnList.default(visited),
          subscribers: Stubs::Subscribers.default(visited),
          threshold: 1.0,
          frequency: 'frequency',
          subscription_name: 'subscription_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalySubscription.new
        data = {}
        data['SubscriptionArn'] = stub[:subscription_arn] unless stub[:subscription_arn].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['MonitorArnList'] = Stubs::MonitorArnList.stub(stub[:monitor_arn_list]) unless stub[:monitor_arn_list].nil?
        data['Subscribers'] = Stubs::Subscribers.stub(stub[:subscribers]) unless stub[:subscribers].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data['Frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['SubscriptionName'] = stub[:subscription_name] unless stub[:subscription_name].nil?
        data
      end
    end

    # List Stubber for Subscribers
    class Subscribers
      def self.default(visited=[])
        return nil if visited.include?('Subscribers')
        visited = visited + ['Subscribers']
        [
          Stubs::Subscriber.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Subscriber.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subscriber
    class Subscriber
      def self.default(visited=[])
        return nil if visited.include?('Subscriber')
        visited = visited + ['Subscriber']
        {
          address: 'address',
          type: 'type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscriber.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for MonitorArnList
    class MonitorArnList
      def self.default(visited=[])
        return nil if visited.include?('MonitorArnList')
        visited = visited + ['MonitorArnList']
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

    # Operation Stubber for GetCostAndUsage
    class GetCostAndUsage
      def self.default(visited=[])
        {
          next_page_token: 'next_page_token',
          group_definitions: Stubs::GroupDefinitions.default(visited),
          results_by_time: Stubs::ResultsByTime.default(visited),
          dimension_value_attributes: Stubs::DimensionValuesWithAttributesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['GroupDefinitions'] = Stubs::GroupDefinitions.stub(stub[:group_definitions]) unless stub[:group_definitions].nil?
        data['ResultsByTime'] = Stubs::ResultsByTime.stub(stub[:results_by_time]) unless stub[:results_by_time].nil?
        data['DimensionValueAttributes'] = Stubs::DimensionValuesWithAttributesList.stub(stub[:dimension_value_attributes]) unless stub[:dimension_value_attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DimensionValuesWithAttributesList
    class DimensionValuesWithAttributesList
      def self.default(visited=[])
        return nil if visited.include?('DimensionValuesWithAttributesList')
        visited = visited + ['DimensionValuesWithAttributesList']
        [
          Stubs::DimensionValuesWithAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DimensionValuesWithAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionValuesWithAttributes
    class DimensionValuesWithAttributes
      def self.default(visited=[])
        return nil if visited.include?('DimensionValuesWithAttributes')
        visited = visited + ['DimensionValuesWithAttributes']
        {
          value: 'value',
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionValuesWithAttributes.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
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

    # List Stubber for ResultsByTime
    class ResultsByTime
      def self.default(visited=[])
        return nil if visited.include?('ResultsByTime')
        visited = visited + ['ResultsByTime']
        [
          Stubs::ResultByTime.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultByTime.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultByTime
    class ResultByTime
      def self.default(visited=[])
        return nil if visited.include?('ResultByTime')
        visited = visited + ['ResultByTime']
        {
          time_period: Stubs::DateInterval.default(visited),
          total: Stubs::Metrics.default(visited),
          groups: Stubs::Groups.default(visited),
          estimated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultByTime.new
        data = {}
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['Total'] = Stubs::Metrics.stub(stub[:total]) unless stub[:total].nil?
        data['Groups'] = Stubs::Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data['Estimated'] = stub[:estimated] unless stub[:estimated].nil?
        data
      end
    end

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
        [
          Stubs::Group.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Group.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          keys: Stubs::Keys.default(visited),
          metrics: Stubs::Metrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['Keys'] = Stubs::Keys.stub(stub[:keys]) unless stub[:keys].nil?
        data['Metrics'] = Stubs::Metrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Map Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
        {
          test_key: Stubs::MetricValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MetricValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricValue
    class MetricValue
      def self.default(visited=[])
        return nil if visited.include?('MetricValue')
        visited = visited + ['MetricValue']
        {
          amount: 'amount',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricValue.new
        data = {}
        data['Amount'] = stub[:amount] unless stub[:amount].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for Keys
    class Keys
      def self.default(visited=[])
        return nil if visited.include?('Keys')
        visited = visited + ['Keys']
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

    # Structure Stubber for DateInterval
    class DateInterval
      def self.default(visited=[])
        return nil if visited.include?('DateInterval')
        visited = visited + ['DateInterval']
        {
          start: 'start',
          end: 'end',
        }
      end

      def self.stub(stub)
        stub ||= Types::DateInterval.new
        data = {}
        data['Start'] = stub[:start] unless stub[:start].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    # List Stubber for GroupDefinitions
    class GroupDefinitions
      def self.default(visited=[])
        return nil if visited.include?('GroupDefinitions')
        visited = visited + ['GroupDefinitions']
        [
          Stubs::GroupDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupDefinition
    class GroupDefinition
      def self.default(visited=[])
        return nil if visited.include?('GroupDefinition')
        visited = visited + ['GroupDefinition']
        {
          type: 'type',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupDefinition.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Operation Stubber for GetCostAndUsageWithResources
    class GetCostAndUsageWithResources
      def self.default(visited=[])
        {
          next_page_token: 'next_page_token',
          group_definitions: Stubs::GroupDefinitions.default(visited),
          results_by_time: Stubs::ResultsByTime.default(visited),
          dimension_value_attributes: Stubs::DimensionValuesWithAttributesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['GroupDefinitions'] = Stubs::GroupDefinitions.stub(stub[:group_definitions]) unless stub[:group_definitions].nil?
        data['ResultsByTime'] = Stubs::ResultsByTime.stub(stub[:results_by_time]) unless stub[:results_by_time].nil?
        data['DimensionValueAttributes'] = Stubs::DimensionValuesWithAttributesList.stub(stub[:dimension_value_attributes]) unless stub[:dimension_value_attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCostCategories
    class GetCostCategories
      def self.default(visited=[])
        {
          next_page_token: 'next_page_token',
          cost_category_names: Stubs::CostCategoryNamesList.default(visited),
          cost_category_values: Stubs::CostCategoryValuesList.default(visited),
          return_size: 1,
          total_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['CostCategoryNames'] = Stubs::CostCategoryNamesList.stub(stub[:cost_category_names]) unless stub[:cost_category_names].nil?
        data['CostCategoryValues'] = Stubs::CostCategoryValuesList.stub(stub[:cost_category_values]) unless stub[:cost_category_values].nil?
        data['ReturnSize'] = stub[:return_size] unless stub[:return_size].nil?
        data['TotalSize'] = stub[:total_size] unless stub[:total_size].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CostCategoryValuesList
    class CostCategoryValuesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryValuesList')
        visited = visited + ['CostCategoryValuesList']
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

    # List Stubber for CostCategoryNamesList
    class CostCategoryNamesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryNamesList')
        visited = visited + ['CostCategoryNamesList']
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

    # Operation Stubber for GetCostForecast
    class GetCostForecast
      def self.default(visited=[])
        {
          total: Stubs::MetricValue.default(visited),
          forecast_results_by_time: Stubs::ForecastResultsByTime.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Total'] = Stubs::MetricValue.stub(stub[:total]) unless stub[:total].nil?
        data['ForecastResultsByTime'] = Stubs::ForecastResultsByTime.stub(stub[:forecast_results_by_time]) unless stub[:forecast_results_by_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ForecastResultsByTime
    class ForecastResultsByTime
      def self.default(visited=[])
        return nil if visited.include?('ForecastResultsByTime')
        visited = visited + ['ForecastResultsByTime']
        [
          Stubs::ForecastResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ForecastResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ForecastResult
    class ForecastResult
      def self.default(visited=[])
        return nil if visited.include?('ForecastResult')
        visited = visited + ['ForecastResult']
        {
          time_period: Stubs::DateInterval.default(visited),
          mean_value: 'mean_value',
          prediction_interval_lower_bound: 'prediction_interval_lower_bound',
          prediction_interval_upper_bound: 'prediction_interval_upper_bound',
        }
      end

      def self.stub(stub)
        stub ||= Types::ForecastResult.new
        data = {}
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['MeanValue'] = stub[:mean_value] unless stub[:mean_value].nil?
        data['PredictionIntervalLowerBound'] = stub[:prediction_interval_lower_bound] unless stub[:prediction_interval_lower_bound].nil?
        data['PredictionIntervalUpperBound'] = stub[:prediction_interval_upper_bound] unless stub[:prediction_interval_upper_bound].nil?
        data
      end
    end

    # Operation Stubber for GetDimensionValues
    class GetDimensionValues
      def self.default(visited=[])
        {
          dimension_values: Stubs::DimensionValuesWithAttributesList.default(visited),
          return_size: 1,
          total_size: 1,
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DimensionValues'] = Stubs::DimensionValuesWithAttributesList.stub(stub[:dimension_values]) unless stub[:dimension_values].nil?
        data['ReturnSize'] = stub[:return_size] unless stub[:return_size].nil?
        data['TotalSize'] = stub[:total_size] unless stub[:total_size].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetReservationCoverage
    class GetReservationCoverage
      def self.default(visited=[])
        {
          coverages_by_time: Stubs::CoveragesByTime.default(visited),
          total: Stubs::Coverage.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CoveragesByTime'] = Stubs::CoveragesByTime.stub(stub[:coverages_by_time]) unless stub[:coverages_by_time].nil?
        data['Total'] = Stubs::Coverage.stub(stub[:total]) unless stub[:total].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Coverage
    class Coverage
      def self.default(visited=[])
        return nil if visited.include?('Coverage')
        visited = visited + ['Coverage']
        {
          coverage_hours: Stubs::CoverageHours.default(visited),
          coverage_normalized_units: Stubs::CoverageNormalizedUnits.default(visited),
          coverage_cost: Stubs::CoverageCost.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Coverage.new
        data = {}
        data['CoverageHours'] = Stubs::CoverageHours.stub(stub[:coverage_hours]) unless stub[:coverage_hours].nil?
        data['CoverageNormalizedUnits'] = Stubs::CoverageNormalizedUnits.stub(stub[:coverage_normalized_units]) unless stub[:coverage_normalized_units].nil?
        data['CoverageCost'] = Stubs::CoverageCost.stub(stub[:coverage_cost]) unless stub[:coverage_cost].nil?
        data
      end
    end

    # Structure Stubber for CoverageCost
    class CoverageCost
      def self.default(visited=[])
        return nil if visited.include?('CoverageCost')
        visited = visited + ['CoverageCost']
        {
          on_demand_cost: 'on_demand_cost',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoverageCost.new
        data = {}
        data['OnDemandCost'] = stub[:on_demand_cost] unless stub[:on_demand_cost].nil?
        data
      end
    end

    # Structure Stubber for CoverageNormalizedUnits
    class CoverageNormalizedUnits
      def self.default(visited=[])
        return nil if visited.include?('CoverageNormalizedUnits')
        visited = visited + ['CoverageNormalizedUnits']
        {
          on_demand_normalized_units: 'on_demand_normalized_units',
          reserved_normalized_units: 'reserved_normalized_units',
          total_running_normalized_units: 'total_running_normalized_units',
          coverage_normalized_units_percentage: 'coverage_normalized_units_percentage',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoverageNormalizedUnits.new
        data = {}
        data['OnDemandNormalizedUnits'] = stub[:on_demand_normalized_units] unless stub[:on_demand_normalized_units].nil?
        data['ReservedNormalizedUnits'] = stub[:reserved_normalized_units] unless stub[:reserved_normalized_units].nil?
        data['TotalRunningNormalizedUnits'] = stub[:total_running_normalized_units] unless stub[:total_running_normalized_units].nil?
        data['CoverageNormalizedUnitsPercentage'] = stub[:coverage_normalized_units_percentage] unless stub[:coverage_normalized_units_percentage].nil?
        data
      end
    end

    # Structure Stubber for CoverageHours
    class CoverageHours
      def self.default(visited=[])
        return nil if visited.include?('CoverageHours')
        visited = visited + ['CoverageHours']
        {
          on_demand_hours: 'on_demand_hours',
          reserved_hours: 'reserved_hours',
          total_running_hours: 'total_running_hours',
          coverage_hours_percentage: 'coverage_hours_percentage',
        }
      end

      def self.stub(stub)
        stub ||= Types::CoverageHours.new
        data = {}
        data['OnDemandHours'] = stub[:on_demand_hours] unless stub[:on_demand_hours].nil?
        data['ReservedHours'] = stub[:reserved_hours] unless stub[:reserved_hours].nil?
        data['TotalRunningHours'] = stub[:total_running_hours] unless stub[:total_running_hours].nil?
        data['CoverageHoursPercentage'] = stub[:coverage_hours_percentage] unless stub[:coverage_hours_percentage].nil?
        data
      end
    end

    # List Stubber for CoveragesByTime
    class CoveragesByTime
      def self.default(visited=[])
        return nil if visited.include?('CoveragesByTime')
        visited = visited + ['CoveragesByTime']
        [
          Stubs::CoverageByTime.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CoverageByTime.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CoverageByTime
    class CoverageByTime
      def self.default(visited=[])
        return nil if visited.include?('CoverageByTime')
        visited = visited + ['CoverageByTime']
        {
          time_period: Stubs::DateInterval.default(visited),
          groups: Stubs::ReservationCoverageGroups.default(visited),
          total: Stubs::Coverage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoverageByTime.new
        data = {}
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['Groups'] = Stubs::ReservationCoverageGroups.stub(stub[:groups]) unless stub[:groups].nil?
        data['Total'] = Stubs::Coverage.stub(stub[:total]) unless stub[:total].nil?
        data
      end
    end

    # List Stubber for ReservationCoverageGroups
    class ReservationCoverageGroups
      def self.default(visited=[])
        return nil if visited.include?('ReservationCoverageGroups')
        visited = visited + ['ReservationCoverageGroups']
        [
          Stubs::ReservationCoverageGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservationCoverageGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservationCoverageGroup
    class ReservationCoverageGroup
      def self.default(visited=[])
        return nil if visited.include?('ReservationCoverageGroup')
        visited = visited + ['ReservationCoverageGroup']
        {
          attributes: Stubs::Attributes.default(visited),
          coverage: Stubs::Coverage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationCoverageGroup.new
        data = {}
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Coverage'] = Stubs::Coverage.stub(stub[:coverage]) unless stub[:coverage].nil?
        data
      end
    end

    # Operation Stubber for GetReservationPurchaseRecommendation
    class GetReservationPurchaseRecommendation
      def self.default(visited=[])
        {
          metadata: Stubs::ReservationPurchaseRecommendationMetadata.default(visited),
          recommendations: Stubs::ReservationPurchaseRecommendations.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Metadata'] = Stubs::ReservationPurchaseRecommendationMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['Recommendations'] = Stubs::ReservationPurchaseRecommendations.stub(stub[:recommendations]) unless stub[:recommendations].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReservationPurchaseRecommendations
    class ReservationPurchaseRecommendations
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendations')
        visited = visited + ['ReservationPurchaseRecommendations']
        [
          Stubs::ReservationPurchaseRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservationPurchaseRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservationPurchaseRecommendation
    class ReservationPurchaseRecommendation
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendation')
        visited = visited + ['ReservationPurchaseRecommendation']
        {
          account_scope: 'account_scope',
          lookback_period_in_days: 'lookback_period_in_days',
          term_in_years: 'term_in_years',
          payment_option: 'payment_option',
          service_specification: Stubs::ServiceSpecification.default(visited),
          recommendation_details: Stubs::ReservationPurchaseRecommendationDetails.default(visited),
          recommendation_summary: Stubs::ReservationPurchaseRecommendationSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationPurchaseRecommendation.new
        data = {}
        data['AccountScope'] = stub[:account_scope] unless stub[:account_scope].nil?
        data['LookbackPeriodInDays'] = stub[:lookback_period_in_days] unless stub[:lookback_period_in_days].nil?
        data['TermInYears'] = stub[:term_in_years] unless stub[:term_in_years].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['ServiceSpecification'] = Stubs::ServiceSpecification.stub(stub[:service_specification]) unless stub[:service_specification].nil?
        data['RecommendationDetails'] = Stubs::ReservationPurchaseRecommendationDetails.stub(stub[:recommendation_details]) unless stub[:recommendation_details].nil?
        data['RecommendationSummary'] = Stubs::ReservationPurchaseRecommendationSummary.stub(stub[:recommendation_summary]) unless stub[:recommendation_summary].nil?
        data
      end
    end

    # Structure Stubber for ReservationPurchaseRecommendationSummary
    class ReservationPurchaseRecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendationSummary')
        visited = visited + ['ReservationPurchaseRecommendationSummary']
        {
          total_estimated_monthly_savings_amount: 'total_estimated_monthly_savings_amount',
          total_estimated_monthly_savings_percentage: 'total_estimated_monthly_savings_percentage',
          currency_code: 'currency_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationPurchaseRecommendationSummary.new
        data = {}
        data['TotalEstimatedMonthlySavingsAmount'] = stub[:total_estimated_monthly_savings_amount] unless stub[:total_estimated_monthly_savings_amount].nil?
        data['TotalEstimatedMonthlySavingsPercentage'] = stub[:total_estimated_monthly_savings_percentage] unless stub[:total_estimated_monthly_savings_percentage].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data
      end
    end

    # List Stubber for ReservationPurchaseRecommendationDetails
    class ReservationPurchaseRecommendationDetails
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendationDetails')
        visited = visited + ['ReservationPurchaseRecommendationDetails']
        [
          Stubs::ReservationPurchaseRecommendationDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservationPurchaseRecommendationDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservationPurchaseRecommendationDetail
    class ReservationPurchaseRecommendationDetail
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendationDetail')
        visited = visited + ['ReservationPurchaseRecommendationDetail']
        {
          account_id: 'account_id',
          instance_details: Stubs::InstanceDetails.default(visited),
          recommended_number_of_instances_to_purchase: 'recommended_number_of_instances_to_purchase',
          recommended_normalized_units_to_purchase: 'recommended_normalized_units_to_purchase',
          minimum_number_of_instances_used_per_hour: 'minimum_number_of_instances_used_per_hour',
          minimum_normalized_units_used_per_hour: 'minimum_normalized_units_used_per_hour',
          maximum_number_of_instances_used_per_hour: 'maximum_number_of_instances_used_per_hour',
          maximum_normalized_units_used_per_hour: 'maximum_normalized_units_used_per_hour',
          average_number_of_instances_used_per_hour: 'average_number_of_instances_used_per_hour',
          average_normalized_units_used_per_hour: 'average_normalized_units_used_per_hour',
          average_utilization: 'average_utilization',
          estimated_break_even_in_months: 'estimated_break_even_in_months',
          currency_code: 'currency_code',
          estimated_monthly_savings_amount: 'estimated_monthly_savings_amount',
          estimated_monthly_savings_percentage: 'estimated_monthly_savings_percentage',
          estimated_monthly_on_demand_cost: 'estimated_monthly_on_demand_cost',
          estimated_reservation_cost_for_lookback_period: 'estimated_reservation_cost_for_lookback_period',
          upfront_cost: 'upfront_cost',
          recurring_standard_monthly_cost: 'recurring_standard_monthly_cost',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationPurchaseRecommendationDetail.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['InstanceDetails'] = Stubs::InstanceDetails.stub(stub[:instance_details]) unless stub[:instance_details].nil?
        data['RecommendedNumberOfInstancesToPurchase'] = stub[:recommended_number_of_instances_to_purchase] unless stub[:recommended_number_of_instances_to_purchase].nil?
        data['RecommendedNormalizedUnitsToPurchase'] = stub[:recommended_normalized_units_to_purchase] unless stub[:recommended_normalized_units_to_purchase].nil?
        data['MinimumNumberOfInstancesUsedPerHour'] = stub[:minimum_number_of_instances_used_per_hour] unless stub[:minimum_number_of_instances_used_per_hour].nil?
        data['MinimumNormalizedUnitsUsedPerHour'] = stub[:minimum_normalized_units_used_per_hour] unless stub[:minimum_normalized_units_used_per_hour].nil?
        data['MaximumNumberOfInstancesUsedPerHour'] = stub[:maximum_number_of_instances_used_per_hour] unless stub[:maximum_number_of_instances_used_per_hour].nil?
        data['MaximumNormalizedUnitsUsedPerHour'] = stub[:maximum_normalized_units_used_per_hour] unless stub[:maximum_normalized_units_used_per_hour].nil?
        data['AverageNumberOfInstancesUsedPerHour'] = stub[:average_number_of_instances_used_per_hour] unless stub[:average_number_of_instances_used_per_hour].nil?
        data['AverageNormalizedUnitsUsedPerHour'] = stub[:average_normalized_units_used_per_hour] unless stub[:average_normalized_units_used_per_hour].nil?
        data['AverageUtilization'] = stub[:average_utilization] unless stub[:average_utilization].nil?
        data['EstimatedBreakEvenInMonths'] = stub[:estimated_break_even_in_months] unless stub[:estimated_break_even_in_months].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['EstimatedMonthlySavingsAmount'] = stub[:estimated_monthly_savings_amount] unless stub[:estimated_monthly_savings_amount].nil?
        data['EstimatedMonthlySavingsPercentage'] = stub[:estimated_monthly_savings_percentage] unless stub[:estimated_monthly_savings_percentage].nil?
        data['EstimatedMonthlyOnDemandCost'] = stub[:estimated_monthly_on_demand_cost] unless stub[:estimated_monthly_on_demand_cost].nil?
        data['EstimatedReservationCostForLookbackPeriod'] = stub[:estimated_reservation_cost_for_lookback_period] unless stub[:estimated_reservation_cost_for_lookback_period].nil?
        data['UpfrontCost'] = stub[:upfront_cost] unless stub[:upfront_cost].nil?
        data['RecurringStandardMonthlyCost'] = stub[:recurring_standard_monthly_cost] unless stub[:recurring_standard_monthly_cost].nil?
        data
      end
    end

    # Structure Stubber for InstanceDetails
    class InstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('InstanceDetails')
        visited = visited + ['InstanceDetails']
        {
          ec2_instance_details: Stubs::EC2InstanceDetails.default(visited),
          rds_instance_details: Stubs::RDSInstanceDetails.default(visited),
          redshift_instance_details: Stubs::RedshiftInstanceDetails.default(visited),
          elasti_cache_instance_details: Stubs::ElastiCacheInstanceDetails.default(visited),
          es_instance_details: Stubs::ESInstanceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceDetails.new
        data = {}
        data['EC2InstanceDetails'] = Stubs::EC2InstanceDetails.stub(stub[:ec2_instance_details]) unless stub[:ec2_instance_details].nil?
        data['RDSInstanceDetails'] = Stubs::RDSInstanceDetails.stub(stub[:rds_instance_details]) unless stub[:rds_instance_details].nil?
        data['RedshiftInstanceDetails'] = Stubs::RedshiftInstanceDetails.stub(stub[:redshift_instance_details]) unless stub[:redshift_instance_details].nil?
        data['ElastiCacheInstanceDetails'] = Stubs::ElastiCacheInstanceDetails.stub(stub[:elasti_cache_instance_details]) unless stub[:elasti_cache_instance_details].nil?
        data['ESInstanceDetails'] = Stubs::ESInstanceDetails.stub(stub[:es_instance_details]) unless stub[:es_instance_details].nil?
        data
      end
    end

    # Structure Stubber for ESInstanceDetails
    class ESInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('ESInstanceDetails')
        visited = visited + ['ESInstanceDetails']
        {
          instance_class: 'instance_class',
          instance_size: 'instance_size',
          region: 'region',
          current_generation: false,
          size_flex_eligible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ESInstanceDetails.new
        data = {}
        data['InstanceClass'] = stub[:instance_class] unless stub[:instance_class].nil?
        data['InstanceSize'] = stub[:instance_size] unless stub[:instance_size].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['CurrentGeneration'] = stub[:current_generation] unless stub[:current_generation].nil?
        data['SizeFlexEligible'] = stub[:size_flex_eligible] unless stub[:size_flex_eligible].nil?
        data
      end
    end

    # Structure Stubber for ElastiCacheInstanceDetails
    class ElastiCacheInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('ElastiCacheInstanceDetails')
        visited = visited + ['ElastiCacheInstanceDetails']
        {
          family: 'family',
          node_type: 'node_type',
          region: 'region',
          product_description: 'product_description',
          current_generation: false,
          size_flex_eligible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ElastiCacheInstanceDetails.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['ProductDescription'] = stub[:product_description] unless stub[:product_description].nil?
        data['CurrentGeneration'] = stub[:current_generation] unless stub[:current_generation].nil?
        data['SizeFlexEligible'] = stub[:size_flex_eligible] unless stub[:size_flex_eligible].nil?
        data
      end
    end

    # Structure Stubber for RedshiftInstanceDetails
    class RedshiftInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('RedshiftInstanceDetails')
        visited = visited + ['RedshiftInstanceDetails']
        {
          family: 'family',
          node_type: 'node_type',
          region: 'region',
          current_generation: false,
          size_flex_eligible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftInstanceDetails.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['CurrentGeneration'] = stub[:current_generation] unless stub[:current_generation].nil?
        data['SizeFlexEligible'] = stub[:size_flex_eligible] unless stub[:size_flex_eligible].nil?
        data
      end
    end

    # Structure Stubber for RDSInstanceDetails
    class RDSInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('RDSInstanceDetails')
        visited = visited + ['RDSInstanceDetails']
        {
          family: 'family',
          instance_type: 'instance_type',
          region: 'region',
          database_engine: 'database_engine',
          database_edition: 'database_edition',
          deployment_option: 'deployment_option',
          license_model: 'license_model',
          current_generation: false,
          size_flex_eligible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RDSInstanceDetails.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['DatabaseEngine'] = stub[:database_engine] unless stub[:database_engine].nil?
        data['DatabaseEdition'] = stub[:database_edition] unless stub[:database_edition].nil?
        data['DeploymentOption'] = stub[:deployment_option] unless stub[:deployment_option].nil?
        data['LicenseModel'] = stub[:license_model] unless stub[:license_model].nil?
        data['CurrentGeneration'] = stub[:current_generation] unless stub[:current_generation].nil?
        data['SizeFlexEligible'] = stub[:size_flex_eligible] unless stub[:size_flex_eligible].nil?
        data
      end
    end

    # Structure Stubber for EC2InstanceDetails
    class EC2InstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('EC2InstanceDetails')
        visited = visited + ['EC2InstanceDetails']
        {
          family: 'family',
          instance_type: 'instance_type',
          region: 'region',
          availability_zone: 'availability_zone',
          platform: 'platform',
          tenancy: 'tenancy',
          current_generation: false,
          size_flex_eligible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2InstanceDetails.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Tenancy'] = stub[:tenancy] unless stub[:tenancy].nil?
        data['CurrentGeneration'] = stub[:current_generation] unless stub[:current_generation].nil?
        data['SizeFlexEligible'] = stub[:size_flex_eligible] unless stub[:size_flex_eligible].nil?
        data
      end
    end

    # Structure Stubber for ServiceSpecification
    class ServiceSpecification
      def self.default(visited=[])
        return nil if visited.include?('ServiceSpecification')
        visited = visited + ['ServiceSpecification']
        {
          ec2_specification: Stubs::EC2Specification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSpecification.new
        data = {}
        data['EC2Specification'] = Stubs::EC2Specification.stub(stub[:ec2_specification]) unless stub[:ec2_specification].nil?
        data
      end
    end

    # Structure Stubber for EC2Specification
    class EC2Specification
      def self.default(visited=[])
        return nil if visited.include?('EC2Specification')
        visited = visited + ['EC2Specification']
        {
          offering_class: 'offering_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2Specification.new
        data = {}
        data['OfferingClass'] = stub[:offering_class] unless stub[:offering_class].nil?
        data
      end
    end

    # Structure Stubber for ReservationPurchaseRecommendationMetadata
    class ReservationPurchaseRecommendationMetadata
      def self.default(visited=[])
        return nil if visited.include?('ReservationPurchaseRecommendationMetadata')
        visited = visited + ['ReservationPurchaseRecommendationMetadata']
        {
          recommendation_id: 'recommendation_id',
          generation_timestamp: 'generation_timestamp',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationPurchaseRecommendationMetadata.new
        data = {}
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['GenerationTimestamp'] = stub[:generation_timestamp] unless stub[:generation_timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetReservationUtilization
    class GetReservationUtilization
      def self.default(visited=[])
        {
          utilizations_by_time: Stubs::UtilizationsByTime.default(visited),
          total: Stubs::ReservationAggregates.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UtilizationsByTime'] = Stubs::UtilizationsByTime.stub(stub[:utilizations_by_time]) unless stub[:utilizations_by_time].nil?
        data['Total'] = Stubs::ReservationAggregates.stub(stub[:total]) unless stub[:total].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReservationAggregates
    class ReservationAggregates
      def self.default(visited=[])
        return nil if visited.include?('ReservationAggregates')
        visited = visited + ['ReservationAggregates']
        {
          utilization_percentage: 'utilization_percentage',
          utilization_percentage_in_units: 'utilization_percentage_in_units',
          purchased_hours: 'purchased_hours',
          purchased_units: 'purchased_units',
          total_actual_hours: 'total_actual_hours',
          total_actual_units: 'total_actual_units',
          unused_hours: 'unused_hours',
          unused_units: 'unused_units',
          on_demand_cost_of_ri_hours_used: 'on_demand_cost_of_ri_hours_used',
          net_ri_savings: 'net_ri_savings',
          total_potential_ri_savings: 'total_potential_ri_savings',
          amortized_upfront_fee: 'amortized_upfront_fee',
          amortized_recurring_fee: 'amortized_recurring_fee',
          total_amortized_fee: 'total_amortized_fee',
          ri_cost_for_unused_hours: 'ri_cost_for_unused_hours',
          realized_savings: 'realized_savings',
          unrealized_savings: 'unrealized_savings',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationAggregates.new
        data = {}
        data['UtilizationPercentage'] = stub[:utilization_percentage] unless stub[:utilization_percentage].nil?
        data['UtilizationPercentageInUnits'] = stub[:utilization_percentage_in_units] unless stub[:utilization_percentage_in_units].nil?
        data['PurchasedHours'] = stub[:purchased_hours] unless stub[:purchased_hours].nil?
        data['PurchasedUnits'] = stub[:purchased_units] unless stub[:purchased_units].nil?
        data['TotalActualHours'] = stub[:total_actual_hours] unless stub[:total_actual_hours].nil?
        data['TotalActualUnits'] = stub[:total_actual_units] unless stub[:total_actual_units].nil?
        data['UnusedHours'] = stub[:unused_hours] unless stub[:unused_hours].nil?
        data['UnusedUnits'] = stub[:unused_units] unless stub[:unused_units].nil?
        data['OnDemandCostOfRIHoursUsed'] = stub[:on_demand_cost_of_ri_hours_used] unless stub[:on_demand_cost_of_ri_hours_used].nil?
        data['NetRISavings'] = stub[:net_ri_savings] unless stub[:net_ri_savings].nil?
        data['TotalPotentialRISavings'] = stub[:total_potential_ri_savings] unless stub[:total_potential_ri_savings].nil?
        data['AmortizedUpfrontFee'] = stub[:amortized_upfront_fee] unless stub[:amortized_upfront_fee].nil?
        data['AmortizedRecurringFee'] = stub[:amortized_recurring_fee] unless stub[:amortized_recurring_fee].nil?
        data['TotalAmortizedFee'] = stub[:total_amortized_fee] unless stub[:total_amortized_fee].nil?
        data['RICostForUnusedHours'] = stub[:ri_cost_for_unused_hours] unless stub[:ri_cost_for_unused_hours].nil?
        data['RealizedSavings'] = stub[:realized_savings] unless stub[:realized_savings].nil?
        data['UnrealizedSavings'] = stub[:unrealized_savings] unless stub[:unrealized_savings].nil?
        data
      end
    end

    # List Stubber for UtilizationsByTime
    class UtilizationsByTime
      def self.default(visited=[])
        return nil if visited.include?('UtilizationsByTime')
        visited = visited + ['UtilizationsByTime']
        [
          Stubs::UtilizationByTime.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UtilizationByTime.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UtilizationByTime
    class UtilizationByTime
      def self.default(visited=[])
        return nil if visited.include?('UtilizationByTime')
        visited = visited + ['UtilizationByTime']
        {
          time_period: Stubs::DateInterval.default(visited),
          groups: Stubs::ReservationUtilizationGroups.default(visited),
          total: Stubs::ReservationAggregates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UtilizationByTime.new
        data = {}
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['Groups'] = Stubs::ReservationUtilizationGroups.stub(stub[:groups]) unless stub[:groups].nil?
        data['Total'] = Stubs::ReservationAggregates.stub(stub[:total]) unless stub[:total].nil?
        data
      end
    end

    # List Stubber for ReservationUtilizationGroups
    class ReservationUtilizationGroups
      def self.default(visited=[])
        return nil if visited.include?('ReservationUtilizationGroups')
        visited = visited + ['ReservationUtilizationGroups']
        [
          Stubs::ReservationUtilizationGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservationUtilizationGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservationUtilizationGroup
    class ReservationUtilizationGroup
      def self.default(visited=[])
        return nil if visited.include?('ReservationUtilizationGroup')
        visited = visited + ['ReservationUtilizationGroup']
        {
          key: 'key',
          value: 'value',
          attributes: Stubs::Attributes.default(visited),
          utilization: Stubs::ReservationAggregates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservationUtilizationGroup.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Utilization'] = Stubs::ReservationAggregates.stub(stub[:utilization]) unless stub[:utilization].nil?
        data
      end
    end

    # Operation Stubber for GetRightsizingRecommendation
    class GetRightsizingRecommendation
      def self.default(visited=[])
        {
          metadata: Stubs::RightsizingRecommendationMetadata.default(visited),
          summary: Stubs::RightsizingRecommendationSummary.default(visited),
          rightsizing_recommendations: Stubs::RightsizingRecommendationList.default(visited),
          next_page_token: 'next_page_token',
          configuration: Stubs::RightsizingRecommendationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Metadata'] = Stubs::RightsizingRecommendationMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['Summary'] = Stubs::RightsizingRecommendationSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['RightsizingRecommendations'] = Stubs::RightsizingRecommendationList.stub(stub[:rightsizing_recommendations]) unless stub[:rightsizing_recommendations].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['Configuration'] = Stubs::RightsizingRecommendationConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RightsizingRecommendationConfiguration
    class RightsizingRecommendationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RightsizingRecommendationConfiguration')
        visited = visited + ['RightsizingRecommendationConfiguration']
        {
          recommendation_target: 'recommendation_target',
          benefits_considered: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RightsizingRecommendationConfiguration.new
        data = {}
        data['RecommendationTarget'] = stub[:recommendation_target] unless stub[:recommendation_target].nil?
        data['BenefitsConsidered'] = stub[:benefits_considered] unless stub[:benefits_considered].nil?
        data
      end
    end

    # List Stubber for RightsizingRecommendationList
    class RightsizingRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('RightsizingRecommendationList')
        visited = visited + ['RightsizingRecommendationList']
        [
          Stubs::RightsizingRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RightsizingRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RightsizingRecommendation
    class RightsizingRecommendation
      def self.default(visited=[])
        return nil if visited.include?('RightsizingRecommendation')
        visited = visited + ['RightsizingRecommendation']
        {
          account_id: 'account_id',
          current_instance: Stubs::CurrentInstance.default(visited),
          rightsizing_type: 'rightsizing_type',
          modify_recommendation_detail: Stubs::ModifyRecommendationDetail.default(visited),
          terminate_recommendation_detail: Stubs::TerminateRecommendationDetail.default(visited),
          finding_reason_codes: Stubs::FindingReasonCodes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RightsizingRecommendation.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CurrentInstance'] = Stubs::CurrentInstance.stub(stub[:current_instance]) unless stub[:current_instance].nil?
        data['RightsizingType'] = stub[:rightsizing_type] unless stub[:rightsizing_type].nil?
        data['ModifyRecommendationDetail'] = Stubs::ModifyRecommendationDetail.stub(stub[:modify_recommendation_detail]) unless stub[:modify_recommendation_detail].nil?
        data['TerminateRecommendationDetail'] = Stubs::TerminateRecommendationDetail.stub(stub[:terminate_recommendation_detail]) unless stub[:terminate_recommendation_detail].nil?
        data['FindingReasonCodes'] = Stubs::FindingReasonCodes.stub(stub[:finding_reason_codes]) unless stub[:finding_reason_codes].nil?
        data
      end
    end

    # List Stubber for FindingReasonCodes
    class FindingReasonCodes
      def self.default(visited=[])
        return nil if visited.include?('FindingReasonCodes')
        visited = visited + ['FindingReasonCodes']
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

    # Structure Stubber for TerminateRecommendationDetail
    class TerminateRecommendationDetail
      def self.default(visited=[])
        return nil if visited.include?('TerminateRecommendationDetail')
        visited = visited + ['TerminateRecommendationDetail']
        {
          estimated_monthly_savings: 'estimated_monthly_savings',
          currency_code: 'currency_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::TerminateRecommendationDetail.new
        data = {}
        data['EstimatedMonthlySavings'] = stub[:estimated_monthly_savings] unless stub[:estimated_monthly_savings].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data
      end
    end

    # Structure Stubber for ModifyRecommendationDetail
    class ModifyRecommendationDetail
      def self.default(visited=[])
        return nil if visited.include?('ModifyRecommendationDetail')
        visited = visited + ['ModifyRecommendationDetail']
        {
          target_instances: Stubs::TargetInstancesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModifyRecommendationDetail.new
        data = {}
        data['TargetInstances'] = Stubs::TargetInstancesList.stub(stub[:target_instances]) unless stub[:target_instances].nil?
        data
      end
    end

    # List Stubber for TargetInstancesList
    class TargetInstancesList
      def self.default(visited=[])
        return nil if visited.include?('TargetInstancesList')
        visited = visited + ['TargetInstancesList']
        [
          Stubs::TargetInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetInstance
    class TargetInstance
      def self.default(visited=[])
        return nil if visited.include?('TargetInstance')
        visited = visited + ['TargetInstance']
        {
          estimated_monthly_cost: 'estimated_monthly_cost',
          estimated_monthly_savings: 'estimated_monthly_savings',
          currency_code: 'currency_code',
          default_target_instance: false,
          resource_details: Stubs::ResourceDetails.default(visited),
          expected_resource_utilization: Stubs::ResourceUtilization.default(visited),
          platform_differences: Stubs::PlatformDifferences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetInstance.new
        data = {}
        data['EstimatedMonthlyCost'] = stub[:estimated_monthly_cost] unless stub[:estimated_monthly_cost].nil?
        data['EstimatedMonthlySavings'] = stub[:estimated_monthly_savings] unless stub[:estimated_monthly_savings].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['DefaultTargetInstance'] = stub[:default_target_instance] unless stub[:default_target_instance].nil?
        data['ResourceDetails'] = Stubs::ResourceDetails.stub(stub[:resource_details]) unless stub[:resource_details].nil?
        data['ExpectedResourceUtilization'] = Stubs::ResourceUtilization.stub(stub[:expected_resource_utilization]) unless stub[:expected_resource_utilization].nil?
        data['PlatformDifferences'] = Stubs::PlatformDifferences.stub(stub[:platform_differences]) unless stub[:platform_differences].nil?
        data
      end
    end

    # List Stubber for PlatformDifferences
    class PlatformDifferences
      def self.default(visited=[])
        return nil if visited.include?('PlatformDifferences')
        visited = visited + ['PlatformDifferences']
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

    # Structure Stubber for ResourceUtilization
    class ResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('ResourceUtilization')
        visited = visited + ['ResourceUtilization']
        {
          ec2_resource_utilization: Stubs::EC2ResourceUtilization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceUtilization.new
        data = {}
        data['EC2ResourceUtilization'] = Stubs::EC2ResourceUtilization.stub(stub[:ec2_resource_utilization]) unless stub[:ec2_resource_utilization].nil?
        data
      end
    end

    # Structure Stubber for EC2ResourceUtilization
    class EC2ResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('EC2ResourceUtilization')
        visited = visited + ['EC2ResourceUtilization']
        {
          max_cpu_utilization_percentage: 'max_cpu_utilization_percentage',
          max_memory_utilization_percentage: 'max_memory_utilization_percentage',
          max_storage_utilization_percentage: 'max_storage_utilization_percentage',
          ebs_resource_utilization: Stubs::EBSResourceUtilization.default(visited),
          disk_resource_utilization: Stubs::DiskResourceUtilization.default(visited),
          network_resource_utilization: Stubs::NetworkResourceUtilization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2ResourceUtilization.new
        data = {}
        data['MaxCpuUtilizationPercentage'] = stub[:max_cpu_utilization_percentage] unless stub[:max_cpu_utilization_percentage].nil?
        data['MaxMemoryUtilizationPercentage'] = stub[:max_memory_utilization_percentage] unless stub[:max_memory_utilization_percentage].nil?
        data['MaxStorageUtilizationPercentage'] = stub[:max_storage_utilization_percentage] unless stub[:max_storage_utilization_percentage].nil?
        data['EBSResourceUtilization'] = Stubs::EBSResourceUtilization.stub(stub[:ebs_resource_utilization]) unless stub[:ebs_resource_utilization].nil?
        data['DiskResourceUtilization'] = Stubs::DiskResourceUtilization.stub(stub[:disk_resource_utilization]) unless stub[:disk_resource_utilization].nil?
        data['NetworkResourceUtilization'] = Stubs::NetworkResourceUtilization.stub(stub[:network_resource_utilization]) unless stub[:network_resource_utilization].nil?
        data
      end
    end

    # Structure Stubber for NetworkResourceUtilization
    class NetworkResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('NetworkResourceUtilization')
        visited = visited + ['NetworkResourceUtilization']
        {
          network_in_bytes_per_second: 'network_in_bytes_per_second',
          network_out_bytes_per_second: 'network_out_bytes_per_second',
          network_packets_in_per_second: 'network_packets_in_per_second',
          network_packets_out_per_second: 'network_packets_out_per_second',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkResourceUtilization.new
        data = {}
        data['NetworkInBytesPerSecond'] = stub[:network_in_bytes_per_second] unless stub[:network_in_bytes_per_second].nil?
        data['NetworkOutBytesPerSecond'] = stub[:network_out_bytes_per_second] unless stub[:network_out_bytes_per_second].nil?
        data['NetworkPacketsInPerSecond'] = stub[:network_packets_in_per_second] unless stub[:network_packets_in_per_second].nil?
        data['NetworkPacketsOutPerSecond'] = stub[:network_packets_out_per_second] unless stub[:network_packets_out_per_second].nil?
        data
      end
    end

    # Structure Stubber for DiskResourceUtilization
    class DiskResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('DiskResourceUtilization')
        visited = visited + ['DiskResourceUtilization']
        {
          disk_read_ops_per_second: 'disk_read_ops_per_second',
          disk_write_ops_per_second: 'disk_write_ops_per_second',
          disk_read_bytes_per_second: 'disk_read_bytes_per_second',
          disk_write_bytes_per_second: 'disk_write_bytes_per_second',
        }
      end

      def self.stub(stub)
        stub ||= Types::DiskResourceUtilization.new
        data = {}
        data['DiskReadOpsPerSecond'] = stub[:disk_read_ops_per_second] unless stub[:disk_read_ops_per_second].nil?
        data['DiskWriteOpsPerSecond'] = stub[:disk_write_ops_per_second] unless stub[:disk_write_ops_per_second].nil?
        data['DiskReadBytesPerSecond'] = stub[:disk_read_bytes_per_second] unless stub[:disk_read_bytes_per_second].nil?
        data['DiskWriteBytesPerSecond'] = stub[:disk_write_bytes_per_second] unless stub[:disk_write_bytes_per_second].nil?
        data
      end
    end

    # Structure Stubber for EBSResourceUtilization
    class EBSResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('EBSResourceUtilization')
        visited = visited + ['EBSResourceUtilization']
        {
          ebs_read_ops_per_second: 'ebs_read_ops_per_second',
          ebs_write_ops_per_second: 'ebs_write_ops_per_second',
          ebs_read_bytes_per_second: 'ebs_read_bytes_per_second',
          ebs_write_bytes_per_second: 'ebs_write_bytes_per_second',
        }
      end

      def self.stub(stub)
        stub ||= Types::EBSResourceUtilization.new
        data = {}
        data['EbsReadOpsPerSecond'] = stub[:ebs_read_ops_per_second] unless stub[:ebs_read_ops_per_second].nil?
        data['EbsWriteOpsPerSecond'] = stub[:ebs_write_ops_per_second] unless stub[:ebs_write_ops_per_second].nil?
        data['EbsReadBytesPerSecond'] = stub[:ebs_read_bytes_per_second] unless stub[:ebs_read_bytes_per_second].nil?
        data['EbsWriteBytesPerSecond'] = stub[:ebs_write_bytes_per_second] unless stub[:ebs_write_bytes_per_second].nil?
        data
      end
    end

    # Structure Stubber for ResourceDetails
    class ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetails')
        visited = visited + ['ResourceDetails']
        {
          ec2_resource_details: Stubs::EC2ResourceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDetails.new
        data = {}
        data['EC2ResourceDetails'] = Stubs::EC2ResourceDetails.stub(stub[:ec2_resource_details]) unless stub[:ec2_resource_details].nil?
        data
      end
    end

    # Structure Stubber for EC2ResourceDetails
    class EC2ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('EC2ResourceDetails')
        visited = visited + ['EC2ResourceDetails']
        {
          hourly_on_demand_rate: 'hourly_on_demand_rate',
          instance_type: 'instance_type',
          platform: 'platform',
          region: 'region',
          sku: 'sku',
          memory: 'memory',
          network_performance: 'network_performance',
          storage: 'storage',
          vcpu: 'vcpu',
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2ResourceDetails.new
        data = {}
        data['HourlyOnDemandRate'] = stub[:hourly_on_demand_rate] unless stub[:hourly_on_demand_rate].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['Sku'] = stub[:sku] unless stub[:sku].nil?
        data['Memory'] = stub[:memory] unless stub[:memory].nil?
        data['NetworkPerformance'] = stub[:network_performance] unless stub[:network_performance].nil?
        data['Storage'] = stub[:storage] unless stub[:storage].nil?
        data['Vcpu'] = stub[:vcpu] unless stub[:vcpu].nil?
        data
      end
    end

    # Structure Stubber for CurrentInstance
    class CurrentInstance
      def self.default(visited=[])
        return nil if visited.include?('CurrentInstance')
        visited = visited + ['CurrentInstance']
        {
          resource_id: 'resource_id',
          instance_name: 'instance_name',
          tags: Stubs::TagValuesList.default(visited),
          resource_details: Stubs::ResourceDetails.default(visited),
          resource_utilization: Stubs::ResourceUtilization.default(visited),
          reservation_covered_hours_in_lookback_period: 'reservation_covered_hours_in_lookback_period',
          savings_plans_covered_hours_in_lookback_period: 'savings_plans_covered_hours_in_lookback_period',
          on_demand_hours_in_lookback_period: 'on_demand_hours_in_lookback_period',
          total_running_hours_in_lookback_period: 'total_running_hours_in_lookback_period',
          monthly_cost: 'monthly_cost',
          currency_code: 'currency_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::CurrentInstance.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['InstanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['Tags'] = Stubs::TagValuesList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ResourceDetails'] = Stubs::ResourceDetails.stub(stub[:resource_details]) unless stub[:resource_details].nil?
        data['ResourceUtilization'] = Stubs::ResourceUtilization.stub(stub[:resource_utilization]) unless stub[:resource_utilization].nil?
        data['ReservationCoveredHoursInLookbackPeriod'] = stub[:reservation_covered_hours_in_lookback_period] unless stub[:reservation_covered_hours_in_lookback_period].nil?
        data['SavingsPlansCoveredHoursInLookbackPeriod'] = stub[:savings_plans_covered_hours_in_lookback_period] unless stub[:savings_plans_covered_hours_in_lookback_period].nil?
        data['OnDemandHoursInLookbackPeriod'] = stub[:on_demand_hours_in_lookback_period] unless stub[:on_demand_hours_in_lookback_period].nil?
        data['TotalRunningHoursInLookbackPeriod'] = stub[:total_running_hours_in_lookback_period] unless stub[:total_running_hours_in_lookback_period].nil?
        data['MonthlyCost'] = stub[:monthly_cost] unless stub[:monthly_cost].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data
      end
    end

    # List Stubber for TagValuesList
    class TagValuesList
      def self.default(visited=[])
        return nil if visited.include?('TagValuesList')
        visited = visited + ['TagValuesList']
        [
          Stubs::TagValues.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagValues.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RightsizingRecommendationSummary
    class RightsizingRecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('RightsizingRecommendationSummary')
        visited = visited + ['RightsizingRecommendationSummary']
        {
          total_recommendation_count: 'total_recommendation_count',
          estimated_total_monthly_savings_amount: 'estimated_total_monthly_savings_amount',
          savings_currency_code: 'savings_currency_code',
          savings_percentage: 'savings_percentage',
        }
      end

      def self.stub(stub)
        stub ||= Types::RightsizingRecommendationSummary.new
        data = {}
        data['TotalRecommendationCount'] = stub[:total_recommendation_count] unless stub[:total_recommendation_count].nil?
        data['EstimatedTotalMonthlySavingsAmount'] = stub[:estimated_total_monthly_savings_amount] unless stub[:estimated_total_monthly_savings_amount].nil?
        data['SavingsCurrencyCode'] = stub[:savings_currency_code] unless stub[:savings_currency_code].nil?
        data['SavingsPercentage'] = stub[:savings_percentage] unless stub[:savings_percentage].nil?
        data
      end
    end

    # Structure Stubber for RightsizingRecommendationMetadata
    class RightsizingRecommendationMetadata
      def self.default(visited=[])
        return nil if visited.include?('RightsizingRecommendationMetadata')
        visited = visited + ['RightsizingRecommendationMetadata']
        {
          recommendation_id: 'recommendation_id',
          generation_timestamp: 'generation_timestamp',
          lookback_period_in_days: 'lookback_period_in_days',
          additional_metadata: 'additional_metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::RightsizingRecommendationMetadata.new
        data = {}
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['GenerationTimestamp'] = stub[:generation_timestamp] unless stub[:generation_timestamp].nil?
        data['LookbackPeriodInDays'] = stub[:lookback_period_in_days] unless stub[:lookback_period_in_days].nil?
        data['AdditionalMetadata'] = stub[:additional_metadata] unless stub[:additional_metadata].nil?
        data
      end
    end

    # Operation Stubber for GetSavingsPlansCoverage
    class GetSavingsPlansCoverage
      def self.default(visited=[])
        {
          savings_plans_coverages: Stubs::SavingsPlansCoverages.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SavingsPlansCoverages'] = Stubs::SavingsPlansCoverages.stub(stub[:savings_plans_coverages]) unless stub[:savings_plans_coverages].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SavingsPlansCoverages
    class SavingsPlansCoverages
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansCoverages')
        visited = visited + ['SavingsPlansCoverages']
        [
          Stubs::SavingsPlansCoverage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlansCoverage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlansCoverage
    class SavingsPlansCoverage
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansCoverage')
        visited = visited + ['SavingsPlansCoverage']
        {
          attributes: Stubs::Attributes.default(visited),
          coverage: Stubs::SavingsPlansCoverageData.default(visited),
          time_period: Stubs::DateInterval.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansCoverage.new
        data = {}
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Coverage'] = Stubs::SavingsPlansCoverageData.stub(stub[:coverage]) unless stub[:coverage].nil?
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansCoverageData
    class SavingsPlansCoverageData
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansCoverageData')
        visited = visited + ['SavingsPlansCoverageData']
        {
          spend_covered_by_savings_plans: 'spend_covered_by_savings_plans',
          on_demand_cost: 'on_demand_cost',
          total_cost: 'total_cost',
          coverage_percentage: 'coverage_percentage',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansCoverageData.new
        data = {}
        data['SpendCoveredBySavingsPlans'] = stub[:spend_covered_by_savings_plans] unless stub[:spend_covered_by_savings_plans].nil?
        data['OnDemandCost'] = stub[:on_demand_cost] unless stub[:on_demand_cost].nil?
        data['TotalCost'] = stub[:total_cost] unless stub[:total_cost].nil?
        data['CoveragePercentage'] = stub[:coverage_percentage] unless stub[:coverage_percentage].nil?
        data
      end
    end

    # Operation Stubber for GetSavingsPlansPurchaseRecommendation
    class GetSavingsPlansPurchaseRecommendation
      def self.default(visited=[])
        {
          metadata: Stubs::SavingsPlansPurchaseRecommendationMetadata.default(visited),
          savings_plans_purchase_recommendation: Stubs::SavingsPlansPurchaseRecommendation.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Metadata'] = Stubs::SavingsPlansPurchaseRecommendationMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['SavingsPlansPurchaseRecommendation'] = Stubs::SavingsPlansPurchaseRecommendation.stub(stub[:savings_plans_purchase_recommendation]) unless stub[:savings_plans_purchase_recommendation].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SavingsPlansPurchaseRecommendation
    class SavingsPlansPurchaseRecommendation
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansPurchaseRecommendation')
        visited = visited + ['SavingsPlansPurchaseRecommendation']
        {
          account_scope: 'account_scope',
          savings_plans_type: 'savings_plans_type',
          term_in_years: 'term_in_years',
          payment_option: 'payment_option',
          lookback_period_in_days: 'lookback_period_in_days',
          savings_plans_purchase_recommendation_details: Stubs::SavingsPlansPurchaseRecommendationDetailList.default(visited),
          savings_plans_purchase_recommendation_summary: Stubs::SavingsPlansPurchaseRecommendationSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansPurchaseRecommendation.new
        data = {}
        data['AccountScope'] = stub[:account_scope] unless stub[:account_scope].nil?
        data['SavingsPlansType'] = stub[:savings_plans_type] unless stub[:savings_plans_type].nil?
        data['TermInYears'] = stub[:term_in_years] unless stub[:term_in_years].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['LookbackPeriodInDays'] = stub[:lookback_period_in_days] unless stub[:lookback_period_in_days].nil?
        data['SavingsPlansPurchaseRecommendationDetails'] = Stubs::SavingsPlansPurchaseRecommendationDetailList.stub(stub[:savings_plans_purchase_recommendation_details]) unless stub[:savings_plans_purchase_recommendation_details].nil?
        data['SavingsPlansPurchaseRecommendationSummary'] = Stubs::SavingsPlansPurchaseRecommendationSummary.stub(stub[:savings_plans_purchase_recommendation_summary]) unless stub[:savings_plans_purchase_recommendation_summary].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansPurchaseRecommendationSummary
    class SavingsPlansPurchaseRecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansPurchaseRecommendationSummary')
        visited = visited + ['SavingsPlansPurchaseRecommendationSummary']
        {
          estimated_roi: 'estimated_roi',
          currency_code: 'currency_code',
          estimated_total_cost: 'estimated_total_cost',
          current_on_demand_spend: 'current_on_demand_spend',
          estimated_savings_amount: 'estimated_savings_amount',
          total_recommendation_count: 'total_recommendation_count',
          daily_commitment_to_purchase: 'daily_commitment_to_purchase',
          hourly_commitment_to_purchase: 'hourly_commitment_to_purchase',
          estimated_savings_percentage: 'estimated_savings_percentage',
          estimated_monthly_savings_amount: 'estimated_monthly_savings_amount',
          estimated_on_demand_cost_with_current_commitment: 'estimated_on_demand_cost_with_current_commitment',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansPurchaseRecommendationSummary.new
        data = {}
        data['EstimatedROI'] = stub[:estimated_roi] unless stub[:estimated_roi].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['EstimatedTotalCost'] = stub[:estimated_total_cost] unless stub[:estimated_total_cost].nil?
        data['CurrentOnDemandSpend'] = stub[:current_on_demand_spend] unless stub[:current_on_demand_spend].nil?
        data['EstimatedSavingsAmount'] = stub[:estimated_savings_amount] unless stub[:estimated_savings_amount].nil?
        data['TotalRecommendationCount'] = stub[:total_recommendation_count] unless stub[:total_recommendation_count].nil?
        data['DailyCommitmentToPurchase'] = stub[:daily_commitment_to_purchase] unless stub[:daily_commitment_to_purchase].nil?
        data['HourlyCommitmentToPurchase'] = stub[:hourly_commitment_to_purchase] unless stub[:hourly_commitment_to_purchase].nil?
        data['EstimatedSavingsPercentage'] = stub[:estimated_savings_percentage] unless stub[:estimated_savings_percentage].nil?
        data['EstimatedMonthlySavingsAmount'] = stub[:estimated_monthly_savings_amount] unless stub[:estimated_monthly_savings_amount].nil?
        data['EstimatedOnDemandCostWithCurrentCommitment'] = stub[:estimated_on_demand_cost_with_current_commitment] unless stub[:estimated_on_demand_cost_with_current_commitment].nil?
        data
      end
    end

    # List Stubber for SavingsPlansPurchaseRecommendationDetailList
    class SavingsPlansPurchaseRecommendationDetailList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansPurchaseRecommendationDetailList')
        visited = visited + ['SavingsPlansPurchaseRecommendationDetailList']
        [
          Stubs::SavingsPlansPurchaseRecommendationDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlansPurchaseRecommendationDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlansPurchaseRecommendationDetail
    class SavingsPlansPurchaseRecommendationDetail
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansPurchaseRecommendationDetail')
        visited = visited + ['SavingsPlansPurchaseRecommendationDetail']
        {
          savings_plans_details: Stubs::SavingsPlansDetails.default(visited),
          account_id: 'account_id',
          upfront_cost: 'upfront_cost',
          estimated_roi: 'estimated_roi',
          currency_code: 'currency_code',
          estimated_sp_cost: 'estimated_sp_cost',
          estimated_on_demand_cost: 'estimated_on_demand_cost',
          estimated_on_demand_cost_with_current_commitment: 'estimated_on_demand_cost_with_current_commitment',
          estimated_savings_amount: 'estimated_savings_amount',
          estimated_savings_percentage: 'estimated_savings_percentage',
          hourly_commitment_to_purchase: 'hourly_commitment_to_purchase',
          estimated_average_utilization: 'estimated_average_utilization',
          estimated_monthly_savings_amount: 'estimated_monthly_savings_amount',
          current_minimum_hourly_on_demand_spend: 'current_minimum_hourly_on_demand_spend',
          current_maximum_hourly_on_demand_spend: 'current_maximum_hourly_on_demand_spend',
          current_average_hourly_on_demand_spend: 'current_average_hourly_on_demand_spend',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansPurchaseRecommendationDetail.new
        data = {}
        data['SavingsPlansDetails'] = Stubs::SavingsPlansDetails.stub(stub[:savings_plans_details]) unless stub[:savings_plans_details].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['UpfrontCost'] = stub[:upfront_cost] unless stub[:upfront_cost].nil?
        data['EstimatedROI'] = stub[:estimated_roi] unless stub[:estimated_roi].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['EstimatedSPCost'] = stub[:estimated_sp_cost] unless stub[:estimated_sp_cost].nil?
        data['EstimatedOnDemandCost'] = stub[:estimated_on_demand_cost] unless stub[:estimated_on_demand_cost].nil?
        data['EstimatedOnDemandCostWithCurrentCommitment'] = stub[:estimated_on_demand_cost_with_current_commitment] unless stub[:estimated_on_demand_cost_with_current_commitment].nil?
        data['EstimatedSavingsAmount'] = stub[:estimated_savings_amount] unless stub[:estimated_savings_amount].nil?
        data['EstimatedSavingsPercentage'] = stub[:estimated_savings_percentage] unless stub[:estimated_savings_percentage].nil?
        data['HourlyCommitmentToPurchase'] = stub[:hourly_commitment_to_purchase] unless stub[:hourly_commitment_to_purchase].nil?
        data['EstimatedAverageUtilization'] = stub[:estimated_average_utilization] unless stub[:estimated_average_utilization].nil?
        data['EstimatedMonthlySavingsAmount'] = stub[:estimated_monthly_savings_amount] unless stub[:estimated_monthly_savings_amount].nil?
        data['CurrentMinimumHourlyOnDemandSpend'] = stub[:current_minimum_hourly_on_demand_spend] unless stub[:current_minimum_hourly_on_demand_spend].nil?
        data['CurrentMaximumHourlyOnDemandSpend'] = stub[:current_maximum_hourly_on_demand_spend] unless stub[:current_maximum_hourly_on_demand_spend].nil?
        data['CurrentAverageHourlyOnDemandSpend'] = stub[:current_average_hourly_on_demand_spend] unless stub[:current_average_hourly_on_demand_spend].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansDetails
    class SavingsPlansDetails
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansDetails')
        visited = visited + ['SavingsPlansDetails']
        {
          region: 'region',
          instance_family: 'instance_family',
          offering_id: 'offering_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansDetails.new
        data = {}
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['InstanceFamily'] = stub[:instance_family] unless stub[:instance_family].nil?
        data['OfferingId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansPurchaseRecommendationMetadata
    class SavingsPlansPurchaseRecommendationMetadata
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansPurchaseRecommendationMetadata')
        visited = visited + ['SavingsPlansPurchaseRecommendationMetadata']
        {
          recommendation_id: 'recommendation_id',
          generation_timestamp: 'generation_timestamp',
          additional_metadata: 'additional_metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansPurchaseRecommendationMetadata.new
        data = {}
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['GenerationTimestamp'] = stub[:generation_timestamp] unless stub[:generation_timestamp].nil?
        data['AdditionalMetadata'] = stub[:additional_metadata] unless stub[:additional_metadata].nil?
        data
      end
    end

    # Operation Stubber for GetSavingsPlansUtilization
    class GetSavingsPlansUtilization
      def self.default(visited=[])
        {
          savings_plans_utilizations_by_time: Stubs::SavingsPlansUtilizationsByTime.default(visited),
          total: Stubs::SavingsPlansUtilizationAggregates.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SavingsPlansUtilizationsByTime'] = Stubs::SavingsPlansUtilizationsByTime.stub(stub[:savings_plans_utilizations_by_time]) unless stub[:savings_plans_utilizations_by_time].nil?
        data['Total'] = Stubs::SavingsPlansUtilizationAggregates.stub(stub[:total]) unless stub[:total].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SavingsPlansUtilizationAggregates
    class SavingsPlansUtilizationAggregates
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilizationAggregates')
        visited = visited + ['SavingsPlansUtilizationAggregates']
        {
          utilization: Stubs::SavingsPlansUtilization.default(visited),
          savings: Stubs::SavingsPlansSavings.default(visited),
          amortized_commitment: Stubs::SavingsPlansAmortizedCommitment.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansUtilizationAggregates.new
        data = {}
        data['Utilization'] = Stubs::SavingsPlansUtilization.stub(stub[:utilization]) unless stub[:utilization].nil?
        data['Savings'] = Stubs::SavingsPlansSavings.stub(stub[:savings]) unless stub[:savings].nil?
        data['AmortizedCommitment'] = Stubs::SavingsPlansAmortizedCommitment.stub(stub[:amortized_commitment]) unless stub[:amortized_commitment].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansAmortizedCommitment
    class SavingsPlansAmortizedCommitment
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansAmortizedCommitment')
        visited = visited + ['SavingsPlansAmortizedCommitment']
        {
          amortized_recurring_commitment: 'amortized_recurring_commitment',
          amortized_upfront_commitment: 'amortized_upfront_commitment',
          total_amortized_commitment: 'total_amortized_commitment',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansAmortizedCommitment.new
        data = {}
        data['AmortizedRecurringCommitment'] = stub[:amortized_recurring_commitment] unless stub[:amortized_recurring_commitment].nil?
        data['AmortizedUpfrontCommitment'] = stub[:amortized_upfront_commitment] unless stub[:amortized_upfront_commitment].nil?
        data['TotalAmortizedCommitment'] = stub[:total_amortized_commitment] unless stub[:total_amortized_commitment].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansSavings
    class SavingsPlansSavings
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansSavings')
        visited = visited + ['SavingsPlansSavings']
        {
          net_savings: 'net_savings',
          on_demand_cost_equivalent: 'on_demand_cost_equivalent',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansSavings.new
        data = {}
        data['NetSavings'] = stub[:net_savings] unless stub[:net_savings].nil?
        data['OnDemandCostEquivalent'] = stub[:on_demand_cost_equivalent] unless stub[:on_demand_cost_equivalent].nil?
        data
      end
    end

    # Structure Stubber for SavingsPlansUtilization
    class SavingsPlansUtilization
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilization')
        visited = visited + ['SavingsPlansUtilization']
        {
          total_commitment: 'total_commitment',
          used_commitment: 'used_commitment',
          unused_commitment: 'unused_commitment',
          utilization_percentage: 'utilization_percentage',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansUtilization.new
        data = {}
        data['TotalCommitment'] = stub[:total_commitment] unless stub[:total_commitment].nil?
        data['UsedCommitment'] = stub[:used_commitment] unless stub[:used_commitment].nil?
        data['UnusedCommitment'] = stub[:unused_commitment] unless stub[:unused_commitment].nil?
        data['UtilizationPercentage'] = stub[:utilization_percentage] unless stub[:utilization_percentage].nil?
        data
      end
    end

    # List Stubber for SavingsPlansUtilizationsByTime
    class SavingsPlansUtilizationsByTime
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilizationsByTime')
        visited = visited + ['SavingsPlansUtilizationsByTime']
        [
          Stubs::SavingsPlansUtilizationByTime.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlansUtilizationByTime.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlansUtilizationByTime
    class SavingsPlansUtilizationByTime
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilizationByTime')
        visited = visited + ['SavingsPlansUtilizationByTime']
        {
          time_period: Stubs::DateInterval.default(visited),
          utilization: Stubs::SavingsPlansUtilization.default(visited),
          savings: Stubs::SavingsPlansSavings.default(visited),
          amortized_commitment: Stubs::SavingsPlansAmortizedCommitment.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansUtilizationByTime.new
        data = {}
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['Utilization'] = Stubs::SavingsPlansUtilization.stub(stub[:utilization]) unless stub[:utilization].nil?
        data['Savings'] = Stubs::SavingsPlansSavings.stub(stub[:savings]) unless stub[:savings].nil?
        data['AmortizedCommitment'] = Stubs::SavingsPlansAmortizedCommitment.stub(stub[:amortized_commitment]) unless stub[:amortized_commitment].nil?
        data
      end
    end

    # Operation Stubber for GetSavingsPlansUtilizationDetails
    class GetSavingsPlansUtilizationDetails
      def self.default(visited=[])
        {
          savings_plans_utilization_details: Stubs::SavingsPlansUtilizationDetails.default(visited),
          total: Stubs::SavingsPlansUtilizationAggregates.default(visited),
          time_period: Stubs::DateInterval.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SavingsPlansUtilizationDetails'] = Stubs::SavingsPlansUtilizationDetails.stub(stub[:savings_plans_utilization_details]) unless stub[:savings_plans_utilization_details].nil?
        data['Total'] = Stubs::SavingsPlansUtilizationAggregates.stub(stub[:total]) unless stub[:total].nil?
        data['TimePeriod'] = Stubs::DateInterval.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SavingsPlansUtilizationDetails
    class SavingsPlansUtilizationDetails
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilizationDetails')
        visited = visited + ['SavingsPlansUtilizationDetails']
        [
          Stubs::SavingsPlansUtilizationDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlansUtilizationDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlansUtilizationDetail
    class SavingsPlansUtilizationDetail
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlansUtilizationDetail')
        visited = visited + ['SavingsPlansUtilizationDetail']
        {
          savings_plan_arn: 'savings_plan_arn',
          attributes: Stubs::Attributes.default(visited),
          utilization: Stubs::SavingsPlansUtilization.default(visited),
          savings: Stubs::SavingsPlansSavings.default(visited),
          amortized_commitment: Stubs::SavingsPlansAmortizedCommitment.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlansUtilizationDetail.new
        data = {}
        data['SavingsPlanArn'] = stub[:savings_plan_arn] unless stub[:savings_plan_arn].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Utilization'] = Stubs::SavingsPlansUtilization.stub(stub[:utilization]) unless stub[:utilization].nil?
        data['Savings'] = Stubs::SavingsPlansSavings.stub(stub[:savings]) unless stub[:savings].nil?
        data['AmortizedCommitment'] = Stubs::SavingsPlansAmortizedCommitment.stub(stub[:amortized_commitment]) unless stub[:amortized_commitment].nil?
        data
      end
    end

    # Operation Stubber for GetTags
    class GetTags
      def self.default(visited=[])
        {
          next_page_token: 'next_page_token',
          tags: Stubs::TagList.default(visited),
          return_size: 1,
          total_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ReturnSize'] = stub[:return_size] unless stub[:return_size].nil?
        data['TotalSize'] = stub[:total_size] unless stub[:total_size].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for GetUsageForecast
    class GetUsageForecast
      def self.default(visited=[])
        {
          total: Stubs::MetricValue.default(visited),
          forecast_results_by_time: Stubs::ForecastResultsByTime.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Total'] = Stubs::MetricValue.stub(stub[:total]) unless stub[:total].nil?
        data['ForecastResultsByTime'] = Stubs::ForecastResultsByTime.stub(stub[:forecast_results_by_time]) unless stub[:forecast_results_by_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCostAllocationTags
    class ListCostAllocationTags
      def self.default(visited=[])
        {
          cost_allocation_tags: Stubs::CostAllocationTagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostAllocationTags'] = Stubs::CostAllocationTagList.stub(stub[:cost_allocation_tags]) unless stub[:cost_allocation_tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CostAllocationTagList
    class CostAllocationTagList
      def self.default(visited=[])
        return nil if visited.include?('CostAllocationTagList')
        visited = visited + ['CostAllocationTagList']
        [
          Stubs::CostAllocationTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostAllocationTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostAllocationTag
    class CostAllocationTag
      def self.default(visited=[])
        return nil if visited.include?('CostAllocationTag')
        visited = visited + ['CostAllocationTag']
        {
          tag_key: 'tag_key',
          type: 'type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostAllocationTag.new
        data = {}
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListCostCategoryDefinitions
    class ListCostCategoryDefinitions
      def self.default(visited=[])
        {
          cost_category_references: Stubs::CostCategoryReferencesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostCategoryReferences'] = Stubs::CostCategoryReferencesList.stub(stub[:cost_category_references]) unless stub[:cost_category_references].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CostCategoryReferencesList
    class CostCategoryReferencesList
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryReferencesList')
        visited = visited + ['CostCategoryReferencesList']
        [
          Stubs::CostCategoryReference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CostCategoryReference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CostCategoryReference
    class CostCategoryReference
      def self.default(visited=[])
        return nil if visited.include?('CostCategoryReference')
        visited = visited + ['CostCategoryReference']
        {
          cost_category_arn: 'cost_category_arn',
          name: 'name',
          effective_start: 'effective_start',
          effective_end: 'effective_end',
          number_of_rules: 1,
          processing_status: Stubs::CostCategoryProcessingStatusList.default(visited),
          values: Stubs::CostCategoryValuesList.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CostCategoryReference.new
        data = {}
        data['CostCategoryArn'] = stub[:cost_category_arn] unless stub[:cost_category_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['EffectiveStart'] = stub[:effective_start] unless stub[:effective_start].nil?
        data['EffectiveEnd'] = stub[:effective_end] unless stub[:effective_end].nil?
        data['NumberOfRules'] = stub[:number_of_rules] unless stub[:number_of_rules].nil?
        data['ProcessingStatus'] = Stubs::CostCategoryProcessingStatusList.stub(stub[:processing_status]) unless stub[:processing_status].nil?
        data['Values'] = Stubs::CostCategoryValuesList.stub(stub[:values]) unless stub[:values].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_tags: Stubs::ResourceTagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceTags'] = Stubs::ResourceTagList.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceTagList
    class ResourceTagList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagList')
        visited = visited + ['ResourceTagList']
        [
          Stubs::ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ProvideAnomalyFeedback
    class ProvideAnomalyFeedback
      def self.default(visited=[])
        {
          anomaly_id: 'anomaly_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AnomalyId'] = stub[:anomaly_id] unless stub[:anomaly_id].nil?
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

    # Operation Stubber for UpdateAnomalyMonitor
    class UpdateAnomalyMonitor
      def self.default(visited=[])
        {
          monitor_arn: 'monitor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAnomalySubscription
    class UpdateAnomalySubscription
      def self.default(visited=[])
        {
          subscription_arn: 'subscription_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubscriptionArn'] = stub[:subscription_arn] unless stub[:subscription_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCostAllocationTagsStatus
    class UpdateCostAllocationTagsStatus
      def self.default(visited=[])
        {
          errors: Stubs::UpdateCostAllocationTagsStatusErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = Stubs::UpdateCostAllocationTagsStatusErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UpdateCostAllocationTagsStatusErrors
    class UpdateCostAllocationTagsStatusErrors
      def self.default(visited=[])
        return nil if visited.include?('UpdateCostAllocationTagsStatusErrors')
        visited = visited + ['UpdateCostAllocationTagsStatusErrors']
        [
          Stubs::UpdateCostAllocationTagsStatusError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UpdateCostAllocationTagsStatusError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateCostAllocationTagsStatusError
    class UpdateCostAllocationTagsStatusError
      def self.default(visited=[])
        return nil if visited.include?('UpdateCostAllocationTagsStatusError')
        visited = visited + ['UpdateCostAllocationTagsStatusError']
        {
          tag_key: 'tag_key',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateCostAllocationTagsStatusError.new
        data = {}
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for UpdateCostCategoryDefinition
    class UpdateCostCategoryDefinition
      def self.default(visited=[])
        {
          cost_category_arn: 'cost_category_arn',
          effective_start: 'effective_start',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CostCategoryArn'] = stub[:cost_category_arn] unless stub[:cost_category_arn].nil?
        data['EffectiveStart'] = stub[:effective_start] unless stub[:effective_start].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
