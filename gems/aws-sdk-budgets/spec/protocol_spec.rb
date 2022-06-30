# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-budgets'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Budgets
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_budget' do

    end

    describe '#create_budget_action' do

    end

    describe '#create_notification' do

    end

    describe '#create_subscriber' do

    end

    describe '#delete_budget' do

    end

    describe '#delete_budget_action' do

    end

    describe '#delete_notification' do

    end

    describe '#delete_subscriber' do

    end

    describe '#describe_budget' do

    end

    describe '#describe_budget_action' do

    end

    describe '#describe_budget_action_histories' do

    end

    describe '#describe_budget_actions_for_account' do

    end

    describe '#describe_budget_actions_for_budget' do

    end

    describe '#describe_budget_notifications_for_account' do

    end

    describe '#describe_budget_performance_history' do

    end

    describe '#describe_budgets' do

    end

    describe '#describe_notifications_for_budget' do

    end

    describe '#describe_subscribers_for_notification' do

    end

    describe '#execute_budget_action' do

    end

    describe '#update_budget' do

    end

    describe '#update_budget_action' do

    end

    describe '#update_notification' do

    end

    describe '#update_subscriber' do

    end

  end
end
