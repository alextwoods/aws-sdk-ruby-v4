# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ServiceCatalog
  module Parsers

    # Operation Parser for AcceptPortfolioShare
    class AcceptPortfolioShare
      def self.parse(http_resp)
        data = Types::AcceptPortfolioShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParametersException
    class InvalidParametersException
      def self.parse(http_resp)
        data = Types::InvalidParametersException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateBudgetWithResource
    class AssociateBudgetWithResource
      def self.parse(http_resp)
        data = Types::AssociateBudgetWithResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DuplicateResourceException
    class DuplicateResourceException
      def self.parse(http_resp)
        data = Types::DuplicateResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociatePrincipalWithPortfolio
    class AssociatePrincipalWithPortfolio
      def self.parse(http_resp)
        data = Types::AssociatePrincipalWithPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateProductWithPortfolio
    class AssociateProductWithPortfolio
      def self.parse(http_resp)
        data = Types::AssociateProductWithPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateServiceActionWithProvisioningArtifact
    class AssociateServiceActionWithProvisioningArtifact
      def self.parse(http_resp)
        data = Types::AssociateServiceActionWithProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateTagOptionWithResource
    class AssociateTagOptionWithResource
      def self.parse(http_resp)
        data = Types::AssociateTagOptionWithResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TagOptionNotMigratedException
    class TagOptionNotMigratedException
      def self.parse(http_resp)
        data = Types::TagOptionNotMigratedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchAssociateServiceActionWithProvisioningArtifact
    class BatchAssociateServiceActionWithProvisioningArtifact
      def self.parse(http_resp)
        data = Types::BatchAssociateServiceActionWithProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_service_action_associations = (Parsers::FailedServiceActionAssociations.parse(map['FailedServiceActionAssociations']) unless map['FailedServiceActionAssociations'].nil?)
        data
      end
    end

    class FailedServiceActionAssociations
      def self.parse(list)
        list.map do |value|
          Parsers::FailedServiceActionAssociation.parse(value) unless value.nil?
        end
      end
    end

    class FailedServiceActionAssociation
      def self.parse(map)
        data = Types::FailedServiceActionAssociation.new
        data.service_action_id = map['ServiceActionId']
        data.product_id = map['ProductId']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for BatchDisassociateServiceActionFromProvisioningArtifact
    class BatchDisassociateServiceActionFromProvisioningArtifact
      def self.parse(http_resp)
        data = Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_service_action_associations = (Parsers::FailedServiceActionAssociations.parse(map['FailedServiceActionAssociations']) unless map['FailedServiceActionAssociations'].nil?)
        data
      end
    end

    # Operation Parser for CopyProduct
    class CopyProduct
      def self.parse(http_resp)
        data = Types::CopyProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.copy_product_token = map['CopyProductToken']
        data
      end
    end

    # Operation Parser for CreateConstraint
    class CreateConstraint
      def self.parse(http_resp)
        data = Types::CreateConstraintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.constraint_detail = (Parsers::ConstraintDetail.parse(map['ConstraintDetail']) unless map['ConstraintDetail'].nil?)
        data.constraint_parameters = map['ConstraintParameters']
        data.status = map['Status']
        data
      end
    end

    class ConstraintDetail
      def self.parse(map)
        data = Types::ConstraintDetail.new
        data.constraint_id = map['ConstraintId']
        data.type = map['Type']
        data.description = map['Description']
        data.owner = map['Owner']
        data.product_id = map['ProductId']
        data.portfolio_id = map['PortfolioId']
        return data
      end
    end

    # Operation Parser for CreatePortfolio
    class CreatePortfolio
      def self.parse(http_resp)
        data = Types::CreatePortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_detail = (Parsers::PortfolioDetail.parse(map['PortfolioDetail']) unless map['PortfolioDetail'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class PortfolioDetail
      def self.parse(map)
        data = Types::PortfolioDetail.new
        data.id = map['Id']
        data.arn = map['ARN']
        data.display_name = map['DisplayName']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.provider_name = map['ProviderName']
        return data
      end
    end

    # Operation Parser for CreatePortfolioShare
    class CreatePortfolioShare
      def self.parse(http_resp)
        data = Types::CreatePortfolioShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_share_token = map['PortfolioShareToken']
        data
      end
    end

    # Error Parser for OperationNotSupportedException
    class OperationNotSupportedException
      def self.parse(http_resp)
        data = Types::OperationNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateProduct
    class CreateProduct
      def self.parse(http_resp)
        data = Types::CreateProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_detail = (Parsers::ProductViewDetail.parse(map['ProductViewDetail']) unless map['ProductViewDetail'].nil?)
        data.provisioning_artifact_detail = (Parsers::ProvisioningArtifactDetail.parse(map['ProvisioningArtifactDetail']) unless map['ProvisioningArtifactDetail'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class ProvisioningArtifactDetail
      def self.parse(map)
        data = Types::ProvisioningArtifactDetail.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.active = map['Active']
        data.guidance = map['Guidance']
        return data
      end
    end

    class ProductViewDetail
      def self.parse(map)
        data = Types::ProductViewDetail.new
        data.product_view_summary = (Parsers::ProductViewSummary.parse(map['ProductViewSummary']) unless map['ProductViewSummary'].nil?)
        data.status = map['Status']
        data.product_arn = map['ProductARN']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class ProductViewSummary
      def self.parse(map)
        data = Types::ProductViewSummary.new
        data.id = map['Id']
        data.product_id = map['ProductId']
        data.name = map['Name']
        data.owner = map['Owner']
        data.short_description = map['ShortDescription']
        data.type = map['Type']
        data.distributor = map['Distributor']
        data.has_default_path = map['HasDefaultPath']
        data.support_email = map['SupportEmail']
        data.support_description = map['SupportDescription']
        data.support_url = map['SupportUrl']
        return data
      end
    end

    # Operation Parser for CreateProvisionedProductPlan
    class CreateProvisionedProductPlan
      def self.parse(http_resp)
        data = Types::CreateProvisionedProductPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.plan_name = map['PlanName']
        data.plan_id = map['PlanId']
        data.provision_product_id = map['ProvisionProductId']
        data.provisioned_product_name = map['ProvisionedProductName']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data
      end
    end

    # Operation Parser for CreateProvisioningArtifact
    class CreateProvisioningArtifact
      def self.parse(http_resp)
        data = Types::CreateProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_detail = (Parsers::ProvisioningArtifactDetail.parse(map['ProvisioningArtifactDetail']) unless map['ProvisioningArtifactDetail'].nil?)
        data.info = (Parsers::ProvisioningArtifactInfo.parse(map['Info']) unless map['Info'].nil?)
        data.status = map['Status']
        data
      end
    end

    class ProvisioningArtifactInfo
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateServiceAction
    class CreateServiceAction
      def self.parse(http_resp)
        data = Types::CreateServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_detail = (Parsers::ServiceActionDetail.parse(map['ServiceActionDetail']) unless map['ServiceActionDetail'].nil?)
        data
      end
    end

    class ServiceActionDetail
      def self.parse(map)
        data = Types::ServiceActionDetail.new
        data.service_action_summary = (Parsers::ServiceActionSummary.parse(map['ServiceActionSummary']) unless map['ServiceActionSummary'].nil?)
        data.definition = (Parsers::ServiceActionDefinitionMap.parse(map['Definition']) unless map['Definition'].nil?)
        return data
      end
    end

    class ServiceActionDefinitionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ServiceActionSummary
      def self.parse(map)
        data = Types::ServiceActionSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.definition_type = map['DefinitionType']
        return data
      end
    end

    # Operation Parser for CreateTagOption
    class CreateTagOption
      def self.parse(http_resp)
        data = Types::CreateTagOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_option_detail = (Parsers::TagOptionDetail.parse(map['TagOptionDetail']) unless map['TagOptionDetail'].nil?)
        data
      end
    end

    class TagOptionDetail
      def self.parse(map)
        data = Types::TagOptionDetail.new
        data.key = map['Key']
        data.value = map['Value']
        data.active = map['Active']
        data.id = map['Id']
        data.owner = map['Owner']
        return data
      end
    end

    # Operation Parser for DeleteConstraint
    class DeleteConstraint
      def self.parse(http_resp)
        data = Types::DeleteConstraintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePortfolio
    class DeletePortfolio
      def self.parse(http_resp)
        data = Types::DeletePortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeletePortfolioShare
    class DeletePortfolioShare
      def self.parse(http_resp)
        data = Types::DeletePortfolioShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_share_token = map['PortfolioShareToken']
        data
      end
    end

    # Operation Parser for DeleteProduct
    class DeleteProduct
      def self.parse(http_resp)
        data = Types::DeleteProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProvisionedProductPlan
    class DeleteProvisionedProductPlan
      def self.parse(http_resp)
        data = Types::DeleteProvisionedProductPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProvisioningArtifact
    class DeleteProvisioningArtifact
      def self.parse(http_resp)
        data = Types::DeleteProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteServiceAction
    class DeleteServiceAction
      def self.parse(http_resp)
        data = Types::DeleteServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTagOption
    class DeleteTagOption
      def self.parse(http_resp)
        data = Types::DeleteTagOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeConstraint
    class DescribeConstraint
      def self.parse(http_resp)
        data = Types::DescribeConstraintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.constraint_detail = (Parsers::ConstraintDetail.parse(map['ConstraintDetail']) unless map['ConstraintDetail'].nil?)
        data.constraint_parameters = map['ConstraintParameters']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DescribeCopyProductStatus
    class DescribeCopyProductStatus
      def self.parse(http_resp)
        data = Types::DescribeCopyProductStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.copy_product_status = map['CopyProductStatus']
        data.target_product_id = map['TargetProductId']
        data.status_detail = map['StatusDetail']
        data
      end
    end

    # Operation Parser for DescribePortfolio
    class DescribePortfolio
      def self.parse(http_resp)
        data = Types::DescribePortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_detail = (Parsers::PortfolioDetail.parse(map['PortfolioDetail']) unless map['PortfolioDetail'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.tag_options = (Parsers::TagOptionDetails.parse(map['TagOptions']) unless map['TagOptions'].nil?)
        data.budgets = (Parsers::Budgets.parse(map['Budgets']) unless map['Budgets'].nil?)
        data
      end
    end

    class Budgets
      def self.parse(list)
        list.map do |value|
          Parsers::BudgetDetail.parse(value) unless value.nil?
        end
      end
    end

    class BudgetDetail
      def self.parse(map)
        data = Types::BudgetDetail.new
        data.budget_name = map['BudgetName']
        return data
      end
    end

    class TagOptionDetails
      def self.parse(list)
        list.map do |value|
          Parsers::TagOptionDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePortfolioShareStatus
    class DescribePortfolioShareStatus
      def self.parse(http_resp)
        data = Types::DescribePortfolioShareStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_share_token = map['PortfolioShareToken']
        data.portfolio_id = map['PortfolioId']
        data.organization_node_value = map['OrganizationNodeValue']
        data.status = map['Status']
        data.share_details = (Parsers::ShareDetails.parse(map['ShareDetails']) unless map['ShareDetails'].nil?)
        data
      end
    end

    class ShareDetails
      def self.parse(map)
        data = Types::ShareDetails.new
        data.successful_shares = (Parsers::SuccessfulShares.parse(map['SuccessfulShares']) unless map['SuccessfulShares'].nil?)
        data.share_errors = (Parsers::ShareErrors.parse(map['ShareErrors']) unless map['ShareErrors'].nil?)
        return data
      end
    end

    class ShareErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ShareError.parse(value) unless value.nil?
        end
      end
    end

    class ShareError
      def self.parse(map)
        data = Types::ShareError.new
        data.accounts = (Parsers::Namespaces.parse(map['Accounts']) unless map['Accounts'].nil?)
        data.message = map['Message']
        data.error = map['Error']
        return data
      end
    end

    class Namespaces
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SuccessfulShares
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePortfolioShares
    class DescribePortfolioShares
      def self.parse(http_resp)
        data = Types::DescribePortfolioSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_token = map['NextPageToken']
        data.portfolio_share_details = (Parsers::PortfolioShareDetails.parse(map['PortfolioShareDetails']) unless map['PortfolioShareDetails'].nil?)
        data
      end
    end

    class PortfolioShareDetails
      def self.parse(list)
        list.map do |value|
          Parsers::PortfolioShareDetail.parse(value) unless value.nil?
        end
      end
    end

    class PortfolioShareDetail
      def self.parse(map)
        data = Types::PortfolioShareDetail.new
        data.principal_id = map['PrincipalId']
        data.type = map['Type']
        data.accepted = map['Accepted']
        data.share_tag_options = map['ShareTagOptions']
        return data
      end
    end

    # Operation Parser for DescribeProduct
    class DescribeProduct
      def self.parse(http_resp)
        data = Types::DescribeProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_summary = (Parsers::ProductViewSummary.parse(map['ProductViewSummary']) unless map['ProductViewSummary'].nil?)
        data.provisioning_artifacts = (Parsers::ProvisioningArtifacts.parse(map['ProvisioningArtifacts']) unless map['ProvisioningArtifacts'].nil?)
        data.budgets = (Parsers::Budgets.parse(map['Budgets']) unless map['Budgets'].nil?)
        data.launch_paths = (Parsers::LaunchPaths.parse(map['LaunchPaths']) unless map['LaunchPaths'].nil?)
        data
      end
    end

    class LaunchPaths
      def self.parse(list)
        list.map do |value|
          Parsers::LaunchPath.parse(value) unless value.nil?
        end
      end
    end

    class LaunchPath
      def self.parse(map)
        data = Types::LaunchPath.new
        data.id = map['Id']
        data.name = map['Name']
        return data
      end
    end

    class ProvisioningArtifacts
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifact.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningArtifact
      def self.parse(map)
        data = Types::ProvisioningArtifact.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.guidance = map['Guidance']
        return data
      end
    end

    # Operation Parser for DescribeProductAsAdmin
    class DescribeProductAsAdmin
      def self.parse(http_resp)
        data = Types::DescribeProductAsAdminOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_detail = (Parsers::ProductViewDetail.parse(map['ProductViewDetail']) unless map['ProductViewDetail'].nil?)
        data.provisioning_artifact_summaries = (Parsers::ProvisioningArtifactSummaries.parse(map['ProvisioningArtifactSummaries']) unless map['ProvisioningArtifactSummaries'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.tag_options = (Parsers::TagOptionDetails.parse(map['TagOptions']) unless map['TagOptions'].nil?)
        data.budgets = (Parsers::Budgets.parse(map['Budgets']) unless map['Budgets'].nil?)
        data
      end
    end

    class ProvisioningArtifactSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifactSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningArtifactSummary
      def self.parse(map)
        data = Types::ProvisioningArtifactSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.provisioning_artifact_metadata = (Parsers::ProvisioningArtifactInfo.parse(map['ProvisioningArtifactMetadata']) unless map['ProvisioningArtifactMetadata'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeProductView
    class DescribeProductView
      def self.parse(http_resp)
        data = Types::DescribeProductViewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_summary = (Parsers::ProductViewSummary.parse(map['ProductViewSummary']) unless map['ProductViewSummary'].nil?)
        data.provisioning_artifacts = (Parsers::ProvisioningArtifacts.parse(map['ProvisioningArtifacts']) unless map['ProvisioningArtifacts'].nil?)
        data
      end
    end

    # Operation Parser for DescribeProvisionedProduct
    class DescribeProvisionedProduct
      def self.parse(http_resp)
        data = Types::DescribeProvisionedProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_product_detail = (Parsers::ProvisionedProductDetail.parse(map['ProvisionedProductDetail']) unless map['ProvisionedProductDetail'].nil?)
        data.cloud_watch_dashboards = (Parsers::CloudWatchDashboards.parse(map['CloudWatchDashboards']) unless map['CloudWatchDashboards'].nil?)
        data
      end
    end

    class CloudWatchDashboards
      def self.parse(list)
        list.map do |value|
          Parsers::CloudWatchDashboard.parse(value) unless value.nil?
        end
      end
    end

    class CloudWatchDashboard
      def self.parse(map)
        data = Types::CloudWatchDashboard.new
        data.name = map['Name']
        return data
      end
    end

    class ProvisionedProductDetail
      def self.parse(map)
        data = Types::ProvisionedProductDetail.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.type = map['Type']
        data.id = map['Id']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.idempotency_token = map['IdempotencyToken']
        data.last_record_id = map['LastRecordId']
        data.last_provisioning_record_id = map['LastProvisioningRecordId']
        data.last_successful_provisioning_record_id = map['LastSuccessfulProvisioningRecordId']
        data.product_id = map['ProductId']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.launch_role_arn = map['LaunchRoleArn']
        return data
      end
    end

    # Operation Parser for DescribeProvisionedProductPlan
    class DescribeProvisionedProductPlan
      def self.parse(http_resp)
        data = Types::DescribeProvisionedProductPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_product_plan_details = (Parsers::ProvisionedProductPlanDetails.parse(map['ProvisionedProductPlanDetails']) unless map['ProvisionedProductPlanDetails'].nil?)
        data.resource_changes = (Parsers::ResourceChanges.parse(map['ResourceChanges']) unless map['ResourceChanges'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ResourceChanges
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceChange.parse(value) unless value.nil?
        end
      end
    end

    class ResourceChange
      def self.parse(map)
        data = Types::ResourceChange.new
        data.action = map['Action']
        data.logical_resource_id = map['LogicalResourceId']
        data.physical_resource_id = map['PhysicalResourceId']
        data.resource_type = map['ResourceType']
        data.replacement = map['Replacement']
        data.scope = (Parsers::Scope.parse(map['Scope']) unless map['Scope'].nil?)
        data.details = (Parsers::ResourceChangeDetails.parse(map['Details']) unless map['Details'].nil?)
        return data
      end
    end

    class ResourceChangeDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceChangeDetail.parse(value) unless value.nil?
        end
      end
    end

    class ResourceChangeDetail
      def self.parse(map)
        data = Types::ResourceChangeDetail.new
        data.target = (Parsers::ResourceTargetDefinition.parse(map['Target']) unless map['Target'].nil?)
        data.evaluation = map['Evaluation']
        data.causing_entity = map['CausingEntity']
        return data
      end
    end

    class ResourceTargetDefinition
      def self.parse(map)
        data = Types::ResourceTargetDefinition.new
        data.attribute = map['Attribute']
        data.name = map['Name']
        data.requires_recreation = map['RequiresRecreation']
        return data
      end
    end

    class Scope
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProvisionedProductPlanDetails
      def self.parse(map)
        data = Types::ProvisionedProductPlanDetails.new
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.path_id = map['PathId']
        data.product_id = map['ProductId']
        data.plan_name = map['PlanName']
        data.plan_id = map['PlanId']
        data.provision_product_id = map['ProvisionProductId']
        data.provision_product_name = map['ProvisionProductName']
        data.plan_type = map['PlanType']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.status = map['Status']
        data.updated_time = Time.at(map['UpdatedTime'].to_i) if map['UpdatedTime']
        data.notification_arns = (Parsers::NotificationArns.parse(map['NotificationArns']) unless map['NotificationArns'].nil?)
        data.provisioning_parameters = (Parsers::UpdateProvisioningParameters.parse(map['ProvisioningParameters']) unless map['ProvisioningParameters'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.status_message = map['StatusMessage']
        return data
      end
    end

    class UpdateProvisioningParameters
      def self.parse(list)
        list.map do |value|
          Parsers::UpdateProvisioningParameter.parse(value) unless value.nil?
        end
      end
    end

    class UpdateProvisioningParameter
      def self.parse(map)
        data = Types::UpdateProvisioningParameter.new
        data.key = map['Key']
        data.value = map['Value']
        data.use_previous_value = map['UsePreviousValue']
        return data
      end
    end

    class NotificationArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeProvisioningArtifact
    class DescribeProvisioningArtifact
      def self.parse(http_resp)
        data = Types::DescribeProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_detail = (Parsers::ProvisioningArtifactDetail.parse(map['ProvisioningArtifactDetail']) unless map['ProvisioningArtifactDetail'].nil?)
        data.info = (Parsers::ProvisioningArtifactInfo.parse(map['Info']) unless map['Info'].nil?)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DescribeProvisioningParameters
    class DescribeProvisioningParameters
      def self.parse(http_resp)
        data = Types::DescribeProvisioningParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_parameters = (Parsers::ProvisioningArtifactParameters.parse(map['ProvisioningArtifactParameters']) unless map['ProvisioningArtifactParameters'].nil?)
        data.constraint_summaries = (Parsers::ConstraintSummaries.parse(map['ConstraintSummaries']) unless map['ConstraintSummaries'].nil?)
        data.usage_instructions = (Parsers::UsageInstructions.parse(map['UsageInstructions']) unless map['UsageInstructions'].nil?)
        data.tag_options = (Parsers::TagOptionSummaries.parse(map['TagOptions']) unless map['TagOptions'].nil?)
        data.provisioning_artifact_preferences = (Parsers::ProvisioningArtifactPreferences.parse(map['ProvisioningArtifactPreferences']) unless map['ProvisioningArtifactPreferences'].nil?)
        data.provisioning_artifact_outputs = (Parsers::ProvisioningArtifactOutputs.parse(map['ProvisioningArtifactOutputs']) unless map['ProvisioningArtifactOutputs'].nil?)
        data.provisioning_artifact_output_keys = (Parsers::ProvisioningArtifactOutputs.parse(map['ProvisioningArtifactOutputKeys']) unless map['ProvisioningArtifactOutputKeys'].nil?)
        data
      end
    end

    class ProvisioningArtifactOutputs
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifactOutput.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningArtifactOutput
      def self.parse(map)
        data = Types::ProvisioningArtifactOutput.new
        data.key = map['Key']
        data.description = map['Description']
        return data
      end
    end

    class ProvisioningArtifactPreferences
      def self.parse(map)
        data = Types::ProvisioningArtifactPreferences.new
        data.stack_set_accounts = (Parsers::StackSetAccounts.parse(map['StackSetAccounts']) unless map['StackSetAccounts'].nil?)
        data.stack_set_regions = (Parsers::StackSetRegions.parse(map['StackSetRegions']) unless map['StackSetRegions'].nil?)
        return data
      end
    end

    class StackSetRegions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StackSetAccounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagOptionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TagOptionSummary.parse(value) unless value.nil?
        end
      end
    end

    class TagOptionSummary
      def self.parse(map)
        data = Types::TagOptionSummary.new
        data.key = map['Key']
        data.values = (Parsers::TagOptionValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class TagOptionValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class UsageInstructions
      def self.parse(list)
        list.map do |value|
          Parsers::UsageInstruction.parse(value) unless value.nil?
        end
      end
    end

    class UsageInstruction
      def self.parse(map)
        data = Types::UsageInstruction.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class ConstraintSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ConstraintSummary.parse(value) unless value.nil?
        end
      end
    end

    class ConstraintSummary
      def self.parse(map)
        data = Types::ConstraintSummary.new
        data.type = map['Type']
        data.description = map['Description']
        return data
      end
    end

    class ProvisioningArtifactParameters
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifactParameter.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningArtifactParameter
      def self.parse(map)
        data = Types::ProvisioningArtifactParameter.new
        data.parameter_key = map['ParameterKey']
        data.default_value = map['DefaultValue']
        data.parameter_type = map['ParameterType']
        data.is_no_echo = map['IsNoEcho']
        data.description = map['Description']
        data.parameter_constraints = (Parsers::ParameterConstraints.parse(map['ParameterConstraints']) unless map['ParameterConstraints'].nil?)
        return data
      end
    end

    class ParameterConstraints
      def self.parse(map)
        data = Types::ParameterConstraints.new
        data.allowed_values = (Parsers::AllowedValues.parse(map['AllowedValues']) unless map['AllowedValues'].nil?)
        data.allowed_pattern = map['AllowedPattern']
        data.constraint_description = map['ConstraintDescription']
        data.max_length = map['MaxLength']
        data.min_length = map['MinLength']
        data.max_value = map['MaxValue']
        data.min_value = map['MinValue']
        return data
      end
    end

    class AllowedValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeRecord
    class DescribeRecord
      def self.parse(http_resp)
        data = Types::DescribeRecordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data.record_outputs = (Parsers::RecordOutputs.parse(map['RecordOutputs']) unless map['RecordOutputs'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class RecordOutputs
      def self.parse(list)
        list.map do |value|
          Parsers::RecordOutput.parse(value) unless value.nil?
        end
      end
    end

    class RecordOutput
      def self.parse(map)
        data = Types::RecordOutput.new
        data.output_key = map['OutputKey']
        data.output_value = map['OutputValue']
        data.description = map['Description']
        return data
      end
    end

    class RecordDetail
      def self.parse(map)
        data = Types::RecordDetail.new
        data.record_id = map['RecordId']
        data.provisioned_product_name = map['ProvisionedProductName']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.updated_time = Time.at(map['UpdatedTime'].to_i) if map['UpdatedTime']
        data.provisioned_product_type = map['ProvisionedProductType']
        data.record_type = map['RecordType']
        data.provisioned_product_id = map['ProvisionedProductId']
        data.product_id = map['ProductId']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.path_id = map['PathId']
        data.record_errors = (Parsers::RecordErrors.parse(map['RecordErrors']) unless map['RecordErrors'].nil?)
        data.record_tags = (Parsers::RecordTags.parse(map['RecordTags']) unless map['RecordTags'].nil?)
        data.launch_role_arn = map['LaunchRoleArn']
        return data
      end
    end

    class RecordTags
      def self.parse(list)
        list.map do |value|
          Parsers::RecordTag.parse(value) unless value.nil?
        end
      end
    end

    class RecordTag
      def self.parse(map)
        data = Types::RecordTag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class RecordErrors
      def self.parse(list)
        list.map do |value|
          Parsers::RecordError.parse(value) unless value.nil?
        end
      end
    end

    class RecordError
      def self.parse(map)
        data = Types::RecordError.new
        data.code = map['Code']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for DescribeServiceAction
    class DescribeServiceAction
      def self.parse(http_resp)
        data = Types::DescribeServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_detail = (Parsers::ServiceActionDetail.parse(map['ServiceActionDetail']) unless map['ServiceActionDetail'].nil?)
        data
      end
    end

    # Operation Parser for DescribeServiceActionExecutionParameters
    class DescribeServiceActionExecutionParameters
      def self.parse(http_resp)
        data = Types::DescribeServiceActionExecutionParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_parameters = (Parsers::ExecutionParameters.parse(map['ServiceActionParameters']) unless map['ServiceActionParameters'].nil?)
        data
      end
    end

    class ExecutionParameters
      def self.parse(list)
        list.map do |value|
          Parsers::ExecutionParameter.parse(value) unless value.nil?
        end
      end
    end

    class ExecutionParameter
      def self.parse(map)
        data = Types::ExecutionParameter.new
        data.name = map['Name']
        data.type = map['Type']
        data.default_values = (Parsers::ExecutionParameterValueList.parse(map['DefaultValues']) unless map['DefaultValues'].nil?)
        return data
      end
    end

    class ExecutionParameterValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeTagOption
    class DescribeTagOption
      def self.parse(http_resp)
        data = Types::DescribeTagOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_option_detail = (Parsers::TagOptionDetail.parse(map['TagOptionDetail']) unless map['TagOptionDetail'].nil?)
        data
      end
    end

    # Operation Parser for DisableAWSOrganizationsAccess
    class DisableAWSOrganizationsAccess
      def self.parse(http_resp)
        data = Types::DisableAWSOrganizationsAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateBudgetFromResource
    class DisassociateBudgetFromResource
      def self.parse(http_resp)
        data = Types::DisassociateBudgetFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociatePrincipalFromPortfolio
    class DisassociatePrincipalFromPortfolio
      def self.parse(http_resp)
        data = Types::DisassociatePrincipalFromPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateProductFromPortfolio
    class DisassociateProductFromPortfolio
      def self.parse(http_resp)
        data = Types::DisassociateProductFromPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateServiceActionFromProvisioningArtifact
    class DisassociateServiceActionFromProvisioningArtifact
      def self.parse(http_resp)
        data = Types::DisassociateServiceActionFromProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateTagOptionFromResource
    class DisassociateTagOptionFromResource
      def self.parse(http_resp)
        data = Types::DisassociateTagOptionFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableAWSOrganizationsAccess
    class EnableAWSOrganizationsAccess
      def self.parse(http_resp)
        data = Types::EnableAWSOrganizationsAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ExecuteProvisionedProductPlan
    class ExecuteProvisionedProductPlan
      def self.parse(http_resp)
        data = Types::ExecuteProvisionedProductPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for ExecuteProvisionedProductServiceAction
    class ExecuteProvisionedProductServiceAction
      def self.parse(http_resp)
        data = Types::ExecuteProvisionedProductServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for GetAWSOrganizationsAccessStatus
    class GetAWSOrganizationsAccessStatus
      def self.parse(http_resp)
        data = Types::GetAWSOrganizationsAccessStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.access_status = map['AccessStatus']
        data
      end
    end

    # Operation Parser for GetProvisionedProductOutputs
    class GetProvisionedProductOutputs
      def self.parse(http_resp)
        data = Types::GetProvisionedProductOutputsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.outputs = (Parsers::RecordOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ImportAsProvisionedProduct
    class ImportAsProvisionedProduct
      def self.parse(http_resp)
        data = Types::ImportAsProvisionedProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for ListAcceptedPortfolioShares
    class ListAcceptedPortfolioShares
      def self.parse(http_resp)
        data = Types::ListAcceptedPortfolioSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_details = (Parsers::PortfolioDetails.parse(map['PortfolioDetails']) unless map['PortfolioDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class PortfolioDetails
      def self.parse(list)
        list.map do |value|
          Parsers::PortfolioDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListBudgetsForResource
    class ListBudgetsForResource
      def self.parse(http_resp)
        data = Types::ListBudgetsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.budgets = (Parsers::Budgets.parse(map['Budgets']) unless map['Budgets'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ListConstraintsForPortfolio
    class ListConstraintsForPortfolio
      def self.parse(http_resp)
        data = Types::ListConstraintsForPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.constraint_details = (Parsers::ConstraintDetails.parse(map['ConstraintDetails']) unless map['ConstraintDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ConstraintDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ConstraintDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListLaunchPaths
    class ListLaunchPaths
      def self.parse(http_resp)
        data = Types::ListLaunchPathsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.launch_path_summaries = (Parsers::LaunchPathSummaries.parse(map['LaunchPathSummaries']) unless map['LaunchPathSummaries'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class LaunchPathSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::LaunchPathSummary.parse(value) unless value.nil?
        end
      end
    end

    class LaunchPathSummary
      def self.parse(map)
        data = Types::LaunchPathSummary.new
        data.id = map['Id']
        data.constraint_summaries = (Parsers::ConstraintSummaries.parse(map['ConstraintSummaries']) unless map['ConstraintSummaries'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListOrganizationPortfolioAccess
    class ListOrganizationPortfolioAccess
      def self.parse(http_resp)
        data = Types::ListOrganizationPortfolioAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_nodes = (Parsers::OrganizationNodes.parse(map['OrganizationNodes']) unless map['OrganizationNodes'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class OrganizationNodes
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationNode.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationNode
      def self.parse(map)
        data = Types::OrganizationNode.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListPortfolioAccess
    class ListPortfolioAccess
      def self.parse(http_resp)
        data = Types::ListPortfolioAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_ids = (Parsers::AccountIds.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class AccountIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListPortfolios
    class ListPortfolios
      def self.parse(http_resp)
        data = Types::ListPortfoliosOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_details = (Parsers::PortfolioDetails.parse(map['PortfolioDetails']) unless map['PortfolioDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ListPortfoliosForProduct
    class ListPortfoliosForProduct
      def self.parse(http_resp)
        data = Types::ListPortfoliosForProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_details = (Parsers::PortfolioDetails.parse(map['PortfolioDetails']) unless map['PortfolioDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ListPrincipalsForPortfolio
    class ListPrincipalsForPortfolio
      def self.parse(http_resp)
        data = Types::ListPrincipalsForPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.principals = (Parsers::Principals.parse(map['Principals']) unless map['Principals'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Principals
      def self.parse(list)
        list.map do |value|
          Parsers::Principal.parse(value) unless value.nil?
        end
      end
    end

    class Principal
      def self.parse(map)
        data = Types::Principal.new
        data.principal_arn = map['PrincipalARN']
        data.principal_type = map['PrincipalType']
        return data
      end
    end

    # Operation Parser for ListProvisionedProductPlans
    class ListProvisionedProductPlans
      def self.parse(http_resp)
        data = Types::ListProvisionedProductPlansOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_product_plans = (Parsers::ProvisionedProductPlans.parse(map['ProvisionedProductPlans']) unless map['ProvisionedProductPlans'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProvisionedProductPlans
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisionedProductPlanSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProvisionedProductPlanSummary
      def self.parse(map)
        data = Types::ProvisionedProductPlanSummary.new
        data.plan_name = map['PlanName']
        data.plan_id = map['PlanId']
        data.provision_product_id = map['ProvisionProductId']
        data.provision_product_name = map['ProvisionProductName']
        data.plan_type = map['PlanType']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        return data
      end
    end

    # Operation Parser for ListProvisioningArtifacts
    class ListProvisioningArtifacts
      def self.parse(http_resp)
        data = Types::ListProvisioningArtifactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_details = (Parsers::ProvisioningArtifactDetails.parse(map['ProvisioningArtifactDetails']) unless map['ProvisioningArtifactDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProvisioningArtifactDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifactDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListProvisioningArtifactsForServiceAction
    class ListProvisioningArtifactsForServiceAction
      def self.parse(http_resp)
        data = Types::ListProvisioningArtifactsForServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_views = (Parsers::ProvisioningArtifactViews.parse(map['ProvisioningArtifactViews']) unless map['ProvisioningArtifactViews'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProvisioningArtifactViews
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningArtifactView.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningArtifactView
      def self.parse(map)
        data = Types::ProvisioningArtifactView.new
        data.product_view_summary = (Parsers::ProductViewSummary.parse(map['ProductViewSummary']) unless map['ProductViewSummary'].nil?)
        data.provisioning_artifact = (Parsers::ProvisioningArtifact.parse(map['ProvisioningArtifact']) unless map['ProvisioningArtifact'].nil?)
        return data
      end
    end

    # Operation Parser for ListRecordHistory
    class ListRecordHistory
      def self.parse(http_resp)
        data = Types::ListRecordHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_details = (Parsers::RecordDetails.parse(map['RecordDetails']) unless map['RecordDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class RecordDetails
      def self.parse(list)
        list.map do |value|
          Parsers::RecordDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResourcesForTagOption
    class ListResourcesForTagOption
      def self.parse(http_resp)
        data = Types::ListResourcesForTagOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_details = (Parsers::ResourceDetails.parse(map['ResourceDetails']) unless map['ResourceDetails'].nil?)
        data.page_token = map['PageToken']
        data
      end
    end

    class ResourceDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceDetail.parse(value) unless value.nil?
        end
      end
    end

    class ResourceDetail
      def self.parse(map)
        data = Types::ResourceDetail.new
        data.id = map['Id']
        data.arn = map['ARN']
        data.name = map['Name']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListServiceActions
    class ListServiceActions
      def self.parse(http_resp)
        data = Types::ListServiceActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_summaries = (Parsers::ServiceActionSummaries.parse(map['ServiceActionSummaries']) unless map['ServiceActionSummaries'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ServiceActionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceActionSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListServiceActionsForProvisioningArtifact
    class ListServiceActionsForProvisioningArtifact
      def self.parse(http_resp)
        data = Types::ListServiceActionsForProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_summaries = (Parsers::ServiceActionSummaries.parse(map['ServiceActionSummaries']) unless map['ServiceActionSummaries'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for ListStackInstancesForProvisionedProduct
    class ListStackInstancesForProvisionedProduct
      def self.parse(http_resp)
        data = Types::ListStackInstancesForProvisionedProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack_instances = (Parsers::StackInstances.parse(map['StackInstances']) unless map['StackInstances'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class StackInstances
      def self.parse(list)
        list.map do |value|
          Parsers::StackInstance.parse(value) unless value.nil?
        end
      end
    end

    class StackInstance
      def self.parse(map)
        data = Types::StackInstance.new
        data.account = map['Account']
        data.region = map['Region']
        data.stack_instance_status = map['StackInstanceStatus']
        return data
      end
    end

    # Operation Parser for ListTagOptions
    class ListTagOptions
      def self.parse(http_resp)
        data = Types::ListTagOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_option_details = (Parsers::TagOptionDetails.parse(map['TagOptionDetails']) unless map['TagOptionDetails'].nil?)
        data.page_token = map['PageToken']
        data
      end
    end

    # Operation Parser for ProvisionProduct
    class ProvisionProduct
      def self.parse(http_resp)
        data = Types::ProvisionProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for RejectPortfolioShare
    class RejectPortfolioShare
      def self.parse(http_resp)
        data = Types::RejectPortfolioShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ScanProvisionedProducts
    class ScanProvisionedProducts
      def self.parse(http_resp)
        data = Types::ScanProvisionedProductsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_products = (Parsers::ProvisionedProductDetails.parse(map['ProvisionedProducts']) unless map['ProvisionedProducts'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProvisionedProductDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisionedProductDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for SearchProducts
    class SearchProducts
      def self.parse(http_resp)
        data = Types::SearchProductsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_summaries = (Parsers::ProductViewSummaries.parse(map['ProductViewSummaries']) unless map['ProductViewSummaries'].nil?)
        data.product_view_aggregations = (Parsers::ProductViewAggregations.parse(map['ProductViewAggregations']) unless map['ProductViewAggregations'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProductViewAggregations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ProductViewAggregationValues.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProductViewAggregationValues
      def self.parse(list)
        list.map do |value|
          Parsers::ProductViewAggregationValue.parse(value) unless value.nil?
        end
      end
    end

    class ProductViewAggregationValue
      def self.parse(map)
        data = Types::ProductViewAggregationValue.new
        data.value = map['Value']
        data.approximate_count = map['ApproximateCount']
        return data
      end
    end

    class ProductViewSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ProductViewSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for SearchProductsAsAdmin
    class SearchProductsAsAdmin
      def self.parse(http_resp)
        data = Types::SearchProductsAsAdminOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_details = (Parsers::ProductViewDetails.parse(map['ProductViewDetails']) unless map['ProductViewDetails'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProductViewDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ProductViewDetail.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for SearchProvisionedProducts
    class SearchProvisionedProducts
      def self.parse(http_resp)
        data = Types::SearchProvisionedProductsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_products = (Parsers::ProvisionedProductAttributes.parse(map['ProvisionedProducts']) unless map['ProvisionedProducts'].nil?)
        data.total_results_count = map['TotalResultsCount']
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ProvisionedProductAttributes
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisionedProductAttribute.parse(value) unless value.nil?
        end
      end
    end

    class ProvisionedProductAttribute
      def self.parse(map)
        data = Types::ProvisionedProductAttribute.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.type = map['Type']
        data.id = map['Id']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.idempotency_token = map['IdempotencyToken']
        data.last_record_id = map['LastRecordId']
        data.last_provisioning_record_id = map['LastProvisioningRecordId']
        data.last_successful_provisioning_record_id = map['LastSuccessfulProvisioningRecordId']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.physical_id = map['PhysicalId']
        data.product_id = map['ProductId']
        data.product_name = map['ProductName']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.provisioning_artifact_name = map['ProvisioningArtifactName']
        data.user_arn = map['UserArn']
        data.user_arn_session = map['UserArnSession']
        return data
      end
    end

    # Operation Parser for TerminateProvisionedProduct
    class TerminateProvisionedProduct
      def self.parse(http_resp)
        data = Types::TerminateProvisionedProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for UpdateConstraint
    class UpdateConstraint
      def self.parse(http_resp)
        data = Types::UpdateConstraintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.constraint_detail = (Parsers::ConstraintDetail.parse(map['ConstraintDetail']) unless map['ConstraintDetail'].nil?)
        data.constraint_parameters = map['ConstraintParameters']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for UpdatePortfolio
    class UpdatePortfolio
      def self.parse(http_resp)
        data = Types::UpdatePortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_detail = (Parsers::PortfolioDetail.parse(map['PortfolioDetail']) unless map['PortfolioDetail'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePortfolioShare
    class UpdatePortfolioShare
      def self.parse(http_resp)
        data = Types::UpdatePortfolioShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.portfolio_share_token = map['PortfolioShareToken']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for UpdateProduct
    class UpdateProduct
      def self.parse(http_resp)
        data = Types::UpdateProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.product_view_detail = (Parsers::ProductViewDetail.parse(map['ProductViewDetail']) unless map['ProductViewDetail'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProvisionedProduct
    class UpdateProvisionedProduct
      def self.parse(http_resp)
        data = Types::UpdateProvisionedProductOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.record_detail = (Parsers::RecordDetail.parse(map['RecordDetail']) unless map['RecordDetail'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProvisionedProductProperties
    class UpdateProvisionedProductProperties
      def self.parse(http_resp)
        data = Types::UpdateProvisionedProductPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioned_product_id = map['ProvisionedProductId']
        data.provisioned_product_properties = (Parsers::ProvisionedProductProperties.parse(map['ProvisionedProductProperties']) unless map['ProvisionedProductProperties'].nil?)
        data.record_id = map['RecordId']
        data.status = map['Status']
        data
      end
    end

    class ProvisionedProductProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for UpdateProvisioningArtifact
    class UpdateProvisioningArtifact
      def self.parse(http_resp)
        data = Types::UpdateProvisioningArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.provisioning_artifact_detail = (Parsers::ProvisioningArtifactDetail.parse(map['ProvisioningArtifactDetail']) unless map['ProvisioningArtifactDetail'].nil?)
        data.info = (Parsers::ProvisioningArtifactInfo.parse(map['Info']) unless map['Info'].nil?)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for UpdateServiceAction
    class UpdateServiceAction
      def self.parse(http_resp)
        data = Types::UpdateServiceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_action_detail = (Parsers::ServiceActionDetail.parse(map['ServiceActionDetail']) unless map['ServiceActionDetail'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTagOption
    class UpdateTagOption
      def self.parse(http_resp)
        data = Types::UpdateTagOptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_option_detail = (Parsers::TagOptionDetail.parse(map['TagOptionDetail']) unless map['TagOptionDetail'].nil?)
        data
      end
    end
  end
end
