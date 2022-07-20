# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Budgets
  module Parsers

    # Operation Parser for CreateBudget
    class CreateBudget
      def self.parse(http_resp)
        data = Types::CreateBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CreationLimitExceededException
    class CreationLimitExceededException
      def self.parse(http_resp)
        data = Types::CreationLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DuplicateRecordException
    class DuplicateRecordException
      def self.parse(http_resp)
        data = Types::DuplicateRecordException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateBudgetAction
    class CreateBudgetAction
      def self.parse(http_resp)
        data = Types::CreateBudgetActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_id = map['AccountId']
        data.budget_name = map['BudgetName']
        data.action_id = map['ActionId']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateNotification
    class CreateNotification
      def self.parse(http_resp)
        data = Types::CreateNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateSubscriber
    class CreateSubscriber
      def self.parse(http_resp)
        data = Types::CreateSubscriberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBudget
    class DeleteBudget
      def self.parse(http_resp)
        data = Types::DeleteBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBudgetAction
    class DeleteBudgetAction
      def self.parse(http_resp)
        data = Types::DeleteBudgetActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_id = map['AccountId']
        data.budget_name = map['BudgetName']
        data.action = (Action.parse(map['Action']) unless map['Action'].nil?)
        data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.action_id = map['ActionId']
        data.budget_name = map['BudgetName']
        data.notification_type = map['NotificationType']
        data.action_type = map['ActionType']
        data.action_threshold = (ActionThreshold.parse(map['ActionThreshold']) unless map['ActionThreshold'].nil?)
        data.definition = (Definition.parse(map['Definition']) unless map['Definition'].nil?)
        data.execution_role_arn = map['ExecutionRoleArn']
        data.approval_model = map['ApprovalModel']
        data.status = map['Status']
        data.subscribers = (Subscribers.parse(map['Subscribers']) unless map['Subscribers'].nil?)
        return data
      end
    end

    class Subscribers
      def self.parse(list)
        list.map do |value|
          Subscriber.parse(value) unless value.nil?
        end
      end
    end

    class Subscriber
      def self.parse(map)
        data = Types::Subscriber.new
        data.subscription_type = map['SubscriptionType']
        data.address = map['Address']
        return data
      end
    end

    class Definition
      def self.parse(map)
        data = Types::Definition.new
        data.iam_action_definition = (IamActionDefinition.parse(map['IamActionDefinition']) unless map['IamActionDefinition'].nil?)
        data.scp_action_definition = (ScpActionDefinition.parse(map['ScpActionDefinition']) unless map['ScpActionDefinition'].nil?)
        data.ssm_action_definition = (SsmActionDefinition.parse(map['SsmActionDefinition']) unless map['SsmActionDefinition'].nil?)
        return data
      end
    end

    class SsmActionDefinition
      def self.parse(map)
        data = Types::SsmActionDefinition.new
        data.action_sub_type = map['ActionSubType']
        data.region = map['Region']
        data.instance_ids = (InstanceIds.parse(map['InstanceIds']) unless map['InstanceIds'].nil?)
        return data
      end
    end

    class InstanceIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ScpActionDefinition
      def self.parse(map)
        data = Types::ScpActionDefinition.new
        data.policy_id = map['PolicyId']
        data.target_ids = (TargetIds.parse(map['TargetIds']) unless map['TargetIds'].nil?)
        return data
      end
    end

    class TargetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IamActionDefinition
      def self.parse(map)
        data = Types::IamActionDefinition.new
        data.policy_arn = map['PolicyArn']
        data.roles = (Roles.parse(map['Roles']) unless map['Roles'].nil?)
        data.groups = (Groups.parse(map['Groups']) unless map['Groups'].nil?)
        data.users = (Users.parse(map['Users']) unless map['Users'].nil?)
        return data
      end
    end

    class Users
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Groups
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Roles
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ActionThreshold
      def self.parse(map)
        data = Types::ActionThreshold.new
        data.action_threshold_value = Hearth::NumberHelper.deserialize(map['ActionThresholdValue'])
        data.action_threshold_type = map['ActionThresholdType']
        return data
      end
    end

    # Error Parser for ResourceLockedException
    class ResourceLockedException
      def self.parse(http_resp)
        data = Types::ResourceLockedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteNotification
    class DeleteNotification
      def self.parse(http_resp)
        data = Types::DeleteNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSubscriber
    class DeleteSubscriber
      def self.parse(http_resp)
        data = Types::DeleteSubscriberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeBudget
    class DescribeBudget
      def self.parse(http_resp)
        data = Types::DescribeBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.budget = (Budget.parse(map['Budget']) unless map['Budget'].nil?)
        data
      end
    end

    class Budget
      def self.parse(map)
        data = Types::Budget.new
        data.budget_name = map['BudgetName']
        data.budget_limit = (Spend.parse(map['BudgetLimit']) unless map['BudgetLimit'].nil?)
        data.planned_budget_limits = (PlannedBudgetLimits.parse(map['PlannedBudgetLimits']) unless map['PlannedBudgetLimits'].nil?)
        data.cost_filters = (CostFilters.parse(map['CostFilters']) unless map['CostFilters'].nil?)
        data.cost_types = (CostTypes.parse(map['CostTypes']) unless map['CostTypes'].nil?)
        data.time_unit = map['TimeUnit']
        data.time_period = (TimePeriod.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.calculated_spend = (CalculatedSpend.parse(map['CalculatedSpend']) unless map['CalculatedSpend'].nil?)
        data.budget_type = map['BudgetType']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.auto_adjust_data = (AutoAdjustData.parse(map['AutoAdjustData']) unless map['AutoAdjustData'].nil?)
        return data
      end
    end

    class AutoAdjustData
      def self.parse(map)
        data = Types::AutoAdjustData.new
        data.auto_adjust_type = map['AutoAdjustType']
        data.historical_options = (HistoricalOptions.parse(map['HistoricalOptions']) unless map['HistoricalOptions'].nil?)
        data.last_auto_adjust_time = Time.at(map['LastAutoAdjustTime'].to_i) if map['LastAutoAdjustTime']
        return data
      end
    end

    class HistoricalOptions
      def self.parse(map)
        data = Types::HistoricalOptions.new
        data.budget_adjustment_period = map['BudgetAdjustmentPeriod']
        data.look_back_available_periods = map['LookBackAvailablePeriods']
        return data
      end
    end

    class CalculatedSpend
      def self.parse(map)
        data = Types::CalculatedSpend.new
        data.actual_spend = (Spend.parse(map['ActualSpend']) unless map['ActualSpend'].nil?)
        data.forecasted_spend = (Spend.parse(map['ForecastedSpend']) unless map['ForecastedSpend'].nil?)
        return data
      end
    end

    class Spend
      def self.parse(map)
        data = Types::Spend.new
        data.amount = map['Amount']
        data.unit = map['Unit']
        return data
      end
    end

    class TimePeriod
      def self.parse(map)
        data = Types::TimePeriod.new
        data.start = Time.at(map['Start'].to_i) if map['Start']
        data.end = Time.at(map['End'].to_i) if map['End']
        return data
      end
    end

    class CostTypes
      def self.parse(map)
        data = Types::CostTypes.new
        data.include_tax = map['IncludeTax']
        data.include_subscription = map['IncludeSubscription']
        data.use_blended = map['UseBlended']
        data.include_refund = map['IncludeRefund']
        data.include_credit = map['IncludeCredit']
        data.include_upfront = map['IncludeUpfront']
        data.include_recurring = map['IncludeRecurring']
        data.include_other_subscription = map['IncludeOtherSubscription']
        data.include_support = map['IncludeSupport']
        data.include_discount = map['IncludeDiscount']
        data.use_amortized = map['UseAmortized']
        return data
      end
    end

    class CostFilters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = DimensionValues.parse(value) unless value.nil?
        end
        data
      end
    end

    class DimensionValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PlannedBudgetLimits
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Spend.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeBudgetAction
    class DescribeBudgetAction
      def self.parse(http_resp)
        data = Types::DescribeBudgetActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_id = map['AccountId']
        data.budget_name = map['BudgetName']
        data.action = (Action.parse(map['Action']) unless map['Action'].nil?)
        data
      end
    end

    # Operation Parser for DescribeBudgetActionHistories
    class DescribeBudgetActionHistories
      def self.parse(http_resp)
        data = Types::DescribeBudgetActionHistoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_histories = (ActionHistories.parse(map['ActionHistories']) unless map['ActionHistories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ActionHistories
      def self.parse(list)
        list.map do |value|
          ActionHistory.parse(value) unless value.nil?
        end
      end
    end

    class ActionHistory
      def self.parse(map)
        data = Types::ActionHistory.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.status = map['Status']
        data.event_type = map['EventType']
        data.action_history_details = (ActionHistoryDetails.parse(map['ActionHistoryDetails']) unless map['ActionHistoryDetails'].nil?)
        return data
      end
    end

    class ActionHistoryDetails
      def self.parse(map)
        data = Types::ActionHistoryDetails.new
        data.message = map['Message']
        data.action = (Action.parse(map['Action']) unless map['Action'].nil?)
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeBudgetActionsForAccount
    class DescribeBudgetActionsForAccount
      def self.parse(http_resp)
        data = Types::DescribeBudgetActionsForAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.actions = (Actions.parse(map['Actions']) unless map['Actions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Actions
      def self.parse(list)
        list.map do |value|
          Action.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeBudgetActionsForBudget
    class DescribeBudgetActionsForBudget
      def self.parse(http_resp)
        data = Types::DescribeBudgetActionsForBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.actions = (Actions.parse(map['Actions']) unless map['Actions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeBudgetNotificationsForAccount
    class DescribeBudgetNotificationsForAccount
      def self.parse(http_resp)
        data = Types::DescribeBudgetNotificationsForAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.budget_notifications_for_account = (BudgetNotificationsForAccountList.parse(map['BudgetNotificationsForAccount']) unless map['BudgetNotificationsForAccount'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BudgetNotificationsForAccountList
      def self.parse(list)
        list.map do |value|
          BudgetNotificationsForAccount.parse(value) unless value.nil?
        end
      end
    end

    class BudgetNotificationsForAccount
      def self.parse(map)
        data = Types::BudgetNotificationsForAccount.new
        data.notifications = (Notifications.parse(map['Notifications']) unless map['Notifications'].nil?)
        data.budget_name = map['BudgetName']
        return data
      end
    end

    class Notifications
      def self.parse(list)
        list.map do |value|
          Notification.parse(value) unless value.nil?
        end
      end
    end

    class Notification
      def self.parse(map)
        data = Types::Notification.new
        data.notification_type = map['NotificationType']
        data.comparison_operator = map['ComparisonOperator']
        data.threshold = Hearth::NumberHelper.deserialize(map['Threshold'])
        data.threshold_type = map['ThresholdType']
        data.notification_state = map['NotificationState']
        return data
      end
    end

    # Error Parser for ExpiredNextTokenException
    class ExpiredNextTokenException
      def self.parse(http_resp)
        data = Types::ExpiredNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeBudgetPerformanceHistory
    class DescribeBudgetPerformanceHistory
      def self.parse(http_resp)
        data = Types::DescribeBudgetPerformanceHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.budget_performance_history = (BudgetPerformanceHistory.parse(map['BudgetPerformanceHistory']) unless map['BudgetPerformanceHistory'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BudgetPerformanceHistory
      def self.parse(map)
        data = Types::BudgetPerformanceHistory.new
        data.budget_name = map['BudgetName']
        data.budget_type = map['BudgetType']
        data.cost_filters = (CostFilters.parse(map['CostFilters']) unless map['CostFilters'].nil?)
        data.cost_types = (CostTypes.parse(map['CostTypes']) unless map['CostTypes'].nil?)
        data.time_unit = map['TimeUnit']
        data.budgeted_and_actual_amounts_list = (BudgetedAndActualAmountsList.parse(map['BudgetedAndActualAmountsList']) unless map['BudgetedAndActualAmountsList'].nil?)
        return data
      end
    end

    class BudgetedAndActualAmountsList
      def self.parse(list)
        list.map do |value|
          BudgetedAndActualAmounts.parse(value) unless value.nil?
        end
      end
    end

    class BudgetedAndActualAmounts
      def self.parse(map)
        data = Types::BudgetedAndActualAmounts.new
        data.budgeted_amount = (Spend.parse(map['BudgetedAmount']) unless map['BudgetedAmount'].nil?)
        data.actual_amount = (Spend.parse(map['ActualAmount']) unless map['ActualAmount'].nil?)
        data.time_period = (TimePeriod.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeBudgets
    class DescribeBudgets
      def self.parse(http_resp)
        data = Types::DescribeBudgetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.budgets = (Budgets.parse(map['Budgets']) unless map['Budgets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Budgets
      def self.parse(list)
        list.map do |value|
          Budget.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeNotificationsForBudget
    class DescribeNotificationsForBudget
      def self.parse(http_resp)
        data = Types::DescribeNotificationsForBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notifications = (Notifications.parse(map['Notifications']) unless map['Notifications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeSubscribersForNotification
    class DescribeSubscribersForNotification
      def self.parse(http_resp)
        data = Types::DescribeSubscribersForNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscribers = (Subscribers.parse(map['Subscribers']) unless map['Subscribers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ExecuteBudgetAction
    class ExecuteBudgetAction
      def self.parse(http_resp)
        data = Types::ExecuteBudgetActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_id = map['AccountId']
        data.budget_name = map['BudgetName']
        data.action_id = map['ActionId']
        data.execution_type = map['ExecutionType']
        data
      end
    end

    # Operation Parser for UpdateBudget
    class UpdateBudget
      def self.parse(http_resp)
        data = Types::UpdateBudgetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateBudgetAction
    class UpdateBudgetAction
      def self.parse(http_resp)
        data = Types::UpdateBudgetActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_id = map['AccountId']
        data.budget_name = map['BudgetName']
        data.old_action = (Action.parse(map['OldAction']) unless map['OldAction'].nil?)
        data.new_action = (Action.parse(map['NewAction']) unless map['NewAction'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNotification
    class UpdateNotification
      def self.parse(http_resp)
        data = Types::UpdateNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateSubscriber
    class UpdateSubscriber
      def self.parse(http_resp)
        data = Types::UpdateSubscriberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
