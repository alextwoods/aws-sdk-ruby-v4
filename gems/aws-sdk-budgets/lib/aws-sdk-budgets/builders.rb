# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Budgets
  module Builders

    # Operation Builder for CreateBudget
    class CreateBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.CreateBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['Budget'] = Builders::Budget.build(input[:budget]) unless input[:budget].nil?
        data['NotificationsWithSubscribers'] = Builders::NotificationWithSubscribersList.build(input[:notifications_with_subscribers]) unless input[:notifications_with_subscribers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NotificationWithSubscribersList
    class NotificationWithSubscribersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NotificationWithSubscribers.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NotificationWithSubscribers
    class NotificationWithSubscribers
      def self.build(input)
        data = {}
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        data
      end
    end

    # List Builder for Subscribers
    class Subscribers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Subscriber.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Subscriber
    class Subscriber
      def self.build(input)
        data = {}
        data['SubscriptionType'] = input[:subscription_type] unless input[:subscription_type].nil?
        data['Address'] = input[:address] unless input[:address].nil?
        data
      end
    end

    # Structure Builder for Notification
    class Notification
      def self.build(input)
        data = {}
        data['NotificationType'] = input[:notification_type] unless input[:notification_type].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['ThresholdType'] = input[:threshold_type] unless input[:threshold_type].nil?
        data['NotificationState'] = input[:notification_state] unless input[:notification_state].nil?
        data
      end
    end

    # Structure Builder for Budget
    class Budget
      def self.build(input)
        data = {}
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['BudgetLimit'] = Builders::Spend.build(input[:budget_limit]) unless input[:budget_limit].nil?
        data['PlannedBudgetLimits'] = Builders::PlannedBudgetLimits.build(input[:planned_budget_limits]) unless input[:planned_budget_limits].nil?
        data['CostFilters'] = Builders::CostFilters.build(input[:cost_filters]) unless input[:cost_filters].nil?
        data['CostTypes'] = Builders::CostTypes.build(input[:cost_types]) unless input[:cost_types].nil?
        data['TimeUnit'] = input[:time_unit] unless input[:time_unit].nil?
        data['TimePeriod'] = Builders::TimePeriod.build(input[:time_period]) unless input[:time_period].nil?
        data['CalculatedSpend'] = Builders::CalculatedSpend.build(input[:calculated_spend]) unless input[:calculated_spend].nil?
        data['BudgetType'] = input[:budget_type] unless input[:budget_type].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_updated_time]).to_i unless input[:last_updated_time].nil?
        data['AutoAdjustData'] = Builders::AutoAdjustData.build(input[:auto_adjust_data]) unless input[:auto_adjust_data].nil?
        data
      end
    end

    # Structure Builder for AutoAdjustData
    class AutoAdjustData
      def self.build(input)
        data = {}
        data['AutoAdjustType'] = input[:auto_adjust_type] unless input[:auto_adjust_type].nil?
        data['HistoricalOptions'] = Builders::HistoricalOptions.build(input[:historical_options]) unless input[:historical_options].nil?
        data['LastAutoAdjustTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_auto_adjust_time]).to_i unless input[:last_auto_adjust_time].nil?
        data
      end
    end

    # Structure Builder for HistoricalOptions
    class HistoricalOptions
      def self.build(input)
        data = {}
        data['BudgetAdjustmentPeriod'] = input[:budget_adjustment_period] unless input[:budget_adjustment_period].nil?
        data['LookBackAvailablePeriods'] = input[:look_back_available_periods] unless input[:look_back_available_periods].nil?
        data
      end
    end

    # Structure Builder for CalculatedSpend
    class CalculatedSpend
      def self.build(input)
        data = {}
        data['ActualSpend'] = Builders::Spend.build(input[:actual_spend]) unless input[:actual_spend].nil?
        data['ForecastedSpend'] = Builders::Spend.build(input[:forecasted_spend]) unless input[:forecasted_spend].nil?
        data
      end
    end

    # Structure Builder for Spend
    class Spend
      def self.build(input)
        data = {}
        data['Amount'] = input[:amount] unless input[:amount].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for TimePeriod
    class TimePeriod
      def self.build(input)
        data = {}
        data['Start'] = Hearth::TimeHelper.to_epoch_seconds(input[:start]).to_i unless input[:start].nil?
        data['End'] = Hearth::TimeHelper.to_epoch_seconds(input[:end]).to_i unless input[:end].nil?
        data
      end
    end

    # Structure Builder for CostTypes
    class CostTypes
      def self.build(input)
        data = {}
        data['IncludeTax'] = input[:include_tax] unless input[:include_tax].nil?
        data['IncludeSubscription'] = input[:include_subscription] unless input[:include_subscription].nil?
        data['UseBlended'] = input[:use_blended] unless input[:use_blended].nil?
        data['IncludeRefund'] = input[:include_refund] unless input[:include_refund].nil?
        data['IncludeCredit'] = input[:include_credit] unless input[:include_credit].nil?
        data['IncludeUpfront'] = input[:include_upfront] unless input[:include_upfront].nil?
        data['IncludeRecurring'] = input[:include_recurring] unless input[:include_recurring].nil?
        data['IncludeOtherSubscription'] = input[:include_other_subscription] unless input[:include_other_subscription].nil?
        data['IncludeSupport'] = input[:include_support] unless input[:include_support].nil?
        data['IncludeDiscount'] = input[:include_discount] unless input[:include_discount].nil?
        data['UseAmortized'] = input[:use_amortized] unless input[:use_amortized].nil?
        data
      end
    end

    # Map Builder for CostFilters
    class CostFilters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::DimensionValues.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for DimensionValues
    class DimensionValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for PlannedBudgetLimits
    class PlannedBudgetLimits
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Spend.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBudgetAction
    class CreateBudgetAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.CreateBudgetAction'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['NotificationType'] = input[:notification_type] unless input[:notification_type].nil?
        data['ActionType'] = input[:action_type] unless input[:action_type].nil?
        data['ActionThreshold'] = Builders::ActionThreshold.build(input[:action_threshold]) unless input[:action_threshold].nil?
        data['Definition'] = Builders::Definition.build(input[:definition]) unless input[:definition].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['ApprovalModel'] = input[:approval_model] unless input[:approval_model].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Definition
    class Definition
      def self.build(input)
        data = {}
        data['IamActionDefinition'] = Builders::IamActionDefinition.build(input[:iam_action_definition]) unless input[:iam_action_definition].nil?
        data['ScpActionDefinition'] = Builders::ScpActionDefinition.build(input[:scp_action_definition]) unless input[:scp_action_definition].nil?
        data['SsmActionDefinition'] = Builders::SsmActionDefinition.build(input[:ssm_action_definition]) unless input[:ssm_action_definition].nil?
        data
      end
    end

    # Structure Builder for SsmActionDefinition
    class SsmActionDefinition
      def self.build(input)
        data = {}
        data['ActionSubType'] = input[:action_sub_type] unless input[:action_sub_type].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['InstanceIds'] = Builders::InstanceIds.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data
      end
    end

    # List Builder for InstanceIds
    class InstanceIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScpActionDefinition
    class ScpActionDefinition
      def self.build(input)
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['TargetIds'] = Builders::TargetIds.build(input[:target_ids]) unless input[:target_ids].nil?
        data
      end
    end

    # List Builder for TargetIds
    class TargetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IamActionDefinition
    class IamActionDefinition
      def self.build(input)
        data = {}
        data['PolicyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['Roles'] = Builders::Roles.build(input[:roles]) unless input[:roles].nil?
        data['Groups'] = Builders::Groups.build(input[:groups]) unless input[:groups].nil?
        data['Users'] = Builders::Users.build(input[:users]) unless input[:users].nil?
        data
      end
    end

    # List Builder for Users
    class Users
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Groups
    class Groups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Roles
    class Roles
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActionThreshold
    class ActionThreshold
      def self.build(input)
        data = {}
        data['ActionThresholdValue'] = Hearth::NumberHelper.serialize(input[:action_threshold_value]) unless input[:action_threshold_value].nil?
        data['ActionThresholdType'] = input[:action_threshold_type] unless input[:action_threshold_type].nil?
        data
      end
    end

    # Operation Builder for CreateNotification
    class CreateNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.CreateNotification'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSubscriber
    class CreateSubscriber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.CreateSubscriber'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['Subscriber'] = Builders::Subscriber.build(input[:subscriber]) unless input[:subscriber].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBudget
    class DeleteBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DeleteBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBudgetAction
    class DeleteBudgetAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DeleteBudgetAction'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ActionId'] = input[:action_id] unless input[:action_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNotification
    class DeleteNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DeleteNotification'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSubscriber
    class DeleteSubscriber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DeleteSubscriber'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['Subscriber'] = Builders::Subscriber.build(input[:subscriber]) unless input[:subscriber].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudget
    class DescribeBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetAction
    class DescribeBudgetAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetAction'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ActionId'] = input[:action_id] unless input[:action_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetActionHistories
    class DescribeBudgetActionHistories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetActionHistories'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ActionId'] = input[:action_id] unless input[:action_id].nil?
        data['TimePeriod'] = Builders::TimePeriod.build(input[:time_period]) unless input[:time_period].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetActionsForAccount
    class DescribeBudgetActionsForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetActionsForAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetActionsForBudget
    class DescribeBudgetActionsForBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetActionsForBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetNotificationsForAccount
    class DescribeBudgetNotificationsForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetNotificationsForAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgetPerformanceHistory
    class DescribeBudgetPerformanceHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgetPerformanceHistory'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['TimePeriod'] = Builders::TimePeriod.build(input[:time_period]) unless input[:time_period].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBudgets
    class DescribeBudgets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeBudgets'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNotificationsForBudget
    class DescribeNotificationsForBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeNotificationsForBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubscribersForNotification
    class DescribeSubscribersForNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.DescribeSubscribersForNotification'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteBudgetAction
    class ExecuteBudgetAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.ExecuteBudgetAction'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ActionId'] = input[:action_id] unless input[:action_id].nil?
        data['ExecutionType'] = input[:execution_type] unless input[:execution_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBudget
    class UpdateBudget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.UpdateBudget'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['NewBudget'] = Builders::Budget.build(input[:new_budget]) unless input[:new_budget].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBudgetAction
    class UpdateBudgetAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.UpdateBudgetAction'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ActionId'] = input[:action_id] unless input[:action_id].nil?
        data['NotificationType'] = input[:notification_type] unless input[:notification_type].nil?
        data['ActionThreshold'] = Builders::ActionThreshold.build(input[:action_threshold]) unless input[:action_threshold].nil?
        data['Definition'] = Builders::Definition.build(input[:definition]) unless input[:definition].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['ApprovalModel'] = input[:approval_model] unless input[:approval_model].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNotification
    class UpdateNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.UpdateNotification'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['OldNotification'] = Builders::Notification.build(input[:old_notification]) unless input[:old_notification].nil?
        data['NewNotification'] = Builders::Notification.build(input[:new_notification]) unless input[:new_notification].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSubscriber
    class UpdateSubscriber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSBudgetServiceGateway.UpdateSubscriber'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['OldSubscriber'] = Builders::Subscriber.build(input[:old_subscriber]) unless input[:old_subscriber].nil?
        data['NewSubscriber'] = Builders::Subscriber.build(input[:new_subscriber]) unless input[:new_subscriber].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
