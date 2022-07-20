# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ServiceCatalog
  module Stubs

    # Operation Stubber for AcceptPortfolioShare
    class AcceptPortfolioShare
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateBudgetWithResource
    class AssociateBudgetWithResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociatePrincipalWithPortfolio
    class AssociatePrincipalWithPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateProductWithPortfolio
    class AssociateProductWithPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateServiceActionWithProvisioningArtifact
    class AssociateServiceActionWithProvisioningArtifact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateTagOptionWithResource
    class AssociateTagOptionWithResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchAssociateServiceActionWithProvisioningArtifact
    class BatchAssociateServiceActionWithProvisioningArtifact
      def self.default(visited=[])
        {
          failed_service_action_associations: FailedServiceActionAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedServiceActionAssociations'] = FailedServiceActionAssociations.stub(stub[:failed_service_action_associations]) unless stub[:failed_service_action_associations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedServiceActionAssociations
    class FailedServiceActionAssociations
      def self.default(visited=[])
        return nil if visited.include?('FailedServiceActionAssociations')
        visited = visited + ['FailedServiceActionAssociations']
        [
          FailedServiceActionAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedServiceActionAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedServiceActionAssociation
    class FailedServiceActionAssociation
      def self.default(visited=[])
        return nil if visited.include?('FailedServiceActionAssociation')
        visited = visited + ['FailedServiceActionAssociation']
        {
          service_action_id: 'service_action_id',
          product_id: 'product_id',
          provisioning_artifact_id: 'provisioning_artifact_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedServiceActionAssociation.new
        data = {}
        data['ServiceActionId'] = stub[:service_action_id] unless stub[:service_action_id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateServiceActionFromProvisioningArtifact
    class BatchDisassociateServiceActionFromProvisioningArtifact
      def self.default(visited=[])
        {
          failed_service_action_associations: FailedServiceActionAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedServiceActionAssociations'] = FailedServiceActionAssociations.stub(stub[:failed_service_action_associations]) unless stub[:failed_service_action_associations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CopyProduct
    class CopyProduct
      def self.default(visited=[])
        {
          copy_product_token: 'copy_product_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CopyProductToken'] = stub[:copy_product_token] unless stub[:copy_product_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConstraint
    class CreateConstraint
      def self.default(visited=[])
        {
          constraint_detail: ConstraintDetail.default(visited),
          constraint_parameters: 'constraint_parameters',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConstraintDetail'] = ConstraintDetail.stub(stub[:constraint_detail]) unless stub[:constraint_detail].nil?
        data['ConstraintParameters'] = stub[:constraint_parameters] unless stub[:constraint_parameters].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConstraintDetail
    class ConstraintDetail
      def self.default(visited=[])
        return nil if visited.include?('ConstraintDetail')
        visited = visited + ['ConstraintDetail']
        {
          constraint_id: 'constraint_id',
          type: 'type',
          description: 'description',
          owner: 'owner',
          product_id: 'product_id',
          portfolio_id: 'portfolio_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConstraintDetail.new
        data = {}
        data['ConstraintId'] = stub[:constraint_id] unless stub[:constraint_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['PortfolioId'] = stub[:portfolio_id] unless stub[:portfolio_id].nil?
        data
      end
    end

    # Operation Stubber for CreatePortfolio
    class CreatePortfolio
      def self.default(visited=[])
        {
          portfolio_detail: PortfolioDetail.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetail'] = PortfolioDetail.stub(stub[:portfolio_detail]) unless stub[:portfolio_detail].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for PortfolioDetail
    class PortfolioDetail
      def self.default(visited=[])
        return nil if visited.include?('PortfolioDetail')
        visited = visited + ['PortfolioDetail']
        {
          id: 'id',
          arn: 'arn',
          display_name: 'display_name',
          description: 'description',
          created_time: Time.now,
          provider_name: 'provider_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortfolioDetail.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ProviderName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data
      end
    end

    # Operation Stubber for CreatePortfolioShare
    class CreatePortfolioShare
      def self.default(visited=[])
        {
          portfolio_share_token: 'portfolio_share_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioShareToken'] = stub[:portfolio_share_token] unless stub[:portfolio_share_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProduct
    class CreateProduct
      def self.default(visited=[])
        {
          product_view_detail: ProductViewDetail.default(visited),
          provisioning_artifact_detail: ProvisioningArtifactDetail.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewDetail'] = ProductViewDetail.stub(stub[:product_view_detail]) unless stub[:product_view_detail].nil?
        data['ProvisioningArtifactDetail'] = ProvisioningArtifactDetail.stub(stub[:provisioning_artifact_detail]) unless stub[:provisioning_artifact_detail].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProvisioningArtifactDetail
    class ProvisioningArtifactDetail
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactDetail')
        visited = visited + ['ProvisioningArtifactDetail']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          type: 'type',
          created_time: Time.now,
          active: false,
          guidance: 'guidance',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactDetail.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Active'] = stub[:active] unless stub[:active].nil?
        data['Guidance'] = stub[:guidance] unless stub[:guidance].nil?
        data
      end
    end

    # Structure Stubber for ProductViewDetail
    class ProductViewDetail
      def self.default(visited=[])
        return nil if visited.include?('ProductViewDetail')
        visited = visited + ['ProductViewDetail']
        {
          product_view_summary: ProductViewSummary.default(visited),
          status: 'status',
          product_arn: 'product_arn',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductViewDetail.new
        data = {}
        data['ProductViewSummary'] = ProductViewSummary.stub(stub[:product_view_summary]) unless stub[:product_view_summary].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ProductARN'] = stub[:product_arn] unless stub[:product_arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for ProductViewSummary
    class ProductViewSummary
      def self.default(visited=[])
        return nil if visited.include?('ProductViewSummary')
        visited = visited + ['ProductViewSummary']
        {
          id: 'id',
          product_id: 'product_id',
          name: 'name',
          owner: 'owner',
          short_description: 'short_description',
          type: 'type',
          distributor: 'distributor',
          has_default_path: false,
          support_email: 'support_email',
          support_description: 'support_description',
          support_url: 'support_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductViewSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ShortDescription'] = stub[:short_description] unless stub[:short_description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Distributor'] = stub[:distributor] unless stub[:distributor].nil?
        data['HasDefaultPath'] = stub[:has_default_path] unless stub[:has_default_path].nil?
        data['SupportEmail'] = stub[:support_email] unless stub[:support_email].nil?
        data['SupportDescription'] = stub[:support_description] unless stub[:support_description].nil?
        data['SupportUrl'] = stub[:support_url] unless stub[:support_url].nil?
        data
      end
    end

    # Operation Stubber for CreateProvisionedProductPlan
    class CreateProvisionedProductPlan
      def self.default(visited=[])
        {
          plan_name: 'plan_name',
          plan_id: 'plan_id',
          provision_product_id: 'provision_product_id',
          provisioned_product_name: 'provisioned_product_name',
          provisioning_artifact_id: 'provisioning_artifact_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PlanName'] = stub[:plan_name] unless stub[:plan_name].nil?
        data['PlanId'] = stub[:plan_id] unless stub[:plan_id].nil?
        data['ProvisionProductId'] = stub[:provision_product_id] unless stub[:provision_product_id].nil?
        data['ProvisionedProductName'] = stub[:provisioned_product_name] unless stub[:provisioned_product_name].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProvisioningArtifact
    class CreateProvisioningArtifact
      def self.default(visited=[])
        {
          provisioning_artifact_detail: ProvisioningArtifactDetail.default(visited),
          info: ProvisioningArtifactInfo.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactDetail'] = ProvisioningArtifactDetail.stub(stub[:provisioning_artifact_detail]) unless stub[:provisioning_artifact_detail].nil?
        data['Info'] = ProvisioningArtifactInfo.stub(stub[:info]) unless stub[:info].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ProvisioningArtifactInfo
    class ProvisioningArtifactInfo
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactInfo')
        visited = visited + ['ProvisioningArtifactInfo']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateServiceAction
    class CreateServiceAction
      def self.default(visited=[])
        {
          service_action_detail: ServiceActionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionDetail'] = ServiceActionDetail.stub(stub[:service_action_detail]) unless stub[:service_action_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceActionDetail
    class ServiceActionDetail
      def self.default(visited=[])
        return nil if visited.include?('ServiceActionDetail')
        visited = visited + ['ServiceActionDetail']
        {
          service_action_summary: ServiceActionSummary.default(visited),
          definition: ServiceActionDefinitionMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceActionDetail.new
        data = {}
        data['ServiceActionSummary'] = ServiceActionSummary.stub(stub[:service_action_summary]) unless stub[:service_action_summary].nil?
        data['Definition'] = ServiceActionDefinitionMap.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # Map Stubber for ServiceActionDefinitionMap
    class ServiceActionDefinitionMap
      def self.default(visited=[])
        return nil if visited.include?('ServiceActionDefinitionMap')
        visited = visited + ['ServiceActionDefinitionMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceActionSummary
    class ServiceActionSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceActionSummary')
        visited = visited + ['ServiceActionSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          definition_type: 'definition_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceActionSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefinitionType'] = stub[:definition_type] unless stub[:definition_type].nil?
        data
      end
    end

    # Operation Stubber for CreateTagOption
    class CreateTagOption
      def self.default(visited=[])
        {
          tag_option_detail: TagOptionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagOptionDetail'] = TagOptionDetail.stub(stub[:tag_option_detail]) unless stub[:tag_option_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TagOptionDetail
    class TagOptionDetail
      def self.default(visited=[])
        return nil if visited.include?('TagOptionDetail')
        visited = visited + ['TagOptionDetail']
        {
          key: 'key',
          value: 'value',
          active: false,
          id: 'id',
          owner: 'owner',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagOptionDetail.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Active'] = stub[:active] unless stub[:active].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data
      end
    end

    # Operation Stubber for DeleteConstraint
    class DeleteConstraint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePortfolio
    class DeletePortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePortfolioShare
    class DeletePortfolioShare
      def self.default(visited=[])
        {
          portfolio_share_token: 'portfolio_share_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioShareToken'] = stub[:portfolio_share_token] unless stub[:portfolio_share_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProduct
    class DeleteProduct
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProvisionedProductPlan
    class DeleteProvisionedProductPlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProvisioningArtifact
    class DeleteProvisioningArtifact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceAction
    class DeleteServiceAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTagOption
    class DeleteTagOption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeConstraint
    class DescribeConstraint
      def self.default(visited=[])
        {
          constraint_detail: ConstraintDetail.default(visited),
          constraint_parameters: 'constraint_parameters',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConstraintDetail'] = ConstraintDetail.stub(stub[:constraint_detail]) unless stub[:constraint_detail].nil?
        data['ConstraintParameters'] = stub[:constraint_parameters] unless stub[:constraint_parameters].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCopyProductStatus
    class DescribeCopyProductStatus
      def self.default(visited=[])
        {
          copy_product_status: 'copy_product_status',
          target_product_id: 'target_product_id',
          status_detail: 'status_detail',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CopyProductStatus'] = stub[:copy_product_status] unless stub[:copy_product_status].nil?
        data['TargetProductId'] = stub[:target_product_id] unless stub[:target_product_id].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePortfolio
    class DescribePortfolio
      def self.default(visited=[])
        {
          portfolio_detail: PortfolioDetail.default(visited),
          tags: Tags.default(visited),
          tag_options: TagOptionDetails.default(visited),
          budgets: Budgets.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetail'] = PortfolioDetail.stub(stub[:portfolio_detail]) unless stub[:portfolio_detail].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['TagOptions'] = TagOptionDetails.stub(stub[:tag_options]) unless stub[:tag_options].nil?
        data['Budgets'] = Budgets.stub(stub[:budgets]) unless stub[:budgets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Budgets
    class Budgets
      def self.default(visited=[])
        return nil if visited.include?('Budgets')
        visited = visited + ['Budgets']
        [
          BudgetDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BudgetDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BudgetDetail
    class BudgetDetail
      def self.default(visited=[])
        return nil if visited.include?('BudgetDetail')
        visited = visited + ['BudgetDetail']
        {
          budget_name: 'budget_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BudgetDetail.new
        data = {}
        data['BudgetName'] = stub[:budget_name] unless stub[:budget_name].nil?
        data
      end
    end

    # List Stubber for TagOptionDetails
    class TagOptionDetails
      def self.default(visited=[])
        return nil if visited.include?('TagOptionDetails')
        visited = visited + ['TagOptionDetails']
        [
          TagOptionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TagOptionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePortfolioShareStatus
    class DescribePortfolioShareStatus
      def self.default(visited=[])
        {
          portfolio_share_token: 'portfolio_share_token',
          portfolio_id: 'portfolio_id',
          organization_node_value: 'organization_node_value',
          status: 'status',
          share_details: ShareDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioShareToken'] = stub[:portfolio_share_token] unless stub[:portfolio_share_token].nil?
        data['PortfolioId'] = stub[:portfolio_id] unless stub[:portfolio_id].nil?
        data['OrganizationNodeValue'] = stub[:organization_node_value] unless stub[:organization_node_value].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ShareDetails'] = ShareDetails.stub(stub[:share_details]) unless stub[:share_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ShareDetails
    class ShareDetails
      def self.default(visited=[])
        return nil if visited.include?('ShareDetails')
        visited = visited + ['ShareDetails']
        {
          successful_shares: SuccessfulShares.default(visited),
          share_errors: ShareErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareDetails.new
        data = {}
        data['SuccessfulShares'] = SuccessfulShares.stub(stub[:successful_shares]) unless stub[:successful_shares].nil?
        data['ShareErrors'] = ShareErrors.stub(stub[:share_errors]) unless stub[:share_errors].nil?
        data
      end
    end

    # List Stubber for ShareErrors
    class ShareErrors
      def self.default(visited=[])
        return nil if visited.include?('ShareErrors')
        visited = visited + ['ShareErrors']
        [
          ShareError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ShareError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShareError
    class ShareError
      def self.default(visited=[])
        return nil if visited.include?('ShareError')
        visited = visited + ['ShareError']
        {
          accounts: Namespaces.default(visited),
          message: 'message',
          error: 'error',
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareError.new
        data = {}
        data['Accounts'] = Namespaces.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data
      end
    end

    # List Stubber for Namespaces
    class Namespaces
      def self.default(visited=[])
        return nil if visited.include?('Namespaces')
        visited = visited + ['Namespaces']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SuccessfulShares
    class SuccessfulShares
      def self.default(visited=[])
        return nil if visited.include?('SuccessfulShares')
        visited = visited + ['SuccessfulShares']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePortfolioShares
    class DescribePortfolioShares
      def self.default(visited=[])
        {
          next_page_token: 'next_page_token',
          portfolio_share_details: PortfolioShareDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['PortfolioShareDetails'] = PortfolioShareDetails.stub(stub[:portfolio_share_details]) unless stub[:portfolio_share_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PortfolioShareDetails
    class PortfolioShareDetails
      def self.default(visited=[])
        return nil if visited.include?('PortfolioShareDetails')
        visited = visited + ['PortfolioShareDetails']
        [
          PortfolioShareDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortfolioShareDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortfolioShareDetail
    class PortfolioShareDetail
      def self.default(visited=[])
        return nil if visited.include?('PortfolioShareDetail')
        visited = visited + ['PortfolioShareDetail']
        {
          principal_id: 'principal_id',
          type: 'type',
          accepted: false,
          share_tag_options: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortfolioShareDetail.new
        data = {}
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Accepted'] = stub[:accepted] unless stub[:accepted].nil?
        data['ShareTagOptions'] = stub[:share_tag_options] unless stub[:share_tag_options].nil?
        data
      end
    end

    # Operation Stubber for DescribeProduct
    class DescribeProduct
      def self.default(visited=[])
        {
          product_view_summary: ProductViewSummary.default(visited),
          provisioning_artifacts: ProvisioningArtifacts.default(visited),
          budgets: Budgets.default(visited),
          launch_paths: LaunchPaths.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewSummary'] = ProductViewSummary.stub(stub[:product_view_summary]) unless stub[:product_view_summary].nil?
        data['ProvisioningArtifacts'] = ProvisioningArtifacts.stub(stub[:provisioning_artifacts]) unless stub[:provisioning_artifacts].nil?
        data['Budgets'] = Budgets.stub(stub[:budgets]) unless stub[:budgets].nil?
        data['LaunchPaths'] = LaunchPaths.stub(stub[:launch_paths]) unless stub[:launch_paths].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LaunchPaths
    class LaunchPaths
      def self.default(visited=[])
        return nil if visited.include?('LaunchPaths')
        visited = visited + ['LaunchPaths']
        [
          LaunchPath.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LaunchPath.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LaunchPath
    class LaunchPath
      def self.default(visited=[])
        return nil if visited.include?('LaunchPath')
        visited = visited + ['LaunchPath']
        {
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchPath.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for ProvisioningArtifacts
    class ProvisioningArtifacts
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifacts')
        visited = visited + ['ProvisioningArtifacts']
        [
          ProvisioningArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningArtifact
    class ProvisioningArtifact
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifact')
        visited = visited + ['ProvisioningArtifact']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_time: Time.now,
          guidance: 'guidance',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifact.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Guidance'] = stub[:guidance] unless stub[:guidance].nil?
        data
      end
    end

    # Operation Stubber for DescribeProductAsAdmin
    class DescribeProductAsAdmin
      def self.default(visited=[])
        {
          product_view_detail: ProductViewDetail.default(visited),
          provisioning_artifact_summaries: ProvisioningArtifactSummaries.default(visited),
          tags: Tags.default(visited),
          tag_options: TagOptionDetails.default(visited),
          budgets: Budgets.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewDetail'] = ProductViewDetail.stub(stub[:product_view_detail]) unless stub[:product_view_detail].nil?
        data['ProvisioningArtifactSummaries'] = ProvisioningArtifactSummaries.stub(stub[:provisioning_artifact_summaries]) unless stub[:provisioning_artifact_summaries].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['TagOptions'] = TagOptionDetails.stub(stub[:tag_options]) unless stub[:tag_options].nil?
        data['Budgets'] = Budgets.stub(stub[:budgets]) unless stub[:budgets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisioningArtifactSummaries
    class ProvisioningArtifactSummaries
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactSummaries')
        visited = visited + ['ProvisioningArtifactSummaries']
        [
          ProvisioningArtifactSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifactSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningArtifactSummary
    class ProvisioningArtifactSummary
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactSummary')
        visited = visited + ['ProvisioningArtifactSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_time: Time.now,
          provisioning_artifact_metadata: ProvisioningArtifactInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ProvisioningArtifactMetadata'] = ProvisioningArtifactInfo.stub(stub[:provisioning_artifact_metadata]) unless stub[:provisioning_artifact_metadata].nil?
        data
      end
    end

    # Operation Stubber for DescribeProductView
    class DescribeProductView
      def self.default(visited=[])
        {
          product_view_summary: ProductViewSummary.default(visited),
          provisioning_artifacts: ProvisioningArtifacts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewSummary'] = ProductViewSummary.stub(stub[:product_view_summary]) unless stub[:product_view_summary].nil?
        data['ProvisioningArtifacts'] = ProvisioningArtifacts.stub(stub[:provisioning_artifacts]) unless stub[:provisioning_artifacts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeProvisionedProduct
    class DescribeProvisionedProduct
      def self.default(visited=[])
        {
          provisioned_product_detail: ProvisionedProductDetail.default(visited),
          cloud_watch_dashboards: CloudWatchDashboards.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProductDetail'] = ProvisionedProductDetail.stub(stub[:provisioned_product_detail]) unless stub[:provisioned_product_detail].nil?
        data['CloudWatchDashboards'] = CloudWatchDashboards.stub(stub[:cloud_watch_dashboards]) unless stub[:cloud_watch_dashboards].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CloudWatchDashboards
    class CloudWatchDashboards
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDashboards')
        visited = visited + ['CloudWatchDashboards']
        [
          CloudWatchDashboard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CloudWatchDashboard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchDashboard
    class CloudWatchDashboard
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDashboard')
        visited = visited + ['CloudWatchDashboard']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchDashboard.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for ProvisionedProductDetail
    class ProvisionedProductDetail
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductDetail')
        visited = visited + ['ProvisionedProductDetail']
        {
          name: 'name',
          arn: 'arn',
          type: 'type',
          id: 'id',
          status: 'status',
          status_message: 'status_message',
          created_time: Time.now,
          idempotency_token: 'idempotency_token',
          last_record_id: 'last_record_id',
          last_provisioning_record_id: 'last_provisioning_record_id',
          last_successful_provisioning_record_id: 'last_successful_provisioning_record_id',
          product_id: 'product_id',
          provisioning_artifact_id: 'provisioning_artifact_id',
          launch_role_arn: 'launch_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedProductDetail.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['IdempotencyToken'] = stub[:idempotency_token] unless stub[:idempotency_token].nil?
        data['LastRecordId'] = stub[:last_record_id] unless stub[:last_record_id].nil?
        data['LastProvisioningRecordId'] = stub[:last_provisioning_record_id] unless stub[:last_provisioning_record_id].nil?
        data['LastSuccessfulProvisioningRecordId'] = stub[:last_successful_provisioning_record_id] unless stub[:last_successful_provisioning_record_id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['LaunchRoleArn'] = stub[:launch_role_arn] unless stub[:launch_role_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeProvisionedProductPlan
    class DescribeProvisionedProductPlan
      def self.default(visited=[])
        {
          provisioned_product_plan_details: ProvisionedProductPlanDetails.default(visited),
          resource_changes: ResourceChanges.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProductPlanDetails'] = ProvisionedProductPlanDetails.stub(stub[:provisioned_product_plan_details]) unless stub[:provisioned_product_plan_details].nil?
        data['ResourceChanges'] = ResourceChanges.stub(stub[:resource_changes]) unless stub[:resource_changes].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceChanges
    class ResourceChanges
      def self.default(visited=[])
        return nil if visited.include?('ResourceChanges')
        visited = visited + ['ResourceChanges']
        [
          ResourceChange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceChange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceChange
    class ResourceChange
      def self.default(visited=[])
        return nil if visited.include?('ResourceChange')
        visited = visited + ['ResourceChange']
        {
          action: 'action',
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          resource_type: 'resource_type',
          replacement: 'replacement',
          scope: Scope.default(visited),
          details: ResourceChangeDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceChange.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['LogicalResourceId'] = stub[:logical_resource_id] unless stub[:logical_resource_id].nil?
        data['PhysicalResourceId'] = stub[:physical_resource_id] unless stub[:physical_resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Replacement'] = stub[:replacement] unless stub[:replacement].nil?
        data['Scope'] = Scope.stub(stub[:scope]) unless stub[:scope].nil?
        data['Details'] = ResourceChangeDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # List Stubber for ResourceChangeDetails
    class ResourceChangeDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceChangeDetails')
        visited = visited + ['ResourceChangeDetails']
        [
          ResourceChangeDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceChangeDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceChangeDetail
    class ResourceChangeDetail
      def self.default(visited=[])
        return nil if visited.include?('ResourceChangeDetail')
        visited = visited + ['ResourceChangeDetail']
        {
          target: ResourceTargetDefinition.default(visited),
          evaluation: 'evaluation',
          causing_entity: 'causing_entity',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceChangeDetail.new
        data = {}
        data['Target'] = ResourceTargetDefinition.stub(stub[:target]) unless stub[:target].nil?
        data['Evaluation'] = stub[:evaluation] unless stub[:evaluation].nil?
        data['CausingEntity'] = stub[:causing_entity] unless stub[:causing_entity].nil?
        data
      end
    end

    # Structure Stubber for ResourceTargetDefinition
    class ResourceTargetDefinition
      def self.default(visited=[])
        return nil if visited.include?('ResourceTargetDefinition')
        visited = visited + ['ResourceTargetDefinition']
        {
          attribute: 'attribute',
          name: 'name',
          requires_recreation: 'requires_recreation',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTargetDefinition.new
        data = {}
        data['Attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RequiresRecreation'] = stub[:requires_recreation] unless stub[:requires_recreation].nil?
        data
      end
    end

    # List Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedProductPlanDetails
    class ProvisionedProductPlanDetails
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductPlanDetails')
        visited = visited + ['ProvisionedProductPlanDetails']
        {
          created_time: Time.now,
          path_id: 'path_id',
          product_id: 'product_id',
          plan_name: 'plan_name',
          plan_id: 'plan_id',
          provision_product_id: 'provision_product_id',
          provision_product_name: 'provision_product_name',
          plan_type: 'plan_type',
          provisioning_artifact_id: 'provisioning_artifact_id',
          status: 'status',
          updated_time: Time.now,
          notification_arns: NotificationArns.default(visited),
          provisioning_parameters: UpdateProvisioningParameters.default(visited),
          tags: Tags.default(visited),
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedProductPlanDetails.new
        data = {}
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['PathId'] = stub[:path_id] unless stub[:path_id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['PlanName'] = stub[:plan_name] unless stub[:plan_name].nil?
        data['PlanId'] = stub[:plan_id] unless stub[:plan_id].nil?
        data['ProvisionProductId'] = stub[:provision_product_id] unless stub[:provision_product_id].nil?
        data['ProvisionProductName'] = stub[:provision_product_name] unless stub[:provision_product_name].nil?
        data['PlanType'] = stub[:plan_type] unless stub[:plan_type].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['UpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_time]).to_i unless stub[:updated_time].nil?
        data['NotificationArns'] = NotificationArns.stub(stub[:notification_arns]) unless stub[:notification_arns].nil?
        data['ProvisioningParameters'] = UpdateProvisioningParameters.stub(stub[:provisioning_parameters]) unless stub[:provisioning_parameters].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # List Stubber for UpdateProvisioningParameters
    class UpdateProvisioningParameters
      def self.default(visited=[])
        return nil if visited.include?('UpdateProvisioningParameters')
        visited = visited + ['UpdateProvisioningParameters']
        [
          UpdateProvisioningParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UpdateProvisioningParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateProvisioningParameter
    class UpdateProvisioningParameter
      def self.default(visited=[])
        return nil if visited.include?('UpdateProvisioningParameter')
        visited = visited + ['UpdateProvisioningParameter']
        {
          key: 'key',
          value: 'value',
          use_previous_value: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateProvisioningParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['UsePreviousValue'] = stub[:use_previous_value] unless stub[:use_previous_value].nil?
        data
      end
    end

    # List Stubber for NotificationArns
    class NotificationArns
      def self.default(visited=[])
        return nil if visited.include?('NotificationArns')
        visited = visited + ['NotificationArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeProvisioningArtifact
    class DescribeProvisioningArtifact
      def self.default(visited=[])
        {
          provisioning_artifact_detail: ProvisioningArtifactDetail.default(visited),
          info: ProvisioningArtifactInfo.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactDetail'] = ProvisioningArtifactDetail.stub(stub[:provisioning_artifact_detail]) unless stub[:provisioning_artifact_detail].nil?
        data['Info'] = ProvisioningArtifactInfo.stub(stub[:info]) unless stub[:info].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeProvisioningParameters
    class DescribeProvisioningParameters
      def self.default(visited=[])
        {
          provisioning_artifact_parameters: ProvisioningArtifactParameters.default(visited),
          constraint_summaries: ConstraintSummaries.default(visited),
          usage_instructions: UsageInstructions.default(visited),
          tag_options: TagOptionSummaries.default(visited),
          provisioning_artifact_preferences: ProvisioningArtifactPreferences.default(visited),
          provisioning_artifact_outputs: ProvisioningArtifactOutputs.default(visited),
          provisioning_artifact_output_keys: ProvisioningArtifactOutputs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactParameters'] = ProvisioningArtifactParameters.stub(stub[:provisioning_artifact_parameters]) unless stub[:provisioning_artifact_parameters].nil?
        data['ConstraintSummaries'] = ConstraintSummaries.stub(stub[:constraint_summaries]) unless stub[:constraint_summaries].nil?
        data['UsageInstructions'] = UsageInstructions.stub(stub[:usage_instructions]) unless stub[:usage_instructions].nil?
        data['TagOptions'] = TagOptionSummaries.stub(stub[:tag_options]) unless stub[:tag_options].nil?
        data['ProvisioningArtifactPreferences'] = ProvisioningArtifactPreferences.stub(stub[:provisioning_artifact_preferences]) unless stub[:provisioning_artifact_preferences].nil?
        data['ProvisioningArtifactOutputs'] = ProvisioningArtifactOutputs.stub(stub[:provisioning_artifact_outputs]) unless stub[:provisioning_artifact_outputs].nil?
        data['ProvisioningArtifactOutputKeys'] = ProvisioningArtifactOutputs.stub(stub[:provisioning_artifact_output_keys]) unless stub[:provisioning_artifact_output_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisioningArtifactOutputs
    class ProvisioningArtifactOutputs
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactOutputs')
        visited = visited + ['ProvisioningArtifactOutputs']
        [
          ProvisioningArtifactOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifactOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningArtifactOutput
    class ProvisioningArtifactOutput
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactOutput')
        visited = visited + ['ProvisioningArtifactOutput']
        {
          key: 'key',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactOutput.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for ProvisioningArtifactPreferences
    class ProvisioningArtifactPreferences
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactPreferences')
        visited = visited + ['ProvisioningArtifactPreferences']
        {
          stack_set_accounts: StackSetAccounts.default(visited),
          stack_set_regions: StackSetRegions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactPreferences.new
        data = {}
        data['StackSetAccounts'] = StackSetAccounts.stub(stub[:stack_set_accounts]) unless stub[:stack_set_accounts].nil?
        data['StackSetRegions'] = StackSetRegions.stub(stub[:stack_set_regions]) unless stub[:stack_set_regions].nil?
        data
      end
    end

    # List Stubber for StackSetRegions
    class StackSetRegions
      def self.default(visited=[])
        return nil if visited.include?('StackSetRegions')
        visited = visited + ['StackSetRegions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for StackSetAccounts
    class StackSetAccounts
      def self.default(visited=[])
        return nil if visited.include?('StackSetAccounts')
        visited = visited + ['StackSetAccounts']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TagOptionSummaries
    class TagOptionSummaries
      def self.default(visited=[])
        return nil if visited.include?('TagOptionSummaries')
        visited = visited + ['TagOptionSummaries']
        [
          TagOptionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TagOptionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagOptionSummary
    class TagOptionSummary
      def self.default(visited=[])
        return nil if visited.include?('TagOptionSummary')
        visited = visited + ['TagOptionSummary']
        {
          key: 'key',
          values: TagOptionValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagOptionSummary.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = TagOptionValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for TagOptionValues
    class TagOptionValues
      def self.default(visited=[])
        return nil if visited.include?('TagOptionValues')
        visited = visited + ['TagOptionValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for UsageInstructions
    class UsageInstructions
      def self.default(visited=[])
        return nil if visited.include?('UsageInstructions')
        visited = visited + ['UsageInstructions']
        [
          UsageInstruction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsageInstruction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageInstruction
    class UsageInstruction
      def self.default(visited=[])
        return nil if visited.include?('UsageInstruction')
        visited = visited + ['UsageInstruction']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageInstruction.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for ConstraintSummaries
    class ConstraintSummaries
      def self.default(visited=[])
        return nil if visited.include?('ConstraintSummaries')
        visited = visited + ['ConstraintSummaries']
        [
          ConstraintSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConstraintSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConstraintSummary
    class ConstraintSummary
      def self.default(visited=[])
        return nil if visited.include?('ConstraintSummary')
        visited = visited + ['ConstraintSummary']
        {
          type: 'type',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConstraintSummary.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # List Stubber for ProvisioningArtifactParameters
    class ProvisioningArtifactParameters
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactParameters')
        visited = visited + ['ProvisioningArtifactParameters']
        [
          ProvisioningArtifactParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifactParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningArtifactParameter
    class ProvisioningArtifactParameter
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactParameter')
        visited = visited + ['ProvisioningArtifactParameter']
        {
          parameter_key: 'parameter_key',
          default_value: 'default_value',
          parameter_type: 'parameter_type',
          is_no_echo: false,
          description: 'description',
          parameter_constraints: ParameterConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactParameter.new
        data = {}
        data['ParameterKey'] = stub[:parameter_key] unless stub[:parameter_key].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['ParameterType'] = stub[:parameter_type] unless stub[:parameter_type].nil?
        data['IsNoEcho'] = stub[:is_no_echo] unless stub[:is_no_echo].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ParameterConstraints'] = ParameterConstraints.stub(stub[:parameter_constraints]) unless stub[:parameter_constraints].nil?
        data
      end
    end

    # Structure Stubber for ParameterConstraints
    class ParameterConstraints
      def self.default(visited=[])
        return nil if visited.include?('ParameterConstraints')
        visited = visited + ['ParameterConstraints']
        {
          allowed_values: AllowedValues.default(visited),
          allowed_pattern: 'allowed_pattern',
          constraint_description: 'constraint_description',
          max_length: 'max_length',
          min_length: 'min_length',
          max_value: 'max_value',
          min_value: 'min_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterConstraints.new
        data = {}
        data['AllowedValues'] = AllowedValues.stub(stub[:allowed_values]) unless stub[:allowed_values].nil?
        data['AllowedPattern'] = stub[:allowed_pattern] unless stub[:allowed_pattern].nil?
        data['ConstraintDescription'] = stub[:constraint_description] unless stub[:constraint_description].nil?
        data['MaxLength'] = stub[:max_length] unless stub[:max_length].nil?
        data['MinLength'] = stub[:min_length] unless stub[:min_length].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data
      end
    end

    # List Stubber for AllowedValues
    class AllowedValues
      def self.default(visited=[])
        return nil if visited.include?('AllowedValues')
        visited = visited + ['AllowedValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeRecord
    class DescribeRecord
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
          record_outputs: RecordOutputs.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        data['RecordOutputs'] = RecordOutputs.stub(stub[:record_outputs]) unless stub[:record_outputs].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecordOutputs
    class RecordOutputs
      def self.default(visited=[])
        return nil if visited.include?('RecordOutputs')
        visited = visited + ['RecordOutputs']
        [
          RecordOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecordOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecordOutput
    class RecordOutput
      def self.default(visited=[])
        return nil if visited.include?('RecordOutput')
        visited = visited + ['RecordOutput']
        {
          output_key: 'output_key',
          output_value: 'output_value',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordOutput.new
        data = {}
        data['OutputKey'] = stub[:output_key] unless stub[:output_key].nil?
        data['OutputValue'] = stub[:output_value] unless stub[:output_value].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for RecordDetail
    class RecordDetail
      def self.default(visited=[])
        return nil if visited.include?('RecordDetail')
        visited = visited + ['RecordDetail']
        {
          record_id: 'record_id',
          provisioned_product_name: 'provisioned_product_name',
          status: 'status',
          created_time: Time.now,
          updated_time: Time.now,
          provisioned_product_type: 'provisioned_product_type',
          record_type: 'record_type',
          provisioned_product_id: 'provisioned_product_id',
          product_id: 'product_id',
          provisioning_artifact_id: 'provisioning_artifact_id',
          path_id: 'path_id',
          record_errors: RecordErrors.default(visited),
          record_tags: RecordTags.default(visited),
          launch_role_arn: 'launch_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordDetail.new
        data = {}
        data['RecordId'] = stub[:record_id] unless stub[:record_id].nil?
        data['ProvisionedProductName'] = stub[:provisioned_product_name] unless stub[:provisioned_product_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['UpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_time]).to_i unless stub[:updated_time].nil?
        data['ProvisionedProductType'] = stub[:provisioned_product_type] unless stub[:provisioned_product_type].nil?
        data['RecordType'] = stub[:record_type] unless stub[:record_type].nil?
        data['ProvisionedProductId'] = stub[:provisioned_product_id] unless stub[:provisioned_product_id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['PathId'] = stub[:path_id] unless stub[:path_id].nil?
        data['RecordErrors'] = RecordErrors.stub(stub[:record_errors]) unless stub[:record_errors].nil?
        data['RecordTags'] = RecordTags.stub(stub[:record_tags]) unless stub[:record_tags].nil?
        data['LaunchRoleArn'] = stub[:launch_role_arn] unless stub[:launch_role_arn].nil?
        data
      end
    end

    # List Stubber for RecordTags
    class RecordTags
      def self.default(visited=[])
        return nil if visited.include?('RecordTags')
        visited = visited + ['RecordTags']
        [
          RecordTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecordTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecordTag
    class RecordTag
      def self.default(visited=[])
        return nil if visited.include?('RecordTag')
        visited = visited + ['RecordTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordTag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for RecordErrors
    class RecordErrors
      def self.default(visited=[])
        return nil if visited.include?('RecordErrors')
        visited = visited + ['RecordErrors']
        [
          RecordError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecordError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecordError
    class RecordError
      def self.default(visited=[])
        return nil if visited.include?('RecordError')
        visited = visited + ['RecordError']
        {
          code: 'code',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for DescribeServiceAction
    class DescribeServiceAction
      def self.default(visited=[])
        {
          service_action_detail: ServiceActionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionDetail'] = ServiceActionDetail.stub(stub[:service_action_detail]) unless stub[:service_action_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeServiceActionExecutionParameters
    class DescribeServiceActionExecutionParameters
      def self.default(visited=[])
        {
          service_action_parameters: ExecutionParameters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionParameters'] = ExecutionParameters.stub(stub[:service_action_parameters]) unless stub[:service_action_parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExecutionParameters
    class ExecutionParameters
      def self.default(visited=[])
        return nil if visited.include?('ExecutionParameters')
        visited = visited + ['ExecutionParameters']
        [
          ExecutionParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExecutionParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionParameter
    class ExecutionParameter
      def self.default(visited=[])
        return nil if visited.include?('ExecutionParameter')
        visited = visited + ['ExecutionParameter']
        {
          name: 'name',
          type: 'type',
          default_values: ExecutionParameterValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DefaultValues'] = ExecutionParameterValueList.stub(stub[:default_values]) unless stub[:default_values].nil?
        data
      end
    end

    # List Stubber for ExecutionParameterValueList
    class ExecutionParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('ExecutionParameterValueList')
        visited = visited + ['ExecutionParameterValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeTagOption
    class DescribeTagOption
      def self.default(visited=[])
        {
          tag_option_detail: TagOptionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagOptionDetail'] = TagOptionDetail.stub(stub[:tag_option_detail]) unless stub[:tag_option_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableAWSOrganizationsAccess
    class DisableAWSOrganizationsAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateBudgetFromResource
    class DisassociateBudgetFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociatePrincipalFromPortfolio
    class DisassociatePrincipalFromPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateProductFromPortfolio
    class DisassociateProductFromPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateServiceActionFromProvisioningArtifact
    class DisassociateServiceActionFromProvisioningArtifact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateTagOptionFromResource
    class DisassociateTagOptionFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableAWSOrganizationsAccess
    class EnableAWSOrganizationsAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteProvisionedProductPlan
    class ExecuteProvisionedProductPlan
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteProvisionedProductServiceAction
    class ExecuteProvisionedProductServiceAction
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAWSOrganizationsAccessStatus
    class GetAWSOrganizationsAccessStatus
      def self.default(visited=[])
        {
          access_status: 'access_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccessStatus'] = stub[:access_status] unless stub[:access_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetProvisionedProductOutputs
    class GetProvisionedProductOutputs
      def self.default(visited=[])
        {
          outputs: RecordOutputs.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Outputs'] = RecordOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportAsProvisionedProduct
    class ImportAsProvisionedProduct
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAcceptedPortfolioShares
    class ListAcceptedPortfolioShares
      def self.default(visited=[])
        {
          portfolio_details: PortfolioDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetails'] = PortfolioDetails.stub(stub[:portfolio_details]) unless stub[:portfolio_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PortfolioDetails
    class PortfolioDetails
      def self.default(visited=[])
        return nil if visited.include?('PortfolioDetails')
        visited = visited + ['PortfolioDetails']
        [
          PortfolioDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortfolioDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBudgetsForResource
    class ListBudgetsForResource
      def self.default(visited=[])
        {
          budgets: Budgets.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Budgets'] = Budgets.stub(stub[:budgets]) unless stub[:budgets].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListConstraintsForPortfolio
    class ListConstraintsForPortfolio
      def self.default(visited=[])
        {
          constraint_details: ConstraintDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConstraintDetails'] = ConstraintDetails.stub(stub[:constraint_details]) unless stub[:constraint_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConstraintDetails
    class ConstraintDetails
      def self.default(visited=[])
        return nil if visited.include?('ConstraintDetails')
        visited = visited + ['ConstraintDetails']
        [
          ConstraintDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConstraintDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLaunchPaths
    class ListLaunchPaths
      def self.default(visited=[])
        {
          launch_path_summaries: LaunchPathSummaries.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LaunchPathSummaries'] = LaunchPathSummaries.stub(stub[:launch_path_summaries]) unless stub[:launch_path_summaries].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LaunchPathSummaries
    class LaunchPathSummaries
      def self.default(visited=[])
        return nil if visited.include?('LaunchPathSummaries')
        visited = visited + ['LaunchPathSummaries']
        [
          LaunchPathSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LaunchPathSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LaunchPathSummary
    class LaunchPathSummary
      def self.default(visited=[])
        return nil if visited.include?('LaunchPathSummary')
        visited = visited + ['LaunchPathSummary']
        {
          id: 'id',
          constraint_summaries: ConstraintSummaries.default(visited),
          tags: Tags.default(visited),
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchPathSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ConstraintSummaries'] = ConstraintSummaries.stub(stub[:constraint_summaries]) unless stub[:constraint_summaries].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListOrganizationPortfolioAccess
    class ListOrganizationPortfolioAccess
      def self.default(visited=[])
        {
          organization_nodes: OrganizationNodes.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationNodes'] = OrganizationNodes.stub(stub[:organization_nodes]) unless stub[:organization_nodes].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationNodes
    class OrganizationNodes
      def self.default(visited=[])
        return nil if visited.include?('OrganizationNodes')
        visited = visited + ['OrganizationNodes']
        [
          OrganizationNode.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationNode.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationNode
    class OrganizationNode
      def self.default(visited=[])
        return nil if visited.include?('OrganizationNode')
        visited = visited + ['OrganizationNode']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationNode.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListPortfolioAccess
    class ListPortfolioAccess
      def self.default(visited=[])
        {
          account_ids: AccountIds.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountIds'] = AccountIds.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountIds
    class AccountIds
      def self.default(visited=[])
        return nil if visited.include?('AccountIds')
        visited = visited + ['AccountIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPortfolios
    class ListPortfolios
      def self.default(visited=[])
        {
          portfolio_details: PortfolioDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetails'] = PortfolioDetails.stub(stub[:portfolio_details]) unless stub[:portfolio_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPortfoliosForProduct
    class ListPortfoliosForProduct
      def self.default(visited=[])
        {
          portfolio_details: PortfolioDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetails'] = PortfolioDetails.stub(stub[:portfolio_details]) unless stub[:portfolio_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPrincipalsForPortfolio
    class ListPrincipalsForPortfolio
      def self.default(visited=[])
        {
          principals: Principals.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Principals'] = Principals.stub(stub[:principals]) unless stub[:principals].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Principals
    class Principals
      def self.default(visited=[])
        return nil if visited.include?('Principals')
        visited = visited + ['Principals']
        [
          Principal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Principal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Principal
    class Principal
      def self.default(visited=[])
        return nil if visited.include?('Principal')
        visited = visited + ['Principal']
        {
          principal_arn: 'principal_arn',
          principal_type: 'principal_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Principal.new
        data = {}
        data['PrincipalARN'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data['PrincipalType'] = stub[:principal_type] unless stub[:principal_type].nil?
        data
      end
    end

    # Operation Stubber for ListProvisionedProductPlans
    class ListProvisionedProductPlans
      def self.default(visited=[])
        {
          provisioned_product_plans: ProvisionedProductPlans.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProductPlans'] = ProvisionedProductPlans.stub(stub[:provisioned_product_plans]) unless stub[:provisioned_product_plans].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisionedProductPlans
    class ProvisionedProductPlans
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductPlans')
        visited = visited + ['ProvisionedProductPlans']
        [
          ProvisionedProductPlanSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisionedProductPlanSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedProductPlanSummary
    class ProvisionedProductPlanSummary
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductPlanSummary')
        visited = visited + ['ProvisionedProductPlanSummary']
        {
          plan_name: 'plan_name',
          plan_id: 'plan_id',
          provision_product_id: 'provision_product_id',
          provision_product_name: 'provision_product_name',
          plan_type: 'plan_type',
          provisioning_artifact_id: 'provisioning_artifact_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedProductPlanSummary.new
        data = {}
        data['PlanName'] = stub[:plan_name] unless stub[:plan_name].nil?
        data['PlanId'] = stub[:plan_id] unless stub[:plan_id].nil?
        data['ProvisionProductId'] = stub[:provision_product_id] unless stub[:provision_product_id].nil?
        data['ProvisionProductName'] = stub[:provision_product_name] unless stub[:provision_product_name].nil?
        data['PlanType'] = stub[:plan_type] unless stub[:plan_type].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data
      end
    end

    # Operation Stubber for ListProvisioningArtifacts
    class ListProvisioningArtifacts
      def self.default(visited=[])
        {
          provisioning_artifact_details: ProvisioningArtifactDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactDetails'] = ProvisioningArtifactDetails.stub(stub[:provisioning_artifact_details]) unless stub[:provisioning_artifact_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisioningArtifactDetails
    class ProvisioningArtifactDetails
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactDetails')
        visited = visited + ['ProvisioningArtifactDetails']
        [
          ProvisioningArtifactDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifactDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProvisioningArtifactsForServiceAction
    class ListProvisioningArtifactsForServiceAction
      def self.default(visited=[])
        {
          provisioning_artifact_views: ProvisioningArtifactViews.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactViews'] = ProvisioningArtifactViews.stub(stub[:provisioning_artifact_views]) unless stub[:provisioning_artifact_views].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisioningArtifactViews
    class ProvisioningArtifactViews
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactViews')
        visited = visited + ['ProvisioningArtifactViews']
        [
          ProvisioningArtifactView.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningArtifactView.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningArtifactView
    class ProvisioningArtifactView
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningArtifactView')
        visited = visited + ['ProvisioningArtifactView']
        {
          product_view_summary: ProductViewSummary.default(visited),
          provisioning_artifact: ProvisioningArtifact.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningArtifactView.new
        data = {}
        data['ProductViewSummary'] = ProductViewSummary.stub(stub[:product_view_summary]) unless stub[:product_view_summary].nil?
        data['ProvisioningArtifact'] = ProvisioningArtifact.stub(stub[:provisioning_artifact]) unless stub[:provisioning_artifact].nil?
        data
      end
    end

    # Operation Stubber for ListRecordHistory
    class ListRecordHistory
      def self.default(visited=[])
        {
          record_details: RecordDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetails'] = RecordDetails.stub(stub[:record_details]) unless stub[:record_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecordDetails
    class RecordDetails
      def self.default(visited=[])
        return nil if visited.include?('RecordDetails')
        visited = visited + ['RecordDetails']
        [
          RecordDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecordDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResourcesForTagOption
    class ListResourcesForTagOption
      def self.default(visited=[])
        {
          resource_details: ResourceDetails.default(visited),
          page_token: 'page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceDetails'] = ResourceDetails.stub(stub[:resource_details]) unless stub[:resource_details].nil?
        data['PageToken'] = stub[:page_token] unless stub[:page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceDetails
    class ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetails')
        visited = visited + ['ResourceDetails']
        [
          ResourceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceDetail
    class ResourceDetail
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetail')
        visited = visited + ['ResourceDetail']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDetail.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListServiceActions
    class ListServiceActions
      def self.default(visited=[])
        {
          service_action_summaries: ServiceActionSummaries.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionSummaries'] = ServiceActionSummaries.stub(stub[:service_action_summaries]) unless stub[:service_action_summaries].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceActionSummaries
    class ServiceActionSummaries
      def self.default(visited=[])
        return nil if visited.include?('ServiceActionSummaries')
        visited = visited + ['ServiceActionSummaries']
        [
          ServiceActionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceActionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListServiceActionsForProvisioningArtifact
    class ListServiceActionsForProvisioningArtifact
      def self.default(visited=[])
        {
          service_action_summaries: ServiceActionSummaries.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionSummaries'] = ServiceActionSummaries.stub(stub[:service_action_summaries]) unless stub[:service_action_summaries].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListStackInstancesForProvisionedProduct
    class ListStackInstancesForProvisionedProduct
      def self.default(visited=[])
        {
          stack_instances: StackInstances.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StackInstances'] = StackInstances.stub(stub[:stack_instances]) unless stub[:stack_instances].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StackInstances
    class StackInstances
      def self.default(visited=[])
        return nil if visited.include?('StackInstances')
        visited = visited + ['StackInstances']
        [
          StackInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StackInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StackInstance
    class StackInstance
      def self.default(visited=[])
        return nil if visited.include?('StackInstance')
        visited = visited + ['StackInstance']
        {
          account: 'account',
          region: 'region',
          stack_instance_status: 'stack_instance_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::StackInstance.new
        data = {}
        data['Account'] = stub[:account] unless stub[:account].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['StackInstanceStatus'] = stub[:stack_instance_status] unless stub[:stack_instance_status].nil?
        data
      end
    end

    # Operation Stubber for ListTagOptions
    class ListTagOptions
      def self.default(visited=[])
        {
          tag_option_details: TagOptionDetails.default(visited),
          page_token: 'page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagOptionDetails'] = TagOptionDetails.stub(stub[:tag_option_details]) unless stub[:tag_option_details].nil?
        data['PageToken'] = stub[:page_token] unless stub[:page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ProvisionProduct
    class ProvisionProduct
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectPortfolioShare
    class RejectPortfolioShare
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ScanProvisionedProducts
    class ScanProvisionedProducts
      def self.default(visited=[])
        {
          provisioned_products: ProvisionedProductDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProducts'] = ProvisionedProductDetails.stub(stub[:provisioned_products]) unless stub[:provisioned_products].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisionedProductDetails
    class ProvisionedProductDetails
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductDetails')
        visited = visited + ['ProvisionedProductDetails']
        [
          ProvisionedProductDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisionedProductDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SearchProducts
    class SearchProducts
      def self.default(visited=[])
        {
          product_view_summaries: ProductViewSummaries.default(visited),
          product_view_aggregations: ProductViewAggregations.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewSummaries'] = ProductViewSummaries.stub(stub[:product_view_summaries]) unless stub[:product_view_summaries].nil?
        data['ProductViewAggregations'] = ProductViewAggregations.stub(stub[:product_view_aggregations]) unless stub[:product_view_aggregations].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ProductViewAggregations
    class ProductViewAggregations
      def self.default(visited=[])
        return nil if visited.include?('ProductViewAggregations')
        visited = visited + ['ProductViewAggregations']
        {
          test_key: ProductViewAggregationValues.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ProductViewAggregationValues.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ProductViewAggregationValues
    class ProductViewAggregationValues
      def self.default(visited=[])
        return nil if visited.include?('ProductViewAggregationValues')
        visited = visited + ['ProductViewAggregationValues']
        [
          ProductViewAggregationValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductViewAggregationValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductViewAggregationValue
    class ProductViewAggregationValue
      def self.default(visited=[])
        return nil if visited.include?('ProductViewAggregationValue')
        visited = visited + ['ProductViewAggregationValue']
        {
          value: 'value',
          approximate_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductViewAggregationValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['ApproximateCount'] = stub[:approximate_count] unless stub[:approximate_count].nil?
        data
      end
    end

    # List Stubber for ProductViewSummaries
    class ProductViewSummaries
      def self.default(visited=[])
        return nil if visited.include?('ProductViewSummaries')
        visited = visited + ['ProductViewSummaries']
        [
          ProductViewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductViewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SearchProductsAsAdmin
    class SearchProductsAsAdmin
      def self.default(visited=[])
        {
          product_view_details: ProductViewDetails.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewDetails'] = ProductViewDetails.stub(stub[:product_view_details]) unless stub[:product_view_details].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProductViewDetails
    class ProductViewDetails
      def self.default(visited=[])
        return nil if visited.include?('ProductViewDetails')
        visited = visited + ['ProductViewDetails']
        [
          ProductViewDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductViewDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SearchProvisionedProducts
    class SearchProvisionedProducts
      def self.default(visited=[])
        {
          provisioned_products: ProvisionedProductAttributes.default(visited),
          total_results_count: 1,
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProducts'] = ProvisionedProductAttributes.stub(stub[:provisioned_products]) unless stub[:provisioned_products].nil?
        data['TotalResultsCount'] = stub[:total_results_count] unless stub[:total_results_count].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisionedProductAttributes
    class ProvisionedProductAttributes
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductAttributes')
        visited = visited + ['ProvisionedProductAttributes']
        [
          ProvisionedProductAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisionedProductAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedProductAttribute
    class ProvisionedProductAttribute
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductAttribute')
        visited = visited + ['ProvisionedProductAttribute']
        {
          name: 'name',
          arn: 'arn',
          type: 'type',
          id: 'id',
          status: 'status',
          status_message: 'status_message',
          created_time: Time.now,
          idempotency_token: 'idempotency_token',
          last_record_id: 'last_record_id',
          last_provisioning_record_id: 'last_provisioning_record_id',
          last_successful_provisioning_record_id: 'last_successful_provisioning_record_id',
          tags: Tags.default(visited),
          physical_id: 'physical_id',
          product_id: 'product_id',
          product_name: 'product_name',
          provisioning_artifact_id: 'provisioning_artifact_id',
          provisioning_artifact_name: 'provisioning_artifact_name',
          user_arn: 'user_arn',
          user_arn_session: 'user_arn_session',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedProductAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['IdempotencyToken'] = stub[:idempotency_token] unless stub[:idempotency_token].nil?
        data['LastRecordId'] = stub[:last_record_id] unless stub[:last_record_id].nil?
        data['LastProvisioningRecordId'] = stub[:last_provisioning_record_id] unless stub[:last_provisioning_record_id].nil?
        data['LastSuccessfulProvisioningRecordId'] = stub[:last_successful_provisioning_record_id] unless stub[:last_successful_provisioning_record_id].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['PhysicalId'] = stub[:physical_id] unless stub[:physical_id].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['ProductName'] = stub[:product_name] unless stub[:product_name].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['ProvisioningArtifactName'] = stub[:provisioning_artifact_name] unless stub[:provisioning_artifact_name].nil?
        data['UserArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['UserArnSession'] = stub[:user_arn_session] unless stub[:user_arn_session].nil?
        data
      end
    end

    # Operation Stubber for TerminateProvisionedProduct
    class TerminateProvisionedProduct
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConstraint
    class UpdateConstraint
      def self.default(visited=[])
        {
          constraint_detail: ConstraintDetail.default(visited),
          constraint_parameters: 'constraint_parameters',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConstraintDetail'] = ConstraintDetail.stub(stub[:constraint_detail]) unless stub[:constraint_detail].nil?
        data['ConstraintParameters'] = stub[:constraint_parameters] unless stub[:constraint_parameters].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePortfolio
    class UpdatePortfolio
      def self.default(visited=[])
        {
          portfolio_detail: PortfolioDetail.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioDetail'] = PortfolioDetail.stub(stub[:portfolio_detail]) unless stub[:portfolio_detail].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePortfolioShare
    class UpdatePortfolioShare
      def self.default(visited=[])
        {
          portfolio_share_token: 'portfolio_share_token',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortfolioShareToken'] = stub[:portfolio_share_token] unless stub[:portfolio_share_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProduct
    class UpdateProduct
      def self.default(visited=[])
        {
          product_view_detail: ProductViewDetail.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProductViewDetail'] = ProductViewDetail.stub(stub[:product_view_detail]) unless stub[:product_view_detail].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProvisionedProduct
    class UpdateProvisionedProduct
      def self.default(visited=[])
        {
          record_detail: RecordDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RecordDetail'] = RecordDetail.stub(stub[:record_detail]) unless stub[:record_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProvisionedProductProperties
    class UpdateProvisionedProductProperties
      def self.default(visited=[])
        {
          provisioned_product_id: 'provisioned_product_id',
          provisioned_product_properties: ProvisionedProductProperties.default(visited),
          record_id: 'record_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisionedProductId'] = stub[:provisioned_product_id] unless stub[:provisioned_product_id].nil?
        data['ProvisionedProductProperties'] = ProvisionedProductProperties.stub(stub[:provisioned_product_properties]) unless stub[:provisioned_product_properties].nil?
        data['RecordId'] = stub[:record_id] unless stub[:record_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ProvisionedProductProperties
    class ProvisionedProductProperties
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedProductProperties')
        visited = visited + ['ProvisionedProductProperties']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateProvisioningArtifact
    class UpdateProvisioningArtifact
      def self.default(visited=[])
        {
          provisioning_artifact_detail: ProvisioningArtifactDetail.default(visited),
          info: ProvisioningArtifactInfo.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProvisioningArtifactDetail'] = ProvisioningArtifactDetail.stub(stub[:provisioning_artifact_detail]) unless stub[:provisioning_artifact_detail].nil?
        data['Info'] = ProvisioningArtifactInfo.stub(stub[:info]) unless stub[:info].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceAction
    class UpdateServiceAction
      def self.default(visited=[])
        {
          service_action_detail: ServiceActionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceActionDetail'] = ServiceActionDetail.stub(stub[:service_action_detail]) unless stub[:service_action_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTagOption
    class UpdateTagOption
      def self.default(visited=[])
        {
          tag_option_detail: TagOptionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagOptionDetail'] = TagOptionDetail.stub(stub[:tag_option_detail]) unless stub[:tag_option_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
