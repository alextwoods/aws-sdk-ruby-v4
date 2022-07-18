# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Budgets
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.action_id = params[:action_id]
        type.budget_name = params[:budget_name]
        type.notification_type = params[:notification_type]
        type.action_type = params[:action_type]
        type.action_threshold = ActionThreshold.build(params[:action_threshold], context: "#{context}[:action_threshold]") unless params[:action_threshold].nil?
        type.definition = Definition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.approval_model = params[:approval_model]
        type.status = params[:status]
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module ActionHistories
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionHistory, context: context)
        type = Types::ActionHistory.new
        type.timestamp = params[:timestamp]
        type.status = params[:status]
        type.event_type = params[:event_type]
        type.action_history_details = ActionHistoryDetails.build(params[:action_history_details], context: "#{context}[:action_history_details]") unless params[:action_history_details].nil?
        type
      end
    end

    module ActionHistoryDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionHistoryDetails, context: context)
        type = Types::ActionHistoryDetails.new
        type.message = params[:message]
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module ActionThreshold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionThreshold, context: context)
        type = Types::ActionThreshold.new
        type.action_threshold_value = params[:action_threshold_value]
        type.action_threshold_type = params[:action_threshold_type]
        type
      end
    end

    module Actions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoAdjustData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoAdjustData, context: context)
        type = Types::AutoAdjustData.new
        type.auto_adjust_type = params[:auto_adjust_type]
        type.historical_options = HistoricalOptions.build(params[:historical_options], context: "#{context}[:historical_options]") unless params[:historical_options].nil?
        type.last_auto_adjust_time = params[:last_auto_adjust_time]
        type
      end
    end

    module Budget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Budget, context: context)
        type = Types::Budget.new
        type.budget_name = params[:budget_name]
        type.budget_limit = Spend.build(params[:budget_limit], context: "#{context}[:budget_limit]") unless params[:budget_limit].nil?
        type.planned_budget_limits = PlannedBudgetLimits.build(params[:planned_budget_limits], context: "#{context}[:planned_budget_limits]") unless params[:planned_budget_limits].nil?
        type.cost_filters = CostFilters.build(params[:cost_filters], context: "#{context}[:cost_filters]") unless params[:cost_filters].nil?
        type.cost_types = CostTypes.build(params[:cost_types], context: "#{context}[:cost_types]") unless params[:cost_types].nil?
        type.time_unit = params[:time_unit]
        type.time_period = TimePeriod.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.calculated_spend = CalculatedSpend.build(params[:calculated_spend], context: "#{context}[:calculated_spend]") unless params[:calculated_spend].nil?
        type.budget_type = params[:budget_type]
        type.last_updated_time = params[:last_updated_time]
        type.auto_adjust_data = AutoAdjustData.build(params[:auto_adjust_data], context: "#{context}[:auto_adjust_data]") unless params[:auto_adjust_data].nil?
        type
      end
    end

    module BudgetNotificationsForAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BudgetNotificationsForAccount, context: context)
        type = Types::BudgetNotificationsForAccount.new
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.budget_name = params[:budget_name]
        type
      end
    end

    module BudgetNotificationsForAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BudgetNotificationsForAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BudgetPerformanceHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BudgetPerformanceHistory, context: context)
        type = Types::BudgetPerformanceHistory.new
        type.budget_name = params[:budget_name]
        type.budget_type = params[:budget_type]
        type.cost_filters = CostFilters.build(params[:cost_filters], context: "#{context}[:cost_filters]") unless params[:cost_filters].nil?
        type.cost_types = CostTypes.build(params[:cost_types], context: "#{context}[:cost_types]") unless params[:cost_types].nil?
        type.time_unit = params[:time_unit]
        type.budgeted_and_actual_amounts_list = BudgetedAndActualAmountsList.build(params[:budgeted_and_actual_amounts_list], context: "#{context}[:budgeted_and_actual_amounts_list]") unless params[:budgeted_and_actual_amounts_list].nil?
        type
      end
    end

    module BudgetedAndActualAmounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BudgetedAndActualAmounts, context: context)
        type = Types::BudgetedAndActualAmounts.new
        type.budgeted_amount = Spend.build(params[:budgeted_amount], context: "#{context}[:budgeted_amount]") unless params[:budgeted_amount].nil?
        type.actual_amount = Spend.build(params[:actual_amount], context: "#{context}[:actual_amount]") unless params[:actual_amount].nil?
        type.time_period = TimePeriod.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type
      end
    end

    module BudgetedAndActualAmountsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BudgetedAndActualAmounts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Budgets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Budget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CalculatedSpend
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculatedSpend, context: context)
        type = Types::CalculatedSpend.new
        type.actual_spend = Spend.build(params[:actual_spend], context: "#{context}[:actual_spend]") unless params[:actual_spend].nil?
        type.forecasted_spend = Spend.build(params[:forecasted_spend], context: "#{context}[:forecasted_spend]") unless params[:forecasted_spend].nil?
        type
      end
    end

    module CostFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DimensionValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module CostTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostTypes, context: context)
        type = Types::CostTypes.new
        type.include_tax = params[:include_tax]
        type.include_subscription = params[:include_subscription]
        type.use_blended = params[:use_blended]
        type.include_refund = params[:include_refund]
        type.include_credit = params[:include_credit]
        type.include_upfront = params[:include_upfront]
        type.include_recurring = params[:include_recurring]
        type.include_other_subscription = params[:include_other_subscription]
        type.include_support = params[:include_support]
        type.include_discount = params[:include_discount]
        type.use_amortized = params[:use_amortized]
        type
      end
    end

    module CreateBudgetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBudgetActionInput, context: context)
        type = Types::CreateBudgetActionInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification_type = params[:notification_type]
        type.action_type = params[:action_type]
        type.action_threshold = ActionThreshold.build(params[:action_threshold], context: "#{context}[:action_threshold]") unless params[:action_threshold].nil?
        type.definition = Definition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.approval_model = params[:approval_model]
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module CreateBudgetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBudgetActionOutput, context: context)
        type = Types::CreateBudgetActionOutput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type
      end
    end

    module CreateBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBudgetInput, context: context)
        type = Types::CreateBudgetInput.new
        type.account_id = params[:account_id]
        type.budget = Budget.build(params[:budget], context: "#{context}[:budget]") unless params[:budget].nil?
        type.notifications_with_subscribers = NotificationWithSubscribersList.build(params[:notifications_with_subscribers], context: "#{context}[:notifications_with_subscribers]") unless params[:notifications_with_subscribers].nil?
        type
      end
    end

    module CreateBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBudgetOutput, context: context)
        type = Types::CreateBudgetOutput.new
        type
      end
    end

    module CreateNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationInput, context: context)
        type = Types::CreateNotificationInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module CreateNotificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationOutput, context: context)
        type = Types::CreateNotificationOutput.new
        type
      end
    end

    module CreateSubscriberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriberInput, context: context)
        type = Types::CreateSubscriberInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.subscriber = Subscriber.build(params[:subscriber], context: "#{context}[:subscriber]") unless params[:subscriber].nil?
        type
      end
    end

    module CreateSubscriberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriberOutput, context: context)
        type = Types::CreateSubscriberOutput.new
        type
      end
    end

    module CreationLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreationLimitExceededException, context: context)
        type = Types::CreationLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Definition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Definition, context: context)
        type = Types::Definition.new
        type.iam_action_definition = IamActionDefinition.build(params[:iam_action_definition], context: "#{context}[:iam_action_definition]") unless params[:iam_action_definition].nil?
        type.scp_action_definition = ScpActionDefinition.build(params[:scp_action_definition], context: "#{context}[:scp_action_definition]") unless params[:scp_action_definition].nil?
        type.ssm_action_definition = SsmActionDefinition.build(params[:ssm_action_definition], context: "#{context}[:ssm_action_definition]") unless params[:ssm_action_definition].nil?
        type
      end
    end

    module DeleteBudgetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBudgetActionInput, context: context)
        type = Types::DeleteBudgetActionInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type
      end
    end

    module DeleteBudgetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBudgetActionOutput, context: context)
        type = Types::DeleteBudgetActionOutput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module DeleteBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBudgetInput, context: context)
        type = Types::DeleteBudgetInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type
      end
    end

    module DeleteBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBudgetOutput, context: context)
        type = Types::DeleteBudgetOutput.new
        type
      end
    end

    module DeleteNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationInput, context: context)
        type = Types::DeleteNotificationInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type
      end
    end

    module DeleteNotificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationOutput, context: context)
        type = Types::DeleteNotificationOutput.new
        type
      end
    end

    module DeleteSubscriberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriberInput, context: context)
        type = Types::DeleteSubscriberInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.subscriber = Subscriber.build(params[:subscriber], context: "#{context}[:subscriber]") unless params[:subscriber].nil?
        type
      end
    end

    module DeleteSubscriberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriberOutput, context: context)
        type = Types::DeleteSubscriberOutput.new
        type
      end
    end

    module DescribeBudgetActionHistoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionHistoriesInput, context: context)
        type = Types::DescribeBudgetActionHistoriesInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type.time_period = TimePeriod.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetActionHistoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionHistoriesOutput, context: context)
        type = Types::DescribeBudgetActionHistoriesOutput.new
        type.action_histories = ActionHistories.build(params[:action_histories], context: "#{context}[:action_histories]") unless params[:action_histories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionInput, context: context)
        type = Types::DescribeBudgetActionInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type
      end
    end

    module DescribeBudgetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionOutput, context: context)
        type = Types::DescribeBudgetActionOutput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module DescribeBudgetActionsForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionsForAccountInput, context: context)
        type = Types::DescribeBudgetActionsForAccountInput.new
        type.account_id = params[:account_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetActionsForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionsForAccountOutput, context: context)
        type = Types::DescribeBudgetActionsForAccountOutput.new
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetActionsForBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionsForBudgetInput, context: context)
        type = Types::DescribeBudgetActionsForBudgetInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetActionsForBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetActionsForBudgetOutput, context: context)
        type = Types::DescribeBudgetActionsForBudgetOutput.new
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetInput, context: context)
        type = Types::DescribeBudgetInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type
      end
    end

    module DescribeBudgetNotificationsForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetNotificationsForAccountInput, context: context)
        type = Types::DescribeBudgetNotificationsForAccountInput.new
        type.account_id = params[:account_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetNotificationsForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetNotificationsForAccountOutput, context: context)
        type = Types::DescribeBudgetNotificationsForAccountOutput.new
        type.budget_notifications_for_account = BudgetNotificationsForAccountList.build(params[:budget_notifications_for_account], context: "#{context}[:budget_notifications_for_account]") unless params[:budget_notifications_for_account].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetOutput, context: context)
        type = Types::DescribeBudgetOutput.new
        type.budget = Budget.build(params[:budget], context: "#{context}[:budget]") unless params[:budget].nil?
        type
      end
    end

    module DescribeBudgetPerformanceHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetPerformanceHistoryInput, context: context)
        type = Types::DescribeBudgetPerformanceHistoryInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.time_period = TimePeriod.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetPerformanceHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetPerformanceHistoryOutput, context: context)
        type = Types::DescribeBudgetPerformanceHistoryOutput.new
        type.budget_performance_history = BudgetPerformanceHistory.build(params[:budget_performance_history], context: "#{context}[:budget_performance_history]") unless params[:budget_performance_history].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetsInput, context: context)
        type = Types::DescribeBudgetsInput.new
        type.account_id = params[:account_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBudgetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBudgetsOutput, context: context)
        type = Types::DescribeBudgetsOutput.new
        type.budgets = Budgets.build(params[:budgets], context: "#{context}[:budgets]") unless params[:budgets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNotificationsForBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationsForBudgetInput, context: context)
        type = Types::DescribeNotificationsForBudgetInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNotificationsForBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationsForBudgetOutput, context: context)
        type = Types::DescribeNotificationsForBudgetOutput.new
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSubscribersForNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscribersForNotificationInput, context: context)
        type = Types::DescribeSubscribersForNotificationInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSubscribersForNotificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscribersForNotificationOutput, context: context)
        type = Types::DescribeSubscribersForNotificationOutput.new
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DimensionValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DuplicateRecordException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateRecordException, context: context)
        type = Types::DuplicateRecordException.new
        type.message = params[:message]
        type
      end
    end

    module ExecuteBudgetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteBudgetActionInput, context: context)
        type = Types::ExecuteBudgetActionInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type.execution_type = params[:execution_type]
        type
      end
    end

    module ExecuteBudgetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteBudgetActionOutput, context: context)
        type = Types::ExecuteBudgetActionOutput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type.execution_type = params[:execution_type]
        type
      end
    end

    module ExpiredNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredNextTokenException, context: context)
        type = Types::ExpiredNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HistoricalOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HistoricalOptions, context: context)
        type = Types::HistoricalOptions.new
        type.budget_adjustment_period = params[:budget_adjustment_period]
        type.look_back_available_periods = params[:look_back_available_periods]
        type
      end
    end

    module IamActionDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamActionDefinition, context: context)
        type = Types::IamActionDefinition.new
        type.policy_arn = params[:policy_arn]
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.users = Users.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module InstanceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Notification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Notification, context: context)
        type = Types::Notification.new
        type.notification_type = params[:notification_type]
        type.comparison_operator = params[:comparison_operator]
        type.threshold = params[:threshold]
        type.threshold_type = params[:threshold_type]
        type.notification_state = params[:notification_state]
        type
      end
    end

    module NotificationWithSubscribers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationWithSubscribers, context: context)
        type = Types::NotificationWithSubscribers.new
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module NotificationWithSubscribersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationWithSubscribers.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Notifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Notification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlannedBudgetLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Spend.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ResourceLockedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLockedException, context: context)
        type = Types::ResourceLockedException.new
        type.message = params[:message]
        type
      end
    end

    module Roles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScpActionDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScpActionDefinition, context: context)
        type = Types::ScpActionDefinition.new
        type.policy_id = params[:policy_id]
        type.target_ids = TargetIds.build(params[:target_ids], context: "#{context}[:target_ids]") unless params[:target_ids].nil?
        type
      end
    end

    module Spend
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Spend, context: context)
        type = Types::Spend.new
        type.amount = params[:amount]
        type.unit = params[:unit]
        type
      end
    end

    module SsmActionDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SsmActionDefinition, context: context)
        type = Types::SsmActionDefinition.new
        type.action_sub_type = params[:action_sub_type]
        type.region = params[:region]
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module Subscriber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscriber, context: context)
        type = Types::Subscriber.new
        type.subscription_type = params[:subscription_type]
        type.address = params[:address]
        type
      end
    end

    module Subscribers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscriber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TimePeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimePeriod, context: context)
        type = Types::TimePeriod.new
        type.start = params[:start]
        type.end = params[:end]
        type
      end
    end

    module UpdateBudgetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBudgetActionInput, context: context)
        type = Types::UpdateBudgetActionInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.action_id = params[:action_id]
        type.notification_type = params[:notification_type]
        type.action_threshold = ActionThreshold.build(params[:action_threshold], context: "#{context}[:action_threshold]") unless params[:action_threshold].nil?
        type.definition = Definition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.approval_model = params[:approval_model]
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type
      end
    end

    module UpdateBudgetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBudgetActionOutput, context: context)
        type = Types::UpdateBudgetActionOutput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.old_action = Action.build(params[:old_action], context: "#{context}[:old_action]") unless params[:old_action].nil?
        type.new_action = Action.build(params[:new_action], context: "#{context}[:new_action]") unless params[:new_action].nil?
        type
      end
    end

    module UpdateBudgetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBudgetInput, context: context)
        type = Types::UpdateBudgetInput.new
        type.account_id = params[:account_id]
        type.new_budget = Budget.build(params[:new_budget], context: "#{context}[:new_budget]") unless params[:new_budget].nil?
        type
      end
    end

    module UpdateBudgetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBudgetOutput, context: context)
        type = Types::UpdateBudgetOutput.new
        type
      end
    end

    module UpdateNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationInput, context: context)
        type = Types::UpdateNotificationInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.old_notification = Notification.build(params[:old_notification], context: "#{context}[:old_notification]") unless params[:old_notification].nil?
        type.new_notification = Notification.build(params[:new_notification], context: "#{context}[:new_notification]") unless params[:new_notification].nil?
        type
      end
    end

    module UpdateNotificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationOutput, context: context)
        type = Types::UpdateNotificationOutput.new
        type
      end
    end

    module UpdateSubscriberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriberInput, context: context)
        type = Types::UpdateSubscriberInput.new
        type.account_id = params[:account_id]
        type.budget_name = params[:budget_name]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.old_subscriber = Subscriber.build(params[:old_subscriber], context: "#{context}[:old_subscriber]") unless params[:old_subscriber].nil?
        type.new_subscriber = Subscriber.build(params[:new_subscriber], context: "#{context}[:new_subscriber]") unless params[:new_subscriber].nil?
        type
      end
    end

    module UpdateSubscriberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriberOutput, context: context)
        type = Types::UpdateSubscriberOutput.new
        type
      end
    end

    module Users
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
