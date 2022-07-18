# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Budgets
  module Stubs

    # Operation Stubber for CreateBudget
    class CreateBudget
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

    # Operation Stubber for CreateBudgetAction
    class CreateBudgetAction
      def self.default(visited=[])
        {
          account_id: 'account_id',
          budget_name: 'budget_name',
          action_id: 'action_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNotification
    class CreateNotification
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

    # Operation Stubber for CreateSubscriber
    class CreateSubscriber
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

    # Operation Stubber for DeleteBudget
    class DeleteBudget
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

    # Operation Stubber for DeleteBudgetAction
    class DeleteBudgetAction
      def self.default(visited=[])
        {
          account_id: 'account_id',
          budget_name: 'budget_name',
          action: Action.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          action_id: 'action_id',
          budget_name: 'budget_name',
          notification_type: 'notification_type',
          action_type: 'action_type',
          action_threshold: ActionThreshold.default(visited),
          definition: Definition.default(visited),
          execution_role_arn: 'execution_role_arn',
          approval_model: 'approval_model',
          status: 'status',
          subscribers: Subscribers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['NotificationType'] = stub[:notification_type] unless stub[:notification_type].nil?
        data['ActionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['ActionThreshold'] = Stubs::ActionThreshold.stub(stub[:action_threshold]) unless stub[:action_threshold].nil?
        data['Definition'] = Stubs::Definition.stub(stub[:definition]) unless stub[:definition].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['ApprovalModel'] = stub[:approval_model] unless stub[:approval_model].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Subscribers'] = Stubs::Subscribers.stub(stub[:subscribers]) unless stub[:subscribers].nil?
        data
      end
    end

    # List Stubber for Subscribers
    class Subscribers
      def self.default(visited=[])
        return nil if visited.include?('Subscribers')
        visited = visited + ['Subscribers']
        [
          Subscriber.default(visited)
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
          subscription_type: 'subscription_type',
          address: 'address',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscriber.new
        data = {}
        data['SubscriptionType'] = stub[:subscription_type] unless stub[:subscription_type].nil?
        data['Address'] = stub[:address] unless stub[:address].nil?
        data
      end
    end

    # Structure Stubber for Definition
    class Definition
      def self.default(visited=[])
        return nil if visited.include?('Definition')
        visited = visited + ['Definition']
        {
          iam_action_definition: IamActionDefinition.default(visited),
          scp_action_definition: ScpActionDefinition.default(visited),
          ssm_action_definition: SsmActionDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Definition.new
        data = {}
        data['IamActionDefinition'] = Stubs::IamActionDefinition.stub(stub[:iam_action_definition]) unless stub[:iam_action_definition].nil?
        data['ScpActionDefinition'] = Stubs::ScpActionDefinition.stub(stub[:scp_action_definition]) unless stub[:scp_action_definition].nil?
        data['SsmActionDefinition'] = Stubs::SsmActionDefinition.stub(stub[:ssm_action_definition]) unless stub[:ssm_action_definition].nil?
        data
      end
    end

    # Structure Stubber for SsmActionDefinition
    class SsmActionDefinition
      def self.default(visited=[])
        return nil if visited.include?('SsmActionDefinition')
        visited = visited + ['SsmActionDefinition']
        {
          action_sub_type: 'action_sub_type',
          region: 'region',
          instance_ids: InstanceIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SsmActionDefinition.new
        data = {}
        data['ActionSubType'] = stub[:action_sub_type] unless stub[:action_sub_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['InstanceIds'] = Stubs::InstanceIds.stub(stub[:instance_ids]) unless stub[:instance_ids].nil?
        data
      end
    end

    # List Stubber for InstanceIds
    class InstanceIds
      def self.default(visited=[])
        return nil if visited.include?('InstanceIds')
        visited = visited + ['InstanceIds']
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

    # Structure Stubber for ScpActionDefinition
    class ScpActionDefinition
      def self.default(visited=[])
        return nil if visited.include?('ScpActionDefinition')
        visited = visited + ['ScpActionDefinition']
        {
          policy_id: 'policy_id',
          target_ids: TargetIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScpActionDefinition.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['TargetIds'] = Stubs::TargetIds.stub(stub[:target_ids]) unless stub[:target_ids].nil?
        data
      end
    end

    # List Stubber for TargetIds
    class TargetIds
      def self.default(visited=[])
        return nil if visited.include?('TargetIds')
        visited = visited + ['TargetIds']
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

    # Structure Stubber for IamActionDefinition
    class IamActionDefinition
      def self.default(visited=[])
        return nil if visited.include?('IamActionDefinition')
        visited = visited + ['IamActionDefinition']
        {
          policy_arn: 'policy_arn',
          roles: Roles.default(visited),
          groups: Groups.default(visited),
          users: Users.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IamActionDefinition.new
        data = {}
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['Roles'] = Stubs::Roles.stub(stub[:roles]) unless stub[:roles].nil?
        data['Groups'] = Stubs::Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data['Users'] = Stubs::Users.stub(stub[:users]) unless stub[:users].nil?
        data
      end
    end

    # List Stubber for Users
    class Users
      def self.default(visited=[])
        return nil if visited.include?('Users')
        visited = visited + ['Users']
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

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
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

    # List Stubber for Roles
    class Roles
      def self.default(visited=[])
        return nil if visited.include?('Roles')
        visited = visited + ['Roles']
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

    # Structure Stubber for ActionThreshold
    class ActionThreshold
      def self.default(visited=[])
        return nil if visited.include?('ActionThreshold')
        visited = visited + ['ActionThreshold']
        {
          action_threshold_value: 1.0,
          action_threshold_type: 'action_threshold_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionThreshold.new
        data = {}
        data['ActionThresholdValue'] = Hearth::NumberHelper.serialize(stub[:action_threshold_value])
        data['ActionThresholdType'] = stub[:action_threshold_type] unless stub[:action_threshold_type].nil?
        data
      end
    end

    # Operation Stubber for DeleteNotification
    class DeleteNotification
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

    # Operation Stubber for DeleteSubscriber
    class DeleteSubscriber
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

    # Operation Stubber for DescribeBudget
    class DescribeBudget
      def self.default(visited=[])
        {
          budget: Budget.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Budget'] = Stubs::Budget.stub(stub[:budget]) unless stub[:budget].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Budget
    class Budget
      def self.default(visited=[])
        return nil if visited.include?('Budget')
        visited = visited + ['Budget']
        {
          budget_name: 'budget_name',
          budget_limit: Spend.default(visited),
          planned_budget_limits: PlannedBudgetLimits.default(visited),
          cost_filters: CostFilters.default(visited),
          cost_types: CostTypes.default(visited),
          time_unit: 'time_unit',
          time_period: TimePeriod.default(visited),
          calculated_spend: CalculatedSpend.default(visited),
          budget_type: 'budget_type',
          last_updated_time: Time.now,
          auto_adjust_data: AutoAdjustData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Budget.new
        data = {}
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['BudgetLimit'] = Stubs::Spend.stub(stub[:budget_limit]) unless stub[:budget_limit].nil?
        data['PlannedBudgetLimits'] = Stubs::PlannedBudgetLimits.stub(stub[:planned_budget_limits]) unless stub[:planned_budget_limits].nil?
        data['CostFilters'] = Stubs::CostFilters.stub(stub[:cost_filters]) unless stub[:cost_filters].nil?
        data['CostTypes'] = Stubs::CostTypes.stub(stub[:cost_types]) unless stub[:cost_types].nil?
        data['TimeUnit'] = stub[:time_unit] unless stub[:time_unit].nil?
        data['TimePeriod'] = Stubs::TimePeriod.stub(stub[:time_period]) unless stub[:time_period].nil?
        data['CalculatedSpend'] = Stubs::CalculatedSpend.stub(stub[:calculated_spend]) unless stub[:calculated_spend].nil?
        data['BudgetType'] = stub[:budget_type] unless stub[:budget_type].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['AutoAdjustData'] = Stubs::AutoAdjustData.stub(stub[:auto_adjust_data]) unless stub[:auto_adjust_data].nil?
        data
      end
    end

    # Structure Stubber for AutoAdjustData
    class AutoAdjustData
      def self.default(visited=[])
        return nil if visited.include?('AutoAdjustData')
        visited = visited + ['AutoAdjustData']
        {
          auto_adjust_type: 'auto_adjust_type',
          historical_options: HistoricalOptions.default(visited),
          last_auto_adjust_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoAdjustData.new
        data = {}
        data['AutoAdjustType'] = stub[:auto_adjust_type] unless stub[:auto_adjust_type].nil?
        data['HistoricalOptions'] = Stubs::HistoricalOptions.stub(stub[:historical_options]) unless stub[:historical_options].nil?
        data['LastAutoAdjustTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_auto_adjust_time]).to_i unless stub[:last_auto_adjust_time].nil?
        data
      end
    end

    # Structure Stubber for HistoricalOptions
    class HistoricalOptions
      def self.default(visited=[])
        return nil if visited.include?('HistoricalOptions')
        visited = visited + ['HistoricalOptions']
        {
          budget_adjustment_period: 1,
          look_back_available_periods: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoricalOptions.new
        data = {}
        data['BudgetAdjustmentPeriod'] = stub[:budget_adjustment_period] unless stub[:budget_adjustment_period].nil?
        data['LookBackAvailablePeriods'] = stub[:look_back_available_periods] unless stub[:look_back_available_periods].nil?
        data
      end
    end

    # Structure Stubber for CalculatedSpend
    class CalculatedSpend
      def self.default(visited=[])
        return nil if visited.include?('CalculatedSpend')
        visited = visited + ['CalculatedSpend']
        {
          actual_spend: Spend.default(visited),
          forecasted_spend: Spend.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculatedSpend.new
        data = {}
        data['ActualSpend'] = Stubs::Spend.stub(stub[:actual_spend]) unless stub[:actual_spend].nil?
        data['ForecastedSpend'] = Stubs::Spend.stub(stub[:forecasted_spend]) unless stub[:forecasted_spend].nil?
        data
      end
    end

    # Structure Stubber for Spend
    class Spend
      def self.default(visited=[])
        return nil if visited.include?('Spend')
        visited = visited + ['Spend']
        {
          amount: 'amount',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Spend.new
        data = {}
        data['Amount'] = stub[:amount] unless stub[:amount].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for TimePeriod
    class TimePeriod
      def self.default(visited=[])
        return nil if visited.include?('TimePeriod')
        visited = visited + ['TimePeriod']
        {
          start: Time.now,
          end: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimePeriod.new
        data = {}
        data['Start'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start]).to_i unless stub[:start].nil?
        data['End'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end]).to_i unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for CostTypes
    class CostTypes
      def self.default(visited=[])
        return nil if visited.include?('CostTypes')
        visited = visited + ['CostTypes']
        {
          include_tax: false,
          include_subscription: false,
          use_blended: false,
          include_refund: false,
          include_credit: false,
          include_upfront: false,
          include_recurring: false,
          include_other_subscription: false,
          include_support: false,
          include_discount: false,
          use_amortized: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CostTypes.new
        data = {}
        data['IncludeTax'] = stub[:include_tax] unless stub[:include_tax].nil?
        data['IncludeSubscription'] = stub[:include_subscription] unless stub[:include_subscription].nil?
        data['UseBlended'] = stub[:use_blended] unless stub[:use_blended].nil?
        data['IncludeRefund'] = stub[:include_refund] unless stub[:include_refund].nil?
        data['IncludeCredit'] = stub[:include_credit] unless stub[:include_credit].nil?
        data['IncludeUpfront'] = stub[:include_upfront] unless stub[:include_upfront].nil?
        data['IncludeRecurring'] = stub[:include_recurring] unless stub[:include_recurring].nil?
        data['IncludeOtherSubscription'] = stub[:include_other_subscription] unless stub[:include_other_subscription].nil?
        data['IncludeSupport'] = stub[:include_support] unless stub[:include_support].nil?
        data['IncludeDiscount'] = stub[:include_discount] unless stub[:include_discount].nil?
        data['UseAmortized'] = stub[:use_amortized] unless stub[:use_amortized].nil?
        data
      end
    end

    # Map Stubber for CostFilters
    class CostFilters
      def self.default(visited=[])
        return nil if visited.include?('CostFilters')
        visited = visited + ['CostFilters']
        {
          test_key: DimensionValues.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DimensionValues.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for DimensionValues
    class DimensionValues
      def self.default(visited=[])
        return nil if visited.include?('DimensionValues')
        visited = visited + ['DimensionValues']
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

    # Map Stubber for PlannedBudgetLimits
    class PlannedBudgetLimits
      def self.default(visited=[])
        return nil if visited.include?('PlannedBudgetLimits')
        visited = visited + ['PlannedBudgetLimits']
        {
          test_key: Spend.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Spend.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeBudgetAction
    class DescribeBudgetAction
      def self.default(visited=[])
        {
          account_id: 'account_id',
          budget_name: 'budget_name',
          action: Action.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBudgetActionHistories
    class DescribeBudgetActionHistories
      def self.default(visited=[])
        {
          action_histories: ActionHistories.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionHistories'] = Stubs::ActionHistories.stub(stub[:action_histories]) unless stub[:action_histories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActionHistories
    class ActionHistories
      def self.default(visited=[])
        return nil if visited.include?('ActionHistories')
        visited = visited + ['ActionHistories']
        [
          ActionHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionHistory
    class ActionHistory
      def self.default(visited=[])
        return nil if visited.include?('ActionHistory')
        visited = visited + ['ActionHistory']
        {
          timestamp: Time.now,
          status: 'status',
          event_type: 'event_type',
          action_history_details: ActionHistoryDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionHistory.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['EventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['ActionHistoryDetails'] = Stubs::ActionHistoryDetails.stub(stub[:action_history_details]) unless stub[:action_history_details].nil?
        data
      end
    end

    # Structure Stubber for ActionHistoryDetails
    class ActionHistoryDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionHistoryDetails')
        visited = visited + ['ActionHistoryDetails']
        {
          message: 'message',
          action: Action.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionHistoryDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Operation Stubber for DescribeBudgetActionsForAccount
    class DescribeBudgetActionsForAccount
      def self.default(visited=[])
        {
          actions: Actions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Actions'] = Stubs::Actions.stub(stub[:actions]) unless stub[:actions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Actions
    class Actions
      def self.default(visited=[])
        return nil if visited.include?('Actions')
        visited = visited + ['Actions']
        [
          Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeBudgetActionsForBudget
    class DescribeBudgetActionsForBudget
      def self.default(visited=[])
        {
          actions: Actions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Actions'] = Stubs::Actions.stub(stub[:actions]) unless stub[:actions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBudgetNotificationsForAccount
    class DescribeBudgetNotificationsForAccount
      def self.default(visited=[])
        {
          budget_notifications_for_account: BudgetNotificationsForAccountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BudgetNotificationsForAccount'] = Stubs::BudgetNotificationsForAccountList.stub(stub[:budget_notifications_for_account]) unless stub[:budget_notifications_for_account].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BudgetNotificationsForAccountList
    class BudgetNotificationsForAccountList
      def self.default(visited=[])
        return nil if visited.include?('BudgetNotificationsForAccountList')
        visited = visited + ['BudgetNotificationsForAccountList']
        [
          BudgetNotificationsForAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BudgetNotificationsForAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BudgetNotificationsForAccount
    class BudgetNotificationsForAccount
      def self.default(visited=[])
        return nil if visited.include?('BudgetNotificationsForAccount')
        visited = visited + ['BudgetNotificationsForAccount']
        {
          notifications: Notifications.default(visited),
          budget_name: 'budget_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BudgetNotificationsForAccount.new
        data = {}
        data['Notifications'] = Stubs::Notifications.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data
      end
    end

    # List Stubber for Notifications
    class Notifications
      def self.default(visited=[])
        return nil if visited.include?('Notifications')
        visited = visited + ['Notifications']
        [
          Notification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Notification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Notification
    class Notification
      def self.default(visited=[])
        return nil if visited.include?('Notification')
        visited = visited + ['Notification']
        {
          notification_type: 'notification_type',
          comparison_operator: 'comparison_operator',
          threshold: 1.0,
          threshold_type: 'threshold_type',
          notification_state: 'notification_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Notification.new
        data = {}
        data['NotificationType'] = stub[:notification_type] unless stub[:notification_type].nil?
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data['ThresholdType'] = stub[:threshold_type] unless stub[:threshold_type].nil?
        data['NotificationState'] = stub[:notification_state] unless stub[:notification_state].nil?
        data
      end
    end

    # Operation Stubber for DescribeBudgetPerformanceHistory
    class DescribeBudgetPerformanceHistory
      def self.default(visited=[])
        {
          budget_performance_history: BudgetPerformanceHistory.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BudgetPerformanceHistory'] = Stubs::BudgetPerformanceHistory.stub(stub[:budget_performance_history]) unless stub[:budget_performance_history].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BudgetPerformanceHistory
    class BudgetPerformanceHistory
      def self.default(visited=[])
        return nil if visited.include?('BudgetPerformanceHistory')
        visited = visited + ['BudgetPerformanceHistory']
        {
          budget_name: 'budget_name',
          budget_type: 'budget_type',
          cost_filters: CostFilters.default(visited),
          cost_types: CostTypes.default(visited),
          time_unit: 'time_unit',
          budgeted_and_actual_amounts_list: BudgetedAndActualAmountsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BudgetPerformanceHistory.new
        data = {}
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['BudgetType'] = stub[:budget_type] unless stub[:budget_type].nil?
        data['CostFilters'] = Stubs::CostFilters.stub(stub[:cost_filters]) unless stub[:cost_filters].nil?
        data['CostTypes'] = Stubs::CostTypes.stub(stub[:cost_types]) unless stub[:cost_types].nil?
        data['TimeUnit'] = stub[:time_unit] unless stub[:time_unit].nil?
        data['BudgetedAndActualAmountsList'] = Stubs::BudgetedAndActualAmountsList.stub(stub[:budgeted_and_actual_amounts_list]) unless stub[:budgeted_and_actual_amounts_list].nil?
        data
      end
    end

    # List Stubber for BudgetedAndActualAmountsList
    class BudgetedAndActualAmountsList
      def self.default(visited=[])
        return nil if visited.include?('BudgetedAndActualAmountsList')
        visited = visited + ['BudgetedAndActualAmountsList']
        [
          BudgetedAndActualAmounts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BudgetedAndActualAmounts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BudgetedAndActualAmounts
    class BudgetedAndActualAmounts
      def self.default(visited=[])
        return nil if visited.include?('BudgetedAndActualAmounts')
        visited = visited + ['BudgetedAndActualAmounts']
        {
          budgeted_amount: Spend.default(visited),
          actual_amount: Spend.default(visited),
          time_period: TimePeriod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BudgetedAndActualAmounts.new
        data = {}
        data['BudgetedAmount'] = Stubs::Spend.stub(stub[:budgeted_amount]) unless stub[:budgeted_amount].nil?
        data['ActualAmount'] = Stubs::Spend.stub(stub[:actual_amount]) unless stub[:actual_amount].nil?
        data['TimePeriod'] = Stubs::TimePeriod.stub(stub[:time_period]) unless stub[:time_period].nil?
        data
      end
    end

    # Operation Stubber for DescribeBudgets
    class DescribeBudgets
      def self.default(visited=[])
        {
          budgets: Budgets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Budgets'] = Stubs::Budgets.stub(stub[:budgets]) unless stub[:budgets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Budgets
    class Budgets
      def self.default(visited=[])
        return nil if visited.include?('Budgets')
        visited = visited + ['Budgets']
        [
          Budget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Budget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeNotificationsForBudget
    class DescribeNotificationsForBudget
      def self.default(visited=[])
        {
          notifications: Notifications.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Notifications'] = Stubs::Notifications.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSubscribersForNotification
    class DescribeSubscribersForNotification
      def self.default(visited=[])
        {
          subscribers: Subscribers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Subscribers'] = Stubs::Subscribers.stub(stub[:subscribers]) unless stub[:subscribers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteBudgetAction
    class ExecuteBudgetAction
      def self.default(visited=[])
        {
          account_id: 'account_id',
          budget_name: 'budget_name',
          action_id: 'action_id',
          execution_type: 'execution_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['ExecutionType'] = stub[:execution_type] unless stub[:execution_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBudget
    class UpdateBudget
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

    # Operation Stubber for UpdateBudgetAction
    class UpdateBudgetAction
      def self.default(visited=[])
        {
          account_id: 'account_id',
          budget_name: 'budget_name',
          old_action: Action.default(visited),
          new_action: Action.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data['OldAction'] = Stubs::Action.stub(stub[:old_action]) unless stub[:old_action].nil?
        data['NewAction'] = Stubs::Action.stub(stub[:new_action]) unless stub[:new_action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotification
    class UpdateNotification
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

    # Operation Stubber for UpdateSubscriber
    class UpdateSubscriber
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
  end
end
