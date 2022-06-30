# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ServiceCatalog
  module Params

    module AcceptPortfolioShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptPortfolioShareInput, context: context)
        type = Types::AcceptPortfolioShareInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.portfolio_share_type = params[:portfolio_share_type]
        type
      end
    end

    module AcceptPortfolioShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptPortfolioShareOutput, context: context)
        type = Types::AcceptPortfolioShareOutput.new
        type
      end
    end

    module AccessLevelFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessLevelFilter, context: context)
        type = Types::AccessLevelFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AccountIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AllowedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateBudgetWithResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBudgetWithResourceInput, context: context)
        type = Types::AssociateBudgetWithResourceInput.new
        type.budget_name = params[:budget_name]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module AssociateBudgetWithResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBudgetWithResourceOutput, context: context)
        type = Types::AssociateBudgetWithResourceOutput.new
        type
      end
    end

    module AssociatePrincipalWithPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePrincipalWithPortfolioInput, context: context)
        type = Types::AssociatePrincipalWithPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.principal_arn = params[:principal_arn]
        type.principal_type = params[:principal_type]
        type
      end
    end

    module AssociatePrincipalWithPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePrincipalWithPortfolioOutput, context: context)
        type = Types::AssociatePrincipalWithPortfolioOutput.new
        type
      end
    end

    module AssociateProductWithPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateProductWithPortfolioInput, context: context)
        type = Types::AssociateProductWithPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.portfolio_id = params[:portfolio_id]
        type.source_portfolio_id = params[:source_portfolio_id]
        type
      end
    end

    module AssociateProductWithPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateProductWithPortfolioOutput, context: context)
        type = Types::AssociateProductWithPortfolioOutput.new
        type
      end
    end

    module AssociateServiceActionWithProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceActionWithProvisioningArtifactInput, context: context)
        type = Types::AssociateServiceActionWithProvisioningArtifactInput.new
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.service_action_id = params[:service_action_id]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module AssociateServiceActionWithProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceActionWithProvisioningArtifactOutput, context: context)
        type = Types::AssociateServiceActionWithProvisioningArtifactOutput.new
        type
      end
    end

    module AssociateTagOptionWithResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTagOptionWithResourceInput, context: context)
        type = Types::AssociateTagOptionWithResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_option_id = params[:tag_option_id]
        type
      end
    end

    module AssociateTagOptionWithResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTagOptionWithResourceOutput, context: context)
        type = Types::AssociateTagOptionWithResourceOutput.new
        type
      end
    end

    module BatchAssociateServiceActionWithProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateServiceActionWithProvisioningArtifactInput, context: context)
        type = Types::BatchAssociateServiceActionWithProvisioningArtifactInput.new
        type.service_action_associations = ServiceActionAssociations.build(params[:service_action_associations], context: "#{context}[:service_action_associations]") unless params[:service_action_associations].nil?
        type.accept_language = params[:accept_language]
        type
      end
    end

    module BatchAssociateServiceActionWithProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateServiceActionWithProvisioningArtifactOutput, context: context)
        type = Types::BatchAssociateServiceActionWithProvisioningArtifactOutput.new
        type.failed_service_action_associations = FailedServiceActionAssociations.build(params[:failed_service_action_associations], context: "#{context}[:failed_service_action_associations]") unless params[:failed_service_action_associations].nil?
        type
      end
    end

    module BatchDisassociateServiceActionFromProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateServiceActionFromProvisioningArtifactInput, context: context)
        type = Types::BatchDisassociateServiceActionFromProvisioningArtifactInput.new
        type.service_action_associations = ServiceActionAssociations.build(params[:service_action_associations], context: "#{context}[:service_action_associations]") unless params[:service_action_associations].nil?
        type.accept_language = params[:accept_language]
        type
      end
    end

    module BatchDisassociateServiceActionFromProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput, context: context)
        type = Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput.new
        type.failed_service_action_associations = FailedServiceActionAssociations.build(params[:failed_service_action_associations], context: "#{context}[:failed_service_action_associations]") unless params[:failed_service_action_associations].nil?
        type
      end
    end

    module BudgetDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BudgetDetail, context: context)
        type = Types::BudgetDetail.new
        type.budget_name = params[:budget_name]
        type
      end
    end

    module Budgets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BudgetDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchDashboard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchDashboard, context: context)
        type = Types::CloudWatchDashboard.new
        type.name = params[:name]
        type
      end
    end

    module CloudWatchDashboards
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchDashboard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConstraintDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConstraintDetail, context: context)
        type = Types::ConstraintDetail.new
        type.constraint_id = params[:constraint_id]
        type.type = params[:type]
        type.description = params[:description]
        type.owner = params[:owner]
        type.product_id = params[:product_id]
        type.portfolio_id = params[:portfolio_id]
        type
      end
    end

    module ConstraintDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConstraintDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConstraintSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConstraintSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConstraintSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConstraintSummary, context: context)
        type = Types::ConstraintSummary.new
        type.type = params[:type]
        type.description = params[:description]
        type
      end
    end

    module CopyOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CopyProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyProductInput, context: context)
        type = Types::CopyProductInput.new
        type.accept_language = params[:accept_language]
        type.source_product_arn = params[:source_product_arn]
        type.target_product_id = params[:target_product_id]
        type.target_product_name = params[:target_product_name]
        type.source_provisioning_artifact_identifiers = SourceProvisioningArtifactProperties.build(params[:source_provisioning_artifact_identifiers], context: "#{context}[:source_provisioning_artifact_identifiers]") unless params[:source_provisioning_artifact_identifiers].nil?
        type.copy_options = CopyOptions.build(params[:copy_options], context: "#{context}[:copy_options]") unless params[:copy_options].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CopyProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyProductOutput, context: context)
        type = Types::CopyProductOutput.new
        type.copy_product_token = params[:copy_product_token]
        type
      end
    end

    module CreateConstraintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConstraintInput, context: context)
        type = Types::CreateConstraintInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.product_id = params[:product_id]
        type.parameters = params[:parameters]
        type.type = params[:type]
        type.description = params[:description]
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreateConstraintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConstraintOutput, context: context)
        type = Types::CreateConstraintOutput.new
        type.constraint_detail = ConstraintDetail.build(params[:constraint_detail], context: "#{context}[:constraint_detail]") unless params[:constraint_detail].nil?
        type.constraint_parameters = params[:constraint_parameters]
        type.status = params[:status]
        type
      end
    end

    module CreatePortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortfolioInput, context: context)
        type = Types::CreatePortfolioInput.new
        type.accept_language = params[:accept_language]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.provider_name = params[:provider_name]
        type.tags = AddTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreatePortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortfolioOutput, context: context)
        type = Types::CreatePortfolioOutput.new
        type.portfolio_detail = PortfolioDetail.build(params[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless params[:portfolio_detail].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePortfolioShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortfolioShareInput, context: context)
        type = Types::CreatePortfolioShareInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.account_id = params[:account_id]
        type.organization_node = OrganizationNode.build(params[:organization_node], context: "#{context}[:organization_node]") unless params[:organization_node].nil?
        type.share_tag_options = params[:share_tag_options]
        type
      end
    end

    module CreatePortfolioShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortfolioShareOutput, context: context)
        type = Types::CreatePortfolioShareOutput.new
        type.portfolio_share_token = params[:portfolio_share_token]
        type
      end
    end

    module CreateProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProductInput, context: context)
        type = Types::CreateProductInput.new
        type.accept_language = params[:accept_language]
        type.name = params[:name]
        type.owner = params[:owner]
        type.description = params[:description]
        type.distributor = params[:distributor]
        type.support_description = params[:support_description]
        type.support_email = params[:support_email]
        type.support_url = params[:support_url]
        type.product_type = params[:product_type]
        type.tags = AddTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provisioning_artifact_parameters = ProvisioningArtifactProperties.build(params[:provisioning_artifact_parameters], context: "#{context}[:provisioning_artifact_parameters]") unless params[:provisioning_artifact_parameters].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreateProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProductOutput, context: context)
        type = Types::CreateProductOutput.new
        type.product_view_detail = ProductViewDetail.build(params[:product_view_detail], context: "#{context}[:product_view_detail]") unless params[:product_view_detail].nil?
        type.provisioning_artifact_detail = ProvisioningArtifactDetail.build(params[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless params[:provisioning_artifact_detail].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProvisionedProductPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisionedProductPlanInput, context: context)
        type = Types::CreateProvisionedProductPlanInput.new
        type.accept_language = params[:accept_language]
        type.plan_name = params[:plan_name]
        type.plan_type = params[:plan_type]
        type.notification_arns = NotificationArns.build(params[:notification_arns], context: "#{context}[:notification_arns]") unless params[:notification_arns].nil?
        type.path_id = params[:path_id]
        type.product_id = params[:product_id]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_parameters = UpdateProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProvisionedProductPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisionedProductPlanOutput, context: context)
        type = Types::CreateProvisionedProductPlanOutput.new
        type.plan_name = params[:plan_name]
        type.plan_id = params[:plan_id]
        type.provision_product_id = params[:provision_product_id]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type
      end
    end

    module CreateProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningArtifactInput, context: context)
        type = Types::CreateProvisioningArtifactInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.parameters = ProvisioningArtifactProperties.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreateProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProvisioningArtifactOutput, context: context)
        type = Types::CreateProvisioningArtifactOutput.new
        type.provisioning_artifact_detail = ProvisioningArtifactDetail.build(params[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless params[:provisioning_artifact_detail].nil?
        type.info = ProvisioningArtifactInfo.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type.status = params[:status]
        type
      end
    end

    module CreateServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceActionInput, context: context)
        type = Types::CreateServiceActionInput.new
        type.name = params[:name]
        type.definition_type = params[:definition_type]
        type.definition = ServiceActionDefinitionMap.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.description = params[:description]
        type.accept_language = params[:accept_language]
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreateServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceActionOutput, context: context)
        type = Types::CreateServiceActionOutput.new
        type.service_action_detail = ServiceActionDetail.build(params[:service_action_detail], context: "#{context}[:service_action_detail]") unless params[:service_action_detail].nil?
        type
      end
    end

    module CreateTagOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagOptionInput, context: context)
        type = Types::CreateTagOptionInput.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module CreateTagOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagOptionOutput, context: context)
        type = Types::CreateTagOptionOutput.new
        type.tag_option_detail = TagOptionDetail.build(params[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless params[:tag_option_detail].nil?
        type
      end
    end

    module DeleteConstraintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConstraintInput, context: context)
        type = Types::DeleteConstraintInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DeleteConstraintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConstraintOutput, context: context)
        type = Types::DeleteConstraintOutput.new
        type
      end
    end

    module DeletePortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortfolioInput, context: context)
        type = Types::DeletePortfolioInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DeletePortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortfolioOutput, context: context)
        type = Types::DeletePortfolioOutput.new
        type
      end
    end

    module DeletePortfolioShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortfolioShareInput, context: context)
        type = Types::DeletePortfolioShareInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.account_id = params[:account_id]
        type.organization_node = OrganizationNode.build(params[:organization_node], context: "#{context}[:organization_node]") unless params[:organization_node].nil?
        type
      end
    end

    module DeletePortfolioShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortfolioShareOutput, context: context)
        type = Types::DeletePortfolioShareOutput.new
        type.portfolio_share_token = params[:portfolio_share_token]
        type
      end
    end

    module DeleteProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProductInput, context: context)
        type = Types::DeleteProductInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DeleteProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProductOutput, context: context)
        type = Types::DeleteProductOutput.new
        type
      end
    end

    module DeleteProvisionedProductPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisionedProductPlanInput, context: context)
        type = Types::DeleteProvisionedProductPlanInput.new
        type.accept_language = params[:accept_language]
        type.plan_id = params[:plan_id]
        type.ignore_errors = params[:ignore_errors]
        type
      end
    end

    module DeleteProvisionedProductPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisionedProductPlanOutput, context: context)
        type = Types::DeleteProvisionedProductPlanOutput.new
        type
      end
    end

    module DeleteProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningArtifactInput, context: context)
        type = Types::DeleteProvisioningArtifactInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type
      end
    end

    module DeleteProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisioningArtifactOutput, context: context)
        type = Types::DeleteProvisioningArtifactOutput.new
        type
      end
    end

    module DeleteServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceActionInput, context: context)
        type = Types::DeleteServiceActionInput.new
        type.id = params[:id]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module DeleteServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceActionOutput, context: context)
        type = Types::DeleteServiceActionOutput.new
        type
      end
    end

    module DeleteTagOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagOptionInput, context: context)
        type = Types::DeleteTagOptionInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteTagOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagOptionOutput, context: context)
        type = Types::DeleteTagOptionOutput.new
        type
      end
    end

    module DescribeConstraintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConstraintInput, context: context)
        type = Types::DescribeConstraintInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DescribeConstraintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConstraintOutput, context: context)
        type = Types::DescribeConstraintOutput.new
        type.constraint_detail = ConstraintDetail.build(params[:constraint_detail], context: "#{context}[:constraint_detail]") unless params[:constraint_detail].nil?
        type.constraint_parameters = params[:constraint_parameters]
        type.status = params[:status]
        type
      end
    end

    module DescribeCopyProductStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCopyProductStatusInput, context: context)
        type = Types::DescribeCopyProductStatusInput.new
        type.accept_language = params[:accept_language]
        type.copy_product_token = params[:copy_product_token]
        type
      end
    end

    module DescribeCopyProductStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCopyProductStatusOutput, context: context)
        type = Types::DescribeCopyProductStatusOutput.new
        type.copy_product_status = params[:copy_product_status]
        type.target_product_id = params[:target_product_id]
        type.status_detail = params[:status_detail]
        type
      end
    end

    module DescribePortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioInput, context: context)
        type = Types::DescribePortfolioInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DescribePortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioOutput, context: context)
        type = Types::DescribePortfolioOutput.new
        type.portfolio_detail = PortfolioDetail.build(params[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless params[:portfolio_detail].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tag_options = TagOptionDetails.build(params[:tag_options], context: "#{context}[:tag_options]") unless params[:tag_options].nil?
        type.budgets = Budgets.build(params[:budgets], context: "#{context}[:budgets]") unless params[:budgets].nil?
        type
      end
    end

    module DescribePortfolioShareStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioShareStatusInput, context: context)
        type = Types::DescribePortfolioShareStatusInput.new
        type.portfolio_share_token = params[:portfolio_share_token]
        type
      end
    end

    module DescribePortfolioShareStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioShareStatusOutput, context: context)
        type = Types::DescribePortfolioShareStatusOutput.new
        type.portfolio_share_token = params[:portfolio_share_token]
        type.portfolio_id = params[:portfolio_id]
        type.organization_node_value = params[:organization_node_value]
        type.status = params[:status]
        type.share_details = ShareDetails.build(params[:share_details], context: "#{context}[:share_details]") unless params[:share_details].nil?
        type
      end
    end

    module DescribePortfolioSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioSharesInput, context: context)
        type = Types::DescribePortfolioSharesInput.new
        type.portfolio_id = params[:portfolio_id]
        type.type = params[:type]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribePortfolioSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortfolioSharesOutput, context: context)
        type = Types::DescribePortfolioSharesOutput.new
        type.next_page_token = params[:next_page_token]
        type.portfolio_share_details = PortfolioShareDetails.build(params[:portfolio_share_details], context: "#{context}[:portfolio_share_details]") unless params[:portfolio_share_details].nil?
        type
      end
    end

    module DescribeProductAsAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductAsAdminInput, context: context)
        type = Types::DescribeProductAsAdminInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.name = params[:name]
        type.source_portfolio_id = params[:source_portfolio_id]
        type
      end
    end

    module DescribeProductAsAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductAsAdminOutput, context: context)
        type = Types::DescribeProductAsAdminOutput.new
        type.product_view_detail = ProductViewDetail.build(params[:product_view_detail], context: "#{context}[:product_view_detail]") unless params[:product_view_detail].nil?
        type.provisioning_artifact_summaries = ProvisioningArtifactSummaries.build(params[:provisioning_artifact_summaries], context: "#{context}[:provisioning_artifact_summaries]") unless params[:provisioning_artifact_summaries].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tag_options = TagOptionDetails.build(params[:tag_options], context: "#{context}[:tag_options]") unless params[:tag_options].nil?
        type.budgets = Budgets.build(params[:budgets], context: "#{context}[:budgets]") unless params[:budgets].nil?
        type
      end
    end

    module DescribeProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductInput, context: context)
        type = Types::DescribeProductInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module DescribeProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductOutput, context: context)
        type = Types::DescribeProductOutput.new
        type.product_view_summary = ProductViewSummary.build(params[:product_view_summary], context: "#{context}[:product_view_summary]") unless params[:product_view_summary].nil?
        type.provisioning_artifacts = ProvisioningArtifacts.build(params[:provisioning_artifacts], context: "#{context}[:provisioning_artifacts]") unless params[:provisioning_artifacts].nil?
        type.budgets = Budgets.build(params[:budgets], context: "#{context}[:budgets]") unless params[:budgets].nil?
        type.launch_paths = LaunchPaths.build(params[:launch_paths], context: "#{context}[:launch_paths]") unless params[:launch_paths].nil?
        type
      end
    end

    module DescribeProductViewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductViewInput, context: context)
        type = Types::DescribeProductViewInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type
      end
    end

    module DescribeProductViewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductViewOutput, context: context)
        type = Types::DescribeProductViewOutput.new
        type.product_view_summary = ProductViewSummary.build(params[:product_view_summary], context: "#{context}[:product_view_summary]") unless params[:product_view_summary].nil?
        type.provisioning_artifacts = ProvisioningArtifacts.build(params[:provisioning_artifacts], context: "#{context}[:provisioning_artifacts]") unless params[:provisioning_artifacts].nil?
        type
      end
    end

    module DescribeProvisionedProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisionedProductInput, context: context)
        type = Types::DescribeProvisionedProductInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module DescribeProvisionedProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisionedProductOutput, context: context)
        type = Types::DescribeProvisionedProductOutput.new
        type.provisioned_product_detail = ProvisionedProductDetail.build(params[:provisioned_product_detail], context: "#{context}[:provisioned_product_detail]") unless params[:provisioned_product_detail].nil?
        type.cloud_watch_dashboards = CloudWatchDashboards.build(params[:cloud_watch_dashboards], context: "#{context}[:cloud_watch_dashboards]") unless params[:cloud_watch_dashboards].nil?
        type
      end
    end

    module DescribeProvisionedProductPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisionedProductPlanInput, context: context)
        type = Types::DescribeProvisionedProductPlanInput.new
        type.accept_language = params[:accept_language]
        type.plan_id = params[:plan_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module DescribeProvisionedProductPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisionedProductPlanOutput, context: context)
        type = Types::DescribeProvisionedProductPlanOutput.new
        type.provisioned_product_plan_details = ProvisionedProductPlanDetails.build(params[:provisioned_product_plan_details], context: "#{context}[:provisioned_product_plan_details]") unless params[:provisioned_product_plan_details].nil?
        type.resource_changes = ResourceChanges.build(params[:resource_changes], context: "#{context}[:resource_changes]") unless params[:resource_changes].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module DescribeProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningArtifactInput, context: context)
        type = Types::DescribeProvisioningArtifactInput.new
        type.accept_language = params[:accept_language]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.product_id = params[:product_id]
        type.provisioning_artifact_name = params[:provisioning_artifact_name]
        type.product_name = params[:product_name]
        type.verbose = params[:verbose]
        type
      end
    end

    module DescribeProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningArtifactOutput, context: context)
        type = Types::DescribeProvisioningArtifactOutput.new
        type.provisioning_artifact_detail = ProvisioningArtifactDetail.build(params[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless params[:provisioning_artifact_detail].nil?
        type.info = ProvisioningArtifactInfo.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type.status = params[:status]
        type
      end
    end

    module DescribeProvisioningParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningParametersInput, context: context)
        type = Types::DescribeProvisioningParametersInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.product_name = params[:product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_artifact_name = params[:provisioning_artifact_name]
        type.path_id = params[:path_id]
        type.path_name = params[:path_name]
        type
      end
    end

    module DescribeProvisioningParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProvisioningParametersOutput, context: context)
        type = Types::DescribeProvisioningParametersOutput.new
        type.provisioning_artifact_parameters = ProvisioningArtifactParameters.build(params[:provisioning_artifact_parameters], context: "#{context}[:provisioning_artifact_parameters]") unless params[:provisioning_artifact_parameters].nil?
        type.constraint_summaries = ConstraintSummaries.build(params[:constraint_summaries], context: "#{context}[:constraint_summaries]") unless params[:constraint_summaries].nil?
        type.usage_instructions = UsageInstructions.build(params[:usage_instructions], context: "#{context}[:usage_instructions]") unless params[:usage_instructions].nil?
        type.tag_options = TagOptionSummaries.build(params[:tag_options], context: "#{context}[:tag_options]") unless params[:tag_options].nil?
        type.provisioning_artifact_preferences = ProvisioningArtifactPreferences.build(params[:provisioning_artifact_preferences], context: "#{context}[:provisioning_artifact_preferences]") unless params[:provisioning_artifact_preferences].nil?
        type.provisioning_artifact_outputs = ProvisioningArtifactOutputs.build(params[:provisioning_artifact_outputs], context: "#{context}[:provisioning_artifact_outputs]") unless params[:provisioning_artifact_outputs].nil?
        type.provisioning_artifact_output_keys = ProvisioningArtifactOutputs.build(params[:provisioning_artifact_output_keys], context: "#{context}[:provisioning_artifact_output_keys]") unless params[:provisioning_artifact_output_keys].nil?
        type
      end
    end

    module DescribeRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecordInput, context: context)
        type = Types::DescribeRecordInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecordOutput, context: context)
        type = Types::DescribeRecordOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type.record_outputs = RecordOutputs.build(params[:record_outputs], context: "#{context}[:record_outputs]") unless params[:record_outputs].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module DescribeServiceActionExecutionParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceActionExecutionParametersInput, context: context)
        type = Types::DescribeServiceActionExecutionParametersInput.new
        type.provisioned_product_id = params[:provisioned_product_id]
        type.service_action_id = params[:service_action_id]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module DescribeServiceActionExecutionParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceActionExecutionParametersOutput, context: context)
        type = Types::DescribeServiceActionExecutionParametersOutput.new
        type.service_action_parameters = ExecutionParameters.build(params[:service_action_parameters], context: "#{context}[:service_action_parameters]") unless params[:service_action_parameters].nil?
        type
      end
    end

    module DescribeServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceActionInput, context: context)
        type = Types::DescribeServiceActionInput.new
        type.id = params[:id]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module DescribeServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceActionOutput, context: context)
        type = Types::DescribeServiceActionOutput.new
        type.service_action_detail = ServiceActionDetail.build(params[:service_action_detail], context: "#{context}[:service_action_detail]") unless params[:service_action_detail].nil?
        type
      end
    end

    module DescribeTagOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagOptionInput, context: context)
        type = Types::DescribeTagOptionInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeTagOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagOptionOutput, context: context)
        type = Types::DescribeTagOptionOutput.new
        type.tag_option_detail = TagOptionDetail.build(params[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless params[:tag_option_detail].nil?
        type
      end
    end

    module DisableAWSOrganizationsAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAWSOrganizationsAccessInput, context: context)
        type = Types::DisableAWSOrganizationsAccessInput.new
        type
      end
    end

    module DisableAWSOrganizationsAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAWSOrganizationsAccessOutput, context: context)
        type = Types::DisableAWSOrganizationsAccessOutput.new
        type
      end
    end

    module DisassociateBudgetFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBudgetFromResourceInput, context: context)
        type = Types::DisassociateBudgetFromResourceInput.new
        type.budget_name = params[:budget_name]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DisassociateBudgetFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBudgetFromResourceOutput, context: context)
        type = Types::DisassociateBudgetFromResourceOutput.new
        type
      end
    end

    module DisassociatePrincipalFromPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePrincipalFromPortfolioInput, context: context)
        type = Types::DisassociatePrincipalFromPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module DisassociatePrincipalFromPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePrincipalFromPortfolioOutput, context: context)
        type = Types::DisassociatePrincipalFromPortfolioOutput.new
        type
      end
    end

    module DisassociateProductFromPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateProductFromPortfolioInput, context: context)
        type = Types::DisassociateProductFromPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.portfolio_id = params[:portfolio_id]
        type
      end
    end

    module DisassociateProductFromPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateProductFromPortfolioOutput, context: context)
        type = Types::DisassociateProductFromPortfolioOutput.new
        type
      end
    end

    module DisassociateServiceActionFromProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceActionFromProvisioningArtifactInput, context: context)
        type = Types::DisassociateServiceActionFromProvisioningArtifactInput.new
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.service_action_id = params[:service_action_id]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module DisassociateServiceActionFromProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceActionFromProvisioningArtifactOutput, context: context)
        type = Types::DisassociateServiceActionFromProvisioningArtifactOutput.new
        type
      end
    end

    module DisassociateTagOptionFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTagOptionFromResourceInput, context: context)
        type = Types::DisassociateTagOptionFromResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_option_id = params[:tag_option_id]
        type
      end
    end

    module DisassociateTagOptionFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTagOptionFromResourceOutput, context: context)
        type = Types::DisassociateTagOptionFromResourceOutput.new
        type
      end
    end

    module DuplicateResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateResourceException, context: context)
        type = Types::DuplicateResourceException.new
        type.message = params[:message]
        type
      end
    end

    module EnableAWSOrganizationsAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAWSOrganizationsAccessInput, context: context)
        type = Types::EnableAWSOrganizationsAccessInput.new
        type
      end
    end

    module EnableAWSOrganizationsAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAWSOrganizationsAccessOutput, context: context)
        type = Types::EnableAWSOrganizationsAccessOutput.new
        type
      end
    end

    module ExecuteProvisionedProductPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteProvisionedProductPlanInput, context: context)
        type = Types::ExecuteProvisionedProductPlanInput.new
        type.accept_language = params[:accept_language]
        type.plan_id = params[:plan_id]
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module ExecuteProvisionedProductPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteProvisionedProductPlanOutput, context: context)
        type = Types::ExecuteProvisionedProductPlanOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module ExecuteProvisionedProductServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteProvisionedProductServiceActionInput, context: context)
        type = Types::ExecuteProvisionedProductServiceActionInput.new
        type.provisioned_product_id = params[:provisioned_product_id]
        type.service_action_id = params[:service_action_id]
        type.execute_token = params[:execute_token] || SecureRandom.uuid
        type.accept_language = params[:accept_language]
        type.parameters = ExecutionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ExecuteProvisionedProductServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteProvisionedProductServiceActionOutput, context: context)
        type = Types::ExecuteProvisionedProductServiceActionOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module ExecutionParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionParameter, context: context)
        type = Types::ExecutionParameter.new
        type.name = params[:name]
        type.type = params[:type]
        type.default_values = ExecutionParameterValueList.build(params[:default_values], context: "#{context}[:default_values]") unless params[:default_values].nil?
        type
      end
    end

    module ExecutionParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExecutionParameterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExecutionParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExecutionParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedServiceActionAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedServiceActionAssociation, context: context)
        type = Types::FailedServiceActionAssociation.new
        type.service_action_id = params[:service_action_id]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedServiceActionAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedServiceActionAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAWSOrganizationsAccessStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAWSOrganizationsAccessStatusInput, context: context)
        type = Types::GetAWSOrganizationsAccessStatusInput.new
        type
      end
    end

    module GetAWSOrganizationsAccessStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAWSOrganizationsAccessStatusOutput, context: context)
        type = Types::GetAWSOrganizationsAccessStatusOutput.new
        type.access_status = params[:access_status]
        type
      end
    end

    module GetProvisionedProductOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProvisionedProductOutputsInput, context: context)
        type = Types::GetProvisionedProductOutputsInput.new
        type.accept_language = params[:accept_language]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.output_keys = OutputKeys.build(params[:output_keys], context: "#{context}[:output_keys]") unless params[:output_keys].nil?
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetProvisionedProductOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProvisionedProductOutputsOutput, context: context)
        type = Types::GetProvisionedProductOutputsOutput.new
        type.outputs = RecordOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ImportAsProvisionedProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAsProvisionedProductInput, context: context)
        type = Types::ImportAsProvisionedProductInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.physical_id = params[:physical_id]
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module ImportAsProvisionedProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAsProvisionedProductOutput, context: context)
        type = Types::ImportAsProvisionedProductOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module InvalidParametersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParametersException, context: context)
        type = Types::InvalidParametersException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module LaunchPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchPath, context: context)
        type = Types::LaunchPath.new
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module LaunchPathSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchPathSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchPathSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchPathSummary, context: context)
        type = Types::LaunchPathSummary.new
        type.id = params[:id]
        type.constraint_summaries = ConstraintSummaries.build(params[:constraint_summaries], context: "#{context}[:constraint_summaries]") unless params[:constraint_summaries].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.name = params[:name]
        type
      end
    end

    module LaunchPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchPath.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAcceptedPortfolioSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAcceptedPortfolioSharesInput, context: context)
        type = Types::ListAcceptedPortfolioSharesInput.new
        type.accept_language = params[:accept_language]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type.portfolio_share_type = params[:portfolio_share_type]
        type
      end
    end

    module ListAcceptedPortfolioSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAcceptedPortfolioSharesOutput, context: context)
        type = Types::ListAcceptedPortfolioSharesOutput.new
        type.portfolio_details = PortfolioDetails.build(params[:portfolio_details], context: "#{context}[:portfolio_details]") unless params[:portfolio_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListBudgetsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBudgetsForResourceInput, context: context)
        type = Types::ListBudgetsForResourceInput.new
        type.accept_language = params[:accept_language]
        type.resource_id = params[:resource_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListBudgetsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBudgetsForResourceOutput, context: context)
        type = Types::ListBudgetsForResourceOutput.new
        type.budgets = Budgets.build(params[:budgets], context: "#{context}[:budgets]") unless params[:budgets].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListConstraintsForPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConstraintsForPortfolioInput, context: context)
        type = Types::ListConstraintsForPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.product_id = params[:product_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListConstraintsForPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConstraintsForPortfolioOutput, context: context)
        type = Types::ListConstraintsForPortfolioOutput.new
        type.constraint_details = ConstraintDetails.build(params[:constraint_details], context: "#{context}[:constraint_details]") unless params[:constraint_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListLaunchPathsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchPathsInput, context: context)
        type = Types::ListLaunchPathsInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListLaunchPathsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchPathsOutput, context: context)
        type = Types::ListLaunchPathsOutput.new
        type.launch_path_summaries = LaunchPathSummaries.build(params[:launch_path_summaries], context: "#{context}[:launch_path_summaries]") unless params[:launch_path_summaries].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListOrganizationPortfolioAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationPortfolioAccessInput, context: context)
        type = Types::ListOrganizationPortfolioAccessInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.organization_node_type = params[:organization_node_type]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListOrganizationPortfolioAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationPortfolioAccessOutput, context: context)
        type = Types::ListOrganizationPortfolioAccessOutput.new
        type.organization_nodes = OrganizationNodes.build(params[:organization_nodes], context: "#{context}[:organization_nodes]") unless params[:organization_nodes].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPortfolioAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfolioAccessInput, context: context)
        type = Types::ListPortfolioAccessInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.organization_parent_id = params[:organization_parent_id]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListPortfolioAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfolioAccessOutput, context: context)
        type = Types::ListPortfolioAccessOutput.new
        type.account_ids = AccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPortfoliosForProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfoliosForProductInput, context: context)
        type = Types::ListPortfoliosForProductInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListPortfoliosForProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfoliosForProductOutput, context: context)
        type = Types::ListPortfoliosForProductOutput.new
        type.portfolio_details = PortfolioDetails.build(params[:portfolio_details], context: "#{context}[:portfolio_details]") unless params[:portfolio_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPortfoliosInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfoliosInput, context: context)
        type = Types::ListPortfoliosInput.new
        type.accept_language = params[:accept_language]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListPortfoliosOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortfoliosOutput, context: context)
        type = Types::ListPortfoliosOutput.new
        type.portfolio_details = PortfolioDetails.build(params[:portfolio_details], context: "#{context}[:portfolio_details]") unless params[:portfolio_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListPrincipalsForPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalsForPortfolioInput, context: context)
        type = Types::ListPrincipalsForPortfolioInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListPrincipalsForPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalsForPortfolioOutput, context: context)
        type = Types::ListPrincipalsForPortfolioOutput.new
        type.principals = Principals.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListProvisionedProductPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedProductPlansInput, context: context)
        type = Types::ListProvisionedProductPlansInput.new
        type.accept_language = params[:accept_language]
        type.provision_product_id = params[:provision_product_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type.access_level_filter = AccessLevelFilter.build(params[:access_level_filter], context: "#{context}[:access_level_filter]") unless params[:access_level_filter].nil?
        type
      end
    end

    module ListProvisionedProductPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedProductPlansOutput, context: context)
        type = Types::ListProvisionedProductPlansOutput.new
        type.provisioned_product_plans = ProvisionedProductPlans.build(params[:provisioned_product_plans], context: "#{context}[:provisioned_product_plans]") unless params[:provisioned_product_plans].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListProvisioningArtifactsForServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningArtifactsForServiceActionInput, context: context)
        type = Types::ListProvisioningArtifactsForServiceActionInput.new
        type.service_action_id = params[:service_action_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module ListProvisioningArtifactsForServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningArtifactsForServiceActionOutput, context: context)
        type = Types::ListProvisioningArtifactsForServiceActionOutput.new
        type.provisioning_artifact_views = ProvisioningArtifactViews.build(params[:provisioning_artifact_views], context: "#{context}[:provisioning_artifact_views]") unless params[:provisioning_artifact_views].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListProvisioningArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningArtifactsInput, context: context)
        type = Types::ListProvisioningArtifactsInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type
      end
    end

    module ListProvisioningArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisioningArtifactsOutput, context: context)
        type = Types::ListProvisioningArtifactsOutput.new
        type.provisioning_artifact_details = ProvisioningArtifactDetails.build(params[:provisioning_artifact_details], context: "#{context}[:provisioning_artifact_details]") unless params[:provisioning_artifact_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListRecordHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordHistoryInput, context: context)
        type = Types::ListRecordHistoryInput.new
        type.accept_language = params[:accept_language]
        type.access_level_filter = AccessLevelFilter.build(params[:access_level_filter], context: "#{context}[:access_level_filter]") unless params[:access_level_filter].nil?
        type.search_filter = ListRecordHistorySearchFilter.build(params[:search_filter], context: "#{context}[:search_filter]") unless params[:search_filter].nil?
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListRecordHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordHistoryOutput, context: context)
        type = Types::ListRecordHistoryOutput.new
        type.record_details = RecordDetails.build(params[:record_details], context: "#{context}[:record_details]") unless params[:record_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListRecordHistorySearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordHistorySearchFilter, context: context)
        type = Types::ListRecordHistorySearchFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ListResourcesForTagOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesForTagOptionInput, context: context)
        type = Types::ListResourcesForTagOptionInput.new
        type.tag_option_id = params[:tag_option_id]
        type.resource_type = params[:resource_type]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListResourcesForTagOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesForTagOptionOutput, context: context)
        type = Types::ListResourcesForTagOptionOutput.new
        type.resource_details = ResourceDetails.build(params[:resource_details], context: "#{context}[:resource_details]") unless params[:resource_details].nil?
        type.page_token = params[:page_token]
        type
      end
    end

    module ListServiceActionsForProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceActionsForProvisioningArtifactInput, context: context)
        type = Types::ListServiceActionsForProvisioningArtifactInput.new
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module ListServiceActionsForProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceActionsForProvisioningArtifactOutput, context: context)
        type = Types::ListServiceActionsForProvisioningArtifactOutput.new
        type.service_action_summaries = ServiceActionSummaries.build(params[:service_action_summaries], context: "#{context}[:service_action_summaries]") unless params[:service_action_summaries].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListServiceActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceActionsInput, context: context)
        type = Types::ListServiceActionsInput.new
        type.accept_language = params[:accept_language]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListServiceActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceActionsOutput, context: context)
        type = Types::ListServiceActionsOutput.new
        type.service_action_summaries = ServiceActionSummaries.build(params[:service_action_summaries], context: "#{context}[:service_action_summaries]") unless params[:service_action_summaries].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListStackInstancesForProvisionedProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackInstancesForProvisionedProductInput, context: context)
        type = Types::ListStackInstancesForProvisionedProductInput.new
        type.accept_language = params[:accept_language]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListStackInstancesForProvisionedProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackInstancesForProvisionedProductOutput, context: context)
        type = Types::ListStackInstancesForProvisionedProductOutput.new
        type.stack_instances = StackInstances.build(params[:stack_instances], context: "#{context}[:stack_instances]") unless params[:stack_instances].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ListTagOptionsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagOptionsFilters, context: context)
        type = Types::ListTagOptionsFilters.new
        type.key = params[:key]
        type.value = params[:value]
        type.active = params[:active]
        type
      end
    end

    module ListTagOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagOptionsInput, context: context)
        type = Types::ListTagOptionsInput.new
        type.filters = ListTagOptionsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ListTagOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagOptionsOutput, context: context)
        type = Types::ListTagOptionsOutput.new
        type.tag_option_details = TagOptionDetails.build(params[:tag_option_details], context: "#{context}[:tag_option_details]") unless params[:tag_option_details].nil?
        type.page_token = params[:page_token]
        type
      end
    end

    module Namespaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotificationArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OperationNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotSupportedException, context: context)
        type = Types::OperationNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationNode, context: context)
        type = Types::OrganizationNode.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module OrganizationNodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterConstraints, context: context)
        type = Types::ParameterConstraints.new
        type.allowed_values = AllowedValues.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type.allowed_pattern = params[:allowed_pattern]
        type.constraint_description = params[:constraint_description]
        type.max_length = params[:max_length]
        type.min_length = params[:min_length]
        type.max_value = params[:max_value]
        type.min_value = params[:min_value]
        type
      end
    end

    module PortfolioDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortfolioDetail, context: context)
        type = Types::PortfolioDetail.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.provider_name = params[:provider_name]
        type
      end
    end

    module PortfolioDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortfolioDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortfolioShareDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortfolioShareDetail, context: context)
        type = Types::PortfolioShareDetail.new
        type.principal_id = params[:principal_id]
        type.type = params[:type]
        type.accepted = params[:accepted]
        type.share_tag_options = params[:share_tag_options]
        type
      end
    end

    module PortfolioShareDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortfolioShareDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Principal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Principal, context: context)
        type = Types::Principal.new
        type.principal_arn = params[:principal_arn]
        type.principal_type = params[:principal_type]
        type
      end
    end

    module Principals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Principal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductViewAggregationValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductViewAggregationValue, context: context)
        type = Types::ProductViewAggregationValue.new
        type.value = params[:value]
        type.approximate_count = params[:approximate_count]
        type
      end
    end

    module ProductViewAggregationValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductViewAggregationValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductViewAggregations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ProductViewAggregationValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProductViewDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductViewDetail, context: context)
        type = Types::ProductViewDetail.new
        type.product_view_summary = ProductViewSummary.build(params[:product_view_summary], context: "#{context}[:product_view_summary]") unless params[:product_view_summary].nil?
        type.status = params[:status]
        type.product_arn = params[:product_arn]
        type.created_time = params[:created_time]
        type
      end
    end

    module ProductViewDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductViewDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductViewFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProductViewFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ProductViewFilterValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProductViewSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductViewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductViewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductViewSummary, context: context)
        type = Types::ProductViewSummary.new
        type.id = params[:id]
        type.product_id = params[:product_id]
        type.name = params[:name]
        type.owner = params[:owner]
        type.short_description = params[:short_description]
        type.type = params[:type]
        type.distributor = params[:distributor]
        type.has_default_path = params[:has_default_path]
        type.support_email = params[:support_email]
        type.support_description = params[:support_description]
        type.support_url = params[:support_url]
        type
      end
    end

    module ProvisionProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionProductInput, context: context)
        type = Types::ProvisionProductInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.product_name = params[:product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_artifact_name = params[:provisioning_artifact_name]
        type.path_id = params[:path_id]
        type.path_name = params[:path_name]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.provisioning_parameters = ProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type.provisioning_preferences = ProvisioningPreferences.build(params[:provisioning_preferences], context: "#{context}[:provisioning_preferences]") unless params[:provisioning_preferences].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.notification_arns = NotificationArns.build(params[:notification_arns], context: "#{context}[:notification_arns]") unless params[:notification_arns].nil?
        type.provision_token = params[:provision_token] || SecureRandom.uuid
        type
      end
    end

    module ProvisionProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionProductOutput, context: context)
        type = Types::ProvisionProductOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module ProvisionedProductAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedProductAttribute, context: context)
        type = Types::ProvisionedProductAttribute.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.type = params[:type]
        type.id = params[:id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_time = params[:created_time]
        type.idempotency_token = params[:idempotency_token]
        type.last_record_id = params[:last_record_id]
        type.last_provisioning_record_id = params[:last_provisioning_record_id]
        type.last_successful_provisioning_record_id = params[:last_successful_provisioning_record_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.physical_id = params[:physical_id]
        type.product_id = params[:product_id]
        type.product_name = params[:product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_artifact_name = params[:provisioning_artifact_name]
        type.user_arn = params[:user_arn]
        type.user_arn_session = params[:user_arn_session]
        type
      end
    end

    module ProvisionedProductAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedProductAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedProductDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedProductDetail, context: context)
        type = Types::ProvisionedProductDetail.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.type = params[:type]
        type.id = params[:id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_time = params[:created_time]
        type.idempotency_token = params[:idempotency_token]
        type.last_record_id = params[:last_record_id]
        type.last_provisioning_record_id = params[:last_provisioning_record_id]
        type.last_successful_provisioning_record_id = params[:last_successful_provisioning_record_id]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.launch_role_arn = params[:launch_role_arn]
        type
      end
    end

    module ProvisionedProductDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedProductDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedProductFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ProvisionedProductViewFilterValues.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProvisionedProductPlanDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedProductPlanDetails, context: context)
        type = Types::ProvisionedProductPlanDetails.new
        type.created_time = params[:created_time]
        type.path_id = params[:path_id]
        type.product_id = params[:product_id]
        type.plan_name = params[:plan_name]
        type.plan_id = params[:plan_id]
        type.provision_product_id = params[:provision_product_id]
        type.provision_product_name = params[:provision_product_name]
        type.plan_type = params[:plan_type]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.status = params[:status]
        type.updated_time = params[:updated_time]
        type.notification_arns = NotificationArns.build(params[:notification_arns], context: "#{context}[:notification_arns]") unless params[:notification_arns].nil?
        type.provisioning_parameters = UpdateProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status_message = params[:status_message]
        type
      end
    end

    module ProvisionedProductPlanSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedProductPlanSummary, context: context)
        type = Types::ProvisionedProductPlanSummary.new
        type.plan_name = params[:plan_name]
        type.plan_id = params[:plan_id]
        type.provision_product_id = params[:provision_product_id]
        type.provision_product_name = params[:provision_product_name]
        type.plan_type = params[:plan_type]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type
      end
    end

    module ProvisionedProductPlans
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedProductPlanSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedProductProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ProvisionedProductViewFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisioningArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifact, context: context)
        type = Types::ProvisioningArtifact.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.guidance = params[:guidance]
        type
      end
    end

    module ProvisioningArtifactDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactDetail, context: context)
        type = Types::ProvisioningArtifactDetail.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.created_time = params[:created_time]
        type.active = params[:active]
        type.guidance = params[:guidance]
        type
      end
    end

    module ProvisioningArtifactDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifactDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningArtifactInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactOutput, context: context)
        type = Types::ProvisioningArtifactOutput.new
        type.key = params[:key]
        type.description = params[:description]
        type
      end
    end

    module ProvisioningArtifactOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifactOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningArtifactParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactParameter, context: context)
        type = Types::ProvisioningArtifactParameter.new
        type.parameter_key = params[:parameter_key]
        type.default_value = params[:default_value]
        type.parameter_type = params[:parameter_type]
        type.is_no_echo = params[:is_no_echo]
        type.description = params[:description]
        type.parameter_constraints = ParameterConstraints.build(params[:parameter_constraints], context: "#{context}[:parameter_constraints]") unless params[:parameter_constraints].nil?
        type
      end
    end

    module ProvisioningArtifactParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifactParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningArtifactPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactPreferences, context: context)
        type = Types::ProvisioningArtifactPreferences.new
        type.stack_set_accounts = StackSetAccounts.build(params[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless params[:stack_set_accounts].nil?
        type.stack_set_regions = StackSetRegions.build(params[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless params[:stack_set_regions].nil?
        type
      end
    end

    module ProvisioningArtifactProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactProperties, context: context)
        type = Types::ProvisioningArtifactProperties.new
        type.name = params[:name]
        type.description = params[:description]
        type.info = ProvisioningArtifactInfo.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type.type = params[:type]
        type.disable_template_validation = params[:disable_template_validation]
        type
      end
    end

    module ProvisioningArtifactSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifactSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningArtifactSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactSummary, context: context)
        type = Types::ProvisioningArtifactSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.provisioning_artifact_metadata = ProvisioningArtifactInfo.build(params[:provisioning_artifact_metadata], context: "#{context}[:provisioning_artifact_metadata]") unless params[:provisioning_artifact_metadata].nil?
        type
      end
    end

    module ProvisioningArtifactView
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningArtifactView, context: context)
        type = Types::ProvisioningArtifactView.new
        type.product_view_summary = ProductViewSummary.build(params[:product_view_summary], context: "#{context}[:product_view_summary]") unless params[:product_view_summary].nil?
        type.provisioning_artifact = ProvisioningArtifact.build(params[:provisioning_artifact], context: "#{context}[:provisioning_artifact]") unless params[:provisioning_artifact].nil?
        type
      end
    end

    module ProvisioningArtifactViews
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifactView.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningParameter, context: context)
        type = Types::ProvisioningParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ProvisioningParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningPreferences, context: context)
        type = Types::ProvisioningPreferences.new
        type.stack_set_accounts = StackSetAccounts.build(params[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless params[:stack_set_accounts].nil?
        type.stack_set_regions = StackSetRegions.build(params[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless params[:stack_set_regions].nil?
        type.stack_set_failure_tolerance_count = params[:stack_set_failure_tolerance_count]
        type.stack_set_failure_tolerance_percentage = params[:stack_set_failure_tolerance_percentage]
        type.stack_set_max_concurrency_count = params[:stack_set_max_concurrency_count]
        type.stack_set_max_concurrency_percentage = params[:stack_set_max_concurrency_percentage]
        type
      end
    end

    module RecordDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordDetail, context: context)
        type = Types::RecordDetail.new
        type.record_id = params[:record_id]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.updated_time = params[:updated_time]
        type.provisioned_product_type = params[:provisioned_product_type]
        type.record_type = params[:record_type]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.path_id = params[:path_id]
        type.record_errors = RecordErrors.build(params[:record_errors], context: "#{context}[:record_errors]") unless params[:record_errors].nil?
        type.record_tags = RecordTags.build(params[:record_tags], context: "#{context}[:record_tags]") unless params[:record_tags].nil?
        type.launch_role_arn = params[:launch_role_arn]
        type
      end
    end

    module RecordDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordError, context: context)
        type = Types::RecordError.new
        type.code = params[:code]
        type.description = params[:description]
        type
      end
    end

    module RecordErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordOutput, context: context)
        type = Types::RecordOutput.new
        type.output_key = params[:output_key]
        type.output_value = params[:output_value]
        type.description = params[:description]
        type
      end
    end

    module RecordOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordTag, context: context)
        type = Types::RecordTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module RecordTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectPortfolioShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectPortfolioShareInput, context: context)
        type = Types::RejectPortfolioShareInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.portfolio_share_type = params[:portfolio_share_type]
        type
      end
    end

    module RejectPortfolioShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectPortfolioShareOutput, context: context)
        type = Types::RejectPortfolioShareOutput.new
        type
      end
    end

    module ResourceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceChange, context: context)
        type = Types::ResourceChange.new
        type.action = params[:action]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.replacement = params[:replacement]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.details = ResourceChangeDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ResourceChangeDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceChangeDetail, context: context)
        type = Types::ResourceChangeDetail.new
        type.target = ResourceTargetDefinition.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.evaluation = params[:evaluation]
        type.causing_entity = params[:causing_entity]
        type
      end
    end

    module ResourceChangeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceChangeDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDetail, context: context)
        type = Types::ResourceDetail.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type
      end
    end

    module ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceTargetDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTargetDefinition, context: context)
        type = Types::ResourceTargetDefinition.new
        type.attribute = params[:attribute]
        type.name = params[:name]
        type.requires_recreation = params[:requires_recreation]
        type
      end
    end

    module ScanProvisionedProductsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanProvisionedProductsInput, context: context)
        type = Types::ScanProvisionedProductsInput.new
        type.accept_language = params[:accept_language]
        type.access_level_filter = AccessLevelFilter.build(params[:access_level_filter], context: "#{context}[:access_level_filter]") unless params[:access_level_filter].nil?
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module ScanProvisionedProductsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanProvisionedProductsOutput, context: context)
        type = Types::ScanProvisionedProductsOutput.new
        type.provisioned_products = ProvisionedProductDetails.build(params[:provisioned_products], context: "#{context}[:provisioned_products]") unless params[:provisioned_products].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchProductsAsAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProductsAsAdminInput, context: context)
        type = Types::SearchProductsAsAdminInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.filters = ProductViewFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.page_token = params[:page_token]
        type.page_size = params[:page_size]
        type.product_source = params[:product_source]
        type
      end
    end

    module SearchProductsAsAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProductsAsAdminOutput, context: context)
        type = Types::SearchProductsAsAdminOutput.new
        type.product_view_details = ProductViewDetails.build(params[:product_view_details], context: "#{context}[:product_view_details]") unless params[:product_view_details].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module SearchProductsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProductsInput, context: context)
        type = Types::SearchProductsInput.new
        type.accept_language = params[:accept_language]
        type.filters = ProductViewFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.page_size = params[:page_size]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.page_token = params[:page_token]
        type
      end
    end

    module SearchProductsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProductsOutput, context: context)
        type = Types::SearchProductsOutput.new
        type.product_view_summaries = ProductViewSummaries.build(params[:product_view_summaries], context: "#{context}[:product_view_summaries]") unless params[:product_view_summaries].nil?
        type.product_view_aggregations = ProductViewAggregations.build(params[:product_view_aggregations], context: "#{context}[:product_view_aggregations]") unless params[:product_view_aggregations].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module SearchProvisionedProductsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProvisionedProductsInput, context: context)
        type = Types::SearchProvisionedProductsInput.new
        type.accept_language = params[:accept_language]
        type.access_level_filter = AccessLevelFilter.build(params[:access_level_filter], context: "#{context}[:access_level_filter]") unless params[:access_level_filter].nil?
        type.filters = ProvisionedProductFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.page_size = params[:page_size]
        type.page_token = params[:page_token]
        type
      end
    end

    module SearchProvisionedProductsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProvisionedProductsOutput, context: context)
        type = Types::SearchProvisionedProductsOutput.new
        type.provisioned_products = ProvisionedProductAttributes.build(params[:provisioned_products], context: "#{context}[:provisioned_products]") unless params[:provisioned_products].nil?
        type.total_results_count = params[:total_results_count]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module ServiceActionAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceActionAssociation, context: context)
        type = Types::ServiceActionAssociation.new
        type.service_action_id = params[:service_action_id]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type
      end
    end

    module ServiceActionAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceActionAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceActionDefinitionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ServiceActionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceActionDetail, context: context)
        type = Types::ServiceActionDetail.new
        type.service_action_summary = ServiceActionSummary.build(params[:service_action_summary], context: "#{context}[:service_action_summary]") unless params[:service_action_summary].nil?
        type.definition = ServiceActionDefinitionMap.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module ServiceActionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceActionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceActionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceActionSummary, context: context)
        type = Types::ServiceActionSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.definition_type = params[:definition_type]
        type
      end
    end

    module ShareDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareDetails, context: context)
        type = Types::ShareDetails.new
        type.successful_shares = SuccessfulShares.build(params[:successful_shares], context: "#{context}[:successful_shares]") unless params[:successful_shares].nil?
        type.share_errors = ShareErrors.build(params[:share_errors], context: "#{context}[:share_errors]") unless params[:share_errors].nil?
        type
      end
    end

    module ShareError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareError, context: context)
        type = Types::ShareError.new
        type.accounts = Namespaces.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.message = params[:message]
        type.error = params[:error]
        type
      end
    end

    module ShareErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShareError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceProvisioningArtifactProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceProvisioningArtifactPropertiesMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceProvisioningArtifactPropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StackInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstance, context: context)
        type = Types::StackInstance.new
        type.account = params[:account]
        type.region = params[:region]
        type.stack_instance_status = params[:stack_instance_status]
        type
      end
    end

    module StackInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSetAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StackSetRegions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SuccessfulShares
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagOptionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOptionDetail, context: context)
        type = Types::TagOptionDetail.new
        type.key = params[:key]
        type.value = params[:value]
        type.active = params[:active]
        type.id = params[:id]
        type.owner = params[:owner]
        type
      end
    end

    module TagOptionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagOptionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagOptionNotMigratedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOptionNotMigratedException, context: context)
        type = Types::TagOptionNotMigratedException.new
        type.message = params[:message]
        type
      end
    end

    module TagOptionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagOptionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagOptionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOptionSummary, context: context)
        type = Types::TagOptionSummary.new
        type.key = params[:key]
        type.values = TagOptionValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module TagOptionValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminateProvisionedProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateProvisionedProductInput, context: context)
        type = Types::TerminateProvisionedProductInput.new
        type.provisioned_product_name = params[:provisioned_product_name]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.terminate_token = params[:terminate_token] || SecureRandom.uuid
        type.ignore_errors = params[:ignore_errors]
        type.accept_language = params[:accept_language]
        type.retain_physical_resources = params[:retain_physical_resources]
        type
      end
    end

    module TerminateProvisionedProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateProvisionedProductOutput, context: context)
        type = Types::TerminateProvisionedProductOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module UpdateConstraintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConstraintInput, context: context)
        type = Types::UpdateConstraintInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.description = params[:description]
        type.parameters = params[:parameters]
        type
      end
    end

    module UpdateConstraintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConstraintOutput, context: context)
        type = Types::UpdateConstraintOutput.new
        type.constraint_detail = ConstraintDetail.build(params[:constraint_detail], context: "#{context}[:constraint_detail]") unless params[:constraint_detail].nil?
        type.constraint_parameters = params[:constraint_parameters]
        type.status = params[:status]
        type
      end
    end

    module UpdatePortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortfolioInput, context: context)
        type = Types::UpdatePortfolioInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.provider_name = params[:provider_name]
        type.add_tags = AddTags.build(params[:add_tags], context: "#{context}[:add_tags]") unless params[:add_tags].nil?
        type.remove_tags = TagKeys.build(params[:remove_tags], context: "#{context}[:remove_tags]") unless params[:remove_tags].nil?
        type
      end
    end

    module UpdatePortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortfolioOutput, context: context)
        type = Types::UpdatePortfolioOutput.new
        type.portfolio_detail = PortfolioDetail.build(params[:portfolio_detail], context: "#{context}[:portfolio_detail]") unless params[:portfolio_detail].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdatePortfolioShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortfolioShareInput, context: context)
        type = Types::UpdatePortfolioShareInput.new
        type.accept_language = params[:accept_language]
        type.portfolio_id = params[:portfolio_id]
        type.account_id = params[:account_id]
        type.organization_node = OrganizationNode.build(params[:organization_node], context: "#{context}[:organization_node]") unless params[:organization_node].nil?
        type.share_tag_options = params[:share_tag_options]
        type
      end
    end

    module UpdatePortfolioShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortfolioShareOutput, context: context)
        type = Types::UpdatePortfolioShareOutput.new
        type.portfolio_share_token = params[:portfolio_share_token]
        type.status = params[:status]
        type
      end
    end

    module UpdateProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProductInput, context: context)
        type = Types::UpdateProductInput.new
        type.accept_language = params[:accept_language]
        type.id = params[:id]
        type.name = params[:name]
        type.owner = params[:owner]
        type.description = params[:description]
        type.distributor = params[:distributor]
        type.support_description = params[:support_description]
        type.support_email = params[:support_email]
        type.support_url = params[:support_url]
        type.add_tags = AddTags.build(params[:add_tags], context: "#{context}[:add_tags]") unless params[:add_tags].nil?
        type.remove_tags = TagKeys.build(params[:remove_tags], context: "#{context}[:remove_tags]") unless params[:remove_tags].nil?
        type
      end
    end

    module UpdateProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProductOutput, context: context)
        type = Types::UpdateProductOutput.new
        type.product_view_detail = ProductViewDetail.build(params[:product_view_detail], context: "#{context}[:product_view_detail]") unless params[:product_view_detail].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateProvisionedProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisionedProductInput, context: context)
        type = Types::UpdateProvisionedProductInput.new
        type.accept_language = params[:accept_language]
        type.provisioned_product_name = params[:provisioned_product_name]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.product_id = params[:product_id]
        type.product_name = params[:product_name]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_artifact_name = params[:provisioning_artifact_name]
        type.path_id = params[:path_id]
        type.path_name = params[:path_name]
        type.provisioning_parameters = UpdateProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type.provisioning_preferences = UpdateProvisioningPreferences.build(params[:provisioning_preferences], context: "#{context}[:provisioning_preferences]") unless params[:provisioning_preferences].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.update_token = params[:update_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateProvisionedProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisionedProductOutput, context: context)
        type = Types::UpdateProvisionedProductOutput.new
        type.record_detail = RecordDetail.build(params[:record_detail], context: "#{context}[:record_detail]") unless params[:record_detail].nil?
        type
      end
    end

    module UpdateProvisionedProductPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisionedProductPropertiesInput, context: context)
        type = Types::UpdateProvisionedProductPropertiesInput.new
        type.accept_language = params[:accept_language]
        type.provisioned_product_id = params[:provisioned_product_id]
        type.provisioned_product_properties = ProvisionedProductProperties.build(params[:provisioned_product_properties], context: "#{context}[:provisioned_product_properties]") unless params[:provisioned_product_properties].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateProvisionedProductPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisionedProductPropertiesOutput, context: context)
        type = Types::UpdateProvisionedProductPropertiesOutput.new
        type.provisioned_product_id = params[:provisioned_product_id]
        type.provisioned_product_properties = ProvisionedProductProperties.build(params[:provisioned_product_properties], context: "#{context}[:provisioned_product_properties]") unless params[:provisioned_product_properties].nil?
        type.record_id = params[:record_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateProvisioningArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningArtifactInput, context: context)
        type = Types::UpdateProvisioningArtifactInput.new
        type.accept_language = params[:accept_language]
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.name = params[:name]
        type.description = params[:description]
        type.active = params[:active]
        type.guidance = params[:guidance]
        type
      end
    end

    module UpdateProvisioningArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningArtifactOutput, context: context)
        type = Types::UpdateProvisioningArtifactOutput.new
        type.provisioning_artifact_detail = ProvisioningArtifactDetail.build(params[:provisioning_artifact_detail], context: "#{context}[:provisioning_artifact_detail]") unless params[:provisioning_artifact_detail].nil?
        type.info = ProvisioningArtifactInfo.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type.status = params[:status]
        type
      end
    end

    module UpdateProvisioningParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningParameter, context: context)
        type = Types::UpdateProvisioningParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type.use_previous_value = params[:use_previous_value]
        type
      end
    end

    module UpdateProvisioningParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateProvisioningParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateProvisioningPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProvisioningPreferences, context: context)
        type = Types::UpdateProvisioningPreferences.new
        type.stack_set_accounts = StackSetAccounts.build(params[:stack_set_accounts], context: "#{context}[:stack_set_accounts]") unless params[:stack_set_accounts].nil?
        type.stack_set_regions = StackSetRegions.build(params[:stack_set_regions], context: "#{context}[:stack_set_regions]") unless params[:stack_set_regions].nil?
        type.stack_set_failure_tolerance_count = params[:stack_set_failure_tolerance_count]
        type.stack_set_failure_tolerance_percentage = params[:stack_set_failure_tolerance_percentage]
        type.stack_set_max_concurrency_count = params[:stack_set_max_concurrency_count]
        type.stack_set_max_concurrency_percentage = params[:stack_set_max_concurrency_percentage]
        type.stack_set_operation_type = params[:stack_set_operation_type]
        type
      end
    end

    module UpdateServiceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceActionInput, context: context)
        type = Types::UpdateServiceActionInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.definition = ServiceActionDefinitionMap.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.description = params[:description]
        type.accept_language = params[:accept_language]
        type
      end
    end

    module UpdateServiceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceActionOutput, context: context)
        type = Types::UpdateServiceActionOutput.new
        type.service_action_detail = ServiceActionDetail.build(params[:service_action_detail], context: "#{context}[:service_action_detail]") unless params[:service_action_detail].nil?
        type
      end
    end

    module UpdateTagOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagOptionInput, context: context)
        type = Types::UpdateTagOptionInput.new
        type.id = params[:id]
        type.value = params[:value]
        type.active = params[:active]
        type
      end
    end

    module UpdateTagOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagOptionOutput, context: context)
        type = Types::UpdateTagOptionOutput.new
        type.tag_option_detail = TagOptionDetail.build(params[:tag_option_detail], context: "#{context}[:tag_option_detail]") unless params[:tag_option_detail].nil?
        type
      end
    end

    module UsageInstruction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageInstruction, context: context)
        type = Types::UsageInstruction.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module UsageInstructions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageInstruction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
