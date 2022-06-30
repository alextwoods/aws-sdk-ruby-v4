# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalog
  module Validators

    class AcceptPortfolioShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptPortfolioShareInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:portfolio_share_type], ::String, context: "#{context}[:portfolio_share_type]")
      end
    end

    class AcceptPortfolioShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptPortfolioShareOutput, context: context)
      end
    end

    class AccessLevelFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessLevelFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AccountIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AllowedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateBudgetWithResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBudgetWithResourceInput, context: context)
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class AssociateBudgetWithResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBudgetWithResourceOutput, context: context)
      end
    end

    class AssociatePrincipalWithPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePrincipalWithPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
      end
    end

    class AssociatePrincipalWithPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePrincipalWithPortfolioOutput, context: context)
      end
    end

    class AssociateProductWithPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateProductWithPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:source_portfolio_id], ::String, context: "#{context}[:source_portfolio_id]")
      end
    end

    class AssociateProductWithPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateProductWithPortfolioOutput, context: context)
      end
    end

    class AssociateServiceActionWithProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceActionWithProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class AssociateServiceActionWithProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceActionWithProvisioningArtifactOutput, context: context)
      end
    end

    class AssociateTagOptionWithResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTagOptionWithResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:tag_option_id], ::String, context: "#{context}[:tag_option_id]")
      end
    end

    class AssociateTagOptionWithResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTagOptionWithResourceOutput, context: context)
      end
    end

    class BatchAssociateServiceActionWithProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateServiceActionWithProvisioningArtifactInput, context: context)
        Validators::ServiceActionAssociations.validate!(input[:service_action_associations], context: "#{context}[:service_action_associations]") unless input[:service_action_associations].nil?
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class BatchAssociateServiceActionWithProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateServiceActionWithProvisioningArtifactOutput, context: context)
        Validators::FailedServiceActionAssociations.validate!(input[:failed_service_action_associations], context: "#{context}[:failed_service_action_associations]") unless input[:failed_service_action_associations].nil?
      end
    end

    class BatchDisassociateServiceActionFromProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateServiceActionFromProvisioningArtifactInput, context: context)
        Validators::ServiceActionAssociations.validate!(input[:service_action_associations], context: "#{context}[:service_action_associations]") unless input[:service_action_associations].nil?
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class BatchDisassociateServiceActionFromProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput, context: context)
        Validators::FailedServiceActionAssociations.validate!(input[:failed_service_action_associations], context: "#{context}[:failed_service_action_associations]") unless input[:failed_service_action_associations].nil?
      end
    end

    class BudgetDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BudgetDetail, context: context)
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
      end
    end

    class Budgets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BudgetDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchDashboard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDashboard, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CloudWatchDashboards
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchDashboard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConstraintDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConstraintDetail, context: context)
        Hearth::Validator.validate!(input[:constraint_id], ::String, context: "#{context}[:constraint_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
      end
    end

    class ConstraintDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConstraintDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConstraintSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConstraintSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConstraintSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConstraintSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CopyOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CopyProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:source_product_arn], ::String, context: "#{context}[:source_product_arn]")
        Hearth::Validator.validate!(input[:target_product_id], ::String, context: "#{context}[:target_product_id]")
        Hearth::Validator.validate!(input[:target_product_name], ::String, context: "#{context}[:target_product_name]")
        Validators::SourceProvisioningArtifactProperties.validate!(input[:source_provisioning_artifact_identifiers], context: "#{context}[:source_provisioning_artifact_identifiers]") unless input[:source_provisioning_artifact_identifiers].nil?
        Validators::CopyOptions.validate!(input[:copy_options], context: "#{context}[:copy_options]") unless input[:copy_options].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CopyProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyProductOutput, context: context)
        Hearth::Validator.validate!(input[:copy_product_token], ::String, context: "#{context}[:copy_product_token]")
      end
    end

    class CreateConstraintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConstraintInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateConstraintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConstraintOutput, context: context)
        Validators::ConstraintDetail.validate!(input[:constraint_detail], context: "#{context}[:constraint_detail]") unless input[:constraint_detail].nil?
        Hearth::Validator.validate!(input[:constraint_parameters], ::String, context: "#{context}[:constraint_parameters]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreatePortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Validators::AddTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreatePortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortfolioOutput, context: context)
        Validators::PortfolioDetail.validate!(input[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless input[:portfolio_detail].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePortfolioShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortfolioShareInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::OrganizationNode.validate!(input[:organization_node], context: "#{context}[:organization_node]") unless input[:organization_node].nil?
        Hearth::Validator.validate!(input[:share_tag_options], ::TrueClass, ::FalseClass, context: "#{context}[:share_tag_options]")
      end
    end

    class CreatePortfolioShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortfolioShareOutput, context: context)
        Hearth::Validator.validate!(input[:portfolio_share_token], ::String, context: "#{context}[:portfolio_share_token]")
      end
    end

    class CreateProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:distributor], ::String, context: "#{context}[:distributor]")
        Hearth::Validator.validate!(input[:support_description], ::String, context: "#{context}[:support_description]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_url], ::String, context: "#{context}[:support_url]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Validators::AddTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ProvisioningArtifactProperties.validate!(input[:provisioning_artifact_parameters], context: "#{context}[:provisioning_artifact_parameters]") unless input[:provisioning_artifact_parameters].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProductOutput, context: context)
        Validators::ProductViewDetail.validate!(input[:product_view_detail], context: "#{context}[:product_view_detail]") unless input[:product_view_detail].nil?
        Validators::ProvisioningArtifactDetail.validate!(input[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless input[:provisioning_artifact_detail].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProvisionedProductPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisionedProductPlanInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:plan_name], ::String, context: "#{context}[:plan_name]")
        Hearth::Validator.validate!(input[:plan_type], ::String, context: "#{context}[:plan_type]")
        Validators::NotificationArns.validate!(input[:notification_arns], context: "#{context}[:notification_arns]") unless input[:notification_arns].nil?
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Validators::UpdateProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProvisionedProductPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisionedProductPlanOutput, context: context)
        Hearth::Validator.validate!(input[:plan_name], ::String, context: "#{context}[:plan_name]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:provision_product_id], ::String, context: "#{context}[:provision_product_id]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
      end
    end

    class CreateProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Validators::ProvisioningArtifactProperties.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProvisioningArtifactOutput, context: context)
        Validators::ProvisioningArtifactDetail.validate!(input[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless input[:provisioning_artifact_detail].nil?
        Validators::ProvisioningArtifactInfo.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:definition_type], ::String, context: "#{context}[:definition_type]")
        Validators::ServiceActionDefinitionMap.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceActionOutput, context: context)
        Validators::ServiceActionDetail.validate!(input[:service_action_detail], context: "#{context}[:service_action_detail]") unless input[:service_action_detail].nil?
      end
    end

    class CreateTagOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagOptionInput, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CreateTagOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagOptionOutput, context: context)
        Validators::TagOptionDetail.validate!(input[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless input[:tag_option_detail].nil?
      end
    end

    class DeleteConstraintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConstraintInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteConstraintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConstraintOutput, context: context)
      end
    end

    class DeletePortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeletePortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortfolioOutput, context: context)
      end
    end

    class DeletePortfolioShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortfolioShareInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::OrganizationNode.validate!(input[:organization_node], context: "#{context}[:organization_node]") unless input[:organization_node].nil?
      end
    end

    class DeletePortfolioShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortfolioShareOutput, context: context)
        Hearth::Validator.validate!(input[:portfolio_share_token], ::String, context: "#{context}[:portfolio_share_token]")
      end
    end

    class DeleteProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProductOutput, context: context)
      end
    end

    class DeleteProvisionedProductPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisionedProductPlanInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:ignore_errors], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_errors]")
      end
    end

    class DeleteProvisionedProductPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisionedProductPlanOutput, context: context)
      end
    end

    class DeleteProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
      end
    end

    class DeleteProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisioningArtifactOutput, context: context)
      end
    end

    class DeleteServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class DeleteServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceActionOutput, context: context)
      end
    end

    class DeleteTagOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagOptionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteTagOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagOptionOutput, context: context)
      end
    end

    class DescribeConstraintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConstraintInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeConstraintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConstraintOutput, context: context)
        Validators::ConstraintDetail.validate!(input[:constraint_detail], context: "#{context}[:constraint_detail]") unless input[:constraint_detail].nil?
        Hearth::Validator.validate!(input[:constraint_parameters], ::String, context: "#{context}[:constraint_parameters]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeCopyProductStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCopyProductStatusInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:copy_product_token], ::String, context: "#{context}[:copy_product_token]")
      end
    end

    class DescribeCopyProductStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCopyProductStatusOutput, context: context)
        Hearth::Validator.validate!(input[:copy_product_status], ::String, context: "#{context}[:copy_product_status]")
        Hearth::Validator.validate!(input[:target_product_id], ::String, context: "#{context}[:target_product_id]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
      end
    end

    class DescribePortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribePortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioOutput, context: context)
        Validators::PortfolioDetail.validate!(input[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless input[:portfolio_detail].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TagOptionDetails.validate!(input[:tag_options], context: "#{context}[:tag_options]") unless input[:tag_options].nil?
        Validators::Budgets.validate!(input[:budgets], context: "#{context}[:budgets]") unless input[:budgets].nil?
      end
    end

    class DescribePortfolioShareStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioShareStatusInput, context: context)
        Hearth::Validator.validate!(input[:portfolio_share_token], ::String, context: "#{context}[:portfolio_share_token]")
      end
    end

    class DescribePortfolioShareStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioShareStatusOutput, context: context)
        Hearth::Validator.validate!(input[:portfolio_share_token], ::String, context: "#{context}[:portfolio_share_token]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:organization_node_value], ::String, context: "#{context}[:organization_node_value]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ShareDetails.validate!(input[:share_details], context: "#{context}[:share_details]") unless input[:share_details].nil?
      end
    end

    class DescribePortfolioSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioSharesInput, context: context)
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribePortfolioSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortfolioSharesOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Validators::PortfolioShareDetails.validate!(input[:portfolio_share_details], context: "#{context}[:portfolio_share_details]") unless input[:portfolio_share_details].nil?
      end
    end

    class DescribeProductAsAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductAsAdminInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_portfolio_id], ::String, context: "#{context}[:source_portfolio_id]")
      end
    end

    class DescribeProductAsAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductAsAdminOutput, context: context)
        Validators::ProductViewDetail.validate!(input[:product_view_detail], context: "#{context}[:product_view_detail]") unless input[:product_view_detail].nil?
        Validators::ProvisioningArtifactSummaries.validate!(input[:provisioning_artifact_summaries], context: "#{context}[:provisioning_artifact_summaries]") unless input[:provisioning_artifact_summaries].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TagOptionDetails.validate!(input[:tag_options], context: "#{context}[:tag_options]") unless input[:tag_options].nil?
        Validators::Budgets.validate!(input[:budgets], context: "#{context}[:budgets]") unless input[:budgets].nil?
      end
    end

    class DescribeProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductOutput, context: context)
        Validators::ProductViewSummary.validate!(input[:product_view_summary], context: "#{context}[:product_view_summary]") unless input[:product_view_summary].nil?
        Validators::ProvisioningArtifacts.validate!(input[:provisioning_artifacts], context: "#{context}[:provisioning_artifacts]") unless input[:provisioning_artifacts].nil?
        Validators::Budgets.validate!(input[:budgets], context: "#{context}[:budgets]") unless input[:budgets].nil?
        Validators::LaunchPaths.validate!(input[:launch_paths], context: "#{context}[:launch_paths]") unless input[:launch_paths].nil?
      end
    end

    class DescribeProductViewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductViewInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeProductViewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductViewOutput, context: context)
        Validators::ProductViewSummary.validate!(input[:product_view_summary], context: "#{context}[:product_view_summary]") unless input[:product_view_summary].nil?
        Validators::ProvisioningArtifacts.validate!(input[:provisioning_artifacts], context: "#{context}[:provisioning_artifacts]") unless input[:provisioning_artifacts].nil?
      end
    end

    class DescribeProvisionedProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisionedProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeProvisionedProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisionedProductOutput, context: context)
        Validators::ProvisionedProductDetail.validate!(input[:provisioned_product_detail], context: "#{context}[:provisioned_product_detail]") unless input[:provisioned_product_detail].nil?
        Validators::CloudWatchDashboards.validate!(input[:cloud_watch_dashboards], context: "#{context}[:cloud_watch_dashboards]") unless input[:cloud_watch_dashboards].nil?
      end
    end

    class DescribeProvisionedProductPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisionedProductPlanInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class DescribeProvisionedProductPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisionedProductPlanOutput, context: context)
        Validators::ProvisionedProductPlanDetails.validate!(input[:provisioned_product_plan_details], context: "#{context}[:provisioned_product_plan_details]") unless input[:provisioned_product_plan_details].nil?
        Validators::ResourceChanges.validate!(input[:resource_changes], context: "#{context}[:resource_changes]") unless input[:resource_changes].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class DescribeProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_name], ::String, context: "#{context}[:provisioning_artifact_name]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:verbose], ::TrueClass, ::FalseClass, context: "#{context}[:verbose]")
      end
    end

    class DescribeProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningArtifactOutput, context: context)
        Validators::ProvisioningArtifactDetail.validate!(input[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless input[:provisioning_artifact_detail].nil?
        Validators::ProvisioningArtifactInfo.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeProvisioningParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningParametersInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_name], ::String, context: "#{context}[:provisioning_artifact_name]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Hearth::Validator.validate!(input[:path_name], ::String, context: "#{context}[:path_name]")
      end
    end

    class DescribeProvisioningParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProvisioningParametersOutput, context: context)
        Validators::ProvisioningArtifactParameters.validate!(input[:provisioning_artifact_parameters], context: "#{context}[:provisioning_artifact_parameters]") unless input[:provisioning_artifact_parameters].nil?
        Validators::ConstraintSummaries.validate!(input[:constraint_summaries], context: "#{context}[:constraint_summaries]") unless input[:constraint_summaries].nil?
        Validators::UsageInstructions.validate!(input[:usage_instructions], context: "#{context}[:usage_instructions]") unless input[:usage_instructions].nil?
        Validators::TagOptionSummaries.validate!(input[:tag_options], context: "#{context}[:tag_options]") unless input[:tag_options].nil?
        Validators::ProvisioningArtifactPreferences.validate!(input[:provisioning_artifact_preferences], context: "#{context}[:provisioning_artifact_preferences]") unless input[:provisioning_artifact_preferences].nil?
        Validators::ProvisioningArtifactOutputs.validate!(input[:provisioning_artifact_outputs], context: "#{context}[:provisioning_artifact_outputs]") unless input[:provisioning_artifact_outputs].nil?
        Validators::ProvisioningArtifactOutputs.validate!(input[:provisioning_artifact_output_keys], context: "#{context}[:provisioning_artifact_output_keys]") unless input[:provisioning_artifact_output_keys].nil?
      end
    end

    class DescribeRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecordInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecordOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
        Validators::RecordOutputs.validate!(input[:record_outputs], context: "#{context}[:record_outputs]") unless input[:record_outputs].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class DescribeServiceActionExecutionParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceActionExecutionParametersInput, context: context)
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class DescribeServiceActionExecutionParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceActionExecutionParametersOutput, context: context)
        Validators::ExecutionParameters.validate!(input[:service_action_parameters], context: "#{context}[:service_action_parameters]") unless input[:service_action_parameters].nil?
      end
    end

    class DescribeServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class DescribeServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceActionOutput, context: context)
        Validators::ServiceActionDetail.validate!(input[:service_action_detail], context: "#{context}[:service_action_detail]") unless input[:service_action_detail].nil?
      end
    end

    class DescribeTagOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagOptionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeTagOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagOptionOutput, context: context)
        Validators::TagOptionDetail.validate!(input[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless input[:tag_option_detail].nil?
      end
    end

    class DisableAWSOrganizationsAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAWSOrganizationsAccessInput, context: context)
      end
    end

    class DisableAWSOrganizationsAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAWSOrganizationsAccessOutput, context: context)
      end
    end

    class DisassociateBudgetFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBudgetFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:budget_name], ::String, context: "#{context}[:budget_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DisassociateBudgetFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBudgetFromResourceOutput, context: context)
      end
    end

    class DisassociatePrincipalFromPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePrincipalFromPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class DisassociatePrincipalFromPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePrincipalFromPortfolioOutput, context: context)
      end
    end

    class DisassociateProductFromPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateProductFromPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
      end
    end

    class DisassociateProductFromPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateProductFromPortfolioOutput, context: context)
      end
    end

    class DisassociateServiceActionFromProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceActionFromProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class DisassociateServiceActionFromProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceActionFromProvisioningArtifactOutput, context: context)
      end
    end

    class DisassociateTagOptionFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTagOptionFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:tag_option_id], ::String, context: "#{context}[:tag_option_id]")
      end
    end

    class DisassociateTagOptionFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTagOptionFromResourceOutput, context: context)
      end
    end

    class DuplicateResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableAWSOrganizationsAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAWSOrganizationsAccessInput, context: context)
      end
    end

    class EnableAWSOrganizationsAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAWSOrganizationsAccessOutput, context: context)
      end
    end

    class ExecuteProvisionedProductPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteProvisionedProductPlanInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class ExecuteProvisionedProductPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteProvisionedProductPlanOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class ExecuteProvisionedProductServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteProvisionedProductServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:execute_token], ::String, context: "#{context}[:execute_token]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Validators::ExecutionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ExecuteProvisionedProductServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteProvisionedProductServiceActionOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class ExecutionParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ExecutionParameterValueList.validate!(input[:default_values], context: "#{context}[:default_values]") unless input[:default_values].nil?
      end
    end

    class ExecutionParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ExecutionParameterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExecutionParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExecutionParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExecutionParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedServiceActionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedServiceActionAssociation, context: context)
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedServiceActionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedServiceActionAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAWSOrganizationsAccessStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAWSOrganizationsAccessStatusInput, context: context)
      end
    end

    class GetAWSOrganizationsAccessStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAWSOrganizationsAccessStatusOutput, context: context)
        Hearth::Validator.validate!(input[:access_status], ::String, context: "#{context}[:access_status]")
      end
    end

    class GetProvisionedProductOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProvisionedProductOutputsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Validators::OutputKeys.validate!(input[:output_keys], context: "#{context}[:output_keys]") unless input[:output_keys].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetProvisionedProductOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProvisionedProductOutputsOutput, context: context)
        Validators::RecordOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ImportAsProvisionedProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAsProvisionedProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:physical_id], ::String, context: "#{context}[:physical_id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class ImportAsProvisionedProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAsProvisionedProductOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class InvalidParametersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParametersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchPath, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LaunchPathSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchPathSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchPathSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchPathSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ConstraintSummaries.validate!(input[:constraint_summaries], context: "#{context}[:constraint_summaries]") unless input[:constraint_summaries].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LaunchPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchPath.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAcceptedPortfolioSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAcceptedPortfolioSharesInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:portfolio_share_type], ::String, context: "#{context}[:portfolio_share_type]")
      end
    end

    class ListAcceptedPortfolioSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAcceptedPortfolioSharesOutput, context: context)
        Validators::PortfolioDetails.validate!(input[:portfolio_details], context: "#{context}[:portfolio_details]") unless input[:portfolio_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListBudgetsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBudgetsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListBudgetsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBudgetsForResourceOutput, context: context)
        Validators::Budgets.validate!(input[:budgets], context: "#{context}[:budgets]") unless input[:budgets].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListConstraintsForPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConstraintsForPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListConstraintsForPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConstraintsForPortfolioOutput, context: context)
        Validators::ConstraintDetails.validate!(input[:constraint_details], context: "#{context}[:constraint_details]") unless input[:constraint_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListLaunchPathsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchPathsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListLaunchPathsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchPathsOutput, context: context)
        Validators::LaunchPathSummaries.validate!(input[:launch_path_summaries], context: "#{context}[:launch_path_summaries]") unless input[:launch_path_summaries].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListOrganizationPortfolioAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationPortfolioAccessInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:organization_node_type], ::String, context: "#{context}[:organization_node_type]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListOrganizationPortfolioAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationPortfolioAccessOutput, context: context)
        Validators::OrganizationNodes.validate!(input[:organization_nodes], context: "#{context}[:organization_nodes]") unless input[:organization_nodes].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPortfolioAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfolioAccessInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:organization_parent_id], ::String, context: "#{context}[:organization_parent_id]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListPortfolioAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfolioAccessOutput, context: context)
        Validators::AccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPortfoliosForProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfoliosForProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListPortfoliosForProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfoliosForProductOutput, context: context)
        Validators::PortfolioDetails.validate!(input[:portfolio_details], context: "#{context}[:portfolio_details]") unless input[:portfolio_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPortfoliosInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfoliosInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListPortfoliosOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortfoliosOutput, context: context)
        Validators::PortfolioDetails.validate!(input[:portfolio_details], context: "#{context}[:portfolio_details]") unless input[:portfolio_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListPrincipalsForPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalsForPortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListPrincipalsForPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalsForPortfolioOutput, context: context)
        Validators::Principals.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListProvisionedProductPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedProductPlansInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provision_product_id], ::String, context: "#{context}[:provision_product_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Validators::AccessLevelFilter.validate!(input[:access_level_filter], context: "#{context}[:access_level_filter]") unless input[:access_level_filter].nil?
      end
    end

    class ListProvisionedProductPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedProductPlansOutput, context: context)
        Validators::ProvisionedProductPlans.validate!(input[:provisioned_product_plans], context: "#{context}[:provisioned_product_plans]") unless input[:provisioned_product_plans].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListProvisioningArtifactsForServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningArtifactsForServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class ListProvisioningArtifactsForServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningArtifactsForServiceActionOutput, context: context)
        Validators::ProvisioningArtifactViews.validate!(input[:provisioning_artifact_views], context: "#{context}[:provisioning_artifact_views]") unless input[:provisioning_artifact_views].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListProvisioningArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
      end
    end

    class ListProvisioningArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisioningArtifactsOutput, context: context)
        Validators::ProvisioningArtifactDetails.validate!(input[:provisioning_artifact_details], context: "#{context}[:provisioning_artifact_details]") unless input[:provisioning_artifact_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListRecordHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordHistoryInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Validators::AccessLevelFilter.validate!(input[:access_level_filter], context: "#{context}[:access_level_filter]") unless input[:access_level_filter].nil?
        Validators::ListRecordHistorySearchFilter.validate!(input[:search_filter], context: "#{context}[:search_filter]") unless input[:search_filter].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListRecordHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordHistoryOutput, context: context)
        Validators::RecordDetails.validate!(input[:record_details], context: "#{context}[:record_details]") unless input[:record_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListRecordHistorySearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordHistorySearchFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ListResourcesForTagOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForTagOptionInput, context: context)
        Hearth::Validator.validate!(input[:tag_option_id], ::String, context: "#{context}[:tag_option_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListResourcesForTagOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForTagOptionOutput, context: context)
        Validators::ResourceDetails.validate!(input[:resource_details], context: "#{context}[:resource_details]") unless input[:resource_details].nil?
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListServiceActionsForProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceActionsForProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class ListServiceActionsForProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceActionsForProvisioningArtifactOutput, context: context)
        Validators::ServiceActionSummaries.validate!(input[:service_action_summaries], context: "#{context}[:service_action_summaries]") unless input[:service_action_summaries].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListServiceActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceActionsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListServiceActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceActionsOutput, context: context)
        Validators::ServiceActionSummaries.validate!(input[:service_action_summaries], context: "#{context}[:service_action_summaries]") unless input[:service_action_summaries].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListStackInstancesForProvisionedProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackInstancesForProvisionedProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListStackInstancesForProvisionedProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackInstancesForProvisionedProductOutput, context: context)
        Validators::StackInstances.validate!(input[:stack_instances], context: "#{context}[:stack_instances]") unless input[:stack_instances].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ListTagOptionsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagOptionsFilters, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class ListTagOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagOptionsInput, context: context)
        Validators::ListTagOptionsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ListTagOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagOptionsOutput, context: context)
        Validators::TagOptionDetails.validate!(input[:tag_option_details], context: "#{context}[:tag_option_details]") unless input[:tag_option_details].nil?
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class Namespaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotificationArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OperationNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationNode, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class OrganizationNodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrganizationNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterConstraints, context: context)
        Validators::AllowedValues.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
        Hearth::Validator.validate!(input[:allowed_pattern], ::String, context: "#{context}[:allowed_pattern]")
        Hearth::Validator.validate!(input[:constraint_description], ::String, context: "#{context}[:constraint_description]")
        Hearth::Validator.validate!(input[:max_length], ::String, context: "#{context}[:max_length]")
        Hearth::Validator.validate!(input[:min_length], ::String, context: "#{context}[:min_length]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
      end
    end

    class PortfolioDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortfolioDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class PortfolioDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortfolioDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortfolioShareDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortfolioShareDetail, context: context)
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:accepted], ::TrueClass, ::FalseClass, context: "#{context}[:accepted]")
        Hearth::Validator.validate!(input[:share_tag_options], ::TrueClass, ::FalseClass, context: "#{context}[:share_tag_options]")
      end
    end

    class PortfolioShareDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortfolioShareDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Principal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Principal, context: context)
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
      end
    end

    class Principals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Principal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductViewAggregationValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductViewAggregationValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:approximate_count], ::Integer, context: "#{context}[:approximate_count]")
      end
    end

    class ProductViewAggregationValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProductViewAggregationValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductViewAggregations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ProductViewAggregationValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProductViewDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductViewDetail, context: context)
        Validators::ProductViewSummary.validate!(input[:product_view_summary], context: "#{context}[:product_view_summary]") unless input[:product_view_summary].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class ProductViewDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProductViewDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductViewFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductViewFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ProductViewFilterValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProductViewSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProductViewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductViewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductViewSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:short_description], ::String, context: "#{context}[:short_description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:distributor], ::String, context: "#{context}[:distributor]")
        Hearth::Validator.validate!(input[:has_default_path], ::TrueClass, ::FalseClass, context: "#{context}[:has_default_path]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_description], ::String, context: "#{context}[:support_description]")
        Hearth::Validator.validate!(input[:support_url], ::String, context: "#{context}[:support_url]")
      end
    end

    class ProvisionProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_name], ::String, context: "#{context}[:provisioning_artifact_name]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Hearth::Validator.validate!(input[:path_name], ::String, context: "#{context}[:path_name]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Validators::ProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
        Validators::ProvisioningPreferences.validate!(input[:provisioning_preferences], context: "#{context}[:provisioning_preferences]") unless input[:provisioning_preferences].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::NotificationArns.validate!(input[:notification_arns], context: "#{context}[:notification_arns]") unless input[:notification_arns].nil?
        Hearth::Validator.validate!(input[:provision_token], ::String, context: "#{context}[:provision_token]")
      end
    end

    class ProvisionProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionProductOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class ProvisionedProductAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedProductAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:last_record_id], ::String, context: "#{context}[:last_record_id]")
        Hearth::Validator.validate!(input[:last_provisioning_record_id], ::String, context: "#{context}[:last_provisioning_record_id]")
        Hearth::Validator.validate!(input[:last_successful_provisioning_record_id], ::String, context: "#{context}[:last_successful_provisioning_record_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:physical_id], ::String, context: "#{context}[:physical_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_name], ::String, context: "#{context}[:provisioning_artifact_name]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:user_arn_session], ::String, context: "#{context}[:user_arn_session]")
      end
    end

    class ProvisionedProductAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisionedProductAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedProductDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedProductDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:last_record_id], ::String, context: "#{context}[:last_record_id]")
        Hearth::Validator.validate!(input[:last_provisioning_record_id], ::String, context: "#{context}[:last_provisioning_record_id]")
        Hearth::Validator.validate!(input[:last_successful_provisioning_record_id], ::String, context: "#{context}[:last_successful_provisioning_record_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:launch_role_arn], ::String, context: "#{context}[:launch_role_arn]")
      end
    end

    class ProvisionedProductDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisionedProductDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedProductFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ProvisionedProductViewFilterValues.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProvisionedProductPlanDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedProductPlanDetails, context: context)
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:plan_name], ::String, context: "#{context}[:plan_name]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:provision_product_id], ::String, context: "#{context}[:provision_product_id]")
        Hearth::Validator.validate!(input[:provision_product_name], ::String, context: "#{context}[:provision_product_name]")
        Hearth::Validator.validate!(input[:plan_type], ::String, context: "#{context}[:plan_type]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:updated_time], ::Time, context: "#{context}[:updated_time]")
        Validators::NotificationArns.validate!(input[:notification_arns], context: "#{context}[:notification_arns]") unless input[:notification_arns].nil?
        Validators::UpdateProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class ProvisionedProductPlanSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedProductPlanSummary, context: context)
        Hearth::Validator.validate!(input[:plan_name], ::String, context: "#{context}[:plan_name]")
        Hearth::Validator.validate!(input[:plan_id], ::String, context: "#{context}[:plan_id]")
        Hearth::Validator.validate!(input[:provision_product_id], ::String, context: "#{context}[:provision_product_id]")
        Hearth::Validator.validate!(input[:provision_product_name], ::String, context: "#{context}[:provision_product_name]")
        Hearth::Validator.validate!(input[:plan_type], ::String, context: "#{context}[:plan_type]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
      end
    end

    class ProvisionedProductPlans
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisionedProductPlanSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedProductProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ProvisionedProductViewFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisioningArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifact, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:guidance], ::String, context: "#{context}[:guidance]")
      end
    end

    class ProvisioningArtifactDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Hearth::Validator.validate!(input[:guidance], ::String, context: "#{context}[:guidance]")
      end
    end

    class ProvisioningArtifactDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifactDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningArtifactInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ProvisioningArtifactOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifactOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningArtifactParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:parameter_type], ::String, context: "#{context}[:parameter_type]")
        Hearth::Validator.validate!(input[:is_no_echo], ::TrueClass, ::FalseClass, context: "#{context}[:is_no_echo]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ParameterConstraints.validate!(input[:parameter_constraints], context: "#{context}[:parameter_constraints]") unless input[:parameter_constraints].nil?
      end
    end

    class ProvisioningArtifactParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifactParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningArtifactPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactPreferences, context: context)
        Validators::StackSetAccounts.validate!(input[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless input[:stack_set_accounts].nil?
        Validators::StackSetRegions.validate!(input[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless input[:stack_set_regions].nil?
      end
    end

    class ProvisioningArtifactProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactProperties, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ProvisioningArtifactInfo.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:disable_template_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_template_validation]")
      end
    end

    class ProvisioningArtifactSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifactSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningArtifactSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::ProvisioningArtifactInfo.validate!(input[:provisioning_artifact_metadata], context: "#{context}[:provisioning_artifact_metadata]") unless input[:provisioning_artifact_metadata].nil?
      end
    end

    class ProvisioningArtifactView
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningArtifactView, context: context)
        Validators::ProductViewSummary.validate!(input[:product_view_summary], context: "#{context}[:product_view_summary]") unless input[:product_view_summary].nil?
        Validators::ProvisioningArtifact.validate!(input[:provisioning_artifact], context: "#{context}[:provisioning_artifact]") unless input[:provisioning_artifact].nil?
      end
    end

    class ProvisioningArtifactViews
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifactView.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ProvisioningParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisioningParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningPreferences, context: context)
        Validators::StackSetAccounts.validate!(input[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless input[:stack_set_accounts].nil?
        Validators::StackSetRegions.validate!(input[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless input[:stack_set_regions].nil?
        Hearth::Validator.validate!(input[:stack_set_failure_tolerance_count], ::Integer, context: "#{context}[:stack_set_failure_tolerance_count]")
        Hearth::Validator.validate!(input[:stack_set_failure_tolerance_percentage], ::Integer, context: "#{context}[:stack_set_failure_tolerance_percentage]")
        Hearth::Validator.validate!(input[:stack_set_max_concurrency_count], ::Integer, context: "#{context}[:stack_set_max_concurrency_count]")
        Hearth::Validator.validate!(input[:stack_set_max_concurrency_percentage], ::Integer, context: "#{context}[:stack_set_max_concurrency_percentage]")
      end
    end

    class RecordDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordDetail, context: context)
        Hearth::Validator.validate!(input[:record_id], ::String, context: "#{context}[:record_id]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:updated_time], ::Time, context: "#{context}[:updated_time]")
        Hearth::Validator.validate!(input[:provisioned_product_type], ::String, context: "#{context}[:provisioned_product_type]")
        Hearth::Validator.validate!(input[:record_type], ::String, context: "#{context}[:record_type]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Validators::RecordErrors.validate!(input[:record_errors], context: "#{context}[:record_errors]") unless input[:record_errors].nil?
        Validators::RecordTags.validate!(input[:record_tags], context: "#{context}[:record_tags]") unless input[:record_tags].nil?
        Hearth::Validator.validate!(input[:launch_role_arn], ::String, context: "#{context}[:launch_role_arn]")
      end
    end

    class RecordDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class RecordErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordOutput, context: context)
        Hearth::Validator.validate!(input[:output_key], ::String, context: "#{context}[:output_key]")
        Hearth::Validator.validate!(input[:output_value], ::String, context: "#{context}[:output_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class RecordOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class RecordTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectPortfolioShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectPortfolioShareInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:portfolio_share_type], ::String, context: "#{context}[:portfolio_share_type]")
      end
    end

    class RejectPortfolioShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectPortfolioShareOutput, context: context)
      end
    end

    class ResourceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceChange, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:replacement], ::String, context: "#{context}[:replacement]")
        Validators::Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Validators::ResourceChangeDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ResourceChangeDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceChangeDetail, context: context)
        Validators::ResourceTargetDefinition.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:evaluation], ::String, context: "#{context}[:evaluation]")
        Hearth::Validator.validate!(input[:causing_entity], ::String, context: "#{context}[:causing_entity]")
      end
    end

    class ResourceChangeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceChangeDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTargetDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTargetDefinition, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:requires_recreation], ::String, context: "#{context}[:requires_recreation]")
      end
    end

    class ScanProvisionedProductsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanProvisionedProductsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Validators::AccessLevelFilter.validate!(input[:access_level_filter], context: "#{context}[:access_level_filter]") unless input[:access_level_filter].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class ScanProvisionedProductsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanProvisionedProductsOutput, context: context)
        Validators::ProvisionedProductDetails.validate!(input[:provisioned_products], context: "#{context}[:provisioned_products]") unless input[:provisioned_products].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchProductsAsAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProductsAsAdminInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Validators::ProductViewFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:product_source], ::String, context: "#{context}[:product_source]")
      end
    end

    class SearchProductsAsAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProductsAsAdminOutput, context: context)
        Validators::ProductViewDetails.validate!(input[:product_view_details], context: "#{context}[:product_view_details]") unless input[:product_view_details].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class SearchProductsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProductsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Validators::ProductViewFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class SearchProductsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProductsOutput, context: context)
        Validators::ProductViewSummaries.validate!(input[:product_view_summaries], context: "#{context}[:product_view_summaries]") unless input[:product_view_summaries].nil?
        Validators::ProductViewAggregations.validate!(input[:product_view_aggregations], context: "#{context}[:product_view_aggregations]") unless input[:product_view_aggregations].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class SearchProvisionedProductsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProvisionedProductsInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Validators::AccessLevelFilter.validate!(input[:access_level_filter], context: "#{context}[:access_level_filter]") unless input[:access_level_filter].nil?
        Validators::ProvisionedProductFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class SearchProvisionedProductsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProvisionedProductsOutput, context: context)
        Validators::ProvisionedProductAttributes.validate!(input[:provisioned_products], context: "#{context}[:provisioned_products]") unless input[:provisioned_products].nil?
        Hearth::Validator.validate!(input[:total_results_count], ::Integer, context: "#{context}[:total_results_count]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class ServiceActionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceActionAssociation, context: context)
        Hearth::Validator.validate!(input[:service_action_id], ::String, context: "#{context}[:service_action_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
      end
    end

    class ServiceActionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceActionAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceActionDefinitionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ServiceActionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceActionDetail, context: context)
        Validators::ServiceActionSummary.validate!(input[:service_action_summary], context: "#{context}[:service_action_summary]") unless input[:service_action_summary].nil?
        Validators::ServiceActionDefinitionMap.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class ServiceActionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceActionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceActionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceActionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:definition_type], ::String, context: "#{context}[:definition_type]")
      end
    end

    class ShareDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareDetails, context: context)
        Validators::SuccessfulShares.validate!(input[:successful_shares], context: "#{context}[:successful_shares]") unless input[:successful_shares].nil?
        Validators::ShareErrors.validate!(input[:share_errors], context: "#{context}[:share_errors]") unless input[:share_errors].nil?
      end
    end

    class ShareError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareError, context: context)
        Validators::Namespaces.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class ShareErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ShareError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceProvisioningArtifactProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SourceProvisioningArtifactPropertiesMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceProvisioningArtifactPropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StackInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstance, context: context)
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:stack_instance_status], ::String, context: "#{context}[:stack_instance_status]")
      end
    end

    class StackInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StackInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSetAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StackSetRegions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SuccessfulShares
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagOptionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOptionDetail, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
      end
    end

    class TagOptionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagOptionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagOptionNotMigratedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOptionNotMigratedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagOptionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagOptionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagOptionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOptionSummary, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::TagOptionValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class TagOptionValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateProvisionedProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateProvisionedProductInput, context: context)
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:terminate_token], ::String, context: "#{context}[:terminate_token]")
        Hearth::Validator.validate!(input[:ignore_errors], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_errors]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:retain_physical_resources], ::TrueClass, ::FalseClass, context: "#{context}[:retain_physical_resources]")
      end
    end

    class TerminateProvisionedProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateProvisionedProductOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class UpdateConstraintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConstraintInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
      end
    end

    class UpdateConstraintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConstraintOutput, context: context)
        Validators::ConstraintDetail.validate!(input[:constraint_detail], context: "#{context}[:constraint_detail]") unless input[:constraint_detail].nil?
        Hearth::Validator.validate!(input[:constraint_parameters], ::String, context: "#{context}[:constraint_parameters]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdatePortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortfolioInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Validators::AddTags.validate!(input[:add_tags], context: "#{context}[:add_tags]") unless input[:add_tags].nil?
        Validators::TagKeys.validate!(input[:remove_tags], context: "#{context}[:remove_tags]") unless input[:remove_tags].nil?
      end
    end

    class UpdatePortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortfolioOutput, context: context)
        Validators::PortfolioDetail.validate!(input[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless input[:portfolio_detail].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdatePortfolioShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortfolioShareInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:portfolio_id], ::String, context: "#{context}[:portfolio_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::OrganizationNode.validate!(input[:organization_node], context: "#{context}[:organization_node]") unless input[:organization_node].nil?
        Hearth::Validator.validate!(input[:share_tag_options], ::TrueClass, ::FalseClass, context: "#{context}[:share_tag_options]")
      end
    end

    class UpdatePortfolioShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortfolioShareOutput, context: context)
        Hearth::Validator.validate!(input[:portfolio_share_token], ::String, context: "#{context}[:portfolio_share_token]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:distributor], ::String, context: "#{context}[:distributor]")
        Hearth::Validator.validate!(input[:support_description], ::String, context: "#{context}[:support_description]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_url], ::String, context: "#{context}[:support_url]")
        Validators::AddTags.validate!(input[:add_tags], context: "#{context}[:add_tags]") unless input[:add_tags].nil?
        Validators::TagKeys.validate!(input[:remove_tags], context: "#{context}[:remove_tags]") unless input[:remove_tags].nil?
      end
    end

    class UpdateProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProductOutput, context: context)
        Validators::ProductViewDetail.validate!(input[:product_view_detail], context: "#{context}[:product_view_detail]") unless input[:product_view_detail].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateProvisionedProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisionedProductInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provisioned_product_name], ::String, context: "#{context}[:provisioned_product_name]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_name], ::String, context: "#{context}[:provisioning_artifact_name]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        Hearth::Validator.validate!(input[:path_name], ::String, context: "#{context}[:path_name]")
        Validators::UpdateProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
        Validators::UpdateProvisioningPreferences.validate!(input[:provisioning_preferences], context: "#{context}[:provisioning_preferences]") unless input[:provisioning_preferences].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:update_token], ::String, context: "#{context}[:update_token]")
      end
    end

    class UpdateProvisionedProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisionedProductOutput, context: context)
        Validators::RecordDetail.validate!(input[:record_detail], context: "#{context}[:record_detail]") unless input[:record_detail].nil?
      end
    end

    class UpdateProvisionedProductPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisionedProductPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Validators::ProvisionedProductProperties.validate!(input[:provisioned_product_properties], context: "#{context}[:provisioned_product_properties]") unless input[:provisioned_product_properties].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class UpdateProvisionedProductPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisionedProductPropertiesOutput, context: context)
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Validators::ProvisionedProductProperties.validate!(input[:provisioned_product_properties], context: "#{context}[:provisioned_product_properties]") unless input[:provisioned_product_properties].nil?
        Hearth::Validator.validate!(input[:record_id], ::String, context: "#{context}[:record_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateProvisioningArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningArtifactInput, context: context)
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Hearth::Validator.validate!(input[:guidance], ::String, context: "#{context}[:guidance]")
      end
    end

    class UpdateProvisioningArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningArtifactOutput, context: context)
        Validators::ProvisioningArtifactDetail.validate!(input[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless input[:provisioning_artifact_detail].nil?
        Validators::ProvisioningArtifactInfo.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateProvisioningParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:use_previous_value], ::TrueClass, ::FalseClass, context: "#{context}[:use_previous_value]")
      end
    end

    class UpdateProvisioningParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateProvisioningParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateProvisioningPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProvisioningPreferences, context: context)
        Validators::StackSetAccounts.validate!(input[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless input[:stack_set_accounts].nil?
        Validators::StackSetRegions.validate!(input[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless input[:stack_set_regions].nil?
        Hearth::Validator.validate!(input[:stack_set_failure_tolerance_count], ::Integer, context: "#{context}[:stack_set_failure_tolerance_count]")
        Hearth::Validator.validate!(input[:stack_set_failure_tolerance_percentage], ::Integer, context: "#{context}[:stack_set_failure_tolerance_percentage]")
        Hearth::Validator.validate!(input[:stack_set_max_concurrency_count], ::Integer, context: "#{context}[:stack_set_max_concurrency_count]")
        Hearth::Validator.validate!(input[:stack_set_max_concurrency_percentage], ::Integer, context: "#{context}[:stack_set_max_concurrency_percentage]")
        Hearth::Validator.validate!(input[:stack_set_operation_type], ::String, context: "#{context}[:stack_set_operation_type]")
      end
    end

    class UpdateServiceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceActionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServiceActionDefinitionMap.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:accept_language], ::String, context: "#{context}[:accept_language]")
      end
    end

    class UpdateServiceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceActionOutput, context: context)
        Validators::ServiceActionDetail.validate!(input[:service_action_detail], context: "#{context}[:service_action_detail]") unless input[:service_action_detail].nil?
      end
    end

    class UpdateTagOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagOptionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class UpdateTagOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagOptionOutput, context: context)
        Validators::TagOptionDetail.validate!(input[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless input[:tag_option_detail].nil?
      end
    end

    class UsageInstruction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageInstruction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class UsageInstructions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageInstruction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
