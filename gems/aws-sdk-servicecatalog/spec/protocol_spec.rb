# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-servicecatalog'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ServiceCatalog
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_portfolio_share' do

    end

    describe '#associate_budget_with_resource' do

    end

    describe '#associate_principal_with_portfolio' do

    end

    describe '#associate_product_with_portfolio' do

    end

    describe '#associate_service_action_with_provisioning_artifact' do

    end

    describe '#associate_tag_option_with_resource' do

    end

    describe '#batch_associate_service_action_with_provisioning_artifact' do

    end

    describe '#batch_disassociate_service_action_from_provisioning_artifact' do

    end

    describe '#copy_product' do

    end

    describe '#create_constraint' do

    end

    describe '#create_portfolio' do

    end

    describe '#create_portfolio_share' do

    end

    describe '#create_product' do

    end

    describe '#create_provisioned_product_plan' do

    end

    describe '#create_provisioning_artifact' do

    end

    describe '#create_service_action' do

    end

    describe '#create_tag_option' do

    end

    describe '#delete_constraint' do

    end

    describe '#delete_portfolio' do

    end

    describe '#delete_portfolio_share' do

    end

    describe '#delete_product' do

    end

    describe '#delete_provisioned_product_plan' do

    end

    describe '#delete_provisioning_artifact' do

    end

    describe '#delete_service_action' do

    end

    describe '#delete_tag_option' do

    end

    describe '#describe_constraint' do

    end

    describe '#describe_copy_product_status' do

    end

    describe '#describe_portfolio' do

    end

    describe '#describe_portfolio_shares' do

    end

    describe '#describe_portfolio_share_status' do

    end

    describe '#describe_product' do

    end

    describe '#describe_product_as_admin' do

    end

    describe '#describe_product_view' do

    end

    describe '#describe_provisioned_product' do

    end

    describe '#describe_provisioned_product_plan' do

    end

    describe '#describe_provisioning_artifact' do

    end

    describe '#describe_provisioning_parameters' do

    end

    describe '#describe_record' do

    end

    describe '#describe_service_action' do

    end

    describe '#describe_service_action_execution_parameters' do

    end

    describe '#describe_tag_option' do

    end

    describe '#disable_aws_organizations_access' do

    end

    describe '#disassociate_budget_from_resource' do

    end

    describe '#disassociate_principal_from_portfolio' do

    end

    describe '#disassociate_product_from_portfolio' do

    end

    describe '#disassociate_service_action_from_provisioning_artifact' do

    end

    describe '#disassociate_tag_option_from_resource' do

    end

    describe '#enable_aws_organizations_access' do

    end

    describe '#execute_provisioned_product_plan' do

    end

    describe '#execute_provisioned_product_service_action' do

    end

    describe '#get_aws_organizations_access_status' do

    end

    describe '#get_provisioned_product_outputs' do

    end

    describe '#import_as_provisioned_product' do

    end

    describe '#list_accepted_portfolio_shares' do

    end

    describe '#list_budgets_for_resource' do

    end

    describe '#list_constraints_for_portfolio' do

    end

    describe '#list_launch_paths' do

    end

    describe '#list_organization_portfolio_access' do

    end

    describe '#list_portfolio_access' do

    end

    describe '#list_portfolios' do

    end

    describe '#list_portfolios_for_product' do

    end

    describe '#list_principals_for_portfolio' do

    end

    describe '#list_provisioned_product_plans' do

    end

    describe '#list_provisioning_artifacts' do

    end

    describe '#list_provisioning_artifacts_for_service_action' do

    end

    describe '#list_record_history' do

    end

    describe '#list_resources_for_tag_option' do

    end

    describe '#list_service_actions' do

    end

    describe '#list_service_actions_for_provisioning_artifact' do

    end

    describe '#list_stack_instances_for_provisioned_product' do

    end

    describe '#list_tag_options' do

    end

    describe '#provision_product' do

    end

    describe '#reject_portfolio_share' do

    end

    describe '#scan_provisioned_products' do

    end

    describe '#search_products' do

    end

    describe '#search_products_as_admin' do

    end

    describe '#search_provisioned_products' do

    end

    describe '#terminate_provisioned_product' do

    end

    describe '#update_constraint' do

    end

    describe '#update_portfolio' do

    end

    describe '#update_portfolio_share' do

    end

    describe '#update_product' do

    end

    describe '#update_provisioned_product' do

    end

    describe '#update_provisioned_product_properties' do

    end

    describe '#update_provisioning_artifact' do

    end

    describe '#update_service_action' do

    end

    describe '#update_tag_option' do

    end

  end
end
