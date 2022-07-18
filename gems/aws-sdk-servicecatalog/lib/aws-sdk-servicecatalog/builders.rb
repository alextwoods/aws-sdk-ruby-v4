# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalog
  module Builders

    # Operation Builder for AcceptPortfolioShare
    class AcceptPortfolioShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AcceptPortfolioShare'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['PortfolioShareType'] = input[:portfolio_share_type] unless input[:portfolio_share_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateBudgetWithResource
    class AssociateBudgetWithResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AssociateBudgetWithResource'
        data = {}
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociatePrincipalWithPortfolio
    class AssociatePrincipalWithPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AssociatePrincipalWithPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['PrincipalARN'] = input[:principal_arn] unless input[:principal_arn].nil?
        data['PrincipalType'] = input[:principal_type] unless input[:principal_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateProductWithPortfolio
    class AssociateProductWithPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AssociateProductWithPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['SourcePortfolioId'] = input[:source_portfolio_id] unless input[:source_portfolio_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateServiceActionWithProvisioningArtifact
    class AssociateServiceActionWithProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AssociateServiceActionWithProvisioningArtifact'
        data = {}
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateTagOptionWithResource
    class AssociateTagOptionWithResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.AssociateTagOptionWithResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagOptionId'] = input[:tag_option_id] unless input[:tag_option_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateServiceActionWithProvisioningArtifact
    class BatchAssociateServiceActionWithProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.BatchAssociateServiceActionWithProvisioningArtifact'
        data = {}
        data['ServiceActionAssociations'] = Builders::ServiceActionAssociations.build(input[:service_action_associations]) unless input[:service_action_associations].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceActionAssociations
    class ServiceActionAssociations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServiceActionAssociation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServiceActionAssociation
    class ServiceActionAssociation
      def self.build(input)
        data = {}
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data
      end
    end

    # Operation Builder for BatchDisassociateServiceActionFromProvisioningArtifact
    class BatchDisassociateServiceActionFromProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.BatchDisassociateServiceActionFromProvisioningArtifact'
        data = {}
        data['ServiceActionAssociations'] = Builders::ServiceActionAssociations.build(input[:service_action_associations]) unless input[:service_action_associations].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CopyProduct
    class CopyProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CopyProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['SourceProductArn'] = input[:source_product_arn] unless input[:source_product_arn].nil?
        data['TargetProductId'] = input[:target_product_id] unless input[:target_product_id].nil?
        data['TargetProductName'] = input[:target_product_name] unless input[:target_product_name].nil?
        data['SourceProvisioningArtifactIdentifiers'] = Builders::SourceProvisioningArtifactProperties.build(input[:source_provisioning_artifact_identifiers]) unless input[:source_provisioning_artifact_identifiers].nil?
        data['CopyOptions'] = Builders::CopyOptions.build(input[:copy_options]) unless input[:copy_options].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CopyOptions
    class CopyOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SourceProvisioningArtifactProperties
    class SourceProvisioningArtifactProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SourceProvisioningArtifactPropertiesMap.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for SourceProvisioningArtifactPropertiesMap
    class SourceProvisioningArtifactPropertiesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateConstraint
    class CreateConstraint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateConstraint'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['Parameters'] = input[:parameters] unless input[:parameters].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePortfolio
    class CreatePortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreatePortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['Tags'] = Builders::AddTags.build(input[:tags]) unless input[:tags].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AddTags
    class AddTags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreatePortfolioShare
    class CreatePortfolioShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreatePortfolioShare'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['OrganizationNode'] = Builders::OrganizationNode.build(input[:organization_node]) unless input[:organization_node].nil?
        data['ShareTagOptions'] = input[:share_tag_options] unless input[:share_tag_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationNode
    class OrganizationNode
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateProduct
    class CreateProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Distributor'] = input[:distributor] unless input[:distributor].nil?
        data['SupportDescription'] = input[:support_description] unless input[:support_description].nil?
        data['SupportEmail'] = input[:support_email] unless input[:support_email].nil?
        data['SupportUrl'] = input[:support_url] unless input[:support_url].nil?
        data['ProductType'] = input[:product_type] unless input[:product_type].nil?
        data['Tags'] = Builders::AddTags.build(input[:tags]) unless input[:tags].nil?
        data['ProvisioningArtifactParameters'] = Builders::ProvisioningArtifactProperties.build(input[:provisioning_artifact_parameters]) unless input[:provisioning_artifact_parameters].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProvisioningArtifactProperties
    class ProvisioningArtifactProperties
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Info'] = Builders::ProvisioningArtifactInfo.build(input[:info]) unless input[:info].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DisableTemplateValidation'] = input[:disable_template_validation] unless input[:disable_template_validation].nil?
        data
      end
    end

    # Map Builder for ProvisioningArtifactInfo
    class ProvisioningArtifactInfo
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProvisionedProductPlan
    class CreateProvisionedProductPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateProvisionedProductPlan'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PlanName'] = input[:plan_name] unless input[:plan_name].nil?
        data['PlanType'] = input[:plan_type] unless input[:plan_type].nil?
        data['NotificationArns'] = Builders::NotificationArns.build(input[:notification_arns]) unless input[:notification_arns].nil?
        data['PathId'] = input[:path_id] unless input[:path_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisioningParameters'] = Builders::UpdateProvisioningParameters.build(input[:provisioning_parameters]) unless input[:provisioning_parameters].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for UpdateProvisioningParameters
    class UpdateProvisioningParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateProvisioningParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateProvisioningParameter
    class UpdateProvisioningParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['UsePreviousValue'] = input[:use_previous_value] unless input[:use_previous_value].nil?
        data
      end
    end

    # List Builder for NotificationArns
    class NotificationArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProvisioningArtifact
    class CreateProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateProvisioningArtifact'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['Parameters'] = Builders::ProvisioningArtifactProperties.build(input[:parameters]) unless input[:parameters].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateServiceAction
    class CreateServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateServiceAction'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DefinitionType'] = input[:definition_type] unless input[:definition_type].nil?
        data['Definition'] = Builders::ServiceActionDefinitionMap.build(input[:definition]) unless input[:definition].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ServiceActionDefinitionMap
    class ServiceActionDefinitionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTagOption
    class CreateTagOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.CreateTagOption'
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConstraint
    class DeleteConstraint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteConstraint'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePortfolio
    class DeletePortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeletePortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePortfolioShare
    class DeletePortfolioShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeletePortfolioShare'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['OrganizationNode'] = Builders::OrganizationNode.build(input[:organization_node]) unless input[:organization_node].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProduct
    class DeleteProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProvisionedProductPlan
    class DeleteProvisionedProductPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteProvisionedProductPlan'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PlanId'] = input[:plan_id] unless input[:plan_id].nil?
        data['IgnoreErrors'] = input[:ignore_errors] unless input[:ignore_errors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProvisioningArtifact
    class DeleteProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteProvisioningArtifact'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServiceAction
    class DeleteServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteServiceAction'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTagOption
    class DeleteTagOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DeleteTagOption'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConstraint
    class DescribeConstraint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeConstraint'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCopyProductStatus
    class DescribeCopyProductStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeCopyProductStatus'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['CopyProductToken'] = input[:copy_product_token] unless input[:copy_product_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePortfolio
    class DescribePortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribePortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePortfolioShareStatus
    class DescribePortfolioShareStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribePortfolioShareStatus'
        data = {}
        data['PortfolioShareToken'] = input[:portfolio_share_token] unless input[:portfolio_share_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePortfolioShares
    class DescribePortfolioShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribePortfolioShares'
        data = {}
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProduct
    class DescribeProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProductAsAdmin
    class DescribeProductAsAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProductAsAdmin'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SourcePortfolioId'] = input[:source_portfolio_id] unless input[:source_portfolio_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProductView
    class DescribeProductView
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProductView'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProvisionedProduct
    class DescribeProvisionedProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProvisionedProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProvisionedProductPlan
    class DescribeProvisionedProductPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProvisionedProductPlan'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PlanId'] = input[:plan_id] unless input[:plan_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProvisioningArtifact
    class DescribeProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProvisioningArtifact'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactName'] = input[:provisioning_artifact_name] unless input[:provisioning_artifact_name].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['Verbose'] = input[:verbose] unless input[:verbose].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProvisioningParameters
    class DescribeProvisioningParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeProvisioningParameters'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisioningArtifactName'] = input[:provisioning_artifact_name] unless input[:provisioning_artifact_name].nil?
        data['PathId'] = input[:path_id] unless input[:path_id].nil?
        data['PathName'] = input[:path_name] unless input[:path_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRecord
    class DescribeRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeRecord'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServiceAction
    class DescribeServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeServiceAction'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServiceActionExecutionParameters
    class DescribeServiceActionExecutionParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeServiceActionExecutionParameters'
        data = {}
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTagOption
    class DescribeTagOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DescribeTagOption'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableAWSOrganizationsAccess
    class DisableAWSOrganizationsAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisableAWSOrganizationsAccess'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateBudgetFromResource
    class DisassociateBudgetFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisassociateBudgetFromResource'
        data = {}
        data['BudgetName'] = input[:budget_name] unless input[:budget_name].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociatePrincipalFromPortfolio
    class DisassociatePrincipalFromPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisassociatePrincipalFromPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['PrincipalARN'] = input[:principal_arn] unless input[:principal_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateProductFromPortfolio
    class DisassociateProductFromPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisassociateProductFromPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateServiceActionFromProvisioningArtifact
    class DisassociateServiceActionFromProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisassociateServiceActionFromProvisioningArtifact'
        data = {}
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateTagOptionFromResource
    class DisassociateTagOptionFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.DisassociateTagOptionFromResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagOptionId'] = input[:tag_option_id] unless input[:tag_option_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableAWSOrganizationsAccess
    class EnableAWSOrganizationsAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.EnableAWSOrganizationsAccess'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteProvisionedProductPlan
    class ExecuteProvisionedProductPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ExecuteProvisionedProductPlan'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PlanId'] = input[:plan_id] unless input[:plan_id].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteProvisionedProductServiceAction
    class ExecuteProvisionedProductServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ExecuteProvisionedProductServiceAction'
        data = {}
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['ExecuteToken'] = input[:execute_token] unless input[:execute_token].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Parameters'] = Builders::ExecutionParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ExecutionParameterMap
    class ExecutionParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ExecutionParameterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ExecutionParameterValueList
    class ExecutionParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetAWSOrganizationsAccessStatus
    class GetAWSOrganizationsAccessStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.GetAWSOrganizationsAccessStatus'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProvisionedProductOutputs
    class GetProvisionedProductOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.GetProvisionedProductOutputs'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['OutputKeys'] = Builders::OutputKeys.build(input[:output_keys]) unless input[:output_keys].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OutputKeys
    class OutputKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ImportAsProvisionedProduct
    class ImportAsProvisionedProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ImportAsProvisionedProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['PhysicalId'] = input[:physical_id] unless input[:physical_id].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAcceptedPortfolioShares
    class ListAcceptedPortfolioShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListAcceptedPortfolioShares'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PortfolioShareType'] = input[:portfolio_share_type] unless input[:portfolio_share_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBudgetsForResource
    class ListBudgetsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListBudgetsForResource'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConstraintsForPortfolio
    class ListConstraintsForPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListConstraintsForPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLaunchPaths
    class ListLaunchPaths
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListLaunchPaths'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOrganizationPortfolioAccess
    class ListOrganizationPortfolioAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListOrganizationPortfolioAccess'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['OrganizationNodeType'] = input[:organization_node_type] unless input[:organization_node_type].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPortfolioAccess
    class ListPortfolioAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListPortfolioAccess'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['OrganizationParentId'] = input[:organization_parent_id] unless input[:organization_parent_id].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPortfolios
    class ListPortfolios
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListPortfolios'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPortfoliosForProduct
    class ListPortfoliosForProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListPortfoliosForProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPrincipalsForPortfolio
    class ListPrincipalsForPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListPrincipalsForPortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProvisionedProductPlans
    class ListProvisionedProductPlans
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListProvisionedProductPlans'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisionProductId'] = input[:provision_product_id] unless input[:provision_product_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['AccessLevelFilter'] = Builders::AccessLevelFilter.build(input[:access_level_filter]) unless input[:access_level_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AccessLevelFilter
    class AccessLevelFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListProvisioningArtifacts
    class ListProvisioningArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListProvisioningArtifacts'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProvisioningArtifactsForServiceAction
    class ListProvisioningArtifactsForServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListProvisioningArtifactsForServiceAction'
        data = {}
        data['ServiceActionId'] = input[:service_action_id] unless input[:service_action_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRecordHistory
    class ListRecordHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListRecordHistory'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['AccessLevelFilter'] = Builders::AccessLevelFilter.build(input[:access_level_filter]) unless input[:access_level_filter].nil?
        data['SearchFilter'] = Builders::ListRecordHistorySearchFilter.build(input[:search_filter]) unless input[:search_filter].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListRecordHistorySearchFilter
    class ListRecordHistorySearchFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListResourcesForTagOption
    class ListResourcesForTagOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListResourcesForTagOption'
        data = {}
        data['TagOptionId'] = input[:tag_option_id] unless input[:tag_option_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceActions
    class ListServiceActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListServiceActions'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceActionsForProvisioningArtifact
    class ListServiceActionsForProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListServiceActionsForProvisioningArtifact'
        data = {}
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStackInstancesForProvisionedProduct
    class ListStackInstancesForProvisionedProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListStackInstancesForProvisionedProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagOptions
    class ListTagOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ListTagOptions'
        data = {}
        data['Filters'] = Builders::ListTagOptionsFilters.build(input[:filters]) unless input[:filters].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListTagOptionsFilters
    class ListTagOptionsFilters
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Active'] = input[:active] unless input[:active].nil?
        data
      end
    end

    # Operation Builder for ProvisionProduct
    class ProvisionProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ProvisionProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisioningArtifactName'] = input[:provisioning_artifact_name] unless input[:provisioning_artifact_name].nil?
        data['PathId'] = input[:path_id] unless input[:path_id].nil?
        data['PathName'] = input[:path_name] unless input[:path_name].nil?
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['ProvisioningParameters'] = Builders::ProvisioningParameters.build(input[:provisioning_parameters]) unless input[:provisioning_parameters].nil?
        data['ProvisioningPreferences'] = Builders::ProvisioningPreferences.build(input[:provisioning_preferences]) unless input[:provisioning_preferences].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['NotificationArns'] = Builders::NotificationArns.build(input[:notification_arns]) unless input[:notification_arns].nil?
        data['ProvisionToken'] = input[:provision_token] unless input[:provision_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProvisioningPreferences
    class ProvisioningPreferences
      def self.build(input)
        data = {}
        data['StackSetAccounts'] = Builders::StackSetAccounts.build(input[:stack_set_accounts]) unless input[:stack_set_accounts].nil?
        data['StackSetRegions'] = Builders::StackSetRegions.build(input[:stack_set_regions]) unless input[:stack_set_regions].nil?
        data['StackSetFailureToleranceCount'] = input[:stack_set_failure_tolerance_count] unless input[:stack_set_failure_tolerance_count].nil?
        data['StackSetFailureTolerancePercentage'] = input[:stack_set_failure_tolerance_percentage] unless input[:stack_set_failure_tolerance_percentage].nil?
        data['StackSetMaxConcurrencyCount'] = input[:stack_set_max_concurrency_count] unless input[:stack_set_max_concurrency_count].nil?
        data['StackSetMaxConcurrencyPercentage'] = input[:stack_set_max_concurrency_percentage] unless input[:stack_set_max_concurrency_percentage].nil?
        data
      end
    end

    # List Builder for StackSetRegions
    class StackSetRegions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StackSetAccounts
    class StackSetAccounts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ProvisioningParameters
    class ProvisioningParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProvisioningParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProvisioningParameter
    class ProvisioningParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for RejectPortfolioShare
    class RejectPortfolioShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.RejectPortfolioShare'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['PortfolioShareType'] = input[:portfolio_share_type] unless input[:portfolio_share_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ScanProvisionedProducts
    class ScanProvisionedProducts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.ScanProvisionedProducts'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['AccessLevelFilter'] = Builders::AccessLevelFilter.build(input[:access_level_filter]) unless input[:access_level_filter].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchProducts
    class SearchProducts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.SearchProducts'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Filters'] = Builders::ProductViewFilters.build(input[:filters]) unless input[:filters].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ProductViewFilters
    class ProductViewFilters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ProductViewFilterValues.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ProductViewFilterValues
    class ProductViewFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchProductsAsAdmin
    class SearchProductsAsAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.SearchProductsAsAdmin'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['Filters'] = Builders::ProductViewFilters.build(input[:filters]) unless input[:filters].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['ProductSource'] = input[:product_source] unless input[:product_source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchProvisionedProducts
    class SearchProvisionedProducts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.SearchProvisionedProducts'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['AccessLevelFilter'] = Builders::AccessLevelFilter.build(input[:access_level_filter]) unless input[:access_level_filter].nil?
        data['Filters'] = Builders::ProvisionedProductFilters.build(input[:filters]) unless input[:filters].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['PageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ProvisionedProductFilters
    class ProvisionedProductFilters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ProvisionedProductViewFilterValues.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ProvisionedProductViewFilterValues
    class ProvisionedProductViewFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TerminateProvisionedProduct
    class TerminateProvisionedProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.TerminateProvisionedProduct'
        data = {}
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['TerminateToken'] = input[:terminate_token] unless input[:terminate_token].nil?
        data['IgnoreErrors'] = input[:ignore_errors] unless input[:ignore_errors].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['RetainPhysicalResources'] = input[:retain_physical_resources] unless input[:retain_physical_resources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConstraint
    class UpdateConstraint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateConstraint'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Parameters'] = input[:parameters] unless input[:parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePortfolio
    class UpdatePortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdatePortfolio'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['AddTags'] = Builders::AddTags.build(input[:add_tags]) unless input[:add_tags].nil?
        data['RemoveTags'] = Builders::TagKeys.build(input[:remove_tags]) unless input[:remove_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdatePortfolioShare
    class UpdatePortfolioShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdatePortfolioShare'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['PortfolioId'] = input[:portfolio_id] unless input[:portfolio_id].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['OrganizationNode'] = Builders::OrganizationNode.build(input[:organization_node]) unless input[:organization_node].nil?
        data['ShareTagOptions'] = input[:share_tag_options] unless input[:share_tag_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProduct
    class UpdateProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Distributor'] = input[:distributor] unless input[:distributor].nil?
        data['SupportDescription'] = input[:support_description] unless input[:support_description].nil?
        data['SupportEmail'] = input[:support_email] unless input[:support_email].nil?
        data['SupportUrl'] = input[:support_url] unless input[:support_url].nil?
        data['AddTags'] = Builders::AddTags.build(input[:add_tags]) unless input[:add_tags].nil?
        data['RemoveTags'] = Builders::TagKeys.build(input[:remove_tags]) unless input[:remove_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProvisionedProduct
    class UpdateProvisionedProduct
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateProvisionedProduct'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisionedProductName'] = input[:provisioned_product_name] unless input[:provisioned_product_name].nil?
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisioningArtifactName'] = input[:provisioning_artifact_name] unless input[:provisioning_artifact_name].nil?
        data['PathId'] = input[:path_id] unless input[:path_id].nil?
        data['PathName'] = input[:path_name] unless input[:path_name].nil?
        data['ProvisioningParameters'] = Builders::UpdateProvisioningParameters.build(input[:provisioning_parameters]) unless input[:provisioning_parameters].nil?
        data['ProvisioningPreferences'] = Builders::UpdateProvisioningPreferences.build(input[:provisioning_preferences]) unless input[:provisioning_preferences].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['UpdateToken'] = input[:update_token] unless input[:update_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateProvisioningPreferences
    class UpdateProvisioningPreferences
      def self.build(input)
        data = {}
        data['StackSetAccounts'] = Builders::StackSetAccounts.build(input[:stack_set_accounts]) unless input[:stack_set_accounts].nil?
        data['StackSetRegions'] = Builders::StackSetRegions.build(input[:stack_set_regions]) unless input[:stack_set_regions].nil?
        data['StackSetFailureToleranceCount'] = input[:stack_set_failure_tolerance_count] unless input[:stack_set_failure_tolerance_count].nil?
        data['StackSetFailureTolerancePercentage'] = input[:stack_set_failure_tolerance_percentage] unless input[:stack_set_failure_tolerance_percentage].nil?
        data['StackSetMaxConcurrencyCount'] = input[:stack_set_max_concurrency_count] unless input[:stack_set_max_concurrency_count].nil?
        data['StackSetMaxConcurrencyPercentage'] = input[:stack_set_max_concurrency_percentage] unless input[:stack_set_max_concurrency_percentage].nil?
        data['StackSetOperationType'] = input[:stack_set_operation_type] unless input[:stack_set_operation_type].nil?
        data
      end
    end

    # Operation Builder for UpdateProvisionedProductProperties
    class UpdateProvisionedProductProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateProvisionedProductProperties'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProvisionedProductId'] = input[:provisioned_product_id] unless input[:provisioned_product_id].nil?
        data['ProvisionedProductProperties'] = Builders::ProvisionedProductProperties.build(input[:provisioned_product_properties]) unless input[:provisioned_product_properties].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ProvisionedProductProperties
    class ProvisionedProductProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateProvisioningArtifact
    class UpdateProvisioningArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateProvisioningArtifact'
        data = {}
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Active'] = input[:active] unless input[:active].nil?
        data['Guidance'] = input[:guidance] unless input[:guidance].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServiceAction
    class UpdateServiceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateServiceAction'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Definition'] = Builders::ServiceActionDefinitionMap.build(input[:definition]) unless input[:definition].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AcceptLanguage'] = input[:accept_language] unless input[:accept_language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTagOption
    class UpdateTagOption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWS242ServiceCatalogService.UpdateTagOption'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Active'] = input[:active] unless input[:active].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
