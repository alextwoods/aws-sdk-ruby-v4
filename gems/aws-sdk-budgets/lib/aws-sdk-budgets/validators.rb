# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Budgets
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        ActionThreshold.validate!(input[:action_threshold], context: "#{context}[:action_threshold]") unless input[:action_threshold].nil?
        Definition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:approval_model], ::String, context: "#{context}[:approval_model]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class ActionHistories
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionHistory, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        ActionHistoryDetails.validate!(input[:action_history_details], context: "#{context}[:action_history_details]") unless input[:action_history_details].nil?
      end
    end

    class ActionHistoryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionHistoryDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class ActionThreshold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionThreshold, context: context)
        Hearth::Validator.validate!(input[:action_threshold_value], ::Float, context: "#{context}[:action_threshold_value]")
        Hearth::Validator.validate!(input[:action_threshold_type], ::String, context: "#{context}[:action_threshold_type]")
      end
    end

    class Actions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoAdjustData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoAdjustData, context: context)
        Hearth::Validator.validate!(input[:auto_adjust_type], ::String, context: "#{context}[:auto_adjust_type]")
        HistoricalOptions.validate!(input[:historical_options], context: "#{context}[:historical_options]") unless input[:historical_options].nil?
        Hearth::Validator.validate!(input[:last_auto_adjust_time], ::Time, context: "#{context}[:last_auto_adjust_time]")
      end
    end

    class Budget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Budget, context: context)
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Spend.validate!(input[:budget_limit], context: "#{context}[:budget_limit]") unless input[:budget_limit].nil?
        PlannedBudgetLimits.validate!(input[:planned_budget_limits], context: "#{context}[:planned_budget_limits]") unless input[:planned_budget_limits].nil?
        CostFilters.validate!(input[:cost_filters], context: "#{context}[:cost_filters]") unless input[:cost_filters].nil?
        CostTypes.validate!(input[:cost_types], context: "#{context}[:cost_types]") unless input[:cost_types].nil?
        Hearth::Validator.validate!(input[:time_unit], ::String, context: "#{context}[:time_unit]")
        TimePeriod.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        CalculatedSpend.validate!(input[:calculated_spend], context: "#{context}[:calculated_spend]") unless input[:calculated_spend].nil?
        Hearth::Validator.validate!(input[:budget_type], ::String, context: "#{context}[:budget_type]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        AutoAdjustData.validate!(input[:auto_adjust_data], context: "#{context}[:auto_adjust_data]") unless input[:auto_adjust_data].nil?
      end
    end

    class BudgetNotificationsForAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BudgetNotificationsForAccount, context: context)
        Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
      end
    end

    class BudgetNotificationsForAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BudgetNotificationsForAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BudgetPerformanceHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BudgetPerformanceHistory, context: context)
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:budget_type], ::String, context: "#{context}[:budget_type]")
        CostFilters.validate!(input[:cost_filters], context: "#{context}[:cost_filters]") unless input[:cost_filters].nil?
        CostTypes.validate!(input[:cost_types], context: "#{context}[:cost_types]") unless input[:cost_types].nil?
        Hearth::Validator.validate!(input[:time_unit], ::String, context: "#{context}[:time_unit]")
        BudgetedAndActualAmountsList.validate!(input[:budgeted_and_actual_amounts_list], context: "#{context}[:budgeted_and_actual_amounts_list]") unless input[:budgeted_and_actual_amounts_list].nil?
      end
    end

    class BudgetedAndActualAmounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BudgetedAndActualAmounts, context: context)
        Spend.validate!(input[:budgeted_amount], context: "#{context}[:budgeted_amount]") unless input[:budgeted_amount].nil?
        Spend.validate!(input[:actual_amount], context: "#{context}[:actual_amount]") unless input[:actual_amount].nil?
        TimePeriod.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
      end
    end

    class BudgetedAndActualAmountsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BudgetedAndActualAmounts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Budgets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Budget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CalculatedSpend
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculatedSpend, context: context)
        Spend.validate!(input[:actual_spend], context: "#{context}[:actual_spend]") unless input[:actual_spend].nil?
        Spend.validate!(input[:forecasted_spend], context: "#{context}[:forecasted_spend]") unless input[:forecasted_spend].nil?
      end
    end

    class CostFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          DimensionValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class CostTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostTypes, context: context)
        Hearth::Validator.validate!(input[:include_tax], ::TrueClass, ::FalseClass, context: "#{context}[:include_tax]")
        Hearth::Validator.validate!(input[:include_subscription], ::TrueClass, ::FalseClass, context: "#{context}[:include_subscription]")
        Hearth::Validator.validate!(input[:use_blended], ::TrueClass, ::FalseClass, context: "#{context}[:use_blended]")
        Hearth::Validator.validate!(input[:include_refund], ::TrueClass, ::FalseClass, context: "#{context}[:include_refund]")
        Hearth::Validator.validate!(input[:include_credit], ::TrueClass, ::FalseClass, context: "#{context}[:include_credit]")
        Hearth::Validator.validate!(input[:include_upfront], ::TrueClass, ::FalseClass, context: "#{context}[:include_upfront]")
        Hearth::Validator.validate!(input[:include_recurring], ::TrueClass, ::FalseClass, context: "#{context}[:include_recurring]")
        Hearth::Validator.validate!(input[:include_other_subscription], ::TrueClass, ::FalseClass, context: "#{context}[:include_other_subscription]")
        Hearth::Validator.validate!(input[:include_support], ::TrueClass, ::FalseClass, context: "#{context}[:include_support]")
        Hearth::Validator.validate!(input[:include_discount], ::TrueClass, ::FalseClass, context: "#{context}[:include_discount]")
        Hearth::Validator.validate!(input[:use_amortized], ::TrueClass, ::FalseClass, context: "#{context}[:use_amortized]")
      end
    end

    class CreateBudgetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBudgetActionInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        ActionThreshold.validate!(input[:action_threshold], context: "#{context}[:action_threshold]") unless input[:action_threshold].nil?
        Definition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:approval_model], ::String, context: "#{context}[:approval_model]")
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class CreateBudgetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBudgetActionOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class CreateBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Budget.validate!(input[:budget], context: "#{context}[:budget]") unless input[:budget].nil?
        NotificationWithSubscribersList.validate!(input[:notifications_with_subscribers], context: "#{context}[:notifications_with_subscribers]") unless input[:notifications_with_subscribers].nil?
      end
    end

    class CreateBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBudgetOutput, context: context)
      end
    end

    class CreateNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class CreateNotificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationOutput, context: context)
      end
    end

    class CreateSubscriberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Subscriber.validate!(input[:subscriber], context: "#{context}[:subscriber]") unless input[:subscriber].nil?
      end
    end

    class CreateSubscriberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriberOutput, context: context)
      end
    end

    class CreationLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreationLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Definition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Definition, context: context)
        IamActionDefinition.validate!(input[:iam_action_definition], context: "#{context}[:iam_action_definition]") unless input[:iam_action_definition].nil?
        ScpActionDefinition.validate!(input[:scp_action_definition], context: "#{context}[:scp_action_definition]") unless input[:scp_action_definition].nil?
        SsmActionDefinition.validate!(input[:ssm_action_definition], context: "#{context}[:ssm_action_definition]") unless input[:ssm_action_definition].nil?
      end
    end

    class DeleteBudgetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBudgetActionInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class DeleteBudgetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBudgetActionOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class DeleteBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
      end
    end

    class DeleteBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBudgetOutput, context: context)
      end
    end

    class DeleteNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
      end
    end

    class DeleteNotificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationOutput, context: context)
      end
    end

    class DeleteSubscriberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Subscriber.validate!(input[:subscriber], context: "#{context}[:subscriber]") unless input[:subscriber].nil?
      end
    end

    class DeleteSubscriberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriberOutput, context: context)
      end
    end

    class DescribeBudgetActionHistoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionHistoriesInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        TimePeriod.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetActionHistoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionHistoriesOutput, context: context)
        ActionHistories.validate!(input[:action_histories], context: "#{context}[:action_histories]") unless input[:action_histories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class DescribeBudgetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class DescribeBudgetActionsForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionsForAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetActionsForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionsForAccountOutput, context: context)
        Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetActionsForBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionsForBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetActionsForBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetActionsForBudgetOutput, context: context)
        Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
      end
    end

    class DescribeBudgetNotificationsForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetNotificationsForAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetNotificationsForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetNotificationsForAccountOutput, context: context)
        BudgetNotificationsForAccountList.validate!(input[:budget_notifications_for_account], context: "#{context}[:budget_notifications_for_account]") unless input[:budget_notifications_for_account].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetOutput, context: context)
        Budget.validate!(input[:budget], context: "#{context}[:budget]") unless input[:budget].nil?
      end
    end

    class DescribeBudgetPerformanceHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetPerformanceHistoryInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        TimePeriod.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetPerformanceHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetPerformanceHistoryOutput, context: context)
        BudgetPerformanceHistory.validate!(input[:budget_performance_history], context: "#{context}[:budget_performance_history]") unless input[:budget_performance_history].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBudgetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBudgetsOutput, context: context)
        Budgets.validate!(input[:budgets], context: "#{context}[:budgets]") unless input[:budgets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNotificationsForBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationsForBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNotificationsForBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationsForBudgetOutput, context: context)
        Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSubscribersForNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscribersForNotificationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSubscribersForNotificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscribersForNotificationOutput, context: context)
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DimensionValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DuplicateRecordException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateRecordException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecuteBudgetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteBudgetActionInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:execution_type], ::String, context: "#{context}[:execution_type]")
      end
    end

    class ExecuteBudgetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteBudgetActionOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:execution_type], ::String, context: "#{context}[:execution_type]")
      end
    end

    class ExpiredNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HistoricalOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HistoricalOptions, context: context)
        Hearth::Validator.validate!(input[:budget_adjustment_period], ::Integer, context: "#{context}[:budget_adjustment_period]")
        Hearth::Validator.validate!(input[:look_back_available_periods], ::Integer, context: "#{context}[:look_back_available_periods]")
      end
    end

    class IamActionDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamActionDefinition, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Users.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class InstanceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Notification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Notification, context: context)
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:threshold_type], ::String, context: "#{context}[:threshold_type]")
        Hearth::Validator.validate!(input[:notification_state], ::String, context: "#{context}[:notification_state]")
      end
    end

    class NotificationWithSubscribers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationWithSubscribers, context: context)
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class NotificationWithSubscribersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotificationWithSubscribers.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Notifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Notification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlannedBudgetLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Spend.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ResourceLockedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLockedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Roles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScpActionDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScpActionDefinition, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        TargetIds.validate!(input[:target_ids], context: "#{context}[:target_ids]") unless input[:target_ids].nil?
      end
    end

    class Spend
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Spend, context: context)
        Hearth::Validator.validate!(input[:amount], ::String, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class SsmActionDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SsmActionDefinition, context: context)
        Hearth::Validator.validate!(input[:action_sub_type], ::String, context: "#{context}[:action_sub_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class Subscriber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscriber, context: context)
        Hearth::Validator.validate!(input[:subscription_type], ::String, context: "#{context}[:subscription_type]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
      end
    end

    class Subscribers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Subscriber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TimePeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimePeriod, context: context)
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Time, context: "#{context}[:end]")
      end
    end

    class UpdateBudgetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBudgetActionInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        ActionThreshold.validate!(input[:action_threshold], context: "#{context}[:action_threshold]") unless input[:action_threshold].nil?
        Definition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:approval_model], ::String, context: "#{context}[:approval_model]")
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
      end
    end

    class UpdateBudgetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBudgetActionOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Action.validate!(input[:old_action], context: "#{context}[:old_action]") unless input[:old_action].nil?
        Action.validate!(input[:new_action], context: "#{context}[:new_action]") unless input[:new_action].nil?
      end
    end

    class UpdateBudgetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBudgetInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Budget.validate!(input[:new_budget], context: "#{context}[:new_budget]") unless input[:new_budget].nil?
      end
    end

    class UpdateBudgetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBudgetOutput, context: context)
      end
    end

    class UpdateNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:old_notification], context: "#{context}[:old_notification]") unless input[:old_notification].nil?
        Notification.validate!(input[:new_notification], context: "#{context}[:new_notification]") unless input[:new_notification].nil?
      end
    end

    class UpdateNotificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationOutput, context: context)
      end
    end

    class UpdateSubscriberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriberInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Subscriber.validate!(input[:old_subscriber], context: "#{context}[:old_subscriber]") unless input[:old_subscriber].nil?
        Subscriber.validate!(input[:new_subscriber], context: "#{context}[:new_subscriber]") unless input[:new_subscriber].nil?
      end
    end

    class UpdateSubscriberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriberOutput, context: context)
      end
    end

    class Users
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
