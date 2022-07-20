# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SecurityHub
  module Stubs

    # Operation Stubber for AcceptAdministratorInvitation
    class AcceptAdministratorInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AcceptInvitation
    class AcceptInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDisableStandards
    class BatchDisableStandards
      def self.default(visited=[])
        {
          standards_subscriptions: StandardsSubscriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StandardsSubscriptions'] = StandardsSubscriptions.stub(stub[:standards_subscriptions]) unless stub[:standards_subscriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StandardsSubscriptions
    class StandardsSubscriptions
      def self.default(visited=[])
        return nil if visited.include?('StandardsSubscriptions')
        visited = visited + ['StandardsSubscriptions']
        [
          StandardsSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StandardsSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StandardsSubscription
    class StandardsSubscription
      def self.default(visited=[])
        return nil if visited.include?('StandardsSubscription')
        visited = visited + ['StandardsSubscription']
        {
          standards_subscription_arn: 'standards_subscription_arn',
          standards_arn: 'standards_arn',
          standards_input: StandardsInputParameterMap.default(visited),
          standards_status: 'standards_status',
          standards_status_reason: StandardsStatusReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StandardsSubscription.new
        data = {}
        data['StandardsSubscriptionArn'] = stub[:standards_subscription_arn] unless stub[:standards_subscription_arn].nil?
        data['StandardsArn'] = stub[:standards_arn] unless stub[:standards_arn].nil?
        data['StandardsInput'] = StandardsInputParameterMap.stub(stub[:standards_input]) unless stub[:standards_input].nil?
        data['StandardsStatus'] = stub[:standards_status] unless stub[:standards_status].nil?
        data['StandardsStatusReason'] = StandardsStatusReason.stub(stub[:standards_status_reason]) unless stub[:standards_status_reason].nil?
        data
      end
    end

    # Structure Stubber for StandardsStatusReason
    class StandardsStatusReason
      def self.default(visited=[])
        return nil if visited.include?('StandardsStatusReason')
        visited = visited + ['StandardsStatusReason']
        {
          status_reason_code: 'status_reason_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::StandardsStatusReason.new
        data = {}
        data['StatusReasonCode'] = stub[:status_reason_code] unless stub[:status_reason_code].nil?
        data
      end
    end

    # Map Stubber for StandardsInputParameterMap
    class StandardsInputParameterMap
      def self.default(visited=[])
        return nil if visited.include?('StandardsInputParameterMap')
        visited = visited + ['StandardsInputParameterMap']
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

    # Operation Stubber for BatchEnableStandards
    class BatchEnableStandards
      def self.default(visited=[])
        {
          standards_subscriptions: StandardsSubscriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StandardsSubscriptions'] = StandardsSubscriptions.stub(stub[:standards_subscriptions]) unless stub[:standards_subscriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchImportFindings
    class BatchImportFindings
      def self.default(visited=[])
        {
          failed_count: 1,
          success_count: 1,
          failed_findings: ImportFindingsErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FailedCount'] = stub[:failed_count] unless stub[:failed_count].nil?
        data['SuccessCount'] = stub[:success_count] unless stub[:success_count].nil?
        data['FailedFindings'] = ImportFindingsErrorList.stub(stub[:failed_findings]) unless stub[:failed_findings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImportFindingsErrorList
    class ImportFindingsErrorList
      def self.default(visited=[])
        return nil if visited.include?('ImportFindingsErrorList')
        visited = visited + ['ImportFindingsErrorList']
        [
          ImportFindingsError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ImportFindingsError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImportFindingsError
    class ImportFindingsError
      def self.default(visited=[])
        return nil if visited.include?('ImportFindingsError')
        visited = visited + ['ImportFindingsError']
        {
          id: 'id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportFindingsError.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchUpdateFindings
    class BatchUpdateFindings
      def self.default(visited=[])
        {
          processed_findings: AwsSecurityFindingIdentifierList.default(visited),
          unprocessed_findings: BatchUpdateFindingsUnprocessedFindingsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProcessedFindings'] = AwsSecurityFindingIdentifierList.stub(stub[:processed_findings]) unless stub[:processed_findings].nil?
        data['UnprocessedFindings'] = BatchUpdateFindingsUnprocessedFindingsList.stub(stub[:unprocessed_findings]) unless stub[:unprocessed_findings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchUpdateFindingsUnprocessedFindingsList
    class BatchUpdateFindingsUnprocessedFindingsList
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateFindingsUnprocessedFindingsList')
        visited = visited + ['BatchUpdateFindingsUnprocessedFindingsList']
        [
          BatchUpdateFindingsUnprocessedFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchUpdateFindingsUnprocessedFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchUpdateFindingsUnprocessedFinding
    class BatchUpdateFindingsUnprocessedFinding
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateFindingsUnprocessedFinding')
        visited = visited + ['BatchUpdateFindingsUnprocessedFinding']
        {
          finding_identifier: AwsSecurityFindingIdentifier.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateFindingsUnprocessedFinding.new
        data = {}
        data['FindingIdentifier'] = AwsSecurityFindingIdentifier.stub(stub[:finding_identifier]) unless stub[:finding_identifier].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for AwsSecurityFindingIdentifier
    class AwsSecurityFindingIdentifier
      def self.default(visited=[])
        return nil if visited.include?('AwsSecurityFindingIdentifier')
        visited = visited + ['AwsSecurityFindingIdentifier']
        {
          id: 'id',
          product_arn: 'product_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSecurityFindingIdentifier.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ProductArn'] = stub[:product_arn] unless stub[:product_arn].nil?
        data
      end
    end

    # List Stubber for AwsSecurityFindingIdentifierList
    class AwsSecurityFindingIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('AwsSecurityFindingIdentifierList')
        visited = visited + ['AwsSecurityFindingIdentifierList']
        [
          AwsSecurityFindingIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsSecurityFindingIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateActionTarget
    class CreateActionTarget
      def self.default(visited=[])
        {
          action_target_arn: 'action_target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ActionTargetArn'] = stub[:action_target_arn] unless stub[:action_target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFindingAggregator
    class CreateFindingAggregator
      def self.default(visited=[])
        {
          finding_aggregator_arn: 'finding_aggregator_arn',
          finding_aggregation_region: 'finding_aggregation_region',
          region_linking_mode: 'region_linking_mode',
          regions: StringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FindingAggregatorArn'] = stub[:finding_aggregator_arn] unless stub[:finding_aggregator_arn].nil?
        data['FindingAggregationRegion'] = stub[:finding_aggregation_region] unless stub[:finding_aggregation_region].nil?
        data['RegionLinkingMode'] = stub[:region_linking_mode] unless stub[:region_linking_mode].nil?
        data['Regions'] = StringList.stub(stub[:regions]) unless stub[:regions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for CreateInsight
    class CreateInsight
      def self.default(visited=[])
        {
          insight_arn: 'insight_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightArn'] = stub[:insight_arn] unless stub[:insight_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMembers
    class CreateMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResultList
    class ResultList
      def self.default(visited=[])
        return nil if visited.include?('ResultList')
        visited = visited + ['ResultList']
        [
          Result.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Result.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Result
    class Result
      def self.default(visited=[])
        return nil if visited.include?('Result')
        visited = visited + ['Result']
        {
          account_id: 'account_id',
          processing_result: 'processing_result',
        }
      end

      def self.stub(stub)
        stub ||= Types::Result.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ProcessingResult'] = stub[:processing_result] unless stub[:processing_result].nil?
        data
      end
    end

    # Operation Stubber for DeclineInvitations
    class DeclineInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteActionTarget
    class DeleteActionTarget
      def self.default(visited=[])
        {
          action_target_arn: 'action_target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ActionTargetArn'] = stub[:action_target_arn] unless stub[:action_target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFindingAggregator
    class DeleteFindingAggregator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInsight
    class DeleteInsight
      def self.default(visited=[])
        {
          insight_arn: 'insight_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightArn'] = stub[:insight_arn] unless stub[:insight_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteInvitations
    class DeleteInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMembers
    class DeleteMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeActionTargets
    class DescribeActionTargets
      def self.default(visited=[])
        {
          action_targets: ActionTargetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ActionTargets'] = ActionTargetList.stub(stub[:action_targets]) unless stub[:action_targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ActionTargetList
    class ActionTargetList
      def self.default(visited=[])
        return nil if visited.include?('ActionTargetList')
        visited = visited + ['ActionTargetList']
        [
          ActionTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ActionTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionTarget
    class ActionTarget
      def self.default(visited=[])
        return nil if visited.include?('ActionTarget')
        visited = visited + ['ActionTarget']
        {
          action_target_arn: 'action_target_arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTarget.new
        data = {}
        data['ActionTargetArn'] = stub[:action_target_arn] unless stub[:action_target_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for DescribeHub
    class DescribeHub
      def self.default(visited=[])
        {
          hub_arn: 'hub_arn',
          subscribed_at: 'subscribed_at',
          auto_enable_controls: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HubArn'] = stub[:hub_arn] unless stub[:hub_arn].nil?
        data['SubscribedAt'] = stub[:subscribed_at] unless stub[:subscribed_at].nil?
        data['AutoEnableControls'] = stub[:auto_enable_controls] unless stub[:auto_enable_controls].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: false,
          member_account_limit_reached: false,
          auto_enable_standards: 'auto_enable_standards',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AutoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        data['MemberAccountLimitReached'] = stub[:member_account_limit_reached] unless stub[:member_account_limit_reached].nil?
        data['AutoEnableStandards'] = stub[:auto_enable_standards] unless stub[:auto_enable_standards].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeProducts
    class DescribeProducts
      def self.default(visited=[])
        {
          products: ProductsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Products'] = ProductsList.stub(stub[:products]) unless stub[:products].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProductsList
    class ProductsList
      def self.default(visited=[])
        return nil if visited.include?('ProductsList')
        visited = visited + ['ProductsList']
        [
          Product.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Product.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Product
    class Product
      def self.default(visited=[])
        return nil if visited.include?('Product')
        visited = visited + ['Product']
        {
          product_arn: 'product_arn',
          product_name: 'product_name',
          company_name: 'company_name',
          description: 'description',
          categories: CategoryList.default(visited),
          integration_types: IntegrationTypeList.default(visited),
          marketplace_url: 'marketplace_url',
          activation_url: 'activation_url',
          product_subscription_resource_policy: 'product_subscription_resource_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::Product.new
        data = {}
        data['ProductArn'] = stub[:product_arn] unless stub[:product_arn].nil?
        data['ProductName'] = stub[:product_name] unless stub[:product_name].nil?
        data['CompanyName'] = stub[:company_name] unless stub[:company_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Categories'] = CategoryList.stub(stub[:categories]) unless stub[:categories].nil?
        data['IntegrationTypes'] = IntegrationTypeList.stub(stub[:integration_types]) unless stub[:integration_types].nil?
        data['MarketplaceUrl'] = stub[:marketplace_url] unless stub[:marketplace_url].nil?
        data['ActivationUrl'] = stub[:activation_url] unless stub[:activation_url].nil?
        data['ProductSubscriptionResourcePolicy'] = stub[:product_subscription_resource_policy] unless stub[:product_subscription_resource_policy].nil?
        data
      end
    end

    # List Stubber for IntegrationTypeList
    class IntegrationTypeList
      def self.default(visited=[])
        return nil if visited.include?('IntegrationTypeList')
        visited = visited + ['IntegrationTypeList']
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

    # List Stubber for CategoryList
    class CategoryList
      def self.default(visited=[])
        return nil if visited.include?('CategoryList')
        visited = visited + ['CategoryList']
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

    # Operation Stubber for DescribeStandards
    class DescribeStandards
      def self.default(visited=[])
        {
          standards: Standards.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Standards'] = Standards.stub(stub[:standards]) unless stub[:standards].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Standards
    class Standards
      def self.default(visited=[])
        return nil if visited.include?('Standards')
        visited = visited + ['Standards']
        [
          Standard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Standard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Standard
    class Standard
      def self.default(visited=[])
        return nil if visited.include?('Standard')
        visited = visited + ['Standard']
        {
          standards_arn: 'standards_arn',
          name: 'name',
          description: 'description',
          enabled_by_default: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Standard.new
        data = {}
        data['StandardsArn'] = stub[:standards_arn] unless stub[:standards_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnabledByDefault'] = stub[:enabled_by_default] unless stub[:enabled_by_default].nil?
        data
      end
    end

    # Operation Stubber for DescribeStandardsControls
    class DescribeStandardsControls
      def self.default(visited=[])
        {
          controls: StandardsControls.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Controls'] = StandardsControls.stub(stub[:controls]) unless stub[:controls].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StandardsControls
    class StandardsControls
      def self.default(visited=[])
        return nil if visited.include?('StandardsControls')
        visited = visited + ['StandardsControls']
        [
          StandardsControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StandardsControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StandardsControl
    class StandardsControl
      def self.default(visited=[])
        return nil if visited.include?('StandardsControl')
        visited = visited + ['StandardsControl']
        {
          standards_control_arn: 'standards_control_arn',
          control_status: 'control_status',
          disabled_reason: 'disabled_reason',
          control_status_updated_at: Time.now,
          control_id: 'control_id',
          title: 'title',
          description: 'description',
          remediation_url: 'remediation_url',
          severity_rating: 'severity_rating',
          related_requirements: RelatedRequirementsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StandardsControl.new
        data = {}
        data['StandardsControlArn'] = stub[:standards_control_arn] unless stub[:standards_control_arn].nil?
        data['ControlStatus'] = stub[:control_status] unless stub[:control_status].nil?
        data['DisabledReason'] = stub[:disabled_reason] unless stub[:disabled_reason].nil?
        data['ControlStatusUpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:control_status_updated_at]) unless stub[:control_status_updated_at].nil?
        data['ControlId'] = stub[:control_id] unless stub[:control_id].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RemediationUrl'] = stub[:remediation_url] unless stub[:remediation_url].nil?
        data['SeverityRating'] = stub[:severity_rating] unless stub[:severity_rating].nil?
        data['RelatedRequirements'] = RelatedRequirementsList.stub(stub[:related_requirements]) unless stub[:related_requirements].nil?
        data
      end
    end

    # List Stubber for RelatedRequirementsList
    class RelatedRequirementsList
      def self.default(visited=[])
        return nil if visited.include?('RelatedRequirementsList')
        visited = visited + ['RelatedRequirementsList']
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

    # Operation Stubber for DisableImportFindingsForProduct
    class DisableImportFindingsForProduct
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableSecurityHub
    class DisableSecurityHub
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateMembers
    class DisassociateMembers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableImportFindingsForProduct
    class EnableImportFindingsForProduct
      def self.default(visited=[])
        {
          product_subscription_arn: 'product_subscription_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProductSubscriptionArn'] = stub[:product_subscription_arn] unless stub[:product_subscription_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableSecurityHub
    class EnableSecurityHub
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAdministratorAccount
    class GetAdministratorAccount
      def self.default(visited=[])
        {
          administrator: Invitation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Administrator'] = Invitation.stub(stub[:administrator]) unless stub[:administrator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Invitation
    class Invitation
      def self.default(visited=[])
        return nil if visited.include?('Invitation')
        visited = visited + ['Invitation']
        {
          account_id: 'account_id',
          invitation_id: 'invitation_id',
          invited_at: Time.now,
          member_status: 'member_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Invitation.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['InvitationId'] = stub[:invitation_id] unless stub[:invitation_id].nil?
        data['InvitedAt'] = Hearth::TimeHelper.to_date_time(stub[:invited_at]) unless stub[:invited_at].nil?
        data['MemberStatus'] = stub[:member_status] unless stub[:member_status].nil?
        data
      end
    end

    # Operation Stubber for GetEnabledStandards
    class GetEnabledStandards
      def self.default(visited=[])
        {
          standards_subscriptions: StandardsSubscriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StandardsSubscriptions'] = StandardsSubscriptions.stub(stub[:standards_subscriptions]) unless stub[:standards_subscriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFindingAggregator
    class GetFindingAggregator
      def self.default(visited=[])
        {
          finding_aggregator_arn: 'finding_aggregator_arn',
          finding_aggregation_region: 'finding_aggregation_region',
          region_linking_mode: 'region_linking_mode',
          regions: StringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FindingAggregatorArn'] = stub[:finding_aggregator_arn] unless stub[:finding_aggregator_arn].nil?
        data['FindingAggregationRegion'] = stub[:finding_aggregation_region] unless stub[:finding_aggregation_region].nil?
        data['RegionLinkingMode'] = stub[:region_linking_mode] unless stub[:region_linking_mode].nil?
        data['Regions'] = StringList.stub(stub[:regions]) unless stub[:regions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFindings
    class GetFindings
      def self.default(visited=[])
        {
          findings: AwsSecurityFindingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Findings'] = AwsSecurityFindingList.stub(stub[:findings]) unless stub[:findings].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AwsSecurityFindingList
    class AwsSecurityFindingList
      def self.default(visited=[])
        return nil if visited.include?('AwsSecurityFindingList')
        visited = visited + ['AwsSecurityFindingList']
        [
          AwsSecurityFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsSecurityFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsSecurityFinding
    class AwsSecurityFinding
      def self.default(visited=[])
        return nil if visited.include?('AwsSecurityFinding')
        visited = visited + ['AwsSecurityFinding']
        {
          schema_version: 'schema_version',
          id: 'id',
          product_arn: 'product_arn',
          product_name: 'product_name',
          company_name: 'company_name',
          region: 'region',
          generator_id: 'generator_id',
          aws_account_id: 'aws_account_id',
          types: TypeList.default(visited),
          first_observed_at: 'first_observed_at',
          last_observed_at: 'last_observed_at',
          created_at: 'created_at',
          updated_at: 'updated_at',
          severity: Severity.default(visited),
          confidence: 1,
          criticality: 1,
          title: 'title',
          description: 'description',
          remediation: Remediation.default(visited),
          source_url: 'source_url',
          product_fields: FieldMap.default(visited),
          user_defined_fields: FieldMap.default(visited),
          malware: MalwareList.default(visited),
          network: Network.default(visited),
          network_path: NetworkPathList.default(visited),
          process: ProcessDetails.default(visited),
          threat_intel_indicators: ThreatIntelIndicatorList.default(visited),
          resources: ResourceList.default(visited),
          compliance: Compliance.default(visited),
          verification_state: 'verification_state',
          workflow_state: 'workflow_state',
          workflow: Workflow.default(visited),
          record_state: 'record_state',
          related_findings: RelatedFindingList.default(visited),
          note: Note.default(visited),
          vulnerabilities: VulnerabilityList.default(visited),
          patch_summary: PatchSummary.default(visited),
          action: Action.default(visited),
          finding_provider_fields: FindingProviderFields.default(visited),
          sample: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSecurityFinding.new
        data = {}
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ProductArn'] = stub[:product_arn] unless stub[:product_arn].nil?
        data['ProductName'] = stub[:product_name] unless stub[:product_name].nil?
        data['CompanyName'] = stub[:company_name] unless stub[:company_name].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['GeneratorId'] = stub[:generator_id] unless stub[:generator_id].nil?
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['Types'] = TypeList.stub(stub[:types]) unless stub[:types].nil?
        data['FirstObservedAt'] = stub[:first_observed_at] unless stub[:first_observed_at].nil?
        data['LastObservedAt'] = stub[:last_observed_at] unless stub[:last_observed_at].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['UpdatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data['Severity'] = Severity.stub(stub[:severity]) unless stub[:severity].nil?
        data['Confidence'] = stub[:confidence] unless stub[:confidence].nil?
        data['Criticality'] = stub[:criticality] unless stub[:criticality].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Remediation'] = Remediation.stub(stub[:remediation]) unless stub[:remediation].nil?
        data['SourceUrl'] = stub[:source_url] unless stub[:source_url].nil?
        data['ProductFields'] = FieldMap.stub(stub[:product_fields]) unless stub[:product_fields].nil?
        data['UserDefinedFields'] = FieldMap.stub(stub[:user_defined_fields]) unless stub[:user_defined_fields].nil?
        data['Malware'] = MalwareList.stub(stub[:malware]) unless stub[:malware].nil?
        data['Network'] = Network.stub(stub[:network]) unless stub[:network].nil?
        data['NetworkPath'] = NetworkPathList.stub(stub[:network_path]) unless stub[:network_path].nil?
        data['Process'] = ProcessDetails.stub(stub[:process]) unless stub[:process].nil?
        data['ThreatIntelIndicators'] = ThreatIntelIndicatorList.stub(stub[:threat_intel_indicators]) unless stub[:threat_intel_indicators].nil?
        data['Resources'] = ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['Compliance'] = Compliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['VerificationState'] = stub[:verification_state] unless stub[:verification_state].nil?
        data['WorkflowState'] = stub[:workflow_state] unless stub[:workflow_state].nil?
        data['Workflow'] = Workflow.stub(stub[:workflow]) unless stub[:workflow].nil?
        data['RecordState'] = stub[:record_state] unless stub[:record_state].nil?
        data['RelatedFindings'] = RelatedFindingList.stub(stub[:related_findings]) unless stub[:related_findings].nil?
        data['Note'] = Note.stub(stub[:note]) unless stub[:note].nil?
        data['Vulnerabilities'] = VulnerabilityList.stub(stub[:vulnerabilities]) unless stub[:vulnerabilities].nil?
        data['PatchSummary'] = PatchSummary.stub(stub[:patch_summary]) unless stub[:patch_summary].nil?
        data['Action'] = Action.stub(stub[:action]) unless stub[:action].nil?
        data['FindingProviderFields'] = FindingProviderFields.stub(stub[:finding_provider_fields]) unless stub[:finding_provider_fields].nil?
        data['Sample'] = stub[:sample] unless stub[:sample].nil?
        data
      end
    end

    # Structure Stubber for FindingProviderFields
    class FindingProviderFields
      def self.default(visited=[])
        return nil if visited.include?('FindingProviderFields')
        visited = visited + ['FindingProviderFields']
        {
          confidence: 1,
          criticality: 1,
          related_findings: RelatedFindingList.default(visited),
          severity: FindingProviderSeverity.default(visited),
          types: TypeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingProviderFields.new
        data = {}
        data['Confidence'] = stub[:confidence] unless stub[:confidence].nil?
        data['Criticality'] = stub[:criticality] unless stub[:criticality].nil?
        data['RelatedFindings'] = RelatedFindingList.stub(stub[:related_findings]) unless stub[:related_findings].nil?
        data['Severity'] = FindingProviderSeverity.stub(stub[:severity]) unless stub[:severity].nil?
        data['Types'] = TypeList.stub(stub[:types]) unless stub[:types].nil?
        data
      end
    end

    # List Stubber for TypeList
    class TypeList
      def self.default(visited=[])
        return nil if visited.include?('TypeList')
        visited = visited + ['TypeList']
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

    # Structure Stubber for FindingProviderSeverity
    class FindingProviderSeverity
      def self.default(visited=[])
        return nil if visited.include?('FindingProviderSeverity')
        visited = visited + ['FindingProviderSeverity']
        {
          label: 'label',
          original: 'original',
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingProviderSeverity.new
        data = {}
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Original'] = stub[:original] unless stub[:original].nil?
        data
      end
    end

    # List Stubber for RelatedFindingList
    class RelatedFindingList
      def self.default(visited=[])
        return nil if visited.include?('RelatedFindingList')
        visited = visited + ['RelatedFindingList']
        [
          RelatedFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelatedFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelatedFinding
    class RelatedFinding
      def self.default(visited=[])
        return nil if visited.include?('RelatedFinding')
        visited = visited + ['RelatedFinding']
        {
          product_arn: 'product_arn',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedFinding.new
        data = {}
        data['ProductArn'] = stub[:product_arn] unless stub[:product_arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          action_type: 'action_type',
          network_connection_action: NetworkConnectionAction.default(visited),
          aws_api_call_action: AwsApiCallAction.default(visited),
          dns_request_action: DnsRequestAction.default(visited),
          port_probe_action: PortProbeAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['ActionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['NetworkConnectionAction'] = NetworkConnectionAction.stub(stub[:network_connection_action]) unless stub[:network_connection_action].nil?
        data['AwsApiCallAction'] = AwsApiCallAction.stub(stub[:aws_api_call_action]) unless stub[:aws_api_call_action].nil?
        data['DnsRequestAction'] = DnsRequestAction.stub(stub[:dns_request_action]) unless stub[:dns_request_action].nil?
        data['PortProbeAction'] = PortProbeAction.stub(stub[:port_probe_action]) unless stub[:port_probe_action].nil?
        data
      end
    end

    # Structure Stubber for PortProbeAction
    class PortProbeAction
      def self.default(visited=[])
        return nil if visited.include?('PortProbeAction')
        visited = visited + ['PortProbeAction']
        {
          port_probe_details: PortProbeDetailList.default(visited),
          blocked: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortProbeAction.new
        data = {}
        data['PortProbeDetails'] = PortProbeDetailList.stub(stub[:port_probe_details]) unless stub[:port_probe_details].nil?
        data['Blocked'] = stub[:blocked] unless stub[:blocked].nil?
        data
      end
    end

    # List Stubber for PortProbeDetailList
    class PortProbeDetailList
      def self.default(visited=[])
        return nil if visited.include?('PortProbeDetailList')
        visited = visited + ['PortProbeDetailList']
        [
          PortProbeDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortProbeDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortProbeDetail
    class PortProbeDetail
      def self.default(visited=[])
        return nil if visited.include?('PortProbeDetail')
        visited = visited + ['PortProbeDetail']
        {
          local_port_details: ActionLocalPortDetails.default(visited),
          local_ip_details: ActionLocalIpDetails.default(visited),
          remote_ip_details: ActionRemoteIpDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortProbeDetail.new
        data = {}
        data['LocalPortDetails'] = ActionLocalPortDetails.stub(stub[:local_port_details]) unless stub[:local_port_details].nil?
        data['LocalIpDetails'] = ActionLocalIpDetails.stub(stub[:local_ip_details]) unless stub[:local_ip_details].nil?
        data['RemoteIpDetails'] = ActionRemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data
      end
    end

    # Structure Stubber for ActionRemoteIpDetails
    class ActionRemoteIpDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionRemoteIpDetails')
        visited = visited + ['ActionRemoteIpDetails']
        {
          ip_address_v4: 'ip_address_v4',
          organization: IpOrganizationDetails.default(visited),
          country: Country.default(visited),
          city: City.default(visited),
          geo_location: GeoLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionRemoteIpDetails.new
        data = {}
        data['IpAddressV4'] = stub[:ip_address_v4] unless stub[:ip_address_v4].nil?
        data['Organization'] = IpOrganizationDetails.stub(stub[:organization]) unless stub[:organization].nil?
        data['Country'] = Country.stub(stub[:country]) unless stub[:country].nil?
        data['City'] = City.stub(stub[:city]) unless stub[:city].nil?
        data['GeoLocation'] = GeoLocation.stub(stub[:geo_location]) unless stub[:geo_location].nil?
        data
      end
    end

    # Structure Stubber for GeoLocation
    class GeoLocation
      def self.default(visited=[])
        return nil if visited.include?('GeoLocation')
        visited = visited + ['GeoLocation']
        {
          lon: 1.0,
          lat: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoLocation.new
        data = {}
        data['Lon'] = Hearth::NumberHelper.serialize(stub[:lon])
        data['Lat'] = Hearth::NumberHelper.serialize(stub[:lat])
        data
      end
    end

    # Structure Stubber for City
    class City
      def self.default(visited=[])
        return nil if visited.include?('City')
        visited = visited + ['City']
        {
          city_name: 'city_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::City.new
        data = {}
        data['CityName'] = stub[:city_name] unless stub[:city_name].nil?
        data
      end
    end

    # Structure Stubber for Country
    class Country
      def self.default(visited=[])
        return nil if visited.include?('Country')
        visited = visited + ['Country']
        {
          country_code: 'country_code',
          country_name: 'country_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Country.new
        data = {}
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['CountryName'] = stub[:country_name] unless stub[:country_name].nil?
        data
      end
    end

    # Structure Stubber for IpOrganizationDetails
    class IpOrganizationDetails
      def self.default(visited=[])
        return nil if visited.include?('IpOrganizationDetails')
        visited = visited + ['IpOrganizationDetails']
        {
          asn: 1,
          asn_org: 'asn_org',
          isp: 'isp',
          org: 'org',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpOrganizationDetails.new
        data = {}
        data['Asn'] = stub[:asn] unless stub[:asn].nil?
        data['AsnOrg'] = stub[:asn_org] unless stub[:asn_org].nil?
        data['Isp'] = stub[:isp] unless stub[:isp].nil?
        data['Org'] = stub[:org] unless stub[:org].nil?
        data
      end
    end

    # Structure Stubber for ActionLocalIpDetails
    class ActionLocalIpDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionLocalIpDetails')
        visited = visited + ['ActionLocalIpDetails']
        {
          ip_address_v4: 'ip_address_v4',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionLocalIpDetails.new
        data = {}
        data['IpAddressV4'] = stub[:ip_address_v4] unless stub[:ip_address_v4].nil?
        data
      end
    end

    # Structure Stubber for ActionLocalPortDetails
    class ActionLocalPortDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionLocalPortDetails')
        visited = visited + ['ActionLocalPortDetails']
        {
          port: 1,
          port_name: 'port_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionLocalPortDetails.new
        data = {}
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['PortName'] = stub[:port_name] unless stub[:port_name].nil?
        data
      end
    end

    # Structure Stubber for DnsRequestAction
    class DnsRequestAction
      def self.default(visited=[])
        return nil if visited.include?('DnsRequestAction')
        visited = visited + ['DnsRequestAction']
        {
          domain: 'domain',
          protocol: 'protocol',
          blocked: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRequestAction.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Blocked'] = stub[:blocked] unless stub[:blocked].nil?
        data
      end
    end

    # Structure Stubber for AwsApiCallAction
    class AwsApiCallAction
      def self.default(visited=[])
        return nil if visited.include?('AwsApiCallAction')
        visited = visited + ['AwsApiCallAction']
        {
          api: 'api',
          service_name: 'service_name',
          caller_type: 'caller_type',
          remote_ip_details: ActionRemoteIpDetails.default(visited),
          domain_details: AwsApiCallActionDomainDetails.default(visited),
          affected_resources: FieldMap.default(visited),
          first_seen: 'first_seen',
          last_seen: 'last_seen',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiCallAction.new
        data = {}
        data['Api'] = stub[:api] unless stub[:api].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['CallerType'] = stub[:caller_type] unless stub[:caller_type].nil?
        data['RemoteIpDetails'] = ActionRemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data['DomainDetails'] = AwsApiCallActionDomainDetails.stub(stub[:domain_details]) unless stub[:domain_details].nil?
        data['AffectedResources'] = FieldMap.stub(stub[:affected_resources]) unless stub[:affected_resources].nil?
        data['FirstSeen'] = stub[:first_seen] unless stub[:first_seen].nil?
        data['LastSeen'] = stub[:last_seen] unless stub[:last_seen].nil?
        data
      end
    end

    # Map Stubber for FieldMap
    class FieldMap
      def self.default(visited=[])
        return nil if visited.include?('FieldMap')
        visited = visited + ['FieldMap']
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

    # Structure Stubber for AwsApiCallActionDomainDetails
    class AwsApiCallActionDomainDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsApiCallActionDomainDetails')
        visited = visited + ['AwsApiCallActionDomainDetails']
        {
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiCallActionDomainDetails.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Structure Stubber for NetworkConnectionAction
    class NetworkConnectionAction
      def self.default(visited=[])
        return nil if visited.include?('NetworkConnectionAction')
        visited = visited + ['NetworkConnectionAction']
        {
          connection_direction: 'connection_direction',
          remote_ip_details: ActionRemoteIpDetails.default(visited),
          remote_port_details: ActionRemotePortDetails.default(visited),
          local_port_details: ActionLocalPortDetails.default(visited),
          protocol: 'protocol',
          blocked: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConnectionAction.new
        data = {}
        data['ConnectionDirection'] = stub[:connection_direction] unless stub[:connection_direction].nil?
        data['RemoteIpDetails'] = ActionRemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data['RemotePortDetails'] = ActionRemotePortDetails.stub(stub[:remote_port_details]) unless stub[:remote_port_details].nil?
        data['LocalPortDetails'] = ActionLocalPortDetails.stub(stub[:local_port_details]) unless stub[:local_port_details].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Blocked'] = stub[:blocked] unless stub[:blocked].nil?
        data
      end
    end

    # Structure Stubber for ActionRemotePortDetails
    class ActionRemotePortDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionRemotePortDetails')
        visited = visited + ['ActionRemotePortDetails']
        {
          port: 1,
          port_name: 'port_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionRemotePortDetails.new
        data = {}
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['PortName'] = stub[:port_name] unless stub[:port_name].nil?
        data
      end
    end

    # Structure Stubber for PatchSummary
    class PatchSummary
      def self.default(visited=[])
        return nil if visited.include?('PatchSummary')
        visited = visited + ['PatchSummary']
        {
          id: 'id',
          installed_count: 1,
          missing_count: 1,
          failed_count: 1,
          installed_other_count: 1,
          installed_rejected_count: 1,
          installed_pending_reboot: 1,
          operation_start_time: 'operation_start_time',
          operation_end_time: 'operation_end_time',
          reboot_option: 'reboot_option',
          operation: 'operation',
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['InstalledCount'] = stub[:installed_count] unless stub[:installed_count].nil?
        data['MissingCount'] = stub[:missing_count] unless stub[:missing_count].nil?
        data['FailedCount'] = stub[:failed_count] unless stub[:failed_count].nil?
        data['InstalledOtherCount'] = stub[:installed_other_count] unless stub[:installed_other_count].nil?
        data['InstalledRejectedCount'] = stub[:installed_rejected_count] unless stub[:installed_rejected_count].nil?
        data['InstalledPendingReboot'] = stub[:installed_pending_reboot] unless stub[:installed_pending_reboot].nil?
        data['OperationStartTime'] = stub[:operation_start_time] unless stub[:operation_start_time].nil?
        data['OperationEndTime'] = stub[:operation_end_time] unless stub[:operation_end_time].nil?
        data['RebootOption'] = stub[:reboot_option] unless stub[:reboot_option].nil?
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data
      end
    end

    # List Stubber for VulnerabilityList
    class VulnerabilityList
      def self.default(visited=[])
        return nil if visited.include?('VulnerabilityList')
        visited = visited + ['VulnerabilityList']
        [
          Vulnerability.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Vulnerability.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Vulnerability
    class Vulnerability
      def self.default(visited=[])
        return nil if visited.include?('Vulnerability')
        visited = visited + ['Vulnerability']
        {
          id: 'id',
          vulnerable_packages: SoftwarePackageList.default(visited),
          cvss: CvssList.default(visited),
          related_vulnerabilities: StringList.default(visited),
          vendor: VulnerabilityVendor.default(visited),
          reference_urls: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Vulnerability.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['VulnerablePackages'] = SoftwarePackageList.stub(stub[:vulnerable_packages]) unless stub[:vulnerable_packages].nil?
        data['Cvss'] = CvssList.stub(stub[:cvss]) unless stub[:cvss].nil?
        data['RelatedVulnerabilities'] = StringList.stub(stub[:related_vulnerabilities]) unless stub[:related_vulnerabilities].nil?
        data['Vendor'] = VulnerabilityVendor.stub(stub[:vendor]) unless stub[:vendor].nil?
        data['ReferenceUrls'] = StringList.stub(stub[:reference_urls]) unless stub[:reference_urls].nil?
        data
      end
    end

    # Structure Stubber for VulnerabilityVendor
    class VulnerabilityVendor
      def self.default(visited=[])
        return nil if visited.include?('VulnerabilityVendor')
        visited = visited + ['VulnerabilityVendor']
        {
          name: 'name',
          url: 'url',
          vendor_severity: 'vendor_severity',
          vendor_created_at: 'vendor_created_at',
          vendor_updated_at: 'vendor_updated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::VulnerabilityVendor.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['VendorSeverity'] = stub[:vendor_severity] unless stub[:vendor_severity].nil?
        data['VendorCreatedAt'] = stub[:vendor_created_at] unless stub[:vendor_created_at].nil?
        data['VendorUpdatedAt'] = stub[:vendor_updated_at] unless stub[:vendor_updated_at].nil?
        data
      end
    end

    # List Stubber for CvssList
    class CvssList
      def self.default(visited=[])
        return nil if visited.include?('CvssList')
        visited = visited + ['CvssList']
        [
          Cvss.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Cvss.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Cvss
    class Cvss
      def self.default(visited=[])
        return nil if visited.include?('Cvss')
        visited = visited + ['Cvss']
        {
          version: 'version',
          base_score: 1.0,
          base_vector: 'base_vector',
          source: 'source',
          adjustments: AdjustmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Cvss.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['BaseScore'] = Hearth::NumberHelper.serialize(stub[:base_score])
        data['BaseVector'] = stub[:base_vector] unless stub[:base_vector].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Adjustments'] = AdjustmentList.stub(stub[:adjustments]) unless stub[:adjustments].nil?
        data
      end
    end

    # List Stubber for AdjustmentList
    class AdjustmentList
      def self.default(visited=[])
        return nil if visited.include?('AdjustmentList')
        visited = visited + ['AdjustmentList']
        [
          Adjustment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Adjustment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Adjustment
    class Adjustment
      def self.default(visited=[])
        return nil if visited.include?('Adjustment')
        visited = visited + ['Adjustment']
        {
          metric: 'metric',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::Adjustment.new
        data = {}
        data['Metric'] = stub[:metric] unless stub[:metric].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for SoftwarePackageList
    class SoftwarePackageList
      def self.default(visited=[])
        return nil if visited.include?('SoftwarePackageList')
        visited = visited + ['SoftwarePackageList']
        [
          SoftwarePackage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SoftwarePackage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SoftwarePackage
    class SoftwarePackage
      def self.default(visited=[])
        return nil if visited.include?('SoftwarePackage')
        visited = visited + ['SoftwarePackage']
        {
          name: 'name',
          version: 'version',
          epoch: 'epoch',
          release: 'release',
          architecture: 'architecture',
          package_manager: 'package_manager',
          file_path: 'file_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::SoftwarePackage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Epoch'] = stub[:epoch] unless stub[:epoch].nil?
        data['Release'] = stub[:release] unless stub[:release].nil?
        data['Architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['PackageManager'] = stub[:package_manager] unless stub[:package_manager].nil?
        data['FilePath'] = stub[:file_path] unless stub[:file_path].nil?
        data
      end
    end

    # Structure Stubber for Note
    class Note
      def self.default(visited=[])
        return nil if visited.include?('Note')
        visited = visited + ['Note']
        {
          text: 'text',
          updated_by: 'updated_by',
          updated_at: 'updated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::Note.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['UpdatedBy'] = stub[:updated_by] unless stub[:updated_by].nil?
        data['UpdatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for Workflow
    class Workflow
      def self.default(visited=[])
        return nil if visited.include?('Workflow')
        visited = visited + ['Workflow']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Workflow.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for Compliance
    class Compliance
      def self.default(visited=[])
        return nil if visited.include?('Compliance')
        visited = visited + ['Compliance']
        {
          status: 'status',
          related_requirements: RelatedRequirementsList.default(visited),
          status_reasons: StatusReasonsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Compliance.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RelatedRequirements'] = RelatedRequirementsList.stub(stub[:related_requirements]) unless stub[:related_requirements].nil?
        data['StatusReasons'] = StatusReasonsList.stub(stub[:status_reasons]) unless stub[:status_reasons].nil?
        data
      end
    end

    # List Stubber for StatusReasonsList
    class StatusReasonsList
      def self.default(visited=[])
        return nil if visited.include?('StatusReasonsList')
        visited = visited + ['StatusReasonsList']
        [
          StatusReason.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StatusReason.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatusReason
    class StatusReason
      def self.default(visited=[])
        return nil if visited.include?('StatusReason')
        visited = visited + ['StatusReason']
        {
          reason_code: 'reason_code',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatusReason.new
        data = {}
        data['ReasonCode'] = stub[:reason_code] unless stub[:reason_code].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          type: 'type',
          id: 'id',
          partition: 'partition',
          region: 'region',
          resource_role: 'resource_role',
          tags: FieldMap.default(visited),
          data_classification: DataClassificationDetails.default(visited),
          details: ResourceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Partition'] = stub[:partition] unless stub[:partition].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['ResourceRole'] = stub[:resource_role] unless stub[:resource_role].nil?
        data['Tags'] = FieldMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['DataClassification'] = DataClassificationDetails.stub(stub[:data_classification]) unless stub[:data_classification].nil?
        data['Details'] = ResourceDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Structure Stubber for ResourceDetails
    class ResourceDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceDetails')
        visited = visited + ['ResourceDetails']
        {
          aws_auto_scaling_auto_scaling_group: AwsAutoScalingAutoScalingGroupDetails.default(visited),
          aws_code_build_project: AwsCodeBuildProjectDetails.default(visited),
          aws_cloud_front_distribution: AwsCloudFrontDistributionDetails.default(visited),
          aws_ec2_instance: AwsEc2InstanceDetails.default(visited),
          aws_ec2_network_interface: AwsEc2NetworkInterfaceDetails.default(visited),
          aws_ec2_security_group: AwsEc2SecurityGroupDetails.default(visited),
          aws_ec2_volume: AwsEc2VolumeDetails.default(visited),
          aws_ec2_vpc: AwsEc2VpcDetails.default(visited),
          aws_ec2_eip: AwsEc2EipDetails.default(visited),
          aws_ec2_subnet: AwsEc2SubnetDetails.default(visited),
          aws_ec2_network_acl: AwsEc2NetworkAclDetails.default(visited),
          aws_elbv2_load_balancer: AwsElbv2LoadBalancerDetails.default(visited),
          aws_elastic_beanstalk_environment: AwsElasticBeanstalkEnvironmentDetails.default(visited),
          aws_elasticsearch_domain: AwsElasticsearchDomainDetails.default(visited),
          aws_s3_bucket: AwsS3BucketDetails.default(visited),
          aws_s3_account_public_access_block: AwsS3AccountPublicAccessBlockDetails.default(visited),
          aws_s3_object: AwsS3ObjectDetails.default(visited),
          aws_secrets_manager_secret: AwsSecretsManagerSecretDetails.default(visited),
          aws_iam_access_key: AwsIamAccessKeyDetails.default(visited),
          aws_iam_user: AwsIamUserDetails.default(visited),
          aws_iam_policy: AwsIamPolicyDetails.default(visited),
          aws_api_gateway_v2_stage: AwsApiGatewayV2StageDetails.default(visited),
          aws_api_gateway_v2_api: AwsApiGatewayV2ApiDetails.default(visited),
          aws_dynamo_db_table: AwsDynamoDbTableDetails.default(visited),
          aws_api_gateway_stage: AwsApiGatewayStageDetails.default(visited),
          aws_api_gateway_rest_api: AwsApiGatewayRestApiDetails.default(visited),
          aws_cloud_trail_trail: AwsCloudTrailTrailDetails.default(visited),
          aws_ssm_patch_compliance: AwsSsmPatchComplianceDetails.default(visited),
          aws_certificate_manager_certificate: AwsCertificateManagerCertificateDetails.default(visited),
          aws_redshift_cluster: AwsRedshiftClusterDetails.default(visited),
          aws_elb_load_balancer: AwsElbLoadBalancerDetails.default(visited),
          aws_iam_group: AwsIamGroupDetails.default(visited),
          aws_iam_role: AwsIamRoleDetails.default(visited),
          aws_kms_key: AwsKmsKeyDetails.default(visited),
          aws_lambda_function: AwsLambdaFunctionDetails.default(visited),
          aws_lambda_layer_version: AwsLambdaLayerVersionDetails.default(visited),
          aws_rds_db_instance: AwsRdsDbInstanceDetails.default(visited),
          aws_sns_topic: AwsSnsTopicDetails.default(visited),
          aws_sqs_queue: AwsSqsQueueDetails.default(visited),
          aws_waf_web_acl: AwsWafWebAclDetails.default(visited),
          aws_rds_db_snapshot: AwsRdsDbSnapshotDetails.default(visited),
          aws_rds_db_cluster_snapshot: AwsRdsDbClusterSnapshotDetails.default(visited),
          aws_rds_db_cluster: AwsRdsDbClusterDetails.default(visited),
          aws_ecs_cluster: AwsEcsClusterDetails.default(visited),
          aws_ecs_task_definition: AwsEcsTaskDefinitionDetails.default(visited),
          container: ContainerDetails.default(visited),
          other: FieldMap.default(visited),
          aws_rds_event_subscription: AwsRdsEventSubscriptionDetails.default(visited),
          aws_ecs_service: AwsEcsServiceDetails.default(visited),
          aws_auto_scaling_launch_configuration: AwsAutoScalingLaunchConfigurationDetails.default(visited),
          aws_ec2_vpn_connection: AwsEc2VpnConnectionDetails.default(visited),
          aws_ecr_container_image: AwsEcrContainerImageDetails.default(visited),
          aws_open_search_service_domain: AwsOpenSearchServiceDomainDetails.default(visited),
          aws_ec2_vpc_endpoint_service: AwsEc2VpcEndpointServiceDetails.default(visited),
          aws_xray_encryption_config: AwsXrayEncryptionConfigDetails.default(visited),
          aws_waf_rate_based_rule: AwsWafRateBasedRuleDetails.default(visited),
          aws_waf_regional_rate_based_rule: AwsWafRegionalRateBasedRuleDetails.default(visited),
          aws_ecr_repository: AwsEcrRepositoryDetails.default(visited),
          aws_eks_cluster: AwsEksClusterDetails.default(visited),
          aws_network_firewall_firewall_policy: AwsNetworkFirewallFirewallPolicyDetails.default(visited),
          aws_network_firewall_firewall: AwsNetworkFirewallFirewallDetails.default(visited),
          aws_network_firewall_rule_group: AwsNetworkFirewallRuleGroupDetails.default(visited),
          aws_rds_db_security_group: AwsRdsDbSecurityGroupDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDetails.new
        data = {}
        data['AwsAutoScalingAutoScalingGroup'] = AwsAutoScalingAutoScalingGroupDetails.stub(stub[:aws_auto_scaling_auto_scaling_group]) unless stub[:aws_auto_scaling_auto_scaling_group].nil?
        data['AwsCodeBuildProject'] = AwsCodeBuildProjectDetails.stub(stub[:aws_code_build_project]) unless stub[:aws_code_build_project].nil?
        data['AwsCloudFrontDistribution'] = AwsCloudFrontDistributionDetails.stub(stub[:aws_cloud_front_distribution]) unless stub[:aws_cloud_front_distribution].nil?
        data['AwsEc2Instance'] = AwsEc2InstanceDetails.stub(stub[:aws_ec2_instance]) unless stub[:aws_ec2_instance].nil?
        data['AwsEc2NetworkInterface'] = AwsEc2NetworkInterfaceDetails.stub(stub[:aws_ec2_network_interface]) unless stub[:aws_ec2_network_interface].nil?
        data['AwsEc2SecurityGroup'] = AwsEc2SecurityGroupDetails.stub(stub[:aws_ec2_security_group]) unless stub[:aws_ec2_security_group].nil?
        data['AwsEc2Volume'] = AwsEc2VolumeDetails.stub(stub[:aws_ec2_volume]) unless stub[:aws_ec2_volume].nil?
        data['AwsEc2Vpc'] = AwsEc2VpcDetails.stub(stub[:aws_ec2_vpc]) unless stub[:aws_ec2_vpc].nil?
        data['AwsEc2Eip'] = AwsEc2EipDetails.stub(stub[:aws_ec2_eip]) unless stub[:aws_ec2_eip].nil?
        data['AwsEc2Subnet'] = AwsEc2SubnetDetails.stub(stub[:aws_ec2_subnet]) unless stub[:aws_ec2_subnet].nil?
        data['AwsEc2NetworkAcl'] = AwsEc2NetworkAclDetails.stub(stub[:aws_ec2_network_acl]) unless stub[:aws_ec2_network_acl].nil?
        data['AwsElbv2LoadBalancer'] = AwsElbv2LoadBalancerDetails.stub(stub[:aws_elbv2_load_balancer]) unless stub[:aws_elbv2_load_balancer].nil?
        data['AwsElasticBeanstalkEnvironment'] = AwsElasticBeanstalkEnvironmentDetails.stub(stub[:aws_elastic_beanstalk_environment]) unless stub[:aws_elastic_beanstalk_environment].nil?
        data['AwsElasticsearchDomain'] = AwsElasticsearchDomainDetails.stub(stub[:aws_elasticsearch_domain]) unless stub[:aws_elasticsearch_domain].nil?
        data['AwsS3Bucket'] = AwsS3BucketDetails.stub(stub[:aws_s3_bucket]) unless stub[:aws_s3_bucket].nil?
        data['AwsS3AccountPublicAccessBlock'] = AwsS3AccountPublicAccessBlockDetails.stub(stub[:aws_s3_account_public_access_block]) unless stub[:aws_s3_account_public_access_block].nil?
        data['AwsS3Object'] = AwsS3ObjectDetails.stub(stub[:aws_s3_object]) unless stub[:aws_s3_object].nil?
        data['AwsSecretsManagerSecret'] = AwsSecretsManagerSecretDetails.stub(stub[:aws_secrets_manager_secret]) unless stub[:aws_secrets_manager_secret].nil?
        data['AwsIamAccessKey'] = AwsIamAccessKeyDetails.stub(stub[:aws_iam_access_key]) unless stub[:aws_iam_access_key].nil?
        data['AwsIamUser'] = AwsIamUserDetails.stub(stub[:aws_iam_user]) unless stub[:aws_iam_user].nil?
        data['AwsIamPolicy'] = AwsIamPolicyDetails.stub(stub[:aws_iam_policy]) unless stub[:aws_iam_policy].nil?
        data['AwsApiGatewayV2Stage'] = AwsApiGatewayV2StageDetails.stub(stub[:aws_api_gateway_v2_stage]) unless stub[:aws_api_gateway_v2_stage].nil?
        data['AwsApiGatewayV2Api'] = AwsApiGatewayV2ApiDetails.stub(stub[:aws_api_gateway_v2_api]) unless stub[:aws_api_gateway_v2_api].nil?
        data['AwsDynamoDbTable'] = AwsDynamoDbTableDetails.stub(stub[:aws_dynamo_db_table]) unless stub[:aws_dynamo_db_table].nil?
        data['AwsApiGatewayStage'] = AwsApiGatewayStageDetails.stub(stub[:aws_api_gateway_stage]) unless stub[:aws_api_gateway_stage].nil?
        data['AwsApiGatewayRestApi'] = AwsApiGatewayRestApiDetails.stub(stub[:aws_api_gateway_rest_api]) unless stub[:aws_api_gateway_rest_api].nil?
        data['AwsCloudTrailTrail'] = AwsCloudTrailTrailDetails.stub(stub[:aws_cloud_trail_trail]) unless stub[:aws_cloud_trail_trail].nil?
        data['AwsSsmPatchCompliance'] = AwsSsmPatchComplianceDetails.stub(stub[:aws_ssm_patch_compliance]) unless stub[:aws_ssm_patch_compliance].nil?
        data['AwsCertificateManagerCertificate'] = AwsCertificateManagerCertificateDetails.stub(stub[:aws_certificate_manager_certificate]) unless stub[:aws_certificate_manager_certificate].nil?
        data['AwsRedshiftCluster'] = AwsRedshiftClusterDetails.stub(stub[:aws_redshift_cluster]) unless stub[:aws_redshift_cluster].nil?
        data['AwsElbLoadBalancer'] = AwsElbLoadBalancerDetails.stub(stub[:aws_elb_load_balancer]) unless stub[:aws_elb_load_balancer].nil?
        data['AwsIamGroup'] = AwsIamGroupDetails.stub(stub[:aws_iam_group]) unless stub[:aws_iam_group].nil?
        data['AwsIamRole'] = AwsIamRoleDetails.stub(stub[:aws_iam_role]) unless stub[:aws_iam_role].nil?
        data['AwsKmsKey'] = AwsKmsKeyDetails.stub(stub[:aws_kms_key]) unless stub[:aws_kms_key].nil?
        data['AwsLambdaFunction'] = AwsLambdaFunctionDetails.stub(stub[:aws_lambda_function]) unless stub[:aws_lambda_function].nil?
        data['AwsLambdaLayerVersion'] = AwsLambdaLayerVersionDetails.stub(stub[:aws_lambda_layer_version]) unless stub[:aws_lambda_layer_version].nil?
        data['AwsRdsDbInstance'] = AwsRdsDbInstanceDetails.stub(stub[:aws_rds_db_instance]) unless stub[:aws_rds_db_instance].nil?
        data['AwsSnsTopic'] = AwsSnsTopicDetails.stub(stub[:aws_sns_topic]) unless stub[:aws_sns_topic].nil?
        data['AwsSqsQueue'] = AwsSqsQueueDetails.stub(stub[:aws_sqs_queue]) unless stub[:aws_sqs_queue].nil?
        data['AwsWafWebAcl'] = AwsWafWebAclDetails.stub(stub[:aws_waf_web_acl]) unless stub[:aws_waf_web_acl].nil?
        data['AwsRdsDbSnapshot'] = AwsRdsDbSnapshotDetails.stub(stub[:aws_rds_db_snapshot]) unless stub[:aws_rds_db_snapshot].nil?
        data['AwsRdsDbClusterSnapshot'] = AwsRdsDbClusterSnapshotDetails.stub(stub[:aws_rds_db_cluster_snapshot]) unless stub[:aws_rds_db_cluster_snapshot].nil?
        data['AwsRdsDbCluster'] = AwsRdsDbClusterDetails.stub(stub[:aws_rds_db_cluster]) unless stub[:aws_rds_db_cluster].nil?
        data['AwsEcsCluster'] = AwsEcsClusterDetails.stub(stub[:aws_ecs_cluster]) unless stub[:aws_ecs_cluster].nil?
        data['AwsEcsTaskDefinition'] = AwsEcsTaskDefinitionDetails.stub(stub[:aws_ecs_task_definition]) unless stub[:aws_ecs_task_definition].nil?
        data['Container'] = ContainerDetails.stub(stub[:container]) unless stub[:container].nil?
        data['Other'] = FieldMap.stub(stub[:other]) unless stub[:other].nil?
        data['AwsRdsEventSubscription'] = AwsRdsEventSubscriptionDetails.stub(stub[:aws_rds_event_subscription]) unless stub[:aws_rds_event_subscription].nil?
        data['AwsEcsService'] = AwsEcsServiceDetails.stub(stub[:aws_ecs_service]) unless stub[:aws_ecs_service].nil?
        data['AwsAutoScalingLaunchConfiguration'] = AwsAutoScalingLaunchConfigurationDetails.stub(stub[:aws_auto_scaling_launch_configuration]) unless stub[:aws_auto_scaling_launch_configuration].nil?
        data['AwsEc2VpnConnection'] = AwsEc2VpnConnectionDetails.stub(stub[:aws_ec2_vpn_connection]) unless stub[:aws_ec2_vpn_connection].nil?
        data['AwsEcrContainerImage'] = AwsEcrContainerImageDetails.stub(stub[:aws_ecr_container_image]) unless stub[:aws_ecr_container_image].nil?
        data['AwsOpenSearchServiceDomain'] = AwsOpenSearchServiceDomainDetails.stub(stub[:aws_open_search_service_domain]) unless stub[:aws_open_search_service_domain].nil?
        data['AwsEc2VpcEndpointService'] = AwsEc2VpcEndpointServiceDetails.stub(stub[:aws_ec2_vpc_endpoint_service]) unless stub[:aws_ec2_vpc_endpoint_service].nil?
        data['AwsXrayEncryptionConfig'] = AwsXrayEncryptionConfigDetails.stub(stub[:aws_xray_encryption_config]) unless stub[:aws_xray_encryption_config].nil?
        data['AwsWafRateBasedRule'] = AwsWafRateBasedRuleDetails.stub(stub[:aws_waf_rate_based_rule]) unless stub[:aws_waf_rate_based_rule].nil?
        data['AwsWafRegionalRateBasedRule'] = AwsWafRegionalRateBasedRuleDetails.stub(stub[:aws_waf_regional_rate_based_rule]) unless stub[:aws_waf_regional_rate_based_rule].nil?
        data['AwsEcrRepository'] = AwsEcrRepositoryDetails.stub(stub[:aws_ecr_repository]) unless stub[:aws_ecr_repository].nil?
        data['AwsEksCluster'] = AwsEksClusterDetails.stub(stub[:aws_eks_cluster]) unless stub[:aws_eks_cluster].nil?
        data['AwsNetworkFirewallFirewallPolicy'] = AwsNetworkFirewallFirewallPolicyDetails.stub(stub[:aws_network_firewall_firewall_policy]) unless stub[:aws_network_firewall_firewall_policy].nil?
        data['AwsNetworkFirewallFirewall'] = AwsNetworkFirewallFirewallDetails.stub(stub[:aws_network_firewall_firewall]) unless stub[:aws_network_firewall_firewall].nil?
        data['AwsNetworkFirewallRuleGroup'] = AwsNetworkFirewallRuleGroupDetails.stub(stub[:aws_network_firewall_rule_group]) unless stub[:aws_network_firewall_rule_group].nil?
        data['AwsRdsDbSecurityGroup'] = AwsRdsDbSecurityGroupDetails.stub(stub[:aws_rds_db_security_group]) unless stub[:aws_rds_db_security_group].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbSecurityGroupDetails
    class AwsRdsDbSecurityGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSecurityGroupDetails')
        visited = visited + ['AwsRdsDbSecurityGroupDetails']
        {
          db_security_group_arn: 'db_security_group_arn',
          db_security_group_description: 'db_security_group_description',
          db_security_group_name: 'db_security_group_name',
          ec2_security_groups: AwsRdsDbSecurityGroupEc2SecurityGroups.default(visited),
          ip_ranges: AwsRdsDbSecurityGroupIpRanges.default(visited),
          owner_id: 'owner_id',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSecurityGroupDetails.new
        data = {}
        data['DbSecurityGroupArn'] = stub[:db_security_group_arn] unless stub[:db_security_group_arn].nil?
        data['DbSecurityGroupDescription'] = stub[:db_security_group_description] unless stub[:db_security_group_description].nil?
        data['DbSecurityGroupName'] = stub[:db_security_group_name] unless stub[:db_security_group_name].nil?
        data['Ec2SecurityGroups'] = AwsRdsDbSecurityGroupEc2SecurityGroups.stub(stub[:ec2_security_groups]) unless stub[:ec2_security_groups].nil?
        data['IpRanges'] = AwsRdsDbSecurityGroupIpRanges.stub(stub[:ip_ranges]) unless stub[:ip_ranges].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbSecurityGroupIpRanges
    class AwsRdsDbSecurityGroupIpRanges
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSecurityGroupIpRanges')
        visited = visited + ['AwsRdsDbSecurityGroupIpRanges']
        [
          AwsRdsDbSecurityGroupIpRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbSecurityGroupIpRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbSecurityGroupIpRange
    class AwsRdsDbSecurityGroupIpRange
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSecurityGroupIpRange')
        visited = visited + ['AwsRdsDbSecurityGroupIpRange']
        {
          cidr_ip: 'cidr_ip',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSecurityGroupIpRange.new
        data = {}
        data['CidrIp'] = stub[:cidr_ip] unless stub[:cidr_ip].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbSecurityGroupEc2SecurityGroups
    class AwsRdsDbSecurityGroupEc2SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSecurityGroupEc2SecurityGroups')
        visited = visited + ['AwsRdsDbSecurityGroupEc2SecurityGroups']
        [
          AwsRdsDbSecurityGroupEc2SecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbSecurityGroupEc2SecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbSecurityGroupEc2SecurityGroup
    class AwsRdsDbSecurityGroupEc2SecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSecurityGroupEc2SecurityGroup')
        visited = visited + ['AwsRdsDbSecurityGroupEc2SecurityGroup']
        {
          ec2_security_group_id: 'ec2_security_group_id',
          ec2_security_group_name: 'ec2_security_group_name',
          ec2_security_group_owner_id: 'ec2_security_group_owner_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSecurityGroupEc2SecurityGroup.new
        data = {}
        data['Ec2SecurityGroupId'] = stub[:ec2_security_group_id] unless stub[:ec2_security_group_id].nil?
        data['Ec2SecurityGroupName'] = stub[:ec2_security_group_name] unless stub[:ec2_security_group_name].nil?
        data['Ec2SecurityGroupOwnerId'] = stub[:ec2_security_group_owner_id] unless stub[:ec2_security_group_owner_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsNetworkFirewallRuleGroupDetails
    class AwsNetworkFirewallRuleGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsNetworkFirewallRuleGroupDetails')
        visited = visited + ['AwsNetworkFirewallRuleGroupDetails']
        {
          capacity: 1,
          description: 'description',
          rule_group: RuleGroupDetails.default(visited),
          rule_group_arn: 'rule_group_arn',
          rule_group_id: 'rule_group_id',
          rule_group_name: 'rule_group_name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsNetworkFirewallRuleGroupDetails.new
        data = {}
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RuleGroup'] = RuleGroupDetails.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        data['RuleGroupArn'] = stub[:rule_group_arn] unless stub[:rule_group_arn].nil?
        data['RuleGroupId'] = stub[:rule_group_id] unless stub[:rule_group_id].nil?
        data['RuleGroupName'] = stub[:rule_group_name] unless stub[:rule_group_name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupDetails
    class RuleGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupDetails')
        visited = visited + ['RuleGroupDetails']
        {
          rule_variables: RuleGroupVariables.default(visited),
          rules_source: RuleGroupSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupDetails.new
        data = {}
        data['RuleVariables'] = RuleGroupVariables.stub(stub[:rule_variables]) unless stub[:rule_variables].nil?
        data['RulesSource'] = RuleGroupSource.stub(stub[:rules_source]) unless stub[:rules_source].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupSource
    class RuleGroupSource
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSource')
        visited = visited + ['RuleGroupSource']
        {
          rules_source_list: RuleGroupSourceListDetails.default(visited),
          rules_string: 'rules_string',
          stateful_rules: RuleGroupSourceStatefulRulesList.default(visited),
          stateless_rules_and_custom_actions: RuleGroupSourceStatelessRulesAndCustomActionsDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSource.new
        data = {}
        data['RulesSourceList'] = RuleGroupSourceListDetails.stub(stub[:rules_source_list]) unless stub[:rules_source_list].nil?
        data['RulesString'] = stub[:rules_string] unless stub[:rules_string].nil?
        data['StatefulRules'] = RuleGroupSourceStatefulRulesList.stub(stub[:stateful_rules]) unless stub[:stateful_rules].nil?
        data['StatelessRulesAndCustomActions'] = RuleGroupSourceStatelessRulesAndCustomActionsDetails.stub(stub[:stateless_rules_and_custom_actions]) unless stub[:stateless_rules_and_custom_actions].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRulesAndCustomActionsDetails
    class RuleGroupSourceStatelessRulesAndCustomActionsDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRulesAndCustomActionsDetails')
        visited = visited + ['RuleGroupSourceStatelessRulesAndCustomActionsDetails']
        {
          custom_actions: RuleGroupSourceCustomActionsList.default(visited),
          stateless_rules: RuleGroupSourceStatelessRulesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails.new
        data = {}
        data['CustomActions'] = RuleGroupSourceCustomActionsList.stub(stub[:custom_actions]) unless stub[:custom_actions].nil?
        data['StatelessRules'] = RuleGroupSourceStatelessRulesList.stub(stub[:stateless_rules]) unless stub[:stateless_rules].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatelessRulesList
    class RuleGroupSourceStatelessRulesList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRulesList')
        visited = visited + ['RuleGroupSourceStatelessRulesList']
        [
          RuleGroupSourceStatelessRulesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRulesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRulesDetails
    class RuleGroupSourceStatelessRulesDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRulesDetails')
        visited = visited + ['RuleGroupSourceStatelessRulesDetails']
        {
          priority: 1,
          rule_definition: RuleGroupSourceStatelessRuleDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRulesDetails.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['RuleDefinition'] = RuleGroupSourceStatelessRuleDefinition.stub(stub[:rule_definition]) unless stub[:rule_definition].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleDefinition
    class RuleGroupSourceStatelessRuleDefinition
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleDefinition')
        visited = visited + ['RuleGroupSourceStatelessRuleDefinition']
        {
          actions: NonEmptyStringList.default(visited),
          match_attributes: RuleGroupSourceStatelessRuleMatchAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleDefinition.new
        data = {}
        data['Actions'] = NonEmptyStringList.stub(stub[:actions]) unless stub[:actions].nil?
        data['MatchAttributes'] = RuleGroupSourceStatelessRuleMatchAttributes.stub(stub[:match_attributes]) unless stub[:match_attributes].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributes
    class RuleGroupSourceStatelessRuleMatchAttributes
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributes')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributes']
        {
          destination_ports: RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.default(visited),
          destinations: RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.default(visited),
          protocols: RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.default(visited),
          source_ports: RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.default(visited),
          sources: RuleGroupSourceStatelessRuleMatchAttributesSourcesList.default(visited),
          tcp_flags: RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributes.new
        data = {}
        data['DestinationPorts'] = RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.stub(stub[:destination_ports]) unless stub[:destination_ports].nil?
        data['Destinations'] = RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['Protocols'] = RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['SourcePorts'] = RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.stub(stub[:source_ports]) unless stub[:source_ports].nil?
        data['Sources'] = RuleGroupSourceStatelessRuleMatchAttributesSourcesList.stub(stub[:sources]) unless stub[:sources].nil?
        data['TcpFlags'] = RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.stub(stub[:tcp_flags]) unless stub[:tcp_flags].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList']
        [
          RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesTcpFlags')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesTcpFlags']
        {
          flags: NonEmptyStringList.default(visited),
          masks: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.new
        data = {}
        data['Flags'] = NonEmptyStringList.stub(stub[:flags]) unless stub[:flags].nil?
        data['Masks'] = NonEmptyStringList.stub(stub[:masks]) unless stub[:masks].nil?
        data
      end
    end

    # List Stubber for NonEmptyStringList
    class NonEmptyStringList
      def self.default(visited=[])
        return nil if visited.include?('NonEmptyStringList')
        visited = visited + ['NonEmptyStringList']
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

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesSourcesList
    class RuleGroupSourceStatelessRuleMatchAttributesSourcesList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesSourcesList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesSourcesList']
        [
          RuleGroupSourceStatelessRuleMatchAttributesSources.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRuleMatchAttributesSources.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributesSources
    class RuleGroupSourceStatelessRuleMatchAttributesSources
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesSources')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesSources']
        {
          address_definition: 'address_definition',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributesSources.new
        data = {}
        data['AddressDefinition'] = stub[:address_definition] unless stub[:address_definition].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
    class RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList']
        [
          RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
    class RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesSourcePorts')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesSourcePorts']
        {
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
    class RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesProtocolsList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesProtocolsList']
        [
          1
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

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesDestinationsList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesDestinationsList']
        [
          RuleGroupSourceStatelessRuleMatchAttributesDestinations.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRuleMatchAttributesDestinations.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributesDestinations
    class RuleGroupSourceStatelessRuleMatchAttributesDestinations
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesDestinations')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesDestinations']
        {
          address_definition: 'address_definition',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations.new
        data = {}
        data['AddressDefinition'] = stub[:address_definition] unless stub[:address_definition].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList']
        [
          RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts')
        visited = visited + ['RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts']
        {
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceCustomActionsList
    class RuleGroupSourceCustomActionsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceCustomActionsList')
        visited = visited + ['RuleGroupSourceCustomActionsList']
        [
          RuleGroupSourceCustomActionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceCustomActionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceCustomActionsDetails
    class RuleGroupSourceCustomActionsDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceCustomActionsDetails')
        visited = visited + ['RuleGroupSourceCustomActionsDetails']
        {
          action_definition: StatelessCustomActionDefinition.default(visited),
          action_name: 'action_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceCustomActionsDetails.new
        data = {}
        data['ActionDefinition'] = StatelessCustomActionDefinition.stub(stub[:action_definition]) unless stub[:action_definition].nil?
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data
      end
    end

    # Structure Stubber for StatelessCustomActionDefinition
    class StatelessCustomActionDefinition
      def self.default(visited=[])
        return nil if visited.include?('StatelessCustomActionDefinition')
        visited = visited + ['StatelessCustomActionDefinition']
        {
          publish_metric_action: StatelessCustomPublishMetricAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessCustomActionDefinition.new
        data = {}
        data['PublishMetricAction'] = StatelessCustomPublishMetricAction.stub(stub[:publish_metric_action]) unless stub[:publish_metric_action].nil?
        data
      end
    end

    # Structure Stubber for StatelessCustomPublishMetricAction
    class StatelessCustomPublishMetricAction
      def self.default(visited=[])
        return nil if visited.include?('StatelessCustomPublishMetricAction')
        visited = visited + ['StatelessCustomPublishMetricAction']
        {
          dimensions: StatelessCustomPublishMetricActionDimensionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessCustomPublishMetricAction.new
        data = {}
        data['Dimensions'] = StatelessCustomPublishMetricActionDimensionsList.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # List Stubber for StatelessCustomPublishMetricActionDimensionsList
    class StatelessCustomPublishMetricActionDimensionsList
      def self.default(visited=[])
        return nil if visited.include?('StatelessCustomPublishMetricActionDimensionsList')
        visited = visited + ['StatelessCustomPublishMetricActionDimensionsList']
        [
          StatelessCustomPublishMetricActionDimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StatelessCustomPublishMetricActionDimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatelessCustomPublishMetricActionDimension
    class StatelessCustomPublishMetricActionDimension
      def self.default(visited=[])
        return nil if visited.include?('StatelessCustomPublishMetricActionDimension')
        visited = visited + ['StatelessCustomPublishMetricActionDimension']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessCustomPublishMetricActionDimension.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatefulRulesList
    class RuleGroupSourceStatefulRulesList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesList')
        visited = visited + ['RuleGroupSourceStatefulRulesList']
        [
          RuleGroupSourceStatefulRulesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatefulRulesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatefulRulesDetails
    class RuleGroupSourceStatefulRulesDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesDetails')
        visited = visited + ['RuleGroupSourceStatefulRulesDetails']
        {
          action: 'action',
          header: RuleGroupSourceStatefulRulesHeaderDetails.default(visited),
          rule_options: RuleGroupSourceStatefulRulesOptionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatefulRulesDetails.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Header'] = RuleGroupSourceStatefulRulesHeaderDetails.stub(stub[:header]) unless stub[:header].nil?
        data['RuleOptions'] = RuleGroupSourceStatefulRulesOptionsList.stub(stub[:rule_options]) unless stub[:rule_options].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatefulRulesOptionsList
    class RuleGroupSourceStatefulRulesOptionsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesOptionsList')
        visited = visited + ['RuleGroupSourceStatefulRulesOptionsList']
        [
          RuleGroupSourceStatefulRulesOptionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSourceStatefulRulesOptionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSourceStatefulRulesOptionsDetails
    class RuleGroupSourceStatefulRulesOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesOptionsDetails')
        visited = visited + ['RuleGroupSourceStatefulRulesOptionsDetails']
        {
          keyword: 'keyword',
          settings: RuleGroupSourceStatefulRulesRuleOptionsSettingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatefulRulesOptionsDetails.new
        data = {}
        data['Keyword'] = stub[:keyword] unless stub[:keyword].nil?
        data['Settings'] = RuleGroupSourceStatefulRulesRuleOptionsSettingsList.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # List Stubber for RuleGroupSourceStatefulRulesRuleOptionsSettingsList
    class RuleGroupSourceStatefulRulesRuleOptionsSettingsList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesRuleOptionsSettingsList')
        visited = visited + ['RuleGroupSourceStatefulRulesRuleOptionsSettingsList']
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

    # Structure Stubber for RuleGroupSourceStatefulRulesHeaderDetails
    class RuleGroupSourceStatefulRulesHeaderDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceStatefulRulesHeaderDetails')
        visited = visited + ['RuleGroupSourceStatefulRulesHeaderDetails']
        {
          destination: 'destination',
          destination_port: 'destination_port',
          direction: 'direction',
          protocol: 'protocol',
          source: 'source',
          source_port: 'source_port',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceStatefulRulesHeaderDetails.new
        data = {}
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data['DestinationPort'] = stub[:destination_port] unless stub[:destination_port].nil?
        data['Direction'] = stub[:direction] unless stub[:direction].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['SourcePort'] = stub[:source_port] unless stub[:source_port].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupSourceListDetails
    class RuleGroupSourceListDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSourceListDetails')
        visited = visited + ['RuleGroupSourceListDetails']
        {
          generated_rules_type: 'generated_rules_type',
          target_types: NonEmptyStringList.default(visited),
          targets: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSourceListDetails.new
        data = {}
        data['GeneratedRulesType'] = stub[:generated_rules_type] unless stub[:generated_rules_type].nil?
        data['TargetTypes'] = NonEmptyStringList.stub(stub[:target_types]) unless stub[:target_types].nil?
        data['Targets'] = NonEmptyStringList.stub(stub[:targets]) unless stub[:targets].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupVariables
    class RuleGroupVariables
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupVariables')
        visited = visited + ['RuleGroupVariables']
        {
          ip_sets: RuleGroupVariablesIpSetsDetails.default(visited),
          port_sets: RuleGroupVariablesPortSetsDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupVariables.new
        data = {}
        data['IpSets'] = RuleGroupVariablesIpSetsDetails.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        data['PortSets'] = RuleGroupVariablesPortSetsDetails.stub(stub[:port_sets]) unless stub[:port_sets].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupVariablesPortSetsDetails
    class RuleGroupVariablesPortSetsDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupVariablesPortSetsDetails')
        visited = visited + ['RuleGroupVariablesPortSetsDetails']
        {
          definition: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupVariablesPortSetsDetails.new
        data = {}
        data['Definition'] = NonEmptyStringList.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupVariablesIpSetsDetails
    class RuleGroupVariablesIpSetsDetails
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupVariablesIpSetsDetails')
        visited = visited + ['RuleGroupVariablesIpSetsDetails']
        {
          definition: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupVariablesIpSetsDetails.new
        data = {}
        data['Definition'] = NonEmptyStringList.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # Structure Stubber for AwsNetworkFirewallFirewallDetails
    class AwsNetworkFirewallFirewallDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsNetworkFirewallFirewallDetails')
        visited = visited + ['AwsNetworkFirewallFirewallDetails']
        {
          delete_protection: false,
          description: 'description',
          firewall_arn: 'firewall_arn',
          firewall_id: 'firewall_id',
          firewall_name: 'firewall_name',
          firewall_policy_arn: 'firewall_policy_arn',
          firewall_policy_change_protection: false,
          subnet_change_protection: false,
          subnet_mappings: AwsNetworkFirewallFirewallSubnetMappingsList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsNetworkFirewallFirewallDetails.new
        data = {}
        data['DeleteProtection'] = stub[:delete_protection] unless stub[:delete_protection].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FirewallArn'] = stub[:firewall_arn] unless stub[:firewall_arn].nil?
        data['FirewallId'] = stub[:firewall_id] unless stub[:firewall_id].nil?
        data['FirewallName'] = stub[:firewall_name] unless stub[:firewall_name].nil?
        data['FirewallPolicyArn'] = stub[:firewall_policy_arn] unless stub[:firewall_policy_arn].nil?
        data['FirewallPolicyChangeProtection'] = stub[:firewall_policy_change_protection] unless stub[:firewall_policy_change_protection].nil?
        data['SubnetChangeProtection'] = stub[:subnet_change_protection] unless stub[:subnet_change_protection].nil?
        data['SubnetMappings'] = AwsNetworkFirewallFirewallSubnetMappingsList.stub(stub[:subnet_mappings]) unless stub[:subnet_mappings].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for AwsNetworkFirewallFirewallSubnetMappingsList
    class AwsNetworkFirewallFirewallSubnetMappingsList
      def self.default(visited=[])
        return nil if visited.include?('AwsNetworkFirewallFirewallSubnetMappingsList')
        visited = visited + ['AwsNetworkFirewallFirewallSubnetMappingsList']
        [
          AwsNetworkFirewallFirewallSubnetMappingsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsNetworkFirewallFirewallSubnetMappingsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsNetworkFirewallFirewallSubnetMappingsDetails
    class AwsNetworkFirewallFirewallSubnetMappingsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsNetworkFirewallFirewallSubnetMappingsDetails')
        visited = visited + ['AwsNetworkFirewallFirewallSubnetMappingsDetails']
        {
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsNetworkFirewallFirewallSubnetMappingsDetails.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data
      end
    end

    # Structure Stubber for AwsNetworkFirewallFirewallPolicyDetails
    class AwsNetworkFirewallFirewallPolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsNetworkFirewallFirewallPolicyDetails')
        visited = visited + ['AwsNetworkFirewallFirewallPolicyDetails']
        {
          firewall_policy: FirewallPolicyDetails.default(visited),
          firewall_policy_arn: 'firewall_policy_arn',
          firewall_policy_id: 'firewall_policy_id',
          firewall_policy_name: 'firewall_policy_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsNetworkFirewallFirewallPolicyDetails.new
        data = {}
        data['FirewallPolicy'] = FirewallPolicyDetails.stub(stub[:firewall_policy]) unless stub[:firewall_policy].nil?
        data['FirewallPolicyArn'] = stub[:firewall_policy_arn] unless stub[:firewall_policy_arn].nil?
        data['FirewallPolicyId'] = stub[:firewall_policy_id] unless stub[:firewall_policy_id].nil?
        data['FirewallPolicyName'] = stub[:firewall_policy_name] unless stub[:firewall_policy_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for FirewallPolicyDetails
    class FirewallPolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyDetails')
        visited = visited + ['FirewallPolicyDetails']
        {
          stateful_rule_group_references: FirewallPolicyStatefulRuleGroupReferencesList.default(visited),
          stateless_custom_actions: FirewallPolicyStatelessCustomActionsList.default(visited),
          stateless_default_actions: NonEmptyStringList.default(visited),
          stateless_fragment_default_actions: NonEmptyStringList.default(visited),
          stateless_rule_group_references: FirewallPolicyStatelessRuleGroupReferencesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyDetails.new
        data = {}
        data['StatefulRuleGroupReferences'] = FirewallPolicyStatefulRuleGroupReferencesList.stub(stub[:stateful_rule_group_references]) unless stub[:stateful_rule_group_references].nil?
        data['StatelessCustomActions'] = FirewallPolicyStatelessCustomActionsList.stub(stub[:stateless_custom_actions]) unless stub[:stateless_custom_actions].nil?
        data['StatelessDefaultActions'] = NonEmptyStringList.stub(stub[:stateless_default_actions]) unless stub[:stateless_default_actions].nil?
        data['StatelessFragmentDefaultActions'] = NonEmptyStringList.stub(stub[:stateless_fragment_default_actions]) unless stub[:stateless_fragment_default_actions].nil?
        data['StatelessRuleGroupReferences'] = FirewallPolicyStatelessRuleGroupReferencesList.stub(stub[:stateless_rule_group_references]) unless stub[:stateless_rule_group_references].nil?
        data
      end
    end

    # List Stubber for FirewallPolicyStatelessRuleGroupReferencesList
    class FirewallPolicyStatelessRuleGroupReferencesList
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatelessRuleGroupReferencesList')
        visited = visited + ['FirewallPolicyStatelessRuleGroupReferencesList']
        [
          FirewallPolicyStatelessRuleGroupReferencesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallPolicyStatelessRuleGroupReferencesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallPolicyStatelessRuleGroupReferencesDetails
    class FirewallPolicyStatelessRuleGroupReferencesDetails
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatelessRuleGroupReferencesDetails')
        visited = visited + ['FirewallPolicyStatelessRuleGroupReferencesDetails']
        {
          priority: 1,
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyStatelessRuleGroupReferencesDetails.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # List Stubber for FirewallPolicyStatelessCustomActionsList
    class FirewallPolicyStatelessCustomActionsList
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatelessCustomActionsList')
        visited = visited + ['FirewallPolicyStatelessCustomActionsList']
        [
          FirewallPolicyStatelessCustomActionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallPolicyStatelessCustomActionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallPolicyStatelessCustomActionsDetails
    class FirewallPolicyStatelessCustomActionsDetails
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatelessCustomActionsDetails')
        visited = visited + ['FirewallPolicyStatelessCustomActionsDetails']
        {
          action_definition: StatelessCustomActionDefinition.default(visited),
          action_name: 'action_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyStatelessCustomActionsDetails.new
        data = {}
        data['ActionDefinition'] = StatelessCustomActionDefinition.stub(stub[:action_definition]) unless stub[:action_definition].nil?
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data
      end
    end

    # List Stubber for FirewallPolicyStatefulRuleGroupReferencesList
    class FirewallPolicyStatefulRuleGroupReferencesList
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatefulRuleGroupReferencesList')
        visited = visited + ['FirewallPolicyStatefulRuleGroupReferencesList']
        [
          FirewallPolicyStatefulRuleGroupReferencesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallPolicyStatefulRuleGroupReferencesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallPolicyStatefulRuleGroupReferencesDetails
    class FirewallPolicyStatefulRuleGroupReferencesDetails
      def self.default(visited=[])
        return nil if visited.include?('FirewallPolicyStatefulRuleGroupReferencesDetails')
        visited = visited + ['FirewallPolicyStatefulRuleGroupReferencesDetails']
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallPolicyStatefulRuleGroupReferencesDetails.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsEksClusterDetails
    class AwsEksClusterDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEksClusterDetails')
        visited = visited + ['AwsEksClusterDetails']
        {
          arn: 'arn',
          certificate_authority_data: 'certificate_authority_data',
          cluster_status: 'cluster_status',
          endpoint: 'endpoint',
          name: 'name',
          resources_vpc_config: AwsEksClusterResourcesVpcConfigDetails.default(visited),
          role_arn: 'role_arn',
          version: 'version',
          logging: AwsEksClusterLoggingDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEksClusterDetails.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CertificateAuthorityData'] = stub[:certificate_authority_data] unless stub[:certificate_authority_data].nil?
        data['ClusterStatus'] = stub[:cluster_status] unless stub[:cluster_status].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourcesVpcConfig'] = AwsEksClusterResourcesVpcConfigDetails.stub(stub[:resources_vpc_config]) unless stub[:resources_vpc_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Logging'] = AwsEksClusterLoggingDetails.stub(stub[:logging]) unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for AwsEksClusterLoggingDetails
    class AwsEksClusterLoggingDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEksClusterLoggingDetails')
        visited = visited + ['AwsEksClusterLoggingDetails']
        {
          cluster_logging: AwsEksClusterLoggingClusterLoggingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEksClusterLoggingDetails.new
        data = {}
        data['ClusterLogging'] = AwsEksClusterLoggingClusterLoggingList.stub(stub[:cluster_logging]) unless stub[:cluster_logging].nil?
        data
      end
    end

    # List Stubber for AwsEksClusterLoggingClusterLoggingList
    class AwsEksClusterLoggingClusterLoggingList
      def self.default(visited=[])
        return nil if visited.include?('AwsEksClusterLoggingClusterLoggingList')
        visited = visited + ['AwsEksClusterLoggingClusterLoggingList']
        [
          AwsEksClusterLoggingClusterLoggingDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEksClusterLoggingClusterLoggingDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEksClusterLoggingClusterLoggingDetails
    class AwsEksClusterLoggingClusterLoggingDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEksClusterLoggingClusterLoggingDetails')
        visited = visited + ['AwsEksClusterLoggingClusterLoggingDetails']
        {
          enabled: false,
          types: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEksClusterLoggingClusterLoggingDetails.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Types'] = NonEmptyStringList.stub(stub[:types]) unless stub[:types].nil?
        data
      end
    end

    # Structure Stubber for AwsEksClusterResourcesVpcConfigDetails
    class AwsEksClusterResourcesVpcConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEksClusterResourcesVpcConfigDetails')
        visited = visited + ['AwsEksClusterResourcesVpcConfigDetails']
        {
          security_group_ids: NonEmptyStringList.default(visited),
          subnet_ids: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEksClusterResourcesVpcConfigDetails.new
        data = {}
        data['SecurityGroupIds'] = NonEmptyStringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetIds'] = NonEmptyStringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrRepositoryDetails
    class AwsEcrRepositoryDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrRepositoryDetails')
        visited = visited + ['AwsEcrRepositoryDetails']
        {
          arn: 'arn',
          image_scanning_configuration: AwsEcrRepositoryImageScanningConfigurationDetails.default(visited),
          image_tag_mutability: 'image_tag_mutability',
          lifecycle_policy: AwsEcrRepositoryLifecyclePolicyDetails.default(visited),
          repository_name: 'repository_name',
          repository_policy_text: 'repository_policy_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrRepositoryDetails.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ImageScanningConfiguration'] = AwsEcrRepositoryImageScanningConfigurationDetails.stub(stub[:image_scanning_configuration]) unless stub[:image_scanning_configuration].nil?
        data['ImageTagMutability'] = stub[:image_tag_mutability] unless stub[:image_tag_mutability].nil?
        data['LifecyclePolicy'] = AwsEcrRepositoryLifecyclePolicyDetails.stub(stub[:lifecycle_policy]) unless stub[:lifecycle_policy].nil?
        data['RepositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['RepositoryPolicyText'] = stub[:repository_policy_text] unless stub[:repository_policy_text].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrRepositoryLifecyclePolicyDetails
    class AwsEcrRepositoryLifecyclePolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrRepositoryLifecyclePolicyDetails')
        visited = visited + ['AwsEcrRepositoryLifecyclePolicyDetails']
        {
          lifecycle_policy_text: 'lifecycle_policy_text',
          registry_id: 'registry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrRepositoryLifecyclePolicyDetails.new
        data = {}
        data['LifecyclePolicyText'] = stub[:lifecycle_policy_text] unless stub[:lifecycle_policy_text].nil?
        data['RegistryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrRepositoryImageScanningConfigurationDetails
    class AwsEcrRepositoryImageScanningConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrRepositoryImageScanningConfigurationDetails')
        visited = visited + ['AwsEcrRepositoryImageScanningConfigurationDetails']
        {
          scan_on_push: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrRepositoryImageScanningConfigurationDetails.new
        data = {}
        data['ScanOnPush'] = stub[:scan_on_push] unless stub[:scan_on_push].nil?
        data
      end
    end

    # Structure Stubber for AwsWafRegionalRateBasedRuleDetails
    class AwsWafRegionalRateBasedRuleDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRegionalRateBasedRuleDetails')
        visited = visited + ['AwsWafRegionalRateBasedRuleDetails']
        {
          metric_name: 'metric_name',
          name: 'name',
          rate_key: 'rate_key',
          rate_limit: 1,
          rule_id: 'rule_id',
          match_predicates: AwsWafRegionalRateBasedRuleMatchPredicateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafRegionalRateBasedRuleDetails.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RateKey'] = stub[:rate_key] unless stub[:rate_key].nil?
        data['RateLimit'] = stub[:rate_limit] unless stub[:rate_limit].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['MatchPredicates'] = AwsWafRegionalRateBasedRuleMatchPredicateList.stub(stub[:match_predicates]) unless stub[:match_predicates].nil?
        data
      end
    end

    # List Stubber for AwsWafRegionalRateBasedRuleMatchPredicateList
    class AwsWafRegionalRateBasedRuleMatchPredicateList
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRegionalRateBasedRuleMatchPredicateList')
        visited = visited + ['AwsWafRegionalRateBasedRuleMatchPredicateList']
        [
          AwsWafRegionalRateBasedRuleMatchPredicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsWafRegionalRateBasedRuleMatchPredicate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsWafRegionalRateBasedRuleMatchPredicate
    class AwsWafRegionalRateBasedRuleMatchPredicate
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRegionalRateBasedRuleMatchPredicate')
        visited = visited + ['AwsWafRegionalRateBasedRuleMatchPredicate']
        {
          data_id: 'data_id',
          negated: false,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafRegionalRateBasedRuleMatchPredicate.new
        data = {}
        data['DataId'] = stub[:data_id] unless stub[:data_id].nil?
        data['Negated'] = stub[:negated] unless stub[:negated].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsWafRateBasedRuleDetails
    class AwsWafRateBasedRuleDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRateBasedRuleDetails')
        visited = visited + ['AwsWafRateBasedRuleDetails']
        {
          metric_name: 'metric_name',
          name: 'name',
          rate_key: 'rate_key',
          rate_limit: 1,
          rule_id: 'rule_id',
          match_predicates: AwsWafRateBasedRuleMatchPredicateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafRateBasedRuleDetails.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RateKey'] = stub[:rate_key] unless stub[:rate_key].nil?
        data['RateLimit'] = stub[:rate_limit] unless stub[:rate_limit].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['MatchPredicates'] = AwsWafRateBasedRuleMatchPredicateList.stub(stub[:match_predicates]) unless stub[:match_predicates].nil?
        data
      end
    end

    # List Stubber for AwsWafRateBasedRuleMatchPredicateList
    class AwsWafRateBasedRuleMatchPredicateList
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRateBasedRuleMatchPredicateList')
        visited = visited + ['AwsWafRateBasedRuleMatchPredicateList']
        [
          AwsWafRateBasedRuleMatchPredicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsWafRateBasedRuleMatchPredicate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsWafRateBasedRuleMatchPredicate
    class AwsWafRateBasedRuleMatchPredicate
      def self.default(visited=[])
        return nil if visited.include?('AwsWafRateBasedRuleMatchPredicate')
        visited = visited + ['AwsWafRateBasedRuleMatchPredicate']
        {
          data_id: 'data_id',
          negated: false,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafRateBasedRuleMatchPredicate.new
        data = {}
        data['DataId'] = stub[:data_id] unless stub[:data_id].nil?
        data['Negated'] = stub[:negated] unless stub[:negated].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsXrayEncryptionConfigDetails
    class AwsXrayEncryptionConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsXrayEncryptionConfigDetails')
        visited = visited + ['AwsXrayEncryptionConfigDetails']
        {
          key_id: 'key_id',
          status: 'status',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsXrayEncryptionConfigDetails.new
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2VpcEndpointServiceDetails
    class AwsEc2VpcEndpointServiceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpcEndpointServiceDetails')
        visited = visited + ['AwsEc2VpcEndpointServiceDetails']
        {
          acceptance_required: false,
          availability_zones: NonEmptyStringList.default(visited),
          base_endpoint_dns_names: NonEmptyStringList.default(visited),
          manages_vpc_endpoints: false,
          gateway_load_balancer_arns: NonEmptyStringList.default(visited),
          network_load_balancer_arns: NonEmptyStringList.default(visited),
          private_dns_name: 'private_dns_name',
          service_id: 'service_id',
          service_name: 'service_name',
          service_state: 'service_state',
          service_type: AwsEc2VpcEndpointServiceServiceTypeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpcEndpointServiceDetails.new
        data = {}
        data['AcceptanceRequired'] = stub[:acceptance_required] unless stub[:acceptance_required].nil?
        data['AvailabilityZones'] = NonEmptyStringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['BaseEndpointDnsNames'] = NonEmptyStringList.stub(stub[:base_endpoint_dns_names]) unless stub[:base_endpoint_dns_names].nil?
        data['ManagesVpcEndpoints'] = stub[:manages_vpc_endpoints] unless stub[:manages_vpc_endpoints].nil?
        data['GatewayLoadBalancerArns'] = NonEmptyStringList.stub(stub[:gateway_load_balancer_arns]) unless stub[:gateway_load_balancer_arns].nil?
        data['NetworkLoadBalancerArns'] = NonEmptyStringList.stub(stub[:network_load_balancer_arns]) unless stub[:network_load_balancer_arns].nil?
        data['PrivateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['ServiceState'] = stub[:service_state] unless stub[:service_state].nil?
        data['ServiceType'] = AwsEc2VpcEndpointServiceServiceTypeList.stub(stub[:service_type]) unless stub[:service_type].nil?
        data
      end
    end

    # List Stubber for AwsEc2VpcEndpointServiceServiceTypeList
    class AwsEc2VpcEndpointServiceServiceTypeList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpcEndpointServiceServiceTypeList')
        visited = visited + ['AwsEc2VpcEndpointServiceServiceTypeList']
        [
          AwsEc2VpcEndpointServiceServiceTypeDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2VpcEndpointServiceServiceTypeDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2VpcEndpointServiceServiceTypeDetails
    class AwsEc2VpcEndpointServiceServiceTypeDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpcEndpointServiceServiceTypeDetails')
        visited = visited + ['AwsEc2VpcEndpointServiceServiceTypeDetails']
        {
          service_type: 'service_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpcEndpointServiceServiceTypeDetails.new
        data = {}
        data['ServiceType'] = stub[:service_type] unless stub[:service_type].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainDetails
    class AwsOpenSearchServiceDomainDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainDetails')
        visited = visited + ['AwsOpenSearchServiceDomainDetails']
        {
          arn: 'arn',
          access_policies: 'access_policies',
          domain_name: 'domain_name',
          id: 'id',
          domain_endpoint: 'domain_endpoint',
          engine_version: 'engine_version',
          encryption_at_rest_options: AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.default(visited),
          node_to_node_encryption_options: AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.default(visited),
          service_software_options: AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.default(visited),
          cluster_config: AwsOpenSearchServiceDomainClusterConfigDetails.default(visited),
          domain_endpoint_options: AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.default(visited),
          vpc_options: AwsOpenSearchServiceDomainVpcOptionsDetails.default(visited),
          log_publishing_options: AwsOpenSearchServiceDomainLogPublishingOptionsDetails.default(visited),
          domain_endpoints: FieldMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainDetails.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AccessPolicies'] = stub[:access_policies] unless stub[:access_policies].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['DomainEndpoint'] = stub[:domain_endpoint] unless stub[:domain_endpoint].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['EncryptionAtRestOptions'] = AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['ServiceSoftwareOptions'] = AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        data['ClusterConfig'] = AwsOpenSearchServiceDomainClusterConfigDetails.stub(stub[:cluster_config]) unless stub[:cluster_config].nil?
        data['DomainEndpointOptions'] = AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['VpcOptions'] = AwsOpenSearchServiceDomainVpcOptionsDetails.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data['LogPublishingOptions'] = AwsOpenSearchServiceDomainLogPublishingOptionsDetails.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['DomainEndpoints'] = FieldMap.stub(stub[:domain_endpoints]) unless stub[:domain_endpoints].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainLogPublishingOptionsDetails
    class AwsOpenSearchServiceDomainLogPublishingOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainLogPublishingOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainLogPublishingOptionsDetails']
        {
          index_slow_logs: AwsOpenSearchServiceDomainLogPublishingOption.default(visited),
          search_slow_logs: AwsOpenSearchServiceDomainLogPublishingOption.default(visited),
          audit_logs: AwsOpenSearchServiceDomainLogPublishingOption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.new
        data = {}
        data['IndexSlowLogs'] = AwsOpenSearchServiceDomainLogPublishingOption.stub(stub[:index_slow_logs]) unless stub[:index_slow_logs].nil?
        data['SearchSlowLogs'] = AwsOpenSearchServiceDomainLogPublishingOption.stub(stub[:search_slow_logs]) unless stub[:search_slow_logs].nil?
        data['AuditLogs'] = AwsOpenSearchServiceDomainLogPublishingOption.stub(stub[:audit_logs]) unless stub[:audit_logs].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainLogPublishingOption
    class AwsOpenSearchServiceDomainLogPublishingOption
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainLogPublishingOption')
        visited = visited + ['AwsOpenSearchServiceDomainLogPublishingOption']
        {
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainLogPublishingOption.new
        data = {}
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainVpcOptionsDetails
    class AwsOpenSearchServiceDomainVpcOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainVpcOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainVpcOptionsDetails']
        {
          security_group_ids: NonEmptyStringList.default(visited),
          subnet_ids: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainVpcOptionsDetails.new
        data = {}
        data['SecurityGroupIds'] = NonEmptyStringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetIds'] = NonEmptyStringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
    class AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainDomainEndpointOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainDomainEndpointOptionsDetails']
        {
          custom_endpoint_certificate_arn: 'custom_endpoint_certificate_arn',
          custom_endpoint_enabled: false,
          enforce_https: false,
          custom_endpoint: 'custom_endpoint',
          tls_security_policy: 'tls_security_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.new
        data = {}
        data['CustomEndpointCertificateArn'] = stub[:custom_endpoint_certificate_arn] unless stub[:custom_endpoint_certificate_arn].nil?
        data['CustomEndpointEnabled'] = stub[:custom_endpoint_enabled] unless stub[:custom_endpoint_enabled].nil?
        data['EnforceHTTPS'] = stub[:enforce_https] unless stub[:enforce_https].nil?
        data['CustomEndpoint'] = stub[:custom_endpoint] unless stub[:custom_endpoint].nil?
        data['TLSSecurityPolicy'] = stub[:tls_security_policy] unless stub[:tls_security_policy].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainClusterConfigDetails
    class AwsOpenSearchServiceDomainClusterConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainClusterConfigDetails')
        visited = visited + ['AwsOpenSearchServiceDomainClusterConfigDetails']
        {
          instance_count: 1,
          warm_enabled: false,
          warm_count: 1,
          dedicated_master_enabled: false,
          zone_awareness_config: AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.default(visited),
          dedicated_master_count: 1,
          instance_type: 'instance_type',
          warm_type: 'warm_type',
          zone_awareness_enabled: false,
          dedicated_master_type: 'dedicated_master_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainClusterConfigDetails.new
        data = {}
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['WarmEnabled'] = stub[:warm_enabled] unless stub[:warm_enabled].nil?
        data['WarmCount'] = stub[:warm_count] unless stub[:warm_count].nil?
        data['DedicatedMasterEnabled'] = stub[:dedicated_master_enabled] unless stub[:dedicated_master_enabled].nil?
        data['ZoneAwarenessConfig'] = AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.stub(stub[:zone_awareness_config]) unless stub[:zone_awareness_config].nil?
        data['DedicatedMasterCount'] = stub[:dedicated_master_count] unless stub[:dedicated_master_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['WarmType'] = stub[:warm_type] unless stub[:warm_type].nil?
        data['ZoneAwarenessEnabled'] = stub[:zone_awareness_enabled] unless stub[:zone_awareness_enabled].nil?
        data['DedicatedMasterType'] = stub[:dedicated_master_type] unless stub[:dedicated_master_type].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
    class AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails')
        visited = visited + ['AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails']
        {
          availability_zone_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.new
        data = {}
        data['AvailabilityZoneCount'] = stub[:availability_zone_count] unless stub[:availability_zone_count].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
    class AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails']
        {
          automated_update_date: 'automated_update_date',
          cancellable: false,
          current_version: 'current_version',
          description: 'description',
          new_version: 'new_version',
          update_available: false,
          update_status: 'update_status',
          optional_deployment: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.new
        data = {}
        data['AutomatedUpdateDate'] = stub[:automated_update_date] unless stub[:automated_update_date].nil?
        data['Cancellable'] = stub[:cancellable] unless stub[:cancellable].nil?
        data['CurrentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['NewVersion'] = stub[:new_version] unless stub[:new_version].nil?
        data['UpdateAvailable'] = stub[:update_available] unless stub[:update_available].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['OptionalDeployment'] = stub[:optional_deployment] unless stub[:optional_deployment].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
    class AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
    class AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails')
        visited = visited + ['AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails']
        {
          enabled: false,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEcrContainerImageDetails
    class AwsEcrContainerImageDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcrContainerImageDetails')
        visited = visited + ['AwsEcrContainerImageDetails']
        {
          registry_id: 'registry_id',
          repository_name: 'repository_name',
          architecture: 'architecture',
          image_digest: 'image_digest',
          image_tags: NonEmptyStringList.default(visited),
          image_published_at: 'image_published_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcrContainerImageDetails.new
        data = {}
        data['RegistryId'] = stub[:registry_id] unless stub[:registry_id].nil?
        data['RepositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['Architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['ImageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['ImageTags'] = NonEmptyStringList.stub(stub[:image_tags]) unless stub[:image_tags].nil?
        data['ImagePublishedAt'] = stub[:image_published_at] unless stub[:image_published_at].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2VpnConnectionDetails
    class AwsEc2VpnConnectionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionDetails')
        visited = visited + ['AwsEc2VpnConnectionDetails']
        {
          vpn_connection_id: 'vpn_connection_id',
          state: 'state',
          customer_gateway_id: 'customer_gateway_id',
          customer_gateway_configuration: 'customer_gateway_configuration',
          type: 'type',
          vpn_gateway_id: 'vpn_gateway_id',
          category: 'category',
          vgw_telemetry: AwsEc2VpnConnectionVgwTelemetryList.default(visited),
          options: AwsEc2VpnConnectionOptionsDetails.default(visited),
          routes: AwsEc2VpnConnectionRoutesList.default(visited),
          transit_gateway_id: 'transit_gateway_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpnConnectionDetails.new
        data = {}
        data['VpnConnectionId'] = stub[:vpn_connection_id] unless stub[:vpn_connection_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CustomerGatewayId'] = stub[:customer_gateway_id] unless stub[:customer_gateway_id].nil?
        data['CustomerGatewayConfiguration'] = stub[:customer_gateway_configuration] unless stub[:customer_gateway_configuration].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VpnGatewayId'] = stub[:vpn_gateway_id] unless stub[:vpn_gateway_id].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['VgwTelemetry'] = AwsEc2VpnConnectionVgwTelemetryList.stub(stub[:vgw_telemetry]) unless stub[:vgw_telemetry].nil?
        data['Options'] = AwsEc2VpnConnectionOptionsDetails.stub(stub[:options]) unless stub[:options].nil?
        data['Routes'] = AwsEc2VpnConnectionRoutesList.stub(stub[:routes]) unless stub[:routes].nil?
        data['TransitGatewayId'] = stub[:transit_gateway_id] unless stub[:transit_gateway_id].nil?
        data
      end
    end

    # List Stubber for AwsEc2VpnConnectionRoutesList
    class AwsEc2VpnConnectionRoutesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionRoutesList')
        visited = visited + ['AwsEc2VpnConnectionRoutesList']
        [
          AwsEc2VpnConnectionRoutesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2VpnConnectionRoutesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2VpnConnectionRoutesDetails
    class AwsEc2VpnConnectionRoutesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionRoutesDetails')
        visited = visited + ['AwsEc2VpnConnectionRoutesDetails']
        {
          destination_cidr_block: 'destination_cidr_block',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpnConnectionRoutesDetails.new
        data = {}
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2VpnConnectionOptionsDetails
    class AwsEc2VpnConnectionOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionOptionsDetails')
        visited = visited + ['AwsEc2VpnConnectionOptionsDetails']
        {
          static_routes_only: false,
          tunnel_options: AwsEc2VpnConnectionOptionsTunnelOptionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpnConnectionOptionsDetails.new
        data = {}
        data['StaticRoutesOnly'] = stub[:static_routes_only] unless stub[:static_routes_only].nil?
        data['TunnelOptions'] = AwsEc2VpnConnectionOptionsTunnelOptionsList.stub(stub[:tunnel_options]) unless stub[:tunnel_options].nil?
        data
      end
    end

    # List Stubber for AwsEc2VpnConnectionOptionsTunnelOptionsList
    class AwsEc2VpnConnectionOptionsTunnelOptionsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionOptionsTunnelOptionsList')
        visited = visited + ['AwsEc2VpnConnectionOptionsTunnelOptionsList']
        [
          AwsEc2VpnConnectionOptionsTunnelOptionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2VpnConnectionOptionsTunnelOptionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2VpnConnectionOptionsTunnelOptionsDetails
    class AwsEc2VpnConnectionOptionsTunnelOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionOptionsTunnelOptionsDetails')
        visited = visited + ['AwsEc2VpnConnectionOptionsTunnelOptionsDetails']
        {
          dpd_timeout_seconds: 1,
          ike_versions: NonEmptyStringList.default(visited),
          outside_ip_address: 'outside_ip_address',
          phase1_dh_group_numbers: IntegerList.default(visited),
          phase1_encryption_algorithms: NonEmptyStringList.default(visited),
          phase1_integrity_algorithms: NonEmptyStringList.default(visited),
          phase1_lifetime_seconds: 1,
          phase2_dh_group_numbers: IntegerList.default(visited),
          phase2_encryption_algorithms: NonEmptyStringList.default(visited),
          phase2_integrity_algorithms: NonEmptyStringList.default(visited),
          phase2_lifetime_seconds: 1,
          pre_shared_key: 'pre_shared_key',
          rekey_fuzz_percentage: 1,
          rekey_margin_time_seconds: 1,
          replay_window_size: 1,
          tunnel_inside_cidr: 'tunnel_inside_cidr',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.new
        data = {}
        data['DpdTimeoutSeconds'] = stub[:dpd_timeout_seconds] unless stub[:dpd_timeout_seconds].nil?
        data['IkeVersions'] = NonEmptyStringList.stub(stub[:ike_versions]) unless stub[:ike_versions].nil?
        data['OutsideIpAddress'] = stub[:outside_ip_address] unless stub[:outside_ip_address].nil?
        data['Phase1DhGroupNumbers'] = IntegerList.stub(stub[:phase1_dh_group_numbers]) unless stub[:phase1_dh_group_numbers].nil?
        data['Phase1EncryptionAlgorithms'] = NonEmptyStringList.stub(stub[:phase1_encryption_algorithms]) unless stub[:phase1_encryption_algorithms].nil?
        data['Phase1IntegrityAlgorithms'] = NonEmptyStringList.stub(stub[:phase1_integrity_algorithms]) unless stub[:phase1_integrity_algorithms].nil?
        data['Phase1LifetimeSeconds'] = stub[:phase1_lifetime_seconds] unless stub[:phase1_lifetime_seconds].nil?
        data['Phase2DhGroupNumbers'] = IntegerList.stub(stub[:phase2_dh_group_numbers]) unless stub[:phase2_dh_group_numbers].nil?
        data['Phase2EncryptionAlgorithms'] = NonEmptyStringList.stub(stub[:phase2_encryption_algorithms]) unless stub[:phase2_encryption_algorithms].nil?
        data['Phase2IntegrityAlgorithms'] = NonEmptyStringList.stub(stub[:phase2_integrity_algorithms]) unless stub[:phase2_integrity_algorithms].nil?
        data['Phase2LifetimeSeconds'] = stub[:phase2_lifetime_seconds] unless stub[:phase2_lifetime_seconds].nil?
        data['PreSharedKey'] = stub[:pre_shared_key] unless stub[:pre_shared_key].nil?
        data['RekeyFuzzPercentage'] = stub[:rekey_fuzz_percentage] unless stub[:rekey_fuzz_percentage].nil?
        data['RekeyMarginTimeSeconds'] = stub[:rekey_margin_time_seconds] unless stub[:rekey_margin_time_seconds].nil?
        data['ReplayWindowSize'] = stub[:replay_window_size] unless stub[:replay_window_size].nil?
        data['TunnelInsideCidr'] = stub[:tunnel_inside_cidr] unless stub[:tunnel_inside_cidr].nil?
        data
      end
    end

    # List Stubber for IntegerList
    class IntegerList
      def self.default(visited=[])
        return nil if visited.include?('IntegerList')
        visited = visited + ['IntegerList']
        [
          1
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

    # List Stubber for AwsEc2VpnConnectionVgwTelemetryList
    class AwsEc2VpnConnectionVgwTelemetryList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionVgwTelemetryList')
        visited = visited + ['AwsEc2VpnConnectionVgwTelemetryList']
        [
          AwsEc2VpnConnectionVgwTelemetryDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2VpnConnectionVgwTelemetryDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2VpnConnectionVgwTelemetryDetails
    class AwsEc2VpnConnectionVgwTelemetryDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpnConnectionVgwTelemetryDetails')
        visited = visited + ['AwsEc2VpnConnectionVgwTelemetryDetails']
        {
          accepted_route_count: 1,
          certificate_arn: 'certificate_arn',
          last_status_change: 'last_status_change',
          outside_ip_address: 'outside_ip_address',
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpnConnectionVgwTelemetryDetails.new
        data = {}
        data['AcceptedRouteCount'] = stub[:accepted_route_count] unless stub[:accepted_route_count].nil?
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['LastStatusChange'] = stub[:last_status_change] unless stub[:last_status_change].nil?
        data['OutsideIpAddress'] = stub[:outside_ip_address] unless stub[:outside_ip_address].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingLaunchConfigurationDetails
    class AwsAutoScalingLaunchConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationDetails')
        visited = visited + ['AwsAutoScalingLaunchConfigurationDetails']
        {
          associate_public_ip_address: false,
          block_device_mappings: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.default(visited),
          classic_link_vpc_id: 'classic_link_vpc_id',
          classic_link_vpc_security_groups: NonEmptyStringList.default(visited),
          created_time: 'created_time',
          ebs_optimized: false,
          iam_instance_profile: 'iam_instance_profile',
          image_id: 'image_id',
          instance_monitoring: AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.default(visited),
          instance_type: 'instance_type',
          kernel_id: 'kernel_id',
          key_name: 'key_name',
          launch_configuration_name: 'launch_configuration_name',
          placement_tenancy: 'placement_tenancy',
          ramdisk_id: 'ramdisk_id',
          security_groups: NonEmptyStringList.default(visited),
          spot_price: 'spot_price',
          user_data: 'user_data',
          metadata_options: AwsAutoScalingLaunchConfigurationMetadataOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingLaunchConfigurationDetails.new
        data = {}
        data['AssociatePublicIpAddress'] = stub[:associate_public_ip_address] unless stub[:associate_public_ip_address].nil?
        data['BlockDeviceMappings'] = AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.stub(stub[:block_device_mappings]) unless stub[:block_device_mappings].nil?
        data['ClassicLinkVpcId'] = stub[:classic_link_vpc_id] unless stub[:classic_link_vpc_id].nil?
        data['ClassicLinkVpcSecurityGroups'] = NonEmptyStringList.stub(stub[:classic_link_vpc_security_groups]) unless stub[:classic_link_vpc_security_groups].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['EbsOptimized'] = stub[:ebs_optimized] unless stub[:ebs_optimized].nil?
        data['IamInstanceProfile'] = stub[:iam_instance_profile] unless stub[:iam_instance_profile].nil?
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['InstanceMonitoring'] = AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.stub(stub[:instance_monitoring]) unless stub[:instance_monitoring].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['KernelId'] = stub[:kernel_id] unless stub[:kernel_id].nil?
        data['KeyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['LaunchConfigurationName'] = stub[:launch_configuration_name] unless stub[:launch_configuration_name].nil?
        data['PlacementTenancy'] = stub[:placement_tenancy] unless stub[:placement_tenancy].nil?
        data['RamdiskId'] = stub[:ramdisk_id] unless stub[:ramdisk_id].nil?
        data['SecurityGroups'] = NonEmptyStringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['SpotPrice'] = stub[:spot_price] unless stub[:spot_price].nil?
        data['UserData'] = stub[:user_data] unless stub[:user_data].nil?
        data['MetadataOptions'] = AwsAutoScalingLaunchConfigurationMetadataOptions.stub(stub[:metadata_options]) unless stub[:metadata_options].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingLaunchConfigurationMetadataOptions
    class AwsAutoScalingLaunchConfigurationMetadataOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationMetadataOptions')
        visited = visited + ['AwsAutoScalingLaunchConfigurationMetadataOptions']
        {
          http_endpoint: 'http_endpoint',
          http_put_response_hop_limit: 1,
          http_tokens: 'http_tokens',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingLaunchConfigurationMetadataOptions.new
        data = {}
        data['HttpEndpoint'] = stub[:http_endpoint] unless stub[:http_endpoint].nil?
        data['HttpPutResponseHopLimit'] = stub[:http_put_response_hop_limit] unless stub[:http_put_response_hop_limit].nil?
        data['HttpTokens'] = stub[:http_tokens] unless stub[:http_tokens].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
    class AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails')
        visited = visited + ['AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # List Stubber for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList')
        visited = visited + ['AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList']
        [
          AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails')
        visited = visited + ['AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails']
        {
          device_name: 'device_name',
          ebs: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.default(visited),
          no_device: false,
          virtual_name: 'virtual_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['Ebs'] = AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.stub(stub[:ebs]) unless stub[:ebs].nil?
        data['NoDevice'] = stub[:no_device] unless stub[:no_device].nil?
        data['VirtualName'] = stub[:virtual_name] unless stub[:virtual_name].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails')
        visited = visited + ['AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails']
        {
          delete_on_termination: false,
          encrypted: false,
          iops: 1,
          snapshot_id: 'snapshot_id',
          volume_size: 1,
          volume_type: 'volume_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.new
        data = {}
        data['DeleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceDetails
    class AwsEcsServiceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceDetails')
        visited = visited + ['AwsEcsServiceDetails']
        {
          capacity_provider_strategy: AwsEcsServiceCapacityProviderStrategyList.default(visited),
          cluster: 'cluster',
          deployment_configuration: AwsEcsServiceDeploymentConfigurationDetails.default(visited),
          deployment_controller: AwsEcsServiceDeploymentControllerDetails.default(visited),
          desired_count: 1,
          enable_ecs_managed_tags: false,
          enable_execute_command: false,
          health_check_grace_period_seconds: 1,
          launch_type: 'launch_type',
          load_balancers: AwsEcsServiceLoadBalancersList.default(visited),
          name: 'name',
          network_configuration: AwsEcsServiceNetworkConfigurationDetails.default(visited),
          placement_constraints: AwsEcsServicePlacementConstraintsList.default(visited),
          placement_strategies: AwsEcsServicePlacementStrategiesList.default(visited),
          platform_version: 'platform_version',
          propagate_tags: 'propagate_tags',
          role: 'role',
          scheduling_strategy: 'scheduling_strategy',
          service_arn: 'service_arn',
          service_name: 'service_name',
          service_registries: AwsEcsServiceServiceRegistriesList.default(visited),
          task_definition: 'task_definition',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceDetails.new
        data = {}
        data['CapacityProviderStrategy'] = AwsEcsServiceCapacityProviderStrategyList.stub(stub[:capacity_provider_strategy]) unless stub[:capacity_provider_strategy].nil?
        data['Cluster'] = stub[:cluster] unless stub[:cluster].nil?
        data['DeploymentConfiguration'] = AwsEcsServiceDeploymentConfigurationDetails.stub(stub[:deployment_configuration]) unless stub[:deployment_configuration].nil?
        data['DeploymentController'] = AwsEcsServiceDeploymentControllerDetails.stub(stub[:deployment_controller]) unless stub[:deployment_controller].nil?
        data['DesiredCount'] = stub[:desired_count] unless stub[:desired_count].nil?
        data['EnableEcsManagedTags'] = stub[:enable_ecs_managed_tags] unless stub[:enable_ecs_managed_tags].nil?
        data['EnableExecuteCommand'] = stub[:enable_execute_command] unless stub[:enable_execute_command].nil?
        data['HealthCheckGracePeriodSeconds'] = stub[:health_check_grace_period_seconds] unless stub[:health_check_grace_period_seconds].nil?
        data['LaunchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['LoadBalancers'] = AwsEcsServiceLoadBalancersList.stub(stub[:load_balancers]) unless stub[:load_balancers].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NetworkConfiguration'] = AwsEcsServiceNetworkConfigurationDetails.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['PlacementConstraints'] = AwsEcsServicePlacementConstraintsList.stub(stub[:placement_constraints]) unless stub[:placement_constraints].nil?
        data['PlacementStrategies'] = AwsEcsServicePlacementStrategiesList.stub(stub[:placement_strategies]) unless stub[:placement_strategies].nil?
        data['PlatformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['PropagateTags'] = stub[:propagate_tags] unless stub[:propagate_tags].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['SchedulingStrategy'] = stub[:scheduling_strategy] unless stub[:scheduling_strategy].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['ServiceRegistries'] = AwsEcsServiceServiceRegistriesList.stub(stub[:service_registries]) unless stub[:service_registries].nil?
        data['TaskDefinition'] = stub[:task_definition] unless stub[:task_definition].nil?
        data
      end
    end

    # List Stubber for AwsEcsServiceServiceRegistriesList
    class AwsEcsServiceServiceRegistriesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceServiceRegistriesList')
        visited = visited + ['AwsEcsServiceServiceRegistriesList']
        [
          AwsEcsServiceServiceRegistriesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsServiceServiceRegistriesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsServiceServiceRegistriesDetails
    class AwsEcsServiceServiceRegistriesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceServiceRegistriesDetails')
        visited = visited + ['AwsEcsServiceServiceRegistriesDetails']
        {
          container_name: 'container_name',
          container_port: 1,
          port: 1,
          registry_arn: 'registry_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceServiceRegistriesDetails.new
        data = {}
        data['ContainerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['ContainerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['RegistryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data
      end
    end

    # List Stubber for AwsEcsServicePlacementStrategiesList
    class AwsEcsServicePlacementStrategiesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServicePlacementStrategiesList')
        visited = visited + ['AwsEcsServicePlacementStrategiesList']
        [
          AwsEcsServicePlacementStrategiesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsServicePlacementStrategiesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsServicePlacementStrategiesDetails
    class AwsEcsServicePlacementStrategiesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServicePlacementStrategiesDetails')
        visited = visited + ['AwsEcsServicePlacementStrategiesDetails']
        {
          field: 'field',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServicePlacementStrategiesDetails.new
        data = {}
        data['Field'] = stub[:field] unless stub[:field].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AwsEcsServicePlacementConstraintsList
    class AwsEcsServicePlacementConstraintsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServicePlacementConstraintsList')
        visited = visited + ['AwsEcsServicePlacementConstraintsList']
        [
          AwsEcsServicePlacementConstraintsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsServicePlacementConstraintsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsServicePlacementConstraintsDetails
    class AwsEcsServicePlacementConstraintsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServicePlacementConstraintsDetails')
        visited = visited + ['AwsEcsServicePlacementConstraintsDetails']
        {
          expression: 'expression',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServicePlacementConstraintsDetails.new
        data = {}
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceNetworkConfigurationDetails
    class AwsEcsServiceNetworkConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceNetworkConfigurationDetails')
        visited = visited + ['AwsEcsServiceNetworkConfigurationDetails']
        {
          aws_vpc_configuration: AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceNetworkConfigurationDetails.new
        data = {}
        data['AwsVpcConfiguration'] = AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.stub(stub[:aws_vpc_configuration]) unless stub[:aws_vpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
    class AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails')
        visited = visited + ['AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails']
        {
          assign_public_ip: 'assign_public_ip',
          security_groups: NonEmptyStringList.default(visited),
          subnets: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.new
        data = {}
        data['AssignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data['SecurityGroups'] = NonEmptyStringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['Subnets'] = NonEmptyStringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for AwsEcsServiceLoadBalancersList
    class AwsEcsServiceLoadBalancersList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceLoadBalancersList')
        visited = visited + ['AwsEcsServiceLoadBalancersList']
        [
          AwsEcsServiceLoadBalancersDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsServiceLoadBalancersDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsServiceLoadBalancersDetails
    class AwsEcsServiceLoadBalancersDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceLoadBalancersDetails')
        visited = visited + ['AwsEcsServiceLoadBalancersDetails']
        {
          container_name: 'container_name',
          container_port: 1,
          load_balancer_name: 'load_balancer_name',
          target_group_arn: 'target_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceLoadBalancersDetails.new
        data = {}
        data['ContainerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['ContainerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['LoadBalancerName'] = stub[:load_balancer_name] unless stub[:load_balancer_name].nil?
        data['TargetGroupArn'] = stub[:target_group_arn] unless stub[:target_group_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceDeploymentControllerDetails
    class AwsEcsServiceDeploymentControllerDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceDeploymentControllerDetails')
        visited = visited + ['AwsEcsServiceDeploymentControllerDetails']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceDeploymentControllerDetails.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceDeploymentConfigurationDetails
    class AwsEcsServiceDeploymentConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceDeploymentConfigurationDetails')
        visited = visited + ['AwsEcsServiceDeploymentConfigurationDetails']
        {
          deployment_circuit_breaker: AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.default(visited),
          maximum_percent: 1,
          minimum_healthy_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceDeploymentConfigurationDetails.new
        data = {}
        data['DeploymentCircuitBreaker'] = AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.stub(stub[:deployment_circuit_breaker]) unless stub[:deployment_circuit_breaker].nil?
        data['MaximumPercent'] = stub[:maximum_percent] unless stub[:maximum_percent].nil?
        data['MinimumHealthyPercent'] = stub[:minimum_healthy_percent] unless stub[:minimum_healthy_percent].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
    class AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails')
        visited = visited + ['AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails']
        {
          enable: false,
          rollback: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.new
        data = {}
        data['Enable'] = stub[:enable] unless stub[:enable].nil?
        data['Rollback'] = stub[:rollback] unless stub[:rollback].nil?
        data
      end
    end

    # List Stubber for AwsEcsServiceCapacityProviderStrategyList
    class AwsEcsServiceCapacityProviderStrategyList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceCapacityProviderStrategyList')
        visited = visited + ['AwsEcsServiceCapacityProviderStrategyList']
        [
          AwsEcsServiceCapacityProviderStrategyDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsServiceCapacityProviderStrategyDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsServiceCapacityProviderStrategyDetails
    class AwsEcsServiceCapacityProviderStrategyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsServiceCapacityProviderStrategyDetails')
        visited = visited + ['AwsEcsServiceCapacityProviderStrategyDetails']
        {
          base: 1,
          capacity_provider: 'capacity_provider',
          weight: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsServiceCapacityProviderStrategyDetails.new
        data = {}
        data['Base'] = stub[:base] unless stub[:base].nil?
        data['CapacityProvider'] = stub[:capacity_provider] unless stub[:capacity_provider].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsEventSubscriptionDetails
    class AwsRdsEventSubscriptionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsEventSubscriptionDetails')
        visited = visited + ['AwsRdsEventSubscriptionDetails']
        {
          cust_subscription_id: 'cust_subscription_id',
          customer_aws_id: 'customer_aws_id',
          enabled: false,
          event_categories_list: NonEmptyStringList.default(visited),
          event_subscription_arn: 'event_subscription_arn',
          sns_topic_arn: 'sns_topic_arn',
          source_ids_list: NonEmptyStringList.default(visited),
          source_type: 'source_type',
          status: 'status',
          subscription_creation_time: 'subscription_creation_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsEventSubscriptionDetails.new
        data = {}
        data['CustSubscriptionId'] = stub[:cust_subscription_id] unless stub[:cust_subscription_id].nil?
        data['CustomerAwsId'] = stub[:customer_aws_id] unless stub[:customer_aws_id].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['EventCategoriesList'] = NonEmptyStringList.stub(stub[:event_categories_list]) unless stub[:event_categories_list].nil?
        data['EventSubscriptionArn'] = stub[:event_subscription_arn] unless stub[:event_subscription_arn].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['SourceIdsList'] = NonEmptyStringList.stub(stub[:source_ids_list]) unless stub[:source_ids_list].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SubscriptionCreationTime'] = stub[:subscription_creation_time] unless stub[:subscription_creation_time].nil?
        data
      end
    end

    # Structure Stubber for ContainerDetails
    class ContainerDetails
      def self.default(visited=[])
        return nil if visited.include?('ContainerDetails')
        visited = visited + ['ContainerDetails']
        {
          name: 'name',
          image_id: 'image_id',
          image_name: 'image_name',
          launched_at: 'launched_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['ImageName'] = stub[:image_name] unless stub[:image_name].nil?
        data['LaunchedAt'] = stub[:launched_at] unless stub[:launched_at].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionDetails
    class AwsEcsTaskDefinitionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionDetails')
        visited = visited + ['AwsEcsTaskDefinitionDetails']
        {
          container_definitions: AwsEcsTaskDefinitionContainerDefinitionsList.default(visited),
          cpu: 'cpu',
          execution_role_arn: 'execution_role_arn',
          family: 'family',
          inference_accelerators: AwsEcsTaskDefinitionInferenceAcceleratorsList.default(visited),
          ipc_mode: 'ipc_mode',
          memory: 'memory',
          network_mode: 'network_mode',
          pid_mode: 'pid_mode',
          placement_constraints: AwsEcsTaskDefinitionPlacementConstraintsList.default(visited),
          proxy_configuration: AwsEcsTaskDefinitionProxyConfigurationDetails.default(visited),
          requires_compatibilities: NonEmptyStringList.default(visited),
          task_role_arn: 'task_role_arn',
          volumes: AwsEcsTaskDefinitionVolumesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionDetails.new
        data = {}
        data['ContainerDefinitions'] = AwsEcsTaskDefinitionContainerDefinitionsList.stub(stub[:container_definitions]) unless stub[:container_definitions].nil?
        data['Cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['InferenceAccelerators'] = AwsEcsTaskDefinitionInferenceAcceleratorsList.stub(stub[:inference_accelerators]) unless stub[:inference_accelerators].nil?
        data['IpcMode'] = stub[:ipc_mode] unless stub[:ipc_mode].nil?
        data['Memory'] = stub[:memory] unless stub[:memory].nil?
        data['NetworkMode'] = stub[:network_mode] unless stub[:network_mode].nil?
        data['PidMode'] = stub[:pid_mode] unless stub[:pid_mode].nil?
        data['PlacementConstraints'] = AwsEcsTaskDefinitionPlacementConstraintsList.stub(stub[:placement_constraints]) unless stub[:placement_constraints].nil?
        data['ProxyConfiguration'] = AwsEcsTaskDefinitionProxyConfigurationDetails.stub(stub[:proxy_configuration]) unless stub[:proxy_configuration].nil?
        data['RequiresCompatibilities'] = NonEmptyStringList.stub(stub[:requires_compatibilities]) unless stub[:requires_compatibilities].nil?
        data['TaskRoleArn'] = stub[:task_role_arn] unless stub[:task_role_arn].nil?
        data['Volumes'] = AwsEcsTaskDefinitionVolumesList.stub(stub[:volumes]) unless stub[:volumes].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionVolumesList
    class AwsEcsTaskDefinitionVolumesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesList')
        visited = visited + ['AwsEcsTaskDefinitionVolumesList']
        [
          AwsEcsTaskDefinitionVolumesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionVolumesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionVolumesDetails
    class AwsEcsTaskDefinitionVolumesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesDetails')
        visited = visited + ['AwsEcsTaskDefinitionVolumesDetails']
        {
          docker_volume_configuration: AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.default(visited),
          efs_volume_configuration: AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.default(visited),
          host: AwsEcsTaskDefinitionVolumesHostDetails.default(visited),
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionVolumesDetails.new
        data = {}
        data['DockerVolumeConfiguration'] = AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.stub(stub[:docker_volume_configuration]) unless stub[:docker_volume_configuration].nil?
        data['EfsVolumeConfiguration'] = AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.stub(stub[:efs_volume_configuration]) unless stub[:efs_volume_configuration].nil?
        data['Host'] = AwsEcsTaskDefinitionVolumesHostDetails.stub(stub[:host]) unless stub[:host].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionVolumesHostDetails
    class AwsEcsTaskDefinitionVolumesHostDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesHostDetails')
        visited = visited + ['AwsEcsTaskDefinitionVolumesHostDetails']
        {
          source_path: 'source_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionVolumesHostDetails.new
        data = {}
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails')
        visited = visited + ['AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails']
        {
          authorization_config: AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.default(visited),
          filesystem_id: 'filesystem_id',
          root_directory: 'root_directory',
          transit_encryption: 'transit_encryption',
          transit_encryption_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.new
        data = {}
        data['AuthorizationConfig'] = AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.stub(stub[:authorization_config]) unless stub[:authorization_config].nil?
        data['FilesystemId'] = stub[:filesystem_id] unless stub[:filesystem_id].nil?
        data['RootDirectory'] = stub[:root_directory] unless stub[:root_directory].nil?
        data['TransitEncryption'] = stub[:transit_encryption] unless stub[:transit_encryption].nil?
        data['TransitEncryptionPort'] = stub[:transit_encryption_port] unless stub[:transit_encryption_port].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails')
        visited = visited + ['AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails']
        {
          access_point_id: 'access_point_id',
          iam: 'iam',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.new
        data = {}
        data['AccessPointId'] = stub[:access_point_id] unless stub[:access_point_id].nil?
        data['Iam'] = stub[:iam] unless stub[:iam].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
    class AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails')
        visited = visited + ['AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails']
        {
          autoprovision: false,
          driver: 'driver',
          driver_opts: FieldMap.default(visited),
          labels: FieldMap.default(visited),
          scope: 'scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.new
        data = {}
        data['Autoprovision'] = stub[:autoprovision] unless stub[:autoprovision].nil?
        data['Driver'] = stub[:driver] unless stub[:driver].nil?
        data['DriverOpts'] = FieldMap.stub(stub[:driver_opts]) unless stub[:driver_opts].nil?
        data['Labels'] = FieldMap.stub(stub[:labels]) unless stub[:labels].nil?
        data['Scope'] = stub[:scope] unless stub[:scope].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionProxyConfigurationDetails
    class AwsEcsTaskDefinitionProxyConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionProxyConfigurationDetails')
        visited = visited + ['AwsEcsTaskDefinitionProxyConfigurationDetails']
        {
          container_name: 'container_name',
          proxy_configuration_properties: AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionProxyConfigurationDetails.new
        data = {}
        data['ContainerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['ProxyConfigurationProperties'] = AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.stub(stub[:proxy_configuration_properties]) unless stub[:proxy_configuration_properties].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList')
        visited = visited + ['AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList']
        [
          AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails')
        visited = visited + ['AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionPlacementConstraintsList
    class AwsEcsTaskDefinitionPlacementConstraintsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionPlacementConstraintsList')
        visited = visited + ['AwsEcsTaskDefinitionPlacementConstraintsList']
        [
          AwsEcsTaskDefinitionPlacementConstraintsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionPlacementConstraintsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionPlacementConstraintsDetails
    class AwsEcsTaskDefinitionPlacementConstraintsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionPlacementConstraintsDetails')
        visited = visited + ['AwsEcsTaskDefinitionPlacementConstraintsDetails']
        {
          expression: 'expression',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionPlacementConstraintsDetails.new
        data = {}
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionInferenceAcceleratorsList
    class AwsEcsTaskDefinitionInferenceAcceleratorsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionInferenceAcceleratorsList')
        visited = visited + ['AwsEcsTaskDefinitionInferenceAcceleratorsList']
        [
          AwsEcsTaskDefinitionInferenceAcceleratorsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionInferenceAcceleratorsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionInferenceAcceleratorsDetails
    class AwsEcsTaskDefinitionInferenceAcceleratorsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionInferenceAcceleratorsDetails')
        visited = visited + ['AwsEcsTaskDefinitionInferenceAcceleratorsDetails']
        {
          device_name: 'device_name',
          device_type: 'device_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['DeviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsList
    class AwsEcsTaskDefinitionContainerDefinitionsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsDetails']
        {
          command: NonEmptyStringList.default(visited),
          cpu: 1,
          depends_on: AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.default(visited),
          disable_networking: false,
          dns_search_domains: NonEmptyStringList.default(visited),
          dns_servers: NonEmptyStringList.default(visited),
          docker_labels: FieldMap.default(visited),
          docker_security_options: NonEmptyStringList.default(visited),
          entry_point: NonEmptyStringList.default(visited),
          environment: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.default(visited),
          environment_files: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.default(visited),
          essential: false,
          extra_hosts: AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.default(visited),
          firelens_configuration: AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.default(visited),
          health_check: AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.default(visited),
          hostname: 'hostname',
          image: 'image',
          interactive: false,
          links: NonEmptyStringList.default(visited),
          linux_parameters: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.default(visited),
          log_configuration: AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.default(visited),
          memory: 1,
          memory_reservation: 1,
          mount_points: AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.default(visited),
          name: 'name',
          port_mappings: AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.default(visited),
          privileged: false,
          pseudo_terminal: false,
          readonly_root_filesystem: false,
          repository_credentials: AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.default(visited),
          resource_requirements: AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.default(visited),
          secrets: AwsEcsTaskDefinitionContainerDefinitionsSecretsList.default(visited),
          start_timeout: 1,
          stop_timeout: 1,
          system_controls: AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.default(visited),
          ulimits: AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.default(visited),
          user: 'user',
          volumes_from: AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.default(visited),
          working_directory: 'working_directory',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsDetails.new
        data = {}
        data['Command'] = NonEmptyStringList.stub(stub[:command]) unless stub[:command].nil?
        data['Cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['DependsOn'] = AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.stub(stub[:depends_on]) unless stub[:depends_on].nil?
        data['DisableNetworking'] = stub[:disable_networking] unless stub[:disable_networking].nil?
        data['DnsSearchDomains'] = NonEmptyStringList.stub(stub[:dns_search_domains]) unless stub[:dns_search_domains].nil?
        data['DnsServers'] = NonEmptyStringList.stub(stub[:dns_servers]) unless stub[:dns_servers].nil?
        data['DockerLabels'] = FieldMap.stub(stub[:docker_labels]) unless stub[:docker_labels].nil?
        data['DockerSecurityOptions'] = NonEmptyStringList.stub(stub[:docker_security_options]) unless stub[:docker_security_options].nil?
        data['EntryPoint'] = NonEmptyStringList.stub(stub[:entry_point]) unless stub[:entry_point].nil?
        data['Environment'] = AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.stub(stub[:environment]) unless stub[:environment].nil?
        data['EnvironmentFiles'] = AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.stub(stub[:environment_files]) unless stub[:environment_files].nil?
        data['Essential'] = stub[:essential] unless stub[:essential].nil?
        data['ExtraHosts'] = AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.stub(stub[:extra_hosts]) unless stub[:extra_hosts].nil?
        data['FirelensConfiguration'] = AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.stub(stub[:firelens_configuration]) unless stub[:firelens_configuration].nil?
        data['HealthCheck'] = AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['Image'] = stub[:image] unless stub[:image].nil?
        data['Interactive'] = stub[:interactive] unless stub[:interactive].nil?
        data['Links'] = NonEmptyStringList.stub(stub[:links]) unless stub[:links].nil?
        data['LinuxParameters'] = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.stub(stub[:linux_parameters]) unless stub[:linux_parameters].nil?
        data['LogConfiguration'] = AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['Memory'] = stub[:memory] unless stub[:memory].nil?
        data['MemoryReservation'] = stub[:memory_reservation] unless stub[:memory_reservation].nil?
        data['MountPoints'] = AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.stub(stub[:mount_points]) unless stub[:mount_points].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PortMappings'] = AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.stub(stub[:port_mappings]) unless stub[:port_mappings].nil?
        data['Privileged'] = stub[:privileged] unless stub[:privileged].nil?
        data['PseudoTerminal'] = stub[:pseudo_terminal] unless stub[:pseudo_terminal].nil?
        data['ReadonlyRootFilesystem'] = stub[:readonly_root_filesystem] unless stub[:readonly_root_filesystem].nil?
        data['RepositoryCredentials'] = AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.stub(stub[:repository_credentials]) unless stub[:repository_credentials].nil?
        data['ResourceRequirements'] = AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.stub(stub[:resource_requirements]) unless stub[:resource_requirements].nil?
        data['Secrets'] = AwsEcsTaskDefinitionContainerDefinitionsSecretsList.stub(stub[:secrets]) unless stub[:secrets].nil?
        data['StartTimeout'] = stub[:start_timeout] unless stub[:start_timeout].nil?
        data['StopTimeout'] = stub[:stop_timeout] unless stub[:stop_timeout].nil?
        data['SystemControls'] = AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.stub(stub[:system_controls]) unless stub[:system_controls].nil?
        data['Ulimits'] = AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.stub(stub[:ulimits]) unless stub[:ulimits].nil?
        data['User'] = stub[:user] unless stub[:user].nil?
        data['VolumesFrom'] = AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.stub(stub[:volumes_from]) unless stub[:volumes_from].nil?
        data['WorkingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails']
        {
          read_only: false,
          source_container: 'source_container',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.new
        data = {}
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['SourceContainer'] = stub[:source_container] unless stub[:source_container].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsUlimitsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsUlimitsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails']
        {
          hard_limit: 1,
          name: 'name',
          soft_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.new
        data = {}
        data['HardLimit'] = stub[:hard_limit] unless stub[:hard_limit].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SoftLimit'] = stub[:soft_limit] unless stub[:soft_limit].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails']
        {
          namespace: 'namespace',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.new
        data = {}
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsSecretsList
    class AwsEcsTaskDefinitionContainerDefinitionsSecretsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsSecretsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsSecretsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails']
        {
          name: 'name',
          value_from: 'value_from',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ValueFrom'] = stub[:value_from] unless stub[:value_from].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails']
        {
          credentials_parameter: 'credentials_parameter',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.new
        data = {}
        data['CredentialsParameter'] = stub[:credentials_parameter] unless stub[:credentials_parameter].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails']
        {
          container_port: 1,
          host_port: 1,
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.new
        data = {}
        data['ContainerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['HostPort'] = stub[:host_port] unless stub[:host_port].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsMountPointsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsMountPointsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails']
        {
          container_path: 'container_path',
          read_only: false,
          source_volume: 'source_volume',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.new
        data = {}
        data['ContainerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['SourceVolume'] = stub[:source_volume] unless stub[:source_volume].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails']
        {
          log_driver: 'log_driver',
          options: FieldMap.default(visited),
          secret_options: AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.new
        data = {}
        data['LogDriver'] = stub[:log_driver] unless stub[:log_driver].nil?
        data['Options'] = FieldMap.stub(stub[:options]) unless stub[:options].nil?
        data['SecretOptions'] = AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.stub(stub[:secret_options]) unless stub[:secret_options].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails']
        {
          name: 'name',
          value_from: 'value_from',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ValueFrom'] = stub[:value_from] unless stub[:value_from].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails']
        {
          capabilities: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.default(visited),
          devices: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.default(visited),
          init_process_enabled: false,
          max_swap: 1,
          shared_memory_size: 1,
          swappiness: 1,
          tmpfs: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.new
        data = {}
        data['Capabilities'] = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        data['Devices'] = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.stub(stub[:devices]) unless stub[:devices].nil?
        data['InitProcessEnabled'] = stub[:init_process_enabled] unless stub[:init_process_enabled].nil?
        data['MaxSwap'] = stub[:max_swap] unless stub[:max_swap].nil?
        data['SharedMemorySize'] = stub[:shared_memory_size] unless stub[:shared_memory_size].nil?
        data['Swappiness'] = stub[:swappiness] unless stub[:swappiness].nil?
        data['Tmpfs'] = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.stub(stub[:tmpfs]) unless stub[:tmpfs].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails']
        {
          container_path: 'container_path',
          mount_options: NonEmptyStringList.default(visited),
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.new
        data = {}
        data['ContainerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['MountOptions'] = NonEmptyStringList.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails']
        {
          container_path: 'container_path',
          host_path: 'host_path',
          permissions: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.new
        data = {}
        data['ContainerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['HostPath'] = stub[:host_path] unless stub[:host_path].nil?
        data['Permissions'] = NonEmptyStringList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails']
        {
          add: NonEmptyStringList.default(visited),
          drop: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.new
        data = {}
        data['Add'] = NonEmptyStringList.stub(stub[:add]) unless stub[:add].nil?
        data['Drop'] = NonEmptyStringList.stub(stub[:drop]) unless stub[:drop].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
    class AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails']
        {
          command: NonEmptyStringList.default(visited),
          interval: 1,
          retries: 1,
          start_period: 1,
          timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.new
        data = {}
        data['Command'] = NonEmptyStringList.stub(stub[:command]) unless stub[:command].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['Retries'] = stub[:retries] unless stub[:retries].nil?
        data['StartPeriod'] = stub[:start_period] unless stub[:start_period].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
    class AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails']
        {
          options: FieldMap.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.new
        data = {}
        data['Options'] = FieldMap.stub(stub[:options]) unless stub[:options].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails']
        {
          hostname: 'hostname',
          ip_address: 'ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.new
        data = {}
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsDependsOnList')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsDependsOnList']
        [
          AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails')
        visited = visited + ['AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails']
        {
          condition: 'condition',
          container_name: 'container_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.new
        data = {}
        data['Condition'] = stub[:condition] unless stub[:condition].nil?
        data['ContainerName'] = stub[:container_name] unless stub[:container_name].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsClusterDetails
    class AwsEcsClusterDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterDetails')
        visited = visited + ['AwsEcsClusterDetails']
        {
          capacity_providers: NonEmptyStringList.default(visited),
          cluster_settings: AwsEcsClusterClusterSettingsList.default(visited),
          configuration: AwsEcsClusterConfigurationDetails.default(visited),
          default_capacity_provider_strategy: AwsEcsClusterDefaultCapacityProviderStrategyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterDetails.new
        data = {}
        data['CapacityProviders'] = NonEmptyStringList.stub(stub[:capacity_providers]) unless stub[:capacity_providers].nil?
        data['ClusterSettings'] = AwsEcsClusterClusterSettingsList.stub(stub[:cluster_settings]) unless stub[:cluster_settings].nil?
        data['Configuration'] = AwsEcsClusterConfigurationDetails.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['DefaultCapacityProviderStrategy'] = AwsEcsClusterDefaultCapacityProviderStrategyList.stub(stub[:default_capacity_provider_strategy]) unless stub[:default_capacity_provider_strategy].nil?
        data
      end
    end

    # List Stubber for AwsEcsClusterDefaultCapacityProviderStrategyList
    class AwsEcsClusterDefaultCapacityProviderStrategyList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterDefaultCapacityProviderStrategyList')
        visited = visited + ['AwsEcsClusterDefaultCapacityProviderStrategyList']
        [
          AwsEcsClusterDefaultCapacityProviderStrategyDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsClusterDefaultCapacityProviderStrategyDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsClusterDefaultCapacityProviderStrategyDetails
    class AwsEcsClusterDefaultCapacityProviderStrategyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterDefaultCapacityProviderStrategyDetails')
        visited = visited + ['AwsEcsClusterDefaultCapacityProviderStrategyDetails']
        {
          base: 1,
          capacity_provider: 'capacity_provider',
          weight: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails.new
        data = {}
        data['Base'] = stub[:base] unless stub[:base].nil?
        data['CapacityProvider'] = stub[:capacity_provider] unless stub[:capacity_provider].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsClusterConfigurationDetails
    class AwsEcsClusterConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterConfigurationDetails')
        visited = visited + ['AwsEcsClusterConfigurationDetails']
        {
          execute_command_configuration: AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterConfigurationDetails.new
        data = {}
        data['ExecuteCommandConfiguration'] = AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.stub(stub[:execute_command_configuration]) unless stub[:execute_command_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
    class AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterConfigurationExecuteCommandConfigurationDetails')
        visited = visited + ['AwsEcsClusterConfigurationExecuteCommandConfigurationDetails']
        {
          kms_key_id: 'kms_key_id',
          log_configuration: AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.default(visited),
          logging: 'logging',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['LogConfiguration'] = AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['Logging'] = stub[:logging] unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
    class AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails')
        visited = visited + ['AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails']
        {
          cloud_watch_encryption_enabled: false,
          cloud_watch_log_group_name: 'cloud_watch_log_group_name',
          s3_bucket_name: 's3_bucket_name',
          s3_encryption_enabled: false,
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.new
        data = {}
        data['CloudWatchEncryptionEnabled'] = stub[:cloud_watch_encryption_enabled] unless stub[:cloud_watch_encryption_enabled].nil?
        data['CloudWatchLogGroupName'] = stub[:cloud_watch_log_group_name] unless stub[:cloud_watch_log_group_name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3EncryptionEnabled'] = stub[:s3_encryption_enabled] unless stub[:s3_encryption_enabled].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data
      end
    end

    # List Stubber for AwsEcsClusterClusterSettingsList
    class AwsEcsClusterClusterSettingsList
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterClusterSettingsList')
        visited = visited + ['AwsEcsClusterClusterSettingsList']
        [
          AwsEcsClusterClusterSettingsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEcsClusterClusterSettingsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEcsClusterClusterSettingsDetails
    class AwsEcsClusterClusterSettingsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEcsClusterClusterSettingsDetails')
        visited = visited + ['AwsEcsClusterClusterSettingsDetails']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEcsClusterClusterSettingsDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbClusterDetails
    class AwsRdsDbClusterDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterDetails')
        visited = visited + ['AwsRdsDbClusterDetails']
        {
          allocated_storage: 1,
          availability_zones: StringList.default(visited),
          backup_retention_period: 1,
          database_name: 'database_name',
          status: 'status',
          endpoint: 'endpoint',
          reader_endpoint: 'reader_endpoint',
          custom_endpoints: StringList.default(visited),
          multi_az: false,
          engine: 'engine',
          engine_version: 'engine_version',
          port: 1,
          master_username: 'master_username',
          preferred_backup_window: 'preferred_backup_window',
          preferred_maintenance_window: 'preferred_maintenance_window',
          read_replica_identifiers: StringList.default(visited),
          vpc_security_groups: AwsRdsDbInstanceVpcSecurityGroups.default(visited),
          hosted_zone_id: 'hosted_zone_id',
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_resource_id: 'db_cluster_resource_id',
          associated_roles: AwsRdsDbClusterAssociatedRoles.default(visited),
          cluster_create_time: 'cluster_create_time',
          enabled_cloud_watch_logs_exports: StringList.default(visited),
          engine_mode: 'engine_mode',
          deletion_protection: false,
          http_endpoint_enabled: false,
          activity_stream_status: 'activity_stream_status',
          copy_tags_to_snapshot: false,
          cross_account_clone: false,
          domain_memberships: AwsRdsDbDomainMemberships.default(visited),
          db_cluster_parameter_group: 'db_cluster_parameter_group',
          db_subnet_group: 'db_subnet_group',
          db_cluster_option_group_memberships: AwsRdsDbClusterOptionGroupMemberships.default(visited),
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_members: AwsRdsDbClusterMembers.default(visited),
          iam_database_authentication_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbClusterDetails.new
        data = {}
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['AvailabilityZones'] = StringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['BackupRetentionPeriod'] = stub[:backup_retention_period] unless stub[:backup_retention_period].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['ReaderEndpoint'] = stub[:reader_endpoint] unless stub[:reader_endpoint].nil?
        data['CustomEndpoints'] = StringList.stub(stub[:custom_endpoints]) unless stub[:custom_endpoints].nil?
        data['MultiAz'] = stub[:multi_az] unless stub[:multi_az].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['MasterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['PreferredBackupWindow'] = stub[:preferred_backup_window] unless stub[:preferred_backup_window].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['ReadReplicaIdentifiers'] = StringList.stub(stub[:read_replica_identifiers]) unless stub[:read_replica_identifiers].nil?
        data['VpcSecurityGroups'] = AwsRdsDbInstanceVpcSecurityGroups.stub(stub[:vpc_security_groups]) unless stub[:vpc_security_groups].nil?
        data['HostedZoneId'] = stub[:hosted_zone_id] unless stub[:hosted_zone_id].nil?
        data['StorageEncrypted'] = stub[:storage_encrypted] unless stub[:storage_encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['DbClusterResourceId'] = stub[:db_cluster_resource_id] unless stub[:db_cluster_resource_id].nil?
        data['AssociatedRoles'] = AwsRdsDbClusterAssociatedRoles.stub(stub[:associated_roles]) unless stub[:associated_roles].nil?
        data['ClusterCreateTime'] = stub[:cluster_create_time] unless stub[:cluster_create_time].nil?
        data['EnabledCloudWatchLogsExports'] = StringList.stub(stub[:enabled_cloud_watch_logs_exports]) unless stub[:enabled_cloud_watch_logs_exports].nil?
        data['EngineMode'] = stub[:engine_mode] unless stub[:engine_mode].nil?
        data['DeletionProtection'] = stub[:deletion_protection] unless stub[:deletion_protection].nil?
        data['HttpEndpointEnabled'] = stub[:http_endpoint_enabled] unless stub[:http_endpoint_enabled].nil?
        data['ActivityStreamStatus'] = stub[:activity_stream_status] unless stub[:activity_stream_status].nil?
        data['CopyTagsToSnapshot'] = stub[:copy_tags_to_snapshot] unless stub[:copy_tags_to_snapshot].nil?
        data['CrossAccountClone'] = stub[:cross_account_clone] unless stub[:cross_account_clone].nil?
        data['DomainMemberships'] = AwsRdsDbDomainMemberships.stub(stub[:domain_memberships]) unless stub[:domain_memberships].nil?
        data['DbClusterParameterGroup'] = stub[:db_cluster_parameter_group] unless stub[:db_cluster_parameter_group].nil?
        data['DbSubnetGroup'] = stub[:db_subnet_group] unless stub[:db_subnet_group].nil?
        data['DbClusterOptionGroupMemberships'] = AwsRdsDbClusterOptionGroupMemberships.stub(stub[:db_cluster_option_group_memberships]) unless stub[:db_cluster_option_group_memberships].nil?
        data['DbClusterIdentifier'] = stub[:db_cluster_identifier] unless stub[:db_cluster_identifier].nil?
        data['DbClusterMembers'] = AwsRdsDbClusterMembers.stub(stub[:db_cluster_members]) unless stub[:db_cluster_members].nil?
        data['IamDatabaseAuthenticationEnabled'] = stub[:iam_database_authentication_enabled] unless stub[:iam_database_authentication_enabled].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbClusterMembers
    class AwsRdsDbClusterMembers
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterMembers')
        visited = visited + ['AwsRdsDbClusterMembers']
        [
          AwsRdsDbClusterMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbClusterMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbClusterMember
    class AwsRdsDbClusterMember
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterMember')
        visited = visited + ['AwsRdsDbClusterMember']
        {
          is_cluster_writer: false,
          promotion_tier: 1,
          db_instance_identifier: 'db_instance_identifier',
          db_cluster_parameter_group_status: 'db_cluster_parameter_group_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbClusterMember.new
        data = {}
        data['IsClusterWriter'] = stub[:is_cluster_writer] unless stub[:is_cluster_writer].nil?
        data['PromotionTier'] = stub[:promotion_tier] unless stub[:promotion_tier].nil?
        data['DbInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['DbClusterParameterGroupStatus'] = stub[:db_cluster_parameter_group_status] unless stub[:db_cluster_parameter_group_status].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbClusterOptionGroupMemberships
    class AwsRdsDbClusterOptionGroupMemberships
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterOptionGroupMemberships')
        visited = visited + ['AwsRdsDbClusterOptionGroupMemberships']
        [
          AwsRdsDbClusterOptionGroupMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbClusterOptionGroupMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbClusterOptionGroupMembership
    class AwsRdsDbClusterOptionGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterOptionGroupMembership')
        visited = visited + ['AwsRdsDbClusterOptionGroupMembership']
        {
          db_cluster_option_group_name: 'db_cluster_option_group_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbClusterOptionGroupMembership.new
        data = {}
        data['DbClusterOptionGroupName'] = stub[:db_cluster_option_group_name] unless stub[:db_cluster_option_group_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbDomainMemberships
    class AwsRdsDbDomainMemberships
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbDomainMemberships')
        visited = visited + ['AwsRdsDbDomainMemberships']
        [
          AwsRdsDbDomainMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbDomainMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbDomainMembership
    class AwsRdsDbDomainMembership
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbDomainMembership')
        visited = visited + ['AwsRdsDbDomainMembership']
        {
          domain: 'domain',
          status: 'status',
          fqdn: 'fqdn',
          iam_role_name: 'iam_role_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbDomainMembership.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Fqdn'] = stub[:fqdn] unless stub[:fqdn].nil?
        data['IamRoleName'] = stub[:iam_role_name] unless stub[:iam_role_name].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbClusterAssociatedRoles
    class AwsRdsDbClusterAssociatedRoles
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterAssociatedRoles')
        visited = visited + ['AwsRdsDbClusterAssociatedRoles']
        [
          AwsRdsDbClusterAssociatedRole.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbClusterAssociatedRole.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbClusterAssociatedRole
    class AwsRdsDbClusterAssociatedRole
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterAssociatedRole')
        visited = visited + ['AwsRdsDbClusterAssociatedRole']
        {
          role_arn: 'role_arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbClusterAssociatedRole.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbInstanceVpcSecurityGroups
    class AwsRdsDbInstanceVpcSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceVpcSecurityGroups')
        visited = visited + ['AwsRdsDbInstanceVpcSecurityGroups']
        [
          AwsRdsDbInstanceVpcSecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbInstanceVpcSecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbInstanceVpcSecurityGroup
    class AwsRdsDbInstanceVpcSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceVpcSecurityGroup')
        visited = visited + ['AwsRdsDbInstanceVpcSecurityGroup']
        {
          vpc_security_group_id: 'vpc_security_group_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbInstanceVpcSecurityGroup.new
        data = {}
        data['VpcSecurityGroupId'] = stub[:vpc_security_group_id] unless stub[:vpc_security_group_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbClusterSnapshotDetails
    class AwsRdsDbClusterSnapshotDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbClusterSnapshotDetails')
        visited = visited + ['AwsRdsDbClusterSnapshotDetails']
        {
          availability_zones: StringList.default(visited),
          snapshot_create_time: 'snapshot_create_time',
          engine: 'engine',
          allocated_storage: 1,
          status: 'status',
          port: 1,
          vpc_id: 'vpc_id',
          cluster_create_time: 'cluster_create_time',
          master_username: 'master_username',
          engine_version: 'engine_version',
          license_model: 'license_model',
          snapshot_type: 'snapshot_type',
          percent_progress: 1,
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_snapshot_identifier: 'db_cluster_snapshot_identifier',
          iam_database_authentication_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbClusterSnapshotDetails.new
        data = {}
        data['AvailabilityZones'] = StringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['SnapshotCreateTime'] = stub[:snapshot_create_time] unless stub[:snapshot_create_time].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ClusterCreateTime'] = stub[:cluster_create_time] unless stub[:cluster_create_time].nil?
        data['MasterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['LicenseModel'] = stub[:license_model] unless stub[:license_model].nil?
        data['SnapshotType'] = stub[:snapshot_type] unless stub[:snapshot_type].nil?
        data['PercentProgress'] = stub[:percent_progress] unless stub[:percent_progress].nil?
        data['StorageEncrypted'] = stub[:storage_encrypted] unless stub[:storage_encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['DbClusterIdentifier'] = stub[:db_cluster_identifier] unless stub[:db_cluster_identifier].nil?
        data['DbClusterSnapshotIdentifier'] = stub[:db_cluster_snapshot_identifier] unless stub[:db_cluster_snapshot_identifier].nil?
        data['IamDatabaseAuthenticationEnabled'] = stub[:iam_database_authentication_enabled] unless stub[:iam_database_authentication_enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbSnapshotDetails
    class AwsRdsDbSnapshotDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSnapshotDetails')
        visited = visited + ['AwsRdsDbSnapshotDetails']
        {
          db_snapshot_identifier: 'db_snapshot_identifier',
          db_instance_identifier: 'db_instance_identifier',
          snapshot_create_time: 'snapshot_create_time',
          engine: 'engine',
          allocated_storage: 1,
          status: 'status',
          port: 1,
          availability_zone: 'availability_zone',
          vpc_id: 'vpc_id',
          instance_create_time: 'instance_create_time',
          master_username: 'master_username',
          engine_version: 'engine_version',
          license_model: 'license_model',
          snapshot_type: 'snapshot_type',
          iops: 1,
          option_group_name: 'option_group_name',
          percent_progress: 1,
          source_region: 'source_region',
          source_db_snapshot_identifier: 'source_db_snapshot_identifier',
          storage_type: 'storage_type',
          tde_credential_arn: 'tde_credential_arn',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          timezone: 'timezone',
          iam_database_authentication_enabled: false,
          processor_features: AwsRdsDbProcessorFeatures.default(visited),
          dbi_resource_id: 'dbi_resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSnapshotDetails.new
        data = {}
        data['DbSnapshotIdentifier'] = stub[:db_snapshot_identifier] unless stub[:db_snapshot_identifier].nil?
        data['DbInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['SnapshotCreateTime'] = stub[:snapshot_create_time] unless stub[:snapshot_create_time].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['InstanceCreateTime'] = stub[:instance_create_time] unless stub[:instance_create_time].nil?
        data['MasterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['LicenseModel'] = stub[:license_model] unless stub[:license_model].nil?
        data['SnapshotType'] = stub[:snapshot_type] unless stub[:snapshot_type].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['OptionGroupName'] = stub[:option_group_name] unless stub[:option_group_name].nil?
        data['PercentProgress'] = stub[:percent_progress] unless stub[:percent_progress].nil?
        data['SourceRegion'] = stub[:source_region] unless stub[:source_region].nil?
        data['SourceDbSnapshotIdentifier'] = stub[:source_db_snapshot_identifier] unless stub[:source_db_snapshot_identifier].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['TdeCredentialArn'] = stub[:tde_credential_arn] unless stub[:tde_credential_arn].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['IamDatabaseAuthenticationEnabled'] = stub[:iam_database_authentication_enabled] unless stub[:iam_database_authentication_enabled].nil?
        data['ProcessorFeatures'] = AwsRdsDbProcessorFeatures.stub(stub[:processor_features]) unless stub[:processor_features].nil?
        data['DbiResourceId'] = stub[:dbi_resource_id] unless stub[:dbi_resource_id].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbProcessorFeatures
    class AwsRdsDbProcessorFeatures
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbProcessorFeatures')
        visited = visited + ['AwsRdsDbProcessorFeatures']
        [
          AwsRdsDbProcessorFeature.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbProcessorFeature.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbProcessorFeature
    class AwsRdsDbProcessorFeature
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbProcessorFeature')
        visited = visited + ['AwsRdsDbProcessorFeature']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbProcessorFeature.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsWafWebAclDetails
    class AwsWafWebAclDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsWafWebAclDetails')
        visited = visited + ['AwsWafWebAclDetails']
        {
          name: 'name',
          default_action: 'default_action',
          rules: AwsWafWebAclRuleList.default(visited),
          web_acl_id: 'web_acl_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafWebAclDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DefaultAction'] = stub[:default_action] unless stub[:default_action].nil?
        data['Rules'] = AwsWafWebAclRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['WebAclId'] = stub[:web_acl_id] unless stub[:web_acl_id].nil?
        data
      end
    end

    # List Stubber for AwsWafWebAclRuleList
    class AwsWafWebAclRuleList
      def self.default(visited=[])
        return nil if visited.include?('AwsWafWebAclRuleList')
        visited = visited + ['AwsWafWebAclRuleList']
        [
          AwsWafWebAclRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsWafWebAclRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsWafWebAclRule
    class AwsWafWebAclRule
      def self.default(visited=[])
        return nil if visited.include?('AwsWafWebAclRule')
        visited = visited + ['AwsWafWebAclRule']
        {
          action: WafAction.default(visited),
          excluded_rules: WafExcludedRuleList.default(visited),
          override_action: WafOverrideAction.default(visited),
          priority: 1,
          rule_id: 'rule_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsWafWebAclRule.new
        data = {}
        data['Action'] = WafAction.stub(stub[:action]) unless stub[:action].nil?
        data['ExcludedRules'] = WafExcludedRuleList.stub(stub[:excluded_rules]) unless stub[:excluded_rules].nil?
        data['OverrideAction'] = WafOverrideAction.stub(stub[:override_action]) unless stub[:override_action].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for WafOverrideAction
    class WafOverrideAction
      def self.default(visited=[])
        return nil if visited.include?('WafOverrideAction')
        visited = visited + ['WafOverrideAction']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::WafOverrideAction.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for WafExcludedRuleList
    class WafExcludedRuleList
      def self.default(visited=[])
        return nil if visited.include?('WafExcludedRuleList')
        visited = visited + ['WafExcludedRuleList']
        [
          WafExcludedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WafExcludedRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WafExcludedRule
    class WafExcludedRule
      def self.default(visited=[])
        return nil if visited.include?('WafExcludedRule')
        visited = visited + ['WafExcludedRule']
        {
          rule_id: 'rule_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::WafExcludedRule.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data
      end
    end

    # Structure Stubber for WafAction
    class WafAction
      def self.default(visited=[])
        return nil if visited.include?('WafAction')
        visited = visited + ['WafAction']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::WafAction.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsSqsQueueDetails
    class AwsSqsQueueDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsSqsQueueDetails')
        visited = visited + ['AwsSqsQueueDetails']
        {
          kms_data_key_reuse_period_seconds: 1,
          kms_master_key_id: 'kms_master_key_id',
          queue_name: 'queue_name',
          dead_letter_target_arn: 'dead_letter_target_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSqsQueueDetails.new
        data = {}
        data['KmsDataKeyReusePeriodSeconds'] = stub[:kms_data_key_reuse_period_seconds] unless stub[:kms_data_key_reuse_period_seconds].nil?
        data['KmsMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data['QueueName'] = stub[:queue_name] unless stub[:queue_name].nil?
        data['DeadLetterTargetArn'] = stub[:dead_letter_target_arn] unless stub[:dead_letter_target_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsSnsTopicDetails
    class AwsSnsTopicDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsSnsTopicDetails')
        visited = visited + ['AwsSnsTopicDetails']
        {
          kms_master_key_id: 'kms_master_key_id',
          subscription: AwsSnsTopicSubscriptionList.default(visited),
          topic_name: 'topic_name',
          owner: 'owner',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSnsTopicDetails.new
        data = {}
        data['KmsMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data['Subscription'] = AwsSnsTopicSubscriptionList.stub(stub[:subscription]) unless stub[:subscription].nil?
        data['TopicName'] = stub[:topic_name] unless stub[:topic_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data
      end
    end

    # List Stubber for AwsSnsTopicSubscriptionList
    class AwsSnsTopicSubscriptionList
      def self.default(visited=[])
        return nil if visited.include?('AwsSnsTopicSubscriptionList')
        visited = visited + ['AwsSnsTopicSubscriptionList']
        [
          AwsSnsTopicSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsSnsTopicSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsSnsTopicSubscription
    class AwsSnsTopicSubscription
      def self.default(visited=[])
        return nil if visited.include?('AwsSnsTopicSubscription')
        visited = visited + ['AwsSnsTopicSubscription']
        {
          endpoint: 'endpoint',
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSnsTopicSubscription.new
        data = {}
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbInstanceDetails
    class AwsRdsDbInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceDetails')
        visited = visited + ['AwsRdsDbInstanceDetails']
        {
          associated_roles: AwsRdsDbInstanceAssociatedRoles.default(visited),
          ca_certificate_identifier: 'ca_certificate_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          db_instance_identifier: 'db_instance_identifier',
          db_instance_class: 'db_instance_class',
          db_instance_port: 1,
          dbi_resource_id: 'dbi_resource_id',
          db_name: 'db_name',
          deletion_protection: false,
          endpoint: AwsRdsDbInstanceEndpoint.default(visited),
          engine: 'engine',
          engine_version: 'engine_version',
          iam_database_authentication_enabled: false,
          instance_create_time: 'instance_create_time',
          kms_key_id: 'kms_key_id',
          publicly_accessible: false,
          storage_encrypted: false,
          tde_credential_arn: 'tde_credential_arn',
          vpc_security_groups: AwsRdsDbInstanceVpcSecurityGroups.default(visited),
          multi_az: false,
          enhanced_monitoring_resource_arn: 'enhanced_monitoring_resource_arn',
          db_instance_status: 'db_instance_status',
          master_username: 'master_username',
          allocated_storage: 1,
          preferred_backup_window: 'preferred_backup_window',
          backup_retention_period: 1,
          db_security_groups: StringList.default(visited),
          db_parameter_groups: AwsRdsDbParameterGroups.default(visited),
          availability_zone: 'availability_zone',
          db_subnet_group: AwsRdsDbSubnetGroup.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: AwsRdsDbPendingModifiedValues.default(visited),
          latest_restorable_time: 'latest_restorable_time',
          auto_minor_version_upgrade: false,
          read_replica_source_db_instance_identifier: 'read_replica_source_db_instance_identifier',
          read_replica_db_instance_identifiers: StringList.default(visited),
          read_replica_db_cluster_identifiers: StringList.default(visited),
          license_model: 'license_model',
          iops: 1,
          option_group_memberships: AwsRdsDbOptionGroupMemberships.default(visited),
          character_set_name: 'character_set_name',
          secondary_availability_zone: 'secondary_availability_zone',
          status_infos: AwsRdsDbStatusInfos.default(visited),
          storage_type: 'storage_type',
          domain_memberships: AwsRdsDbDomainMemberships.default(visited),
          copy_tags_to_snapshot: false,
          monitoring_interval: 1,
          monitoring_role_arn: 'monitoring_role_arn',
          promotion_tier: 1,
          timezone: 'timezone',
          performance_insights_enabled: false,
          performance_insights_kms_key_id: 'performance_insights_kms_key_id',
          performance_insights_retention_period: 1,
          enabled_cloud_watch_logs_exports: StringList.default(visited),
          processor_features: AwsRdsDbProcessorFeatures.default(visited),
          listener_endpoint: AwsRdsDbInstanceEndpoint.default(visited),
          max_allocated_storage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbInstanceDetails.new
        data = {}
        data['AssociatedRoles'] = AwsRdsDbInstanceAssociatedRoles.stub(stub[:associated_roles]) unless stub[:associated_roles].nil?
        data['CACertificateIdentifier'] = stub[:ca_certificate_identifier] unless stub[:ca_certificate_identifier].nil?
        data['DBClusterIdentifier'] = stub[:db_cluster_identifier] unless stub[:db_cluster_identifier].nil?
        data['DBInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['DBInstanceClass'] = stub[:db_instance_class] unless stub[:db_instance_class].nil?
        data['DbInstancePort'] = stub[:db_instance_port] unless stub[:db_instance_port].nil?
        data['DbiResourceId'] = stub[:dbi_resource_id] unless stub[:dbi_resource_id].nil?
        data['DBName'] = stub[:db_name] unless stub[:db_name].nil?
        data['DeletionProtection'] = stub[:deletion_protection] unless stub[:deletion_protection].nil?
        data['Endpoint'] = AwsRdsDbInstanceEndpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['IAMDatabaseAuthenticationEnabled'] = stub[:iam_database_authentication_enabled] unless stub[:iam_database_authentication_enabled].nil?
        data['InstanceCreateTime'] = stub[:instance_create_time] unless stub[:instance_create_time].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['PubliclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['StorageEncrypted'] = stub[:storage_encrypted] unless stub[:storage_encrypted].nil?
        data['TdeCredentialArn'] = stub[:tde_credential_arn] unless stub[:tde_credential_arn].nil?
        data['VpcSecurityGroups'] = AwsRdsDbInstanceVpcSecurityGroups.stub(stub[:vpc_security_groups]) unless stub[:vpc_security_groups].nil?
        data['MultiAz'] = stub[:multi_az] unless stub[:multi_az].nil?
        data['EnhancedMonitoringResourceArn'] = stub[:enhanced_monitoring_resource_arn] unless stub[:enhanced_monitoring_resource_arn].nil?
        data['DbInstanceStatus'] = stub[:db_instance_status] unless stub[:db_instance_status].nil?
        data['MasterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['PreferredBackupWindow'] = stub[:preferred_backup_window] unless stub[:preferred_backup_window].nil?
        data['BackupRetentionPeriod'] = stub[:backup_retention_period] unless stub[:backup_retention_period].nil?
        data['DbSecurityGroups'] = StringList.stub(stub[:db_security_groups]) unless stub[:db_security_groups].nil?
        data['DbParameterGroups'] = AwsRdsDbParameterGroups.stub(stub[:db_parameter_groups]) unless stub[:db_parameter_groups].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['DbSubnetGroup'] = AwsRdsDbSubnetGroup.stub(stub[:db_subnet_group]) unless stub[:db_subnet_group].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['PendingModifiedValues'] = AwsRdsDbPendingModifiedValues.stub(stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        data['LatestRestorableTime'] = stub[:latest_restorable_time] unless stub[:latest_restorable_time].nil?
        data['AutoMinorVersionUpgrade'] = stub[:auto_minor_version_upgrade] unless stub[:auto_minor_version_upgrade].nil?
        data['ReadReplicaSourceDBInstanceIdentifier'] = stub[:read_replica_source_db_instance_identifier] unless stub[:read_replica_source_db_instance_identifier].nil?
        data['ReadReplicaDBInstanceIdentifiers'] = StringList.stub(stub[:read_replica_db_instance_identifiers]) unless stub[:read_replica_db_instance_identifiers].nil?
        data['ReadReplicaDBClusterIdentifiers'] = StringList.stub(stub[:read_replica_db_cluster_identifiers]) unless stub[:read_replica_db_cluster_identifiers].nil?
        data['LicenseModel'] = stub[:license_model] unless stub[:license_model].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['OptionGroupMemberships'] = AwsRdsDbOptionGroupMemberships.stub(stub[:option_group_memberships]) unless stub[:option_group_memberships].nil?
        data['CharacterSetName'] = stub[:character_set_name] unless stub[:character_set_name].nil?
        data['SecondaryAvailabilityZone'] = stub[:secondary_availability_zone] unless stub[:secondary_availability_zone].nil?
        data['StatusInfos'] = AwsRdsDbStatusInfos.stub(stub[:status_infos]) unless stub[:status_infos].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['DomainMemberships'] = AwsRdsDbDomainMemberships.stub(stub[:domain_memberships]) unless stub[:domain_memberships].nil?
        data['CopyTagsToSnapshot'] = stub[:copy_tags_to_snapshot] unless stub[:copy_tags_to_snapshot].nil?
        data['MonitoringInterval'] = stub[:monitoring_interval] unless stub[:monitoring_interval].nil?
        data['MonitoringRoleArn'] = stub[:monitoring_role_arn] unless stub[:monitoring_role_arn].nil?
        data['PromotionTier'] = stub[:promotion_tier] unless stub[:promotion_tier].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['PerformanceInsightsEnabled'] = stub[:performance_insights_enabled] unless stub[:performance_insights_enabled].nil?
        data['PerformanceInsightsKmsKeyId'] = stub[:performance_insights_kms_key_id] unless stub[:performance_insights_kms_key_id].nil?
        data['PerformanceInsightsRetentionPeriod'] = stub[:performance_insights_retention_period] unless stub[:performance_insights_retention_period].nil?
        data['EnabledCloudWatchLogsExports'] = StringList.stub(stub[:enabled_cloud_watch_logs_exports]) unless stub[:enabled_cloud_watch_logs_exports].nil?
        data['ProcessorFeatures'] = AwsRdsDbProcessorFeatures.stub(stub[:processor_features]) unless stub[:processor_features].nil?
        data['ListenerEndpoint'] = AwsRdsDbInstanceEndpoint.stub(stub[:listener_endpoint]) unless stub[:listener_endpoint].nil?
        data['MaxAllocatedStorage'] = stub[:max_allocated_storage] unless stub[:max_allocated_storage].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbInstanceEndpoint
    class AwsRdsDbInstanceEndpoint
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceEndpoint')
        visited = visited + ['AwsRdsDbInstanceEndpoint']
        {
          address: 'address',
          port: 1,
          hosted_zone_id: 'hosted_zone_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbInstanceEndpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['HostedZoneId'] = stub[:hosted_zone_id] unless stub[:hosted_zone_id].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbStatusInfos
    class AwsRdsDbStatusInfos
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbStatusInfos')
        visited = visited + ['AwsRdsDbStatusInfos']
        [
          AwsRdsDbStatusInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbStatusInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbStatusInfo
    class AwsRdsDbStatusInfo
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbStatusInfo')
        visited = visited + ['AwsRdsDbStatusInfo']
        {
          status_type: 'status_type',
          normal: false,
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbStatusInfo.new
        data = {}
        data['StatusType'] = stub[:status_type] unless stub[:status_type].nil?
        data['Normal'] = stub[:normal] unless stub[:normal].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbOptionGroupMemberships
    class AwsRdsDbOptionGroupMemberships
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbOptionGroupMemberships')
        visited = visited + ['AwsRdsDbOptionGroupMemberships']
        [
          AwsRdsDbOptionGroupMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbOptionGroupMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbOptionGroupMembership
    class AwsRdsDbOptionGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbOptionGroupMembership')
        visited = visited + ['AwsRdsDbOptionGroupMembership']
        {
          option_group_name: 'option_group_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbOptionGroupMembership.new
        data = {}
        data['OptionGroupName'] = stub[:option_group_name] unless stub[:option_group_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbPendingModifiedValues
    class AwsRdsDbPendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbPendingModifiedValues')
        visited = visited + ['AwsRdsDbPendingModifiedValues']
        {
          db_instance_class: 'db_instance_class',
          allocated_storage: 1,
          master_user_password: 'master_user_password',
          port: 1,
          backup_retention_period: 1,
          multi_az: false,
          engine_version: 'engine_version',
          license_model: 'license_model',
          iops: 1,
          db_instance_identifier: 'db_instance_identifier',
          storage_type: 'storage_type',
          ca_certificate_identifier: 'ca_certificate_identifier',
          db_subnet_group_name: 'db_subnet_group_name',
          pending_cloud_watch_logs_exports: AwsRdsPendingCloudWatchLogsExports.default(visited),
          processor_features: AwsRdsDbProcessorFeatures.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbPendingModifiedValues.new
        data = {}
        data['DbInstanceClass'] = stub[:db_instance_class] unless stub[:db_instance_class].nil?
        data['AllocatedStorage'] = stub[:allocated_storage] unless stub[:allocated_storage].nil?
        data['MasterUserPassword'] = stub[:master_user_password] unless stub[:master_user_password].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['BackupRetentionPeriod'] = stub[:backup_retention_period] unless stub[:backup_retention_period].nil?
        data['MultiAZ'] = stub[:multi_az] unless stub[:multi_az].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['LicenseModel'] = stub[:license_model] unless stub[:license_model].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['DbInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['CaCertificateIdentifier'] = stub[:ca_certificate_identifier] unless stub[:ca_certificate_identifier].nil?
        data['DbSubnetGroupName'] = stub[:db_subnet_group_name] unless stub[:db_subnet_group_name].nil?
        data['PendingCloudWatchLogsExports'] = AwsRdsPendingCloudWatchLogsExports.stub(stub[:pending_cloud_watch_logs_exports]) unless stub[:pending_cloud_watch_logs_exports].nil?
        data['ProcessorFeatures'] = AwsRdsDbProcessorFeatures.stub(stub[:processor_features]) unless stub[:processor_features].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsPendingCloudWatchLogsExports
    class AwsRdsPendingCloudWatchLogsExports
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsPendingCloudWatchLogsExports')
        visited = visited + ['AwsRdsPendingCloudWatchLogsExports']
        {
          log_types_to_enable: StringList.default(visited),
          log_types_to_disable: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsPendingCloudWatchLogsExports.new
        data = {}
        data['LogTypesToEnable'] = StringList.stub(stub[:log_types_to_enable]) unless stub[:log_types_to_enable].nil?
        data['LogTypesToDisable'] = StringList.stub(stub[:log_types_to_disable]) unless stub[:log_types_to_disable].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbSubnetGroup
    class AwsRdsDbSubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSubnetGroup')
        visited = visited + ['AwsRdsDbSubnetGroup']
        {
          db_subnet_group_name: 'db_subnet_group_name',
          db_subnet_group_description: 'db_subnet_group_description',
          vpc_id: 'vpc_id',
          subnet_group_status: 'subnet_group_status',
          subnets: AwsRdsDbSubnetGroupSubnets.default(visited),
          db_subnet_group_arn: 'db_subnet_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSubnetGroup.new
        data = {}
        data['DbSubnetGroupName'] = stub[:db_subnet_group_name] unless stub[:db_subnet_group_name].nil?
        data['DbSubnetGroupDescription'] = stub[:db_subnet_group_description] unless stub[:db_subnet_group_description].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetGroupStatus'] = stub[:subnet_group_status] unless stub[:subnet_group_status].nil?
        data['Subnets'] = AwsRdsDbSubnetGroupSubnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['DbSubnetGroupArn'] = stub[:db_subnet_group_arn] unless stub[:db_subnet_group_arn].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbSubnetGroupSubnets
    class AwsRdsDbSubnetGroupSubnets
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSubnetGroupSubnets')
        visited = visited + ['AwsRdsDbSubnetGroupSubnets']
        [
          AwsRdsDbSubnetGroupSubnet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbSubnetGroupSubnet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbSubnetGroupSubnet
    class AwsRdsDbSubnetGroupSubnet
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSubnetGroupSubnet')
        visited = visited + ['AwsRdsDbSubnetGroupSubnet']
        {
          subnet_identifier: 'subnet_identifier',
          subnet_availability_zone: AwsRdsDbSubnetGroupSubnetAvailabilityZone.default(visited),
          subnet_status: 'subnet_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSubnetGroupSubnet.new
        data = {}
        data['SubnetIdentifier'] = stub[:subnet_identifier] unless stub[:subnet_identifier].nil?
        data['SubnetAvailabilityZone'] = AwsRdsDbSubnetGroupSubnetAvailabilityZone.stub(stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        data['SubnetStatus'] = stub[:subnet_status] unless stub[:subnet_status].nil?
        data
      end
    end

    # Structure Stubber for AwsRdsDbSubnetGroupSubnetAvailabilityZone
    class AwsRdsDbSubnetGroupSubnetAvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbSubnetGroupSubnetAvailabilityZone')
        visited = visited + ['AwsRdsDbSubnetGroupSubnetAvailabilityZone']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbParameterGroups
    class AwsRdsDbParameterGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbParameterGroups')
        visited = visited + ['AwsRdsDbParameterGroups']
        [
          AwsRdsDbParameterGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbParameterGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbParameterGroup
    class AwsRdsDbParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbParameterGroup')
        visited = visited + ['AwsRdsDbParameterGroup']
        {
          db_parameter_group_name: 'db_parameter_group_name',
          parameter_apply_status: 'parameter_apply_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbParameterGroup.new
        data = {}
        data['DbParameterGroupName'] = stub[:db_parameter_group_name] unless stub[:db_parameter_group_name].nil?
        data['ParameterApplyStatus'] = stub[:parameter_apply_status] unless stub[:parameter_apply_status].nil?
        data
      end
    end

    # List Stubber for AwsRdsDbInstanceAssociatedRoles
    class AwsRdsDbInstanceAssociatedRoles
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceAssociatedRoles')
        visited = visited + ['AwsRdsDbInstanceAssociatedRoles']
        [
          AwsRdsDbInstanceAssociatedRole.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRdsDbInstanceAssociatedRole.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRdsDbInstanceAssociatedRole
    class AwsRdsDbInstanceAssociatedRole
      def self.default(visited=[])
        return nil if visited.include?('AwsRdsDbInstanceAssociatedRole')
        visited = visited + ['AwsRdsDbInstanceAssociatedRole']
        {
          role_arn: 'role_arn',
          feature_name: 'feature_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRdsDbInstanceAssociatedRole.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['FeatureName'] = stub[:feature_name] unless stub[:feature_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaLayerVersionDetails
    class AwsLambdaLayerVersionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaLayerVersionDetails')
        visited = visited + ['AwsLambdaLayerVersionDetails']
        {
          version: 1,
          compatible_runtimes: NonEmptyStringList.default(visited),
          created_date: 'created_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaLayerVersionDetails.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['CompatibleRuntimes'] = NonEmptyStringList.stub(stub[:compatible_runtimes]) unless stub[:compatible_runtimes].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionDetails
    class AwsLambdaFunctionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionDetails')
        visited = visited + ['AwsLambdaFunctionDetails']
        {
          code: AwsLambdaFunctionCode.default(visited),
          code_sha256: 'code_sha256',
          dead_letter_config: AwsLambdaFunctionDeadLetterConfig.default(visited),
          environment: AwsLambdaFunctionEnvironment.default(visited),
          function_name: 'function_name',
          handler: 'handler',
          kms_key_arn: 'kms_key_arn',
          last_modified: 'last_modified',
          layers: AwsLambdaFunctionLayerList.default(visited),
          master_arn: 'master_arn',
          memory_size: 1,
          revision_id: 'revision_id',
          role: 'role',
          runtime: 'runtime',
          timeout: 1,
          tracing_config: AwsLambdaFunctionTracingConfig.default(visited),
          vpc_config: AwsLambdaFunctionVpcConfig.default(visited),
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionDetails.new
        data = {}
        data['Code'] = AwsLambdaFunctionCode.stub(stub[:code]) unless stub[:code].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['DeadLetterConfig'] = AwsLambdaFunctionDeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = AwsLambdaFunctionEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['Layers'] = AwsLambdaFunctionLayerList.stub(stub[:layers]) unless stub[:layers].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['TracingConfig'] = AwsLambdaFunctionTracingConfig.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['VpcConfig'] = AwsLambdaFunctionVpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionVpcConfig
    class AwsLambdaFunctionVpcConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionVpcConfig')
        visited = visited + ['AwsLambdaFunctionVpcConfig']
        {
          security_group_ids: NonEmptyStringList.default(visited),
          subnet_ids: NonEmptyStringList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionVpcConfig.new
        data = {}
        data['SecurityGroupIds'] = NonEmptyStringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetIds'] = NonEmptyStringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionTracingConfig
    class AwsLambdaFunctionTracingConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionTracingConfig')
        visited = visited + ['AwsLambdaFunctionTracingConfig']
        {
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionTracingConfig.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # List Stubber for AwsLambdaFunctionLayerList
    class AwsLambdaFunctionLayerList
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionLayerList')
        visited = visited + ['AwsLambdaFunctionLayerList']
        [
          AwsLambdaFunctionLayer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsLambdaFunctionLayer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionLayer
    class AwsLambdaFunctionLayer
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionLayer')
        visited = visited + ['AwsLambdaFunctionLayer']
        {
          arn: 'arn',
          code_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionLayer.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionEnvironment
    class AwsLambdaFunctionEnvironment
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionEnvironment')
        visited = visited + ['AwsLambdaFunctionEnvironment']
        {
          variables: FieldMap.default(visited),
          error: AwsLambdaFunctionEnvironmentError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionEnvironment.new
        data = {}
        data['Variables'] = FieldMap.stub(stub[:variables]) unless stub[:variables].nil?
        data['Error'] = AwsLambdaFunctionEnvironmentError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionEnvironmentError
    class AwsLambdaFunctionEnvironmentError
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionEnvironmentError')
        visited = visited + ['AwsLambdaFunctionEnvironmentError']
        {
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionEnvironmentError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionDeadLetterConfig
    class AwsLambdaFunctionDeadLetterConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionDeadLetterConfig')
        visited = visited + ['AwsLambdaFunctionDeadLetterConfig']
        {
          target_arn: 'target_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionDeadLetterConfig.new
        data = {}
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsLambdaFunctionCode
    class AwsLambdaFunctionCode
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaFunctionCode')
        visited = visited + ['AwsLambdaFunctionCode']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
          s3_object_version: 's3_object_version',
          zip_file: 'zip_file',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsLambdaFunctionCode.new
        data = {}
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data['S3ObjectVersion'] = stub[:s3_object_version] unless stub[:s3_object_version].nil?
        data['ZipFile'] = stub[:zip_file] unless stub[:zip_file].nil?
        data
      end
    end

    # Structure Stubber for AwsKmsKeyDetails
    class AwsKmsKeyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsKmsKeyDetails')
        visited = visited + ['AwsKmsKeyDetails']
        {
          aws_account_id: 'aws_account_id',
          creation_date: 1.0,
          key_id: 'key_id',
          key_manager: 'key_manager',
          key_state: 'key_state',
          origin: 'origin',
          description: 'description',
          key_rotation_status: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsKmsKeyDetails.new
        data = {}
        data['AWSAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['CreationDate'] = Hearth::NumberHelper.serialize(stub[:creation_date])
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyManager'] = stub[:key_manager] unless stub[:key_manager].nil?
        data['KeyState'] = stub[:key_state] unless stub[:key_state].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KeyRotationStatus'] = stub[:key_rotation_status] unless stub[:key_rotation_status].nil?
        data
      end
    end

    # Structure Stubber for AwsIamRoleDetails
    class AwsIamRoleDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsIamRoleDetails')
        visited = visited + ['AwsIamRoleDetails']
        {
          assume_role_policy_document: 'assume_role_policy_document',
          attached_managed_policies: AwsIamAttachedManagedPolicyList.default(visited),
          create_date: 'create_date',
          instance_profile_list: AwsIamInstanceProfileList.default(visited),
          permissions_boundary: AwsIamPermissionsBoundary.default(visited),
          role_id: 'role_id',
          role_name: 'role_name',
          role_policy_list: AwsIamRolePolicyList.default(visited),
          max_session_duration: 1,
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamRoleDetails.new
        data = {}
        data['AssumeRolePolicyDocument'] = stub[:assume_role_policy_document] unless stub[:assume_role_policy_document].nil?
        data['AttachedManagedPolicies'] = AwsIamAttachedManagedPolicyList.stub(stub[:attached_managed_policies]) unless stub[:attached_managed_policies].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['InstanceProfileList'] = AwsIamInstanceProfileList.stub(stub[:instance_profile_list]) unless stub[:instance_profile_list].nil?
        data['PermissionsBoundary'] = AwsIamPermissionsBoundary.stub(stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        data['RoleId'] = stub[:role_id] unless stub[:role_id].nil?
        data['RoleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['RolePolicyList'] = AwsIamRolePolicyList.stub(stub[:role_policy_list]) unless stub[:role_policy_list].nil?
        data['MaxSessionDuration'] = stub[:max_session_duration] unless stub[:max_session_duration].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # List Stubber for AwsIamRolePolicyList
    class AwsIamRolePolicyList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamRolePolicyList')
        visited = visited + ['AwsIamRolePolicyList']
        [
          AwsIamRolePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamRolePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamRolePolicy
    class AwsIamRolePolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsIamRolePolicy')
        visited = visited + ['AwsIamRolePolicy']
        {
          policy_name: 'policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamRolePolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data
      end
    end

    # Structure Stubber for AwsIamPermissionsBoundary
    class AwsIamPermissionsBoundary
      def self.default(visited=[])
        return nil if visited.include?('AwsIamPermissionsBoundary')
        visited = visited + ['AwsIamPermissionsBoundary']
        {
          permissions_boundary_arn: 'permissions_boundary_arn',
          permissions_boundary_type: 'permissions_boundary_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamPermissionsBoundary.new
        data = {}
        data['PermissionsBoundaryArn'] = stub[:permissions_boundary_arn] unless stub[:permissions_boundary_arn].nil?
        data['PermissionsBoundaryType'] = stub[:permissions_boundary_type] unless stub[:permissions_boundary_type].nil?
        data
      end
    end

    # List Stubber for AwsIamInstanceProfileList
    class AwsIamInstanceProfileList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamInstanceProfileList')
        visited = visited + ['AwsIamInstanceProfileList']
        [
          AwsIamInstanceProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamInstanceProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamInstanceProfile
    class AwsIamInstanceProfile
      def self.default(visited=[])
        return nil if visited.include?('AwsIamInstanceProfile')
        visited = visited + ['AwsIamInstanceProfile']
        {
          arn: 'arn',
          create_date: 'create_date',
          instance_profile_id: 'instance_profile_id',
          instance_profile_name: 'instance_profile_name',
          path: 'path',
          roles: AwsIamInstanceProfileRoles.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamInstanceProfile.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['InstanceProfileId'] = stub[:instance_profile_id] unless stub[:instance_profile_id].nil?
        data['InstanceProfileName'] = stub[:instance_profile_name] unless stub[:instance_profile_name].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Roles'] = AwsIamInstanceProfileRoles.stub(stub[:roles]) unless stub[:roles].nil?
        data
      end
    end

    # List Stubber for AwsIamInstanceProfileRoles
    class AwsIamInstanceProfileRoles
      def self.default(visited=[])
        return nil if visited.include?('AwsIamInstanceProfileRoles')
        visited = visited + ['AwsIamInstanceProfileRoles']
        [
          AwsIamInstanceProfileRole.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamInstanceProfileRole.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamInstanceProfileRole
    class AwsIamInstanceProfileRole
      def self.default(visited=[])
        return nil if visited.include?('AwsIamInstanceProfileRole')
        visited = visited + ['AwsIamInstanceProfileRole']
        {
          arn: 'arn',
          assume_role_policy_document: 'assume_role_policy_document',
          create_date: 'create_date',
          path: 'path',
          role_id: 'role_id',
          role_name: 'role_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamInstanceProfileRole.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssumeRolePolicyDocument'] = stub[:assume_role_policy_document] unless stub[:assume_role_policy_document].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['RoleId'] = stub[:role_id] unless stub[:role_id].nil?
        data['RoleName'] = stub[:role_name] unless stub[:role_name].nil?
        data
      end
    end

    # List Stubber for AwsIamAttachedManagedPolicyList
    class AwsIamAttachedManagedPolicyList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAttachedManagedPolicyList')
        visited = visited + ['AwsIamAttachedManagedPolicyList']
        [
          AwsIamAttachedManagedPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamAttachedManagedPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamAttachedManagedPolicy
    class AwsIamAttachedManagedPolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAttachedManagedPolicy')
        visited = visited + ['AwsIamAttachedManagedPolicy']
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamAttachedManagedPolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsIamGroupDetails
    class AwsIamGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsIamGroupDetails')
        visited = visited + ['AwsIamGroupDetails']
        {
          attached_managed_policies: AwsIamAttachedManagedPolicyList.default(visited),
          create_date: 'create_date',
          group_id: 'group_id',
          group_name: 'group_name',
          group_policy_list: AwsIamGroupPolicyList.default(visited),
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamGroupDetails.new
        data = {}
        data['AttachedManagedPolicies'] = AwsIamAttachedManagedPolicyList.stub(stub[:attached_managed_policies]) unless stub[:attached_managed_policies].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupPolicyList'] = AwsIamGroupPolicyList.stub(stub[:group_policy_list]) unless stub[:group_policy_list].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # List Stubber for AwsIamGroupPolicyList
    class AwsIamGroupPolicyList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamGroupPolicyList')
        visited = visited + ['AwsIamGroupPolicyList']
        [
          AwsIamGroupPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamGroupPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamGroupPolicy
    class AwsIamGroupPolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsIamGroupPolicy')
        visited = visited + ['AwsIamGroupPolicy']
        {
          policy_name: 'policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamGroupPolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerDetails
    class AwsElbLoadBalancerDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerDetails')
        visited = visited + ['AwsElbLoadBalancerDetails']
        {
          availability_zones: StringList.default(visited),
          backend_server_descriptions: AwsElbLoadBalancerBackendServerDescriptions.default(visited),
          canonical_hosted_zone_name: 'canonical_hosted_zone_name',
          canonical_hosted_zone_name_id: 'canonical_hosted_zone_name_id',
          created_time: 'created_time',
          dns_name: 'dns_name',
          health_check: AwsElbLoadBalancerHealthCheck.default(visited),
          instances: AwsElbLoadBalancerInstances.default(visited),
          listener_descriptions: AwsElbLoadBalancerListenerDescriptions.default(visited),
          load_balancer_attributes: AwsElbLoadBalancerAttributes.default(visited),
          load_balancer_name: 'load_balancer_name',
          policies: AwsElbLoadBalancerPolicies.default(visited),
          scheme: 'scheme',
          security_groups: StringList.default(visited),
          source_security_group: AwsElbLoadBalancerSourceSecurityGroup.default(visited),
          subnets: StringList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerDetails.new
        data = {}
        data['AvailabilityZones'] = StringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['BackendServerDescriptions'] = AwsElbLoadBalancerBackendServerDescriptions.stub(stub[:backend_server_descriptions]) unless stub[:backend_server_descriptions].nil?
        data['CanonicalHostedZoneName'] = stub[:canonical_hosted_zone_name] unless stub[:canonical_hosted_zone_name].nil?
        data['CanonicalHostedZoneNameID'] = stub[:canonical_hosted_zone_name_id] unless stub[:canonical_hosted_zone_name_id].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['HealthCheck'] = AwsElbLoadBalancerHealthCheck.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['Instances'] = AwsElbLoadBalancerInstances.stub(stub[:instances]) unless stub[:instances].nil?
        data['ListenerDescriptions'] = AwsElbLoadBalancerListenerDescriptions.stub(stub[:listener_descriptions]) unless stub[:listener_descriptions].nil?
        data['LoadBalancerAttributes'] = AwsElbLoadBalancerAttributes.stub(stub[:load_balancer_attributes]) unless stub[:load_balancer_attributes].nil?
        data['LoadBalancerName'] = stub[:load_balancer_name] unless stub[:load_balancer_name].nil?
        data['Policies'] = AwsElbLoadBalancerPolicies.stub(stub[:policies]) unless stub[:policies].nil?
        data['Scheme'] = stub[:scheme] unless stub[:scheme].nil?
        data['SecurityGroups'] = StringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['SourceSecurityGroup'] = AwsElbLoadBalancerSourceSecurityGroup.stub(stub[:source_security_group]) unless stub[:source_security_group].nil?
        data['Subnets'] = StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerSourceSecurityGroup
    class AwsElbLoadBalancerSourceSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerSourceSecurityGroup')
        visited = visited + ['AwsElbLoadBalancerSourceSecurityGroup']
        {
          group_name: 'group_name',
          owner_alias: 'owner_alias',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerSourceSecurityGroup.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['OwnerAlias'] = stub[:owner_alias] unless stub[:owner_alias].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerPolicies
    class AwsElbLoadBalancerPolicies
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerPolicies')
        visited = visited + ['AwsElbLoadBalancerPolicies']
        {
          app_cookie_stickiness_policies: AwsElbAppCookieStickinessPolicies.default(visited),
          lb_cookie_stickiness_policies: AwsElbLbCookieStickinessPolicies.default(visited),
          other_policies: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerPolicies.new
        data = {}
        data['AppCookieStickinessPolicies'] = AwsElbAppCookieStickinessPolicies.stub(stub[:app_cookie_stickiness_policies]) unless stub[:app_cookie_stickiness_policies].nil?
        data['LbCookieStickinessPolicies'] = AwsElbLbCookieStickinessPolicies.stub(stub[:lb_cookie_stickiness_policies]) unless stub[:lb_cookie_stickiness_policies].nil?
        data['OtherPolicies'] = StringList.stub(stub[:other_policies]) unless stub[:other_policies].nil?
        data
      end
    end

    # List Stubber for AwsElbLbCookieStickinessPolicies
    class AwsElbLbCookieStickinessPolicies
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLbCookieStickinessPolicies')
        visited = visited + ['AwsElbLbCookieStickinessPolicies']
        [
          AwsElbLbCookieStickinessPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbLbCookieStickinessPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbLbCookieStickinessPolicy
    class AwsElbLbCookieStickinessPolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLbCookieStickinessPolicy')
        visited = visited + ['AwsElbLbCookieStickinessPolicy']
        {
          cookie_expiration_period: 1,
          policy_name: 'policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLbCookieStickinessPolicy.new
        data = {}
        data['CookieExpirationPeriod'] = stub[:cookie_expiration_period] unless stub[:cookie_expiration_period].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data
      end
    end

    # List Stubber for AwsElbAppCookieStickinessPolicies
    class AwsElbAppCookieStickinessPolicies
      def self.default(visited=[])
        return nil if visited.include?('AwsElbAppCookieStickinessPolicies')
        visited = visited + ['AwsElbAppCookieStickinessPolicies']
        [
          AwsElbAppCookieStickinessPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbAppCookieStickinessPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbAppCookieStickinessPolicy
    class AwsElbAppCookieStickinessPolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsElbAppCookieStickinessPolicy')
        visited = visited + ['AwsElbAppCookieStickinessPolicy']
        {
          cookie_name: 'cookie_name',
          policy_name: 'policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbAppCookieStickinessPolicy.new
        data = {}
        data['CookieName'] = stub[:cookie_name] unless stub[:cookie_name].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerAttributes
    class AwsElbLoadBalancerAttributes
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerAttributes')
        visited = visited + ['AwsElbLoadBalancerAttributes']
        {
          access_log: AwsElbLoadBalancerAccessLog.default(visited),
          connection_draining: AwsElbLoadBalancerConnectionDraining.default(visited),
          connection_settings: AwsElbLoadBalancerConnectionSettings.default(visited),
          cross_zone_load_balancing: AwsElbLoadBalancerCrossZoneLoadBalancing.default(visited),
          additional_attributes: AwsElbLoadBalancerAdditionalAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerAttributes.new
        data = {}
        data['AccessLog'] = AwsElbLoadBalancerAccessLog.stub(stub[:access_log]) unless stub[:access_log].nil?
        data['ConnectionDraining'] = AwsElbLoadBalancerConnectionDraining.stub(stub[:connection_draining]) unless stub[:connection_draining].nil?
        data['ConnectionSettings'] = AwsElbLoadBalancerConnectionSettings.stub(stub[:connection_settings]) unless stub[:connection_settings].nil?
        data['CrossZoneLoadBalancing'] = AwsElbLoadBalancerCrossZoneLoadBalancing.stub(stub[:cross_zone_load_balancing]) unless stub[:cross_zone_load_balancing].nil?
        data['AdditionalAttributes'] = AwsElbLoadBalancerAdditionalAttributeList.stub(stub[:additional_attributes]) unless stub[:additional_attributes].nil?
        data
      end
    end

    # List Stubber for AwsElbLoadBalancerAdditionalAttributeList
    class AwsElbLoadBalancerAdditionalAttributeList
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerAdditionalAttributeList')
        visited = visited + ['AwsElbLoadBalancerAdditionalAttributeList']
        [
          AwsElbLoadBalancerAdditionalAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbLoadBalancerAdditionalAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerAdditionalAttribute
    class AwsElbLoadBalancerAdditionalAttribute
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerAdditionalAttribute')
        visited = visited + ['AwsElbLoadBalancerAdditionalAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerAdditionalAttribute.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerCrossZoneLoadBalancing
    class AwsElbLoadBalancerCrossZoneLoadBalancing
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerCrossZoneLoadBalancing')
        visited = visited + ['AwsElbLoadBalancerCrossZoneLoadBalancing']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerCrossZoneLoadBalancing.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerConnectionSettings
    class AwsElbLoadBalancerConnectionSettings
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerConnectionSettings')
        visited = visited + ['AwsElbLoadBalancerConnectionSettings']
        {
          idle_timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerConnectionSettings.new
        data = {}
        data['IdleTimeout'] = stub[:idle_timeout] unless stub[:idle_timeout].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerConnectionDraining
    class AwsElbLoadBalancerConnectionDraining
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerConnectionDraining')
        visited = visited + ['AwsElbLoadBalancerConnectionDraining']
        {
          enabled: false,
          timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerConnectionDraining.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerAccessLog
    class AwsElbLoadBalancerAccessLog
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerAccessLog')
        visited = visited + ['AwsElbLoadBalancerAccessLog']
        {
          emit_interval: 1,
          enabled: false,
          s3_bucket_name: 's3_bucket_name',
          s3_bucket_prefix: 's3_bucket_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerAccessLog.new
        data = {}
        data['EmitInterval'] = stub[:emit_interval] unless stub[:emit_interval].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3BucketPrefix'] = stub[:s3_bucket_prefix] unless stub[:s3_bucket_prefix].nil?
        data
      end
    end

    # List Stubber for AwsElbLoadBalancerListenerDescriptions
    class AwsElbLoadBalancerListenerDescriptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerListenerDescriptions')
        visited = visited + ['AwsElbLoadBalancerListenerDescriptions']
        [
          AwsElbLoadBalancerListenerDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbLoadBalancerListenerDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerListenerDescription
    class AwsElbLoadBalancerListenerDescription
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerListenerDescription')
        visited = visited + ['AwsElbLoadBalancerListenerDescription']
        {
          listener: AwsElbLoadBalancerListener.default(visited),
          policy_names: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerListenerDescription.new
        data = {}
        data['Listener'] = AwsElbLoadBalancerListener.stub(stub[:listener]) unless stub[:listener].nil?
        data['PolicyNames'] = StringList.stub(stub[:policy_names]) unless stub[:policy_names].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerListener
    class AwsElbLoadBalancerListener
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerListener')
        visited = visited + ['AwsElbLoadBalancerListener']
        {
          instance_port: 1,
          instance_protocol: 'instance_protocol',
          load_balancer_port: 1,
          protocol: 'protocol',
          ssl_certificate_id: 'ssl_certificate_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerListener.new
        data = {}
        data['InstancePort'] = stub[:instance_port] unless stub[:instance_port].nil?
        data['InstanceProtocol'] = stub[:instance_protocol] unless stub[:instance_protocol].nil?
        data['LoadBalancerPort'] = stub[:load_balancer_port] unless stub[:load_balancer_port].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['SslCertificateId'] = stub[:ssl_certificate_id] unless stub[:ssl_certificate_id].nil?
        data
      end
    end

    # List Stubber for AwsElbLoadBalancerInstances
    class AwsElbLoadBalancerInstances
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerInstances')
        visited = visited + ['AwsElbLoadBalancerInstances']
        [
          AwsElbLoadBalancerInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbLoadBalancerInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerInstance
    class AwsElbLoadBalancerInstance
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerInstance')
        visited = visited + ['AwsElbLoadBalancerInstance']
        {
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerInstance.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerHealthCheck
    class AwsElbLoadBalancerHealthCheck
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerHealthCheck')
        visited = visited + ['AwsElbLoadBalancerHealthCheck']
        {
          healthy_threshold: 1,
          interval: 1,
          target: 'target',
          timeout: 1,
          unhealthy_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerHealthCheck.new
        data = {}
        data['HealthyThreshold'] = stub[:healthy_threshold] unless stub[:healthy_threshold].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['UnhealthyThreshold'] = stub[:unhealthy_threshold] unless stub[:unhealthy_threshold].nil?
        data
      end
    end

    # List Stubber for AwsElbLoadBalancerBackendServerDescriptions
    class AwsElbLoadBalancerBackendServerDescriptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerBackendServerDescriptions')
        visited = visited + ['AwsElbLoadBalancerBackendServerDescriptions']
        [
          AwsElbLoadBalancerBackendServerDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbLoadBalancerBackendServerDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbLoadBalancerBackendServerDescription
    class AwsElbLoadBalancerBackendServerDescription
      def self.default(visited=[])
        return nil if visited.include?('AwsElbLoadBalancerBackendServerDescription')
        visited = visited + ['AwsElbLoadBalancerBackendServerDescription']
        {
          instance_port: 1,
          policy_names: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbLoadBalancerBackendServerDescription.new
        data = {}
        data['InstancePort'] = stub[:instance_port] unless stub[:instance_port].nil?
        data['PolicyNames'] = StringList.stub(stub[:policy_names]) unless stub[:policy_names].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterDetails
    class AwsRedshiftClusterDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterDetails')
        visited = visited + ['AwsRedshiftClusterDetails']
        {
          allow_version_upgrade: false,
          automated_snapshot_retention_period: 1,
          availability_zone: 'availability_zone',
          cluster_availability_status: 'cluster_availability_status',
          cluster_create_time: 'cluster_create_time',
          cluster_identifier: 'cluster_identifier',
          cluster_nodes: AwsRedshiftClusterClusterNodes.default(visited),
          cluster_parameter_groups: AwsRedshiftClusterClusterParameterGroups.default(visited),
          cluster_public_key: 'cluster_public_key',
          cluster_revision_number: 'cluster_revision_number',
          cluster_security_groups: AwsRedshiftClusterClusterSecurityGroups.default(visited),
          cluster_snapshot_copy_status: AwsRedshiftClusterClusterSnapshotCopyStatus.default(visited),
          cluster_status: 'cluster_status',
          cluster_subnet_group_name: 'cluster_subnet_group_name',
          cluster_version: 'cluster_version',
          db_name: 'db_name',
          deferred_maintenance_windows: AwsRedshiftClusterDeferredMaintenanceWindows.default(visited),
          elastic_ip_status: AwsRedshiftClusterElasticIpStatus.default(visited),
          elastic_resize_number_of_node_options: 'elastic_resize_number_of_node_options',
          encrypted: false,
          endpoint: AwsRedshiftClusterEndpoint.default(visited),
          enhanced_vpc_routing: false,
          expected_next_snapshot_schedule_time: 'expected_next_snapshot_schedule_time',
          expected_next_snapshot_schedule_time_status: 'expected_next_snapshot_schedule_time_status',
          hsm_status: AwsRedshiftClusterHsmStatus.default(visited),
          iam_roles: AwsRedshiftClusterIamRoles.default(visited),
          kms_key_id: 'kms_key_id',
          maintenance_track_name: 'maintenance_track_name',
          manual_snapshot_retention_period: 1,
          master_username: 'master_username',
          next_maintenance_window_start_time: 'next_maintenance_window_start_time',
          node_type: 'node_type',
          number_of_nodes: 1,
          pending_actions: StringList.default(visited),
          pending_modified_values: AwsRedshiftClusterPendingModifiedValues.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          publicly_accessible: false,
          resize_info: AwsRedshiftClusterResizeInfo.default(visited),
          restore_status: AwsRedshiftClusterRestoreStatus.default(visited),
          snapshot_schedule_identifier: 'snapshot_schedule_identifier',
          snapshot_schedule_state: 'snapshot_schedule_state',
          vpc_id: 'vpc_id',
          vpc_security_groups: AwsRedshiftClusterVpcSecurityGroups.default(visited),
          logging_status: AwsRedshiftClusterLoggingStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterDetails.new
        data = {}
        data['AllowVersionUpgrade'] = stub[:allow_version_upgrade] unless stub[:allow_version_upgrade].nil?
        data['AutomatedSnapshotRetentionPeriod'] = stub[:automated_snapshot_retention_period] unless stub[:automated_snapshot_retention_period].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['ClusterAvailabilityStatus'] = stub[:cluster_availability_status] unless stub[:cluster_availability_status].nil?
        data['ClusterCreateTime'] = stub[:cluster_create_time] unless stub[:cluster_create_time].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['ClusterNodes'] = AwsRedshiftClusterClusterNodes.stub(stub[:cluster_nodes]) unless stub[:cluster_nodes].nil?
        data['ClusterParameterGroups'] = AwsRedshiftClusterClusterParameterGroups.stub(stub[:cluster_parameter_groups]) unless stub[:cluster_parameter_groups].nil?
        data['ClusterPublicKey'] = stub[:cluster_public_key] unless stub[:cluster_public_key].nil?
        data['ClusterRevisionNumber'] = stub[:cluster_revision_number] unless stub[:cluster_revision_number].nil?
        data['ClusterSecurityGroups'] = AwsRedshiftClusterClusterSecurityGroups.stub(stub[:cluster_security_groups]) unless stub[:cluster_security_groups].nil?
        data['ClusterSnapshotCopyStatus'] = AwsRedshiftClusterClusterSnapshotCopyStatus.stub(stub[:cluster_snapshot_copy_status]) unless stub[:cluster_snapshot_copy_status].nil?
        data['ClusterStatus'] = stub[:cluster_status] unless stub[:cluster_status].nil?
        data['ClusterSubnetGroupName'] = stub[:cluster_subnet_group_name] unless stub[:cluster_subnet_group_name].nil?
        data['ClusterVersion'] = stub[:cluster_version] unless stub[:cluster_version].nil?
        data['DBName'] = stub[:db_name] unless stub[:db_name].nil?
        data['DeferredMaintenanceWindows'] = AwsRedshiftClusterDeferredMaintenanceWindows.stub(stub[:deferred_maintenance_windows]) unless stub[:deferred_maintenance_windows].nil?
        data['ElasticIpStatus'] = AwsRedshiftClusterElasticIpStatus.stub(stub[:elastic_ip_status]) unless stub[:elastic_ip_status].nil?
        data['ElasticResizeNumberOfNodeOptions'] = stub[:elastic_resize_number_of_node_options] unless stub[:elastic_resize_number_of_node_options].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['Endpoint'] = AwsRedshiftClusterEndpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data['EnhancedVpcRouting'] = stub[:enhanced_vpc_routing] unless stub[:enhanced_vpc_routing].nil?
        data['ExpectedNextSnapshotScheduleTime'] = stub[:expected_next_snapshot_schedule_time] unless stub[:expected_next_snapshot_schedule_time].nil?
        data['ExpectedNextSnapshotScheduleTimeStatus'] = stub[:expected_next_snapshot_schedule_time_status] unless stub[:expected_next_snapshot_schedule_time_status].nil?
        data['HsmStatus'] = AwsRedshiftClusterHsmStatus.stub(stub[:hsm_status]) unless stub[:hsm_status].nil?
        data['IamRoles'] = AwsRedshiftClusterIamRoles.stub(stub[:iam_roles]) unless stub[:iam_roles].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['MaintenanceTrackName'] = stub[:maintenance_track_name] unless stub[:maintenance_track_name].nil?
        data['ManualSnapshotRetentionPeriod'] = stub[:manual_snapshot_retention_period] unless stub[:manual_snapshot_retention_period].nil?
        data['MasterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['NextMaintenanceWindowStartTime'] = stub[:next_maintenance_window_start_time] unless stub[:next_maintenance_window_start_time].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['NumberOfNodes'] = stub[:number_of_nodes] unless stub[:number_of_nodes].nil?
        data['PendingActions'] = StringList.stub(stub[:pending_actions]) unless stub[:pending_actions].nil?
        data['PendingModifiedValues'] = AwsRedshiftClusterPendingModifiedValues.stub(stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['PubliclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['ResizeInfo'] = AwsRedshiftClusterResizeInfo.stub(stub[:resize_info]) unless stub[:resize_info].nil?
        data['RestoreStatus'] = AwsRedshiftClusterRestoreStatus.stub(stub[:restore_status]) unless stub[:restore_status].nil?
        data['SnapshotScheduleIdentifier'] = stub[:snapshot_schedule_identifier] unless stub[:snapshot_schedule_identifier].nil?
        data['SnapshotScheduleState'] = stub[:snapshot_schedule_state] unless stub[:snapshot_schedule_state].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['VpcSecurityGroups'] = AwsRedshiftClusterVpcSecurityGroups.stub(stub[:vpc_security_groups]) unless stub[:vpc_security_groups].nil?
        data['LoggingStatus'] = AwsRedshiftClusterLoggingStatus.stub(stub[:logging_status]) unless stub[:logging_status].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterLoggingStatus
    class AwsRedshiftClusterLoggingStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterLoggingStatus')
        visited = visited + ['AwsRedshiftClusterLoggingStatus']
        {
          bucket_name: 'bucket_name',
          last_failure_message: 'last_failure_message',
          last_failure_time: 'last_failure_time',
          last_successful_delivery_time: 'last_successful_delivery_time',
          logging_enabled: false,
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterLoggingStatus.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['LastFailureMessage'] = stub[:last_failure_message] unless stub[:last_failure_message].nil?
        data['LastFailureTime'] = stub[:last_failure_time] unless stub[:last_failure_time].nil?
        data['LastSuccessfulDeliveryTime'] = stub[:last_successful_delivery_time] unless stub[:last_successful_delivery_time].nil?
        data['LoggingEnabled'] = stub[:logging_enabled] unless stub[:logging_enabled].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterVpcSecurityGroups
    class AwsRedshiftClusterVpcSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterVpcSecurityGroups')
        visited = visited + ['AwsRedshiftClusterVpcSecurityGroups']
        [
          AwsRedshiftClusterVpcSecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterVpcSecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterVpcSecurityGroup
    class AwsRedshiftClusterVpcSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterVpcSecurityGroup')
        visited = visited + ['AwsRedshiftClusterVpcSecurityGroup']
        {
          status: 'status',
          vpc_security_group_id: 'vpc_security_group_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterVpcSecurityGroup.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['VpcSecurityGroupId'] = stub[:vpc_security_group_id] unless stub[:vpc_security_group_id].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterRestoreStatus
    class AwsRedshiftClusterRestoreStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterRestoreStatus')
        visited = visited + ['AwsRedshiftClusterRestoreStatus']
        {
          current_restore_rate_in_mega_bytes_per_second: 1.0,
          elapsed_time_in_seconds: 1,
          estimated_time_to_completion_in_seconds: 1,
          progress_in_mega_bytes: 1,
          snapshot_size_in_mega_bytes: 1,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterRestoreStatus.new
        data = {}
        data['CurrentRestoreRateInMegaBytesPerSecond'] = Hearth::NumberHelper.serialize(stub[:current_restore_rate_in_mega_bytes_per_second])
        data['ElapsedTimeInSeconds'] = stub[:elapsed_time_in_seconds] unless stub[:elapsed_time_in_seconds].nil?
        data['EstimatedTimeToCompletionInSeconds'] = stub[:estimated_time_to_completion_in_seconds] unless stub[:estimated_time_to_completion_in_seconds].nil?
        data['ProgressInMegaBytes'] = stub[:progress_in_mega_bytes] unless stub[:progress_in_mega_bytes].nil?
        data['SnapshotSizeInMegaBytes'] = stub[:snapshot_size_in_mega_bytes] unless stub[:snapshot_size_in_mega_bytes].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterResizeInfo
    class AwsRedshiftClusterResizeInfo
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterResizeInfo')
        visited = visited + ['AwsRedshiftClusterResizeInfo']
        {
          allow_cancel_resize: false,
          resize_type: 'resize_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterResizeInfo.new
        data = {}
        data['AllowCancelResize'] = stub[:allow_cancel_resize] unless stub[:allow_cancel_resize].nil?
        data['ResizeType'] = stub[:resize_type] unless stub[:resize_type].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterPendingModifiedValues
    class AwsRedshiftClusterPendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterPendingModifiedValues')
        visited = visited + ['AwsRedshiftClusterPendingModifiedValues']
        {
          automated_snapshot_retention_period: 1,
          cluster_identifier: 'cluster_identifier',
          cluster_type: 'cluster_type',
          cluster_version: 'cluster_version',
          encryption_type: 'encryption_type',
          enhanced_vpc_routing: false,
          maintenance_track_name: 'maintenance_track_name',
          master_user_password: 'master_user_password',
          node_type: 'node_type',
          number_of_nodes: 1,
          publicly_accessible: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterPendingModifiedValues.new
        data = {}
        data['AutomatedSnapshotRetentionPeriod'] = stub[:automated_snapshot_retention_period] unless stub[:automated_snapshot_retention_period].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['ClusterType'] = stub[:cluster_type] unless stub[:cluster_type].nil?
        data['ClusterVersion'] = stub[:cluster_version] unless stub[:cluster_version].nil?
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['EnhancedVpcRouting'] = stub[:enhanced_vpc_routing] unless stub[:enhanced_vpc_routing].nil?
        data['MaintenanceTrackName'] = stub[:maintenance_track_name] unless stub[:maintenance_track_name].nil?
        data['MasterUserPassword'] = stub[:master_user_password] unless stub[:master_user_password].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['NumberOfNodes'] = stub[:number_of_nodes] unless stub[:number_of_nodes].nil?
        data['PubliclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterIamRoles
    class AwsRedshiftClusterIamRoles
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterIamRoles')
        visited = visited + ['AwsRedshiftClusterIamRoles']
        [
          AwsRedshiftClusterIamRole.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterIamRole.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterIamRole
    class AwsRedshiftClusterIamRole
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterIamRole')
        visited = visited + ['AwsRedshiftClusterIamRole']
        {
          apply_status: 'apply_status',
          iam_role_arn: 'iam_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterIamRole.new
        data = {}
        data['ApplyStatus'] = stub[:apply_status] unless stub[:apply_status].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterHsmStatus
    class AwsRedshiftClusterHsmStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterHsmStatus')
        visited = visited + ['AwsRedshiftClusterHsmStatus']
        {
          hsm_client_certificate_identifier: 'hsm_client_certificate_identifier',
          hsm_configuration_identifier: 'hsm_configuration_identifier',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterHsmStatus.new
        data = {}
        data['HsmClientCertificateIdentifier'] = stub[:hsm_client_certificate_identifier] unless stub[:hsm_client_certificate_identifier].nil?
        data['HsmConfigurationIdentifier'] = stub[:hsm_configuration_identifier] unless stub[:hsm_configuration_identifier].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterEndpoint
    class AwsRedshiftClusterEndpoint
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterEndpoint')
        visited = visited + ['AwsRedshiftClusterEndpoint']
        {
          address: 'address',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterEndpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterElasticIpStatus
    class AwsRedshiftClusterElasticIpStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterElasticIpStatus')
        visited = visited + ['AwsRedshiftClusterElasticIpStatus']
        {
          elastic_ip: 'elastic_ip',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterElasticIpStatus.new
        data = {}
        data['ElasticIp'] = stub[:elastic_ip] unless stub[:elastic_ip].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterDeferredMaintenanceWindows
    class AwsRedshiftClusterDeferredMaintenanceWindows
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterDeferredMaintenanceWindows')
        visited = visited + ['AwsRedshiftClusterDeferredMaintenanceWindows']
        [
          AwsRedshiftClusterDeferredMaintenanceWindow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterDeferredMaintenanceWindow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterDeferredMaintenanceWindow
    class AwsRedshiftClusterDeferredMaintenanceWindow
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterDeferredMaintenanceWindow')
        visited = visited + ['AwsRedshiftClusterDeferredMaintenanceWindow']
        {
          defer_maintenance_end_time: 'defer_maintenance_end_time',
          defer_maintenance_identifier: 'defer_maintenance_identifier',
          defer_maintenance_start_time: 'defer_maintenance_start_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterDeferredMaintenanceWindow.new
        data = {}
        data['DeferMaintenanceEndTime'] = stub[:defer_maintenance_end_time] unless stub[:defer_maintenance_end_time].nil?
        data['DeferMaintenanceIdentifier'] = stub[:defer_maintenance_identifier] unless stub[:defer_maintenance_identifier].nil?
        data['DeferMaintenanceStartTime'] = stub[:defer_maintenance_start_time] unless stub[:defer_maintenance_start_time].nil?
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterClusterSnapshotCopyStatus
    class AwsRedshiftClusterClusterSnapshotCopyStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterSnapshotCopyStatus')
        visited = visited + ['AwsRedshiftClusterClusterSnapshotCopyStatus']
        {
          destination_region: 'destination_region',
          manual_snapshot_retention_period: 1,
          retention_period: 1,
          snapshot_copy_grant_name: 'snapshot_copy_grant_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterClusterSnapshotCopyStatus.new
        data = {}
        data['DestinationRegion'] = stub[:destination_region] unless stub[:destination_region].nil?
        data['ManualSnapshotRetentionPeriod'] = stub[:manual_snapshot_retention_period] unless stub[:manual_snapshot_retention_period].nil?
        data['RetentionPeriod'] = stub[:retention_period] unless stub[:retention_period].nil?
        data['SnapshotCopyGrantName'] = stub[:snapshot_copy_grant_name] unless stub[:snapshot_copy_grant_name].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterClusterSecurityGroups
    class AwsRedshiftClusterClusterSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterSecurityGroups')
        visited = visited + ['AwsRedshiftClusterClusterSecurityGroups']
        [
          AwsRedshiftClusterClusterSecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterClusterSecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterClusterSecurityGroup
    class AwsRedshiftClusterClusterSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterSecurityGroup')
        visited = visited + ['AwsRedshiftClusterClusterSecurityGroup']
        {
          cluster_security_group_name: 'cluster_security_group_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterClusterSecurityGroup.new
        data = {}
        data['ClusterSecurityGroupName'] = stub[:cluster_security_group_name] unless stub[:cluster_security_group_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterClusterParameterGroups
    class AwsRedshiftClusterClusterParameterGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterParameterGroups')
        visited = visited + ['AwsRedshiftClusterClusterParameterGroups']
        [
          AwsRedshiftClusterClusterParameterGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterClusterParameterGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterClusterParameterGroup
    class AwsRedshiftClusterClusterParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterParameterGroup')
        visited = visited + ['AwsRedshiftClusterClusterParameterGroup']
        {
          cluster_parameter_status_list: AwsRedshiftClusterClusterParameterStatusList.default(visited),
          parameter_apply_status: 'parameter_apply_status',
          parameter_group_name: 'parameter_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterClusterParameterGroup.new
        data = {}
        data['ClusterParameterStatusList'] = AwsRedshiftClusterClusterParameterStatusList.stub(stub[:cluster_parameter_status_list]) unless stub[:cluster_parameter_status_list].nil?
        data['ParameterApplyStatus'] = stub[:parameter_apply_status] unless stub[:parameter_apply_status].nil?
        data['ParameterGroupName'] = stub[:parameter_group_name] unless stub[:parameter_group_name].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterClusterParameterStatusList
    class AwsRedshiftClusterClusterParameterStatusList
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterParameterStatusList')
        visited = visited + ['AwsRedshiftClusterClusterParameterStatusList']
        [
          AwsRedshiftClusterClusterParameterStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterClusterParameterStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterClusterParameterStatus
    class AwsRedshiftClusterClusterParameterStatus
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterParameterStatus')
        visited = visited + ['AwsRedshiftClusterClusterParameterStatus']
        {
          parameter_name: 'parameter_name',
          parameter_apply_status: 'parameter_apply_status',
          parameter_apply_error_description: 'parameter_apply_error_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterClusterParameterStatus.new
        data = {}
        data['ParameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['ParameterApplyStatus'] = stub[:parameter_apply_status] unless stub[:parameter_apply_status].nil?
        data['ParameterApplyErrorDescription'] = stub[:parameter_apply_error_description] unless stub[:parameter_apply_error_description].nil?
        data
      end
    end

    # List Stubber for AwsRedshiftClusterClusterNodes
    class AwsRedshiftClusterClusterNodes
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterNodes')
        visited = visited + ['AwsRedshiftClusterClusterNodes']
        [
          AwsRedshiftClusterClusterNode.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsRedshiftClusterClusterNode.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsRedshiftClusterClusterNode
    class AwsRedshiftClusterClusterNode
      def self.default(visited=[])
        return nil if visited.include?('AwsRedshiftClusterClusterNode')
        visited = visited + ['AwsRedshiftClusterClusterNode']
        {
          node_role: 'node_role',
          private_ip_address: 'private_ip_address',
          public_ip_address: 'public_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsRedshiftClusterClusterNode.new
        data = {}
        data['NodeRole'] = stub[:node_role] unless stub[:node_role].nil?
        data['PrivateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['PublicIpAddress'] = stub[:public_ip_address] unless stub[:public_ip_address].nil?
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateDetails
    class AwsCertificateManagerCertificateDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateDetails')
        visited = visited + ['AwsCertificateManagerCertificateDetails']
        {
          certificate_authority_arn: 'certificate_authority_arn',
          created_at: 'created_at',
          domain_name: 'domain_name',
          domain_validation_options: AwsCertificateManagerCertificateDomainValidationOptions.default(visited),
          extended_key_usages: AwsCertificateManagerCertificateExtendedKeyUsages.default(visited),
          failure_reason: 'failure_reason',
          imported_at: 'imported_at',
          in_use_by: StringList.default(visited),
          issued_at: 'issued_at',
          issuer: 'issuer',
          key_algorithm: 'key_algorithm',
          key_usages: AwsCertificateManagerCertificateKeyUsages.default(visited),
          not_after: 'not_after',
          not_before: 'not_before',
          options: AwsCertificateManagerCertificateOptions.default(visited),
          renewal_eligibility: 'renewal_eligibility',
          renewal_summary: AwsCertificateManagerCertificateRenewalSummary.default(visited),
          serial: 'serial',
          signature_algorithm: 'signature_algorithm',
          status: 'status',
          subject: 'subject',
          subject_alternative_names: StringList.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateDetails.new
        data = {}
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DomainValidationOptions'] = AwsCertificateManagerCertificateDomainValidationOptions.stub(stub[:domain_validation_options]) unless stub[:domain_validation_options].nil?
        data['ExtendedKeyUsages'] = AwsCertificateManagerCertificateExtendedKeyUsages.stub(stub[:extended_key_usages]) unless stub[:extended_key_usages].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ImportedAt'] = stub[:imported_at] unless stub[:imported_at].nil?
        data['InUseBy'] = StringList.stub(stub[:in_use_by]) unless stub[:in_use_by].nil?
        data['IssuedAt'] = stub[:issued_at] unless stub[:issued_at].nil?
        data['Issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['KeyAlgorithm'] = stub[:key_algorithm] unless stub[:key_algorithm].nil?
        data['KeyUsages'] = AwsCertificateManagerCertificateKeyUsages.stub(stub[:key_usages]) unless stub[:key_usages].nil?
        data['NotAfter'] = stub[:not_after] unless stub[:not_after].nil?
        data['NotBefore'] = stub[:not_before] unless stub[:not_before].nil?
        data['Options'] = AwsCertificateManagerCertificateOptions.stub(stub[:options]) unless stub[:options].nil?
        data['RenewalEligibility'] = stub[:renewal_eligibility] unless stub[:renewal_eligibility].nil?
        data['RenewalSummary'] = AwsCertificateManagerCertificateRenewalSummary.stub(stub[:renewal_summary]) unless stub[:renewal_summary].nil?
        data['Serial'] = stub[:serial] unless stub[:serial].nil?
        data['SignatureAlgorithm'] = stub[:signature_algorithm] unless stub[:signature_algorithm].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['SubjectAlternativeNames'] = StringList.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateRenewalSummary
    class AwsCertificateManagerCertificateRenewalSummary
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateRenewalSummary')
        visited = visited + ['AwsCertificateManagerCertificateRenewalSummary']
        {
          domain_validation_options: AwsCertificateManagerCertificateDomainValidationOptions.default(visited),
          renewal_status: 'renewal_status',
          renewal_status_reason: 'renewal_status_reason',
          updated_at: 'updated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateRenewalSummary.new
        data = {}
        data['DomainValidationOptions'] = AwsCertificateManagerCertificateDomainValidationOptions.stub(stub[:domain_validation_options]) unless stub[:domain_validation_options].nil?
        data['RenewalStatus'] = stub[:renewal_status] unless stub[:renewal_status].nil?
        data['RenewalStatusReason'] = stub[:renewal_status_reason] unless stub[:renewal_status_reason].nil?
        data['UpdatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data
      end
    end

    # List Stubber for AwsCertificateManagerCertificateDomainValidationOptions
    class AwsCertificateManagerCertificateDomainValidationOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateDomainValidationOptions')
        visited = visited + ['AwsCertificateManagerCertificateDomainValidationOptions']
        [
          AwsCertificateManagerCertificateDomainValidationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCertificateManagerCertificateDomainValidationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateDomainValidationOption
    class AwsCertificateManagerCertificateDomainValidationOption
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateDomainValidationOption')
        visited = visited + ['AwsCertificateManagerCertificateDomainValidationOption']
        {
          domain_name: 'domain_name',
          resource_record: AwsCertificateManagerCertificateResourceRecord.default(visited),
          validation_domain: 'validation_domain',
          validation_emails: StringList.default(visited),
          validation_method: 'validation_method',
          validation_status: 'validation_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateDomainValidationOption.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ResourceRecord'] = AwsCertificateManagerCertificateResourceRecord.stub(stub[:resource_record]) unless stub[:resource_record].nil?
        data['ValidationDomain'] = stub[:validation_domain] unless stub[:validation_domain].nil?
        data['ValidationEmails'] = StringList.stub(stub[:validation_emails]) unless stub[:validation_emails].nil?
        data['ValidationMethod'] = stub[:validation_method] unless stub[:validation_method].nil?
        data['ValidationStatus'] = stub[:validation_status] unless stub[:validation_status].nil?
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateResourceRecord
    class AwsCertificateManagerCertificateResourceRecord
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateResourceRecord')
        visited = visited + ['AwsCertificateManagerCertificateResourceRecord']
        {
          name: 'name',
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateResourceRecord.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateOptions
    class AwsCertificateManagerCertificateOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateOptions')
        visited = visited + ['AwsCertificateManagerCertificateOptions']
        {
          certificate_transparency_logging_preference: 'certificate_transparency_logging_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateOptions.new
        data = {}
        data['CertificateTransparencyLoggingPreference'] = stub[:certificate_transparency_logging_preference] unless stub[:certificate_transparency_logging_preference].nil?
        data
      end
    end

    # List Stubber for AwsCertificateManagerCertificateKeyUsages
    class AwsCertificateManagerCertificateKeyUsages
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateKeyUsages')
        visited = visited + ['AwsCertificateManagerCertificateKeyUsages']
        [
          AwsCertificateManagerCertificateKeyUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCertificateManagerCertificateKeyUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateKeyUsage
    class AwsCertificateManagerCertificateKeyUsage
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateKeyUsage')
        visited = visited + ['AwsCertificateManagerCertificateKeyUsage']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateKeyUsage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for AwsCertificateManagerCertificateExtendedKeyUsages
    class AwsCertificateManagerCertificateExtendedKeyUsages
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateExtendedKeyUsages')
        visited = visited + ['AwsCertificateManagerCertificateExtendedKeyUsages']
        [
          AwsCertificateManagerCertificateExtendedKeyUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCertificateManagerCertificateExtendedKeyUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCertificateManagerCertificateExtendedKeyUsage
    class AwsCertificateManagerCertificateExtendedKeyUsage
      def self.default(visited=[])
        return nil if visited.include?('AwsCertificateManagerCertificateExtendedKeyUsage')
        visited = visited + ['AwsCertificateManagerCertificateExtendedKeyUsage']
        {
          name: 'name',
          o_id: 'o_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCertificateManagerCertificateExtendedKeyUsage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OId'] = stub[:o_id] unless stub[:o_id].nil?
        data
      end
    end

    # Structure Stubber for AwsSsmPatchComplianceDetails
    class AwsSsmPatchComplianceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsSsmPatchComplianceDetails')
        visited = visited + ['AwsSsmPatchComplianceDetails']
        {
          patch: AwsSsmPatch.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSsmPatchComplianceDetails.new
        data = {}
        data['Patch'] = AwsSsmPatch.stub(stub[:patch]) unless stub[:patch].nil?
        data
      end
    end

    # Structure Stubber for AwsSsmPatch
    class AwsSsmPatch
      def self.default(visited=[])
        return nil if visited.include?('AwsSsmPatch')
        visited = visited + ['AwsSsmPatch']
        {
          compliance_summary: AwsSsmComplianceSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSsmPatch.new
        data = {}
        data['ComplianceSummary'] = AwsSsmComplianceSummary.stub(stub[:compliance_summary]) unless stub[:compliance_summary].nil?
        data
      end
    end

    # Structure Stubber for AwsSsmComplianceSummary
    class AwsSsmComplianceSummary
      def self.default(visited=[])
        return nil if visited.include?('AwsSsmComplianceSummary')
        visited = visited + ['AwsSsmComplianceSummary']
        {
          status: 'status',
          compliant_critical_count: 1,
          compliant_high_count: 1,
          compliant_medium_count: 1,
          execution_type: 'execution_type',
          non_compliant_critical_count: 1,
          compliant_informational_count: 1,
          non_compliant_informational_count: 1,
          compliant_unspecified_count: 1,
          non_compliant_low_count: 1,
          non_compliant_high_count: 1,
          compliant_low_count: 1,
          compliance_type: 'compliance_type',
          patch_baseline_id: 'patch_baseline_id',
          overall_severity: 'overall_severity',
          non_compliant_medium_count: 1,
          non_compliant_unspecified_count: 1,
          patch_group: 'patch_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSsmComplianceSummary.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CompliantCriticalCount'] = stub[:compliant_critical_count] unless stub[:compliant_critical_count].nil?
        data['CompliantHighCount'] = stub[:compliant_high_count] unless stub[:compliant_high_count].nil?
        data['CompliantMediumCount'] = stub[:compliant_medium_count] unless stub[:compliant_medium_count].nil?
        data['ExecutionType'] = stub[:execution_type] unless stub[:execution_type].nil?
        data['NonCompliantCriticalCount'] = stub[:non_compliant_critical_count] unless stub[:non_compliant_critical_count].nil?
        data['CompliantInformationalCount'] = stub[:compliant_informational_count] unless stub[:compliant_informational_count].nil?
        data['NonCompliantInformationalCount'] = stub[:non_compliant_informational_count] unless stub[:non_compliant_informational_count].nil?
        data['CompliantUnspecifiedCount'] = stub[:compliant_unspecified_count] unless stub[:compliant_unspecified_count].nil?
        data['NonCompliantLowCount'] = stub[:non_compliant_low_count] unless stub[:non_compliant_low_count].nil?
        data['NonCompliantHighCount'] = stub[:non_compliant_high_count] unless stub[:non_compliant_high_count].nil?
        data['CompliantLowCount'] = stub[:compliant_low_count] unless stub[:compliant_low_count].nil?
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['PatchBaselineId'] = stub[:patch_baseline_id] unless stub[:patch_baseline_id].nil?
        data['OverallSeverity'] = stub[:overall_severity] unless stub[:overall_severity].nil?
        data['NonCompliantMediumCount'] = stub[:non_compliant_medium_count] unless stub[:non_compliant_medium_count].nil?
        data['NonCompliantUnspecifiedCount'] = stub[:non_compliant_unspecified_count] unless stub[:non_compliant_unspecified_count].nil?
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudTrailTrailDetails
    class AwsCloudTrailTrailDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudTrailTrailDetails')
        visited = visited + ['AwsCloudTrailTrailDetails']
        {
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          has_custom_event_selectors: false,
          home_region: 'home_region',
          include_global_service_events: false,
          is_multi_region_trail: false,
          is_organization_trail: false,
          kms_key_id: 'kms_key_id',
          log_file_validation_enabled: false,
          name: 'name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          sns_topic_arn: 'sns_topic_arn',
          sns_topic_name: 'sns_topic_name',
          trail_arn: 'trail_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudTrailTrailDetails.new
        data = {}
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['CloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['HasCustomEventSelectors'] = stub[:has_custom_event_selectors] unless stub[:has_custom_event_selectors].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['IncludeGlobalServiceEvents'] = stub[:include_global_service_events] unless stub[:include_global_service_events].nil?
        data['IsMultiRegionTrail'] = stub[:is_multi_region_trail] unless stub[:is_multi_region_trail].nil?
        data['IsOrganizationTrail'] = stub[:is_organization_trail] unless stub[:is_organization_trail].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['LogFileValidationEnabled'] = stub[:log_file_validation_enabled] unless stub[:log_file_validation_enabled].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['SnsTopicName'] = stub[:sns_topic_name] unless stub[:sns_topic_name].nil?
        data['TrailArn'] = stub[:trail_arn] unless stub[:trail_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayRestApiDetails
    class AwsApiGatewayRestApiDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayRestApiDetails')
        visited = visited + ['AwsApiGatewayRestApiDetails']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: 'created_date',
          version: 'version',
          binary_media_types: NonEmptyStringList.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: AwsApiGatewayEndpointConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayRestApiDetails.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['BinaryMediaTypes'] = NonEmptyStringList.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['MinimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['ApiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['EndpointConfiguration'] = AwsApiGatewayEndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayEndpointConfiguration
    class AwsApiGatewayEndpointConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayEndpointConfiguration')
        visited = visited + ['AwsApiGatewayEndpointConfiguration']
        {
          types: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayEndpointConfiguration.new
        data = {}
        data['Types'] = NonEmptyStringList.stub(stub[:types]) unless stub[:types].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayStageDetails
    class AwsApiGatewayStageDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayStageDetails')
        visited = visited + ['AwsApiGatewayStageDetails']
        {
          deployment_id: 'deployment_id',
          client_certificate_id: 'client_certificate_id',
          stage_name: 'stage_name',
          description: 'description',
          cache_cluster_enabled: false,
          cache_cluster_size: 'cache_cluster_size',
          cache_cluster_status: 'cache_cluster_status',
          method_settings: AwsApiGatewayMethodSettingsList.default(visited),
          variables: FieldMap.default(visited),
          documentation_version: 'documentation_version',
          access_log_settings: AwsApiGatewayAccessLogSettings.default(visited),
          canary_settings: AwsApiGatewayCanarySettings.default(visited),
          tracing_enabled: false,
          created_date: 'created_date',
          last_updated_date: 'last_updated_date',
          web_acl_arn: 'web_acl_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayStageDetails.new
        data = {}
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['ClientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['StageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CacheClusterEnabled'] = stub[:cache_cluster_enabled] unless stub[:cache_cluster_enabled].nil?
        data['CacheClusterSize'] = stub[:cache_cluster_size] unless stub[:cache_cluster_size].nil?
        data['CacheClusterStatus'] = stub[:cache_cluster_status] unless stub[:cache_cluster_status].nil?
        data['MethodSettings'] = AwsApiGatewayMethodSettingsList.stub(stub[:method_settings]) unless stub[:method_settings].nil?
        data['Variables'] = FieldMap.stub(stub[:variables]) unless stub[:variables].nil?
        data['DocumentationVersion'] = stub[:documentation_version] unless stub[:documentation_version].nil?
        data['AccessLogSettings'] = AwsApiGatewayAccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['CanarySettings'] = AwsApiGatewayCanarySettings.stub(stub[:canary_settings]) unless stub[:canary_settings].nil?
        data['TracingEnabled'] = stub[:tracing_enabled] unless stub[:tracing_enabled].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['LastUpdatedDate'] = stub[:last_updated_date] unless stub[:last_updated_date].nil?
        data['WebAclArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayCanarySettings
    class AwsApiGatewayCanarySettings
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayCanarySettings')
        visited = visited + ['AwsApiGatewayCanarySettings']
        {
          percent_traffic: 1.0,
          deployment_id: 'deployment_id',
          stage_variable_overrides: FieldMap.default(visited),
          use_stage_cache: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayCanarySettings.new
        data = {}
        data['PercentTraffic'] = Hearth::NumberHelper.serialize(stub[:percent_traffic])
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['StageVariableOverrides'] = FieldMap.stub(stub[:stage_variable_overrides]) unless stub[:stage_variable_overrides].nil?
        data['UseStageCache'] = stub[:use_stage_cache] unless stub[:use_stage_cache].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayAccessLogSettings
    class AwsApiGatewayAccessLogSettings
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayAccessLogSettings')
        visited = visited + ['AwsApiGatewayAccessLogSettings']
        {
          format: 'format',
          destination_arn: 'destination_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayAccessLogSettings.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data
      end
    end

    # List Stubber for AwsApiGatewayMethodSettingsList
    class AwsApiGatewayMethodSettingsList
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayMethodSettingsList')
        visited = visited + ['AwsApiGatewayMethodSettingsList']
        [
          AwsApiGatewayMethodSettings.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsApiGatewayMethodSettings.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsApiGatewayMethodSettings
    class AwsApiGatewayMethodSettings
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayMethodSettings')
        visited = visited + ['AwsApiGatewayMethodSettings']
        {
          metrics_enabled: false,
          logging_level: 'logging_level',
          data_trace_enabled: false,
          throttling_burst_limit: 1,
          throttling_rate_limit: 1.0,
          caching_enabled: false,
          cache_ttl_in_seconds: 1,
          cache_data_encrypted: false,
          require_authorization_for_cache_control: false,
          unauthorized_cache_control_header_strategy: 'unauthorized_cache_control_header_strategy',
          http_method: 'http_method',
          resource_path: 'resource_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayMethodSettings.new
        data = {}
        data['MetricsEnabled'] = stub[:metrics_enabled] unless stub[:metrics_enabled].nil?
        data['LoggingLevel'] = stub[:logging_level] unless stub[:logging_level].nil?
        data['DataTraceEnabled'] = stub[:data_trace_enabled] unless stub[:data_trace_enabled].nil?
        data['ThrottlingBurstLimit'] = stub[:throttling_burst_limit] unless stub[:throttling_burst_limit].nil?
        data['ThrottlingRateLimit'] = Hearth::NumberHelper.serialize(stub[:throttling_rate_limit])
        data['CachingEnabled'] = stub[:caching_enabled] unless stub[:caching_enabled].nil?
        data['CacheTtlInSeconds'] = stub[:cache_ttl_in_seconds] unless stub[:cache_ttl_in_seconds].nil?
        data['CacheDataEncrypted'] = stub[:cache_data_encrypted] unless stub[:cache_data_encrypted].nil?
        data['RequireAuthorizationForCacheControl'] = stub[:require_authorization_for_cache_control] unless stub[:require_authorization_for_cache_control].nil?
        data['UnauthorizedCacheControlHeaderStrategy'] = stub[:unauthorized_cache_control_header_strategy] unless stub[:unauthorized_cache_control_header_strategy].nil?
        data['HttpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['ResourcePath'] = stub[:resource_path] unless stub[:resource_path].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableDetails
    class AwsDynamoDbTableDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableDetails')
        visited = visited + ['AwsDynamoDbTableDetails']
        {
          attribute_definitions: AwsDynamoDbTableAttributeDefinitionList.default(visited),
          billing_mode_summary: AwsDynamoDbTableBillingModeSummary.default(visited),
          creation_date_time: 'creation_date_time',
          global_secondary_indexes: AwsDynamoDbTableGlobalSecondaryIndexList.default(visited),
          global_table_version: 'global_table_version',
          item_count: 1,
          key_schema: AwsDynamoDbTableKeySchemaList.default(visited),
          latest_stream_arn: 'latest_stream_arn',
          latest_stream_label: 'latest_stream_label',
          local_secondary_indexes: AwsDynamoDbTableLocalSecondaryIndexList.default(visited),
          provisioned_throughput: AwsDynamoDbTableProvisionedThroughput.default(visited),
          replicas: AwsDynamoDbTableReplicaList.default(visited),
          restore_summary: AwsDynamoDbTableRestoreSummary.default(visited),
          sse_description: AwsDynamoDbTableSseDescription.default(visited),
          stream_specification: AwsDynamoDbTableStreamSpecification.default(visited),
          table_id: 'table_id',
          table_name: 'table_name',
          table_size_bytes: 1,
          table_status: 'table_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableDetails.new
        data = {}
        data['AttributeDefinitions'] = AwsDynamoDbTableAttributeDefinitionList.stub(stub[:attribute_definitions]) unless stub[:attribute_definitions].nil?
        data['BillingModeSummary'] = AwsDynamoDbTableBillingModeSummary.stub(stub[:billing_mode_summary]) unless stub[:billing_mode_summary].nil?
        data['CreationDateTime'] = stub[:creation_date_time] unless stub[:creation_date_time].nil?
        data['GlobalSecondaryIndexes'] = AwsDynamoDbTableGlobalSecondaryIndexList.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['GlobalTableVersion'] = stub[:global_table_version] unless stub[:global_table_version].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['KeySchema'] = AwsDynamoDbTableKeySchemaList.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['LatestStreamArn'] = stub[:latest_stream_arn] unless stub[:latest_stream_arn].nil?
        data['LatestStreamLabel'] = stub[:latest_stream_label] unless stub[:latest_stream_label].nil?
        data['LocalSecondaryIndexes'] = AwsDynamoDbTableLocalSecondaryIndexList.stub(stub[:local_secondary_indexes]) unless stub[:local_secondary_indexes].nil?
        data['ProvisionedThroughput'] = AwsDynamoDbTableProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['Replicas'] = AwsDynamoDbTableReplicaList.stub(stub[:replicas]) unless stub[:replicas].nil?
        data['RestoreSummary'] = AwsDynamoDbTableRestoreSummary.stub(stub[:restore_summary]) unless stub[:restore_summary].nil?
        data['SseDescription'] = AwsDynamoDbTableSseDescription.stub(stub[:sse_description]) unless stub[:sse_description].nil?
        data['StreamSpecification'] = AwsDynamoDbTableStreamSpecification.stub(stub[:stream_specification]) unless stub[:stream_specification].nil?
        data['TableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TableSizeBytes'] = stub[:table_size_bytes] unless stub[:table_size_bytes].nil?
        data['TableStatus'] = stub[:table_status] unless stub[:table_status].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableStreamSpecification
    class AwsDynamoDbTableStreamSpecification
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableStreamSpecification')
        visited = visited + ['AwsDynamoDbTableStreamSpecification']
        {
          stream_enabled: false,
          stream_view_type: 'stream_view_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableStreamSpecification.new
        data = {}
        data['StreamEnabled'] = stub[:stream_enabled] unless stub[:stream_enabled].nil?
        data['StreamViewType'] = stub[:stream_view_type] unless stub[:stream_view_type].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableSseDescription
    class AwsDynamoDbTableSseDescription
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableSseDescription')
        visited = visited + ['AwsDynamoDbTableSseDescription']
        {
          inaccessible_encryption_date_time: 'inaccessible_encryption_date_time',
          status: 'status',
          sse_type: 'sse_type',
          kms_master_key_arn: 'kms_master_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableSseDescription.new
        data = {}
        data['InaccessibleEncryptionDateTime'] = stub[:inaccessible_encryption_date_time] unless stub[:inaccessible_encryption_date_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SseType'] = stub[:sse_type] unless stub[:sse_type].nil?
        data['KmsMasterKeyArn'] = stub[:kms_master_key_arn] unless stub[:kms_master_key_arn].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableRestoreSummary
    class AwsDynamoDbTableRestoreSummary
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableRestoreSummary')
        visited = visited + ['AwsDynamoDbTableRestoreSummary']
        {
          source_backup_arn: 'source_backup_arn',
          source_table_arn: 'source_table_arn',
          restore_date_time: 'restore_date_time',
          restore_in_progress: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableRestoreSummary.new
        data = {}
        data['SourceBackupArn'] = stub[:source_backup_arn] unless stub[:source_backup_arn].nil?
        data['SourceTableArn'] = stub[:source_table_arn] unless stub[:source_table_arn].nil?
        data['RestoreDateTime'] = stub[:restore_date_time] unless stub[:restore_date_time].nil?
        data['RestoreInProgress'] = stub[:restore_in_progress] unless stub[:restore_in_progress].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableReplicaList
    class AwsDynamoDbTableReplicaList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableReplicaList')
        visited = visited + ['AwsDynamoDbTableReplicaList']
        [
          AwsDynamoDbTableReplica.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableReplica.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableReplica
    class AwsDynamoDbTableReplica
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableReplica')
        visited = visited + ['AwsDynamoDbTableReplica']
        {
          global_secondary_indexes: AwsDynamoDbTableReplicaGlobalSecondaryIndexList.default(visited),
          kms_master_key_id: 'kms_master_key_id',
          provisioned_throughput_override: AwsDynamoDbTableProvisionedThroughputOverride.default(visited),
          region_name: 'region_name',
          replica_status: 'replica_status',
          replica_status_description: 'replica_status_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableReplica.new
        data = {}
        data['GlobalSecondaryIndexes'] = AwsDynamoDbTableReplicaGlobalSecondaryIndexList.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['KmsMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = AwsDynamoDbTableProvisionedThroughputOverride.stub(stub[:provisioned_throughput_override]) unless stub[:provisioned_throughput_override].nil?
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['ReplicaStatus'] = stub[:replica_status] unless stub[:replica_status].nil?
        data['ReplicaStatusDescription'] = stub[:replica_status_description] unless stub[:replica_status_description].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableProvisionedThroughputOverride
    class AwsDynamoDbTableProvisionedThroughputOverride
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableProvisionedThroughputOverride')
        visited = visited + ['AwsDynamoDbTableProvisionedThroughputOverride']
        {
          read_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableProvisionedThroughputOverride.new
        data = {}
        data['ReadCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableReplicaGlobalSecondaryIndexList
    class AwsDynamoDbTableReplicaGlobalSecondaryIndexList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableReplicaGlobalSecondaryIndexList')
        visited = visited + ['AwsDynamoDbTableReplicaGlobalSecondaryIndexList']
        [
          AwsDynamoDbTableReplicaGlobalSecondaryIndex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableReplicaGlobalSecondaryIndex.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableReplicaGlobalSecondaryIndex
    class AwsDynamoDbTableReplicaGlobalSecondaryIndex
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableReplicaGlobalSecondaryIndex')
        visited = visited + ['AwsDynamoDbTableReplicaGlobalSecondaryIndex']
        {
          index_name: 'index_name',
          provisioned_throughput_override: AwsDynamoDbTableProvisionedThroughputOverride.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['ProvisionedThroughputOverride'] = AwsDynamoDbTableProvisionedThroughputOverride.stub(stub[:provisioned_throughput_override]) unless stub[:provisioned_throughput_override].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableProvisionedThroughput
    class AwsDynamoDbTableProvisionedThroughput
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableProvisionedThroughput')
        visited = visited + ['AwsDynamoDbTableProvisionedThroughput']
        {
          last_decrease_date_time: 'last_decrease_date_time',
          last_increase_date_time: 'last_increase_date_time',
          number_of_decreases_today: 1,
          read_capacity_units: 1,
          write_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableProvisionedThroughput.new
        data = {}
        data['LastDecreaseDateTime'] = stub[:last_decrease_date_time] unless stub[:last_decrease_date_time].nil?
        data['LastIncreaseDateTime'] = stub[:last_increase_date_time] unless stub[:last_increase_date_time].nil?
        data['NumberOfDecreasesToday'] = stub[:number_of_decreases_today] unless stub[:number_of_decreases_today].nil?
        data['ReadCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = stub[:write_capacity_units] unless stub[:write_capacity_units].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableLocalSecondaryIndexList
    class AwsDynamoDbTableLocalSecondaryIndexList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableLocalSecondaryIndexList')
        visited = visited + ['AwsDynamoDbTableLocalSecondaryIndexList']
        [
          AwsDynamoDbTableLocalSecondaryIndex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableLocalSecondaryIndex.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableLocalSecondaryIndex
    class AwsDynamoDbTableLocalSecondaryIndex
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableLocalSecondaryIndex')
        visited = visited + ['AwsDynamoDbTableLocalSecondaryIndex']
        {
          index_arn: 'index_arn',
          index_name: 'index_name',
          key_schema: AwsDynamoDbTableKeySchemaList.default(visited),
          projection: AwsDynamoDbTableProjection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableLocalSecondaryIndex.new
        data = {}
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['KeySchema'] = AwsDynamoDbTableKeySchemaList.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = AwsDynamoDbTableProjection.stub(stub[:projection]) unless stub[:projection].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableProjection
    class AwsDynamoDbTableProjection
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableProjection')
        visited = visited + ['AwsDynamoDbTableProjection']
        {
          non_key_attributes: StringList.default(visited),
          projection_type: 'projection_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableProjection.new
        data = {}
        data['NonKeyAttributes'] = StringList.stub(stub[:non_key_attributes]) unless stub[:non_key_attributes].nil?
        data['ProjectionType'] = stub[:projection_type] unless stub[:projection_type].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableKeySchemaList
    class AwsDynamoDbTableKeySchemaList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableKeySchemaList')
        visited = visited + ['AwsDynamoDbTableKeySchemaList']
        [
          AwsDynamoDbTableKeySchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableKeySchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableKeySchema
    class AwsDynamoDbTableKeySchema
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableKeySchema')
        visited = visited + ['AwsDynamoDbTableKeySchema']
        {
          attribute_name: 'attribute_name',
          key_type: 'key_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableKeySchema.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['KeyType'] = stub[:key_type] unless stub[:key_type].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableGlobalSecondaryIndexList
    class AwsDynamoDbTableGlobalSecondaryIndexList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableGlobalSecondaryIndexList')
        visited = visited + ['AwsDynamoDbTableGlobalSecondaryIndexList']
        [
          AwsDynamoDbTableGlobalSecondaryIndex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableGlobalSecondaryIndex.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableGlobalSecondaryIndex
    class AwsDynamoDbTableGlobalSecondaryIndex
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableGlobalSecondaryIndex')
        visited = visited + ['AwsDynamoDbTableGlobalSecondaryIndex']
        {
          backfilling: false,
          index_arn: 'index_arn',
          index_name: 'index_name',
          index_size_bytes: 1,
          index_status: 'index_status',
          item_count: 1,
          key_schema: AwsDynamoDbTableKeySchemaList.default(visited),
          projection: AwsDynamoDbTableProjection.default(visited),
          provisioned_throughput: AwsDynamoDbTableProvisionedThroughput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableGlobalSecondaryIndex.new
        data = {}
        data['Backfilling'] = stub[:backfilling] unless stub[:backfilling].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexSizeBytes'] = stub[:index_size_bytes] unless stub[:index_size_bytes].nil?
        data['IndexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['KeySchema'] = AwsDynamoDbTableKeySchemaList.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = AwsDynamoDbTableProjection.stub(stub[:projection]) unless stub[:projection].nil?
        data['ProvisionedThroughput'] = AwsDynamoDbTableProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableBillingModeSummary
    class AwsDynamoDbTableBillingModeSummary
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableBillingModeSummary')
        visited = visited + ['AwsDynamoDbTableBillingModeSummary']
        {
          billing_mode: 'billing_mode',
          last_update_to_pay_per_request_date_time: 'last_update_to_pay_per_request_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableBillingModeSummary.new
        data = {}
        data['BillingMode'] = stub[:billing_mode] unless stub[:billing_mode].nil?
        data['LastUpdateToPayPerRequestDateTime'] = stub[:last_update_to_pay_per_request_date_time] unless stub[:last_update_to_pay_per_request_date_time].nil?
        data
      end
    end

    # List Stubber for AwsDynamoDbTableAttributeDefinitionList
    class AwsDynamoDbTableAttributeDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableAttributeDefinitionList')
        visited = visited + ['AwsDynamoDbTableAttributeDefinitionList']
        [
          AwsDynamoDbTableAttributeDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsDynamoDbTableAttributeDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsDynamoDbTableAttributeDefinition
    class AwsDynamoDbTableAttributeDefinition
      def self.default(visited=[])
        return nil if visited.include?('AwsDynamoDbTableAttributeDefinition')
        visited = visited + ['AwsDynamoDbTableAttributeDefinition']
        {
          attribute_name: 'attribute_name',
          attribute_type: 'attribute_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsDynamoDbTableAttributeDefinition.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayV2ApiDetails
    class AwsApiGatewayV2ApiDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayV2ApiDetails')
        visited = visited + ['AwsApiGatewayV2ApiDetails']
        {
          api_endpoint: 'api_endpoint',
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          created_date: 'created_date',
          description: 'description',
          version: 'version',
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          cors_configuration: AwsCorsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayV2ApiDetails.new
        data = {}
        data['ApiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['ApiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['ApiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ProtocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['RouteSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['CorsConfiguration'] = AwsCorsConfiguration.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsCorsConfiguration
    class AwsCorsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsCorsConfiguration')
        visited = visited + ['AwsCorsConfiguration']
        {
          allow_origins: NonEmptyStringList.default(visited),
          allow_credentials: false,
          expose_headers: NonEmptyStringList.default(visited),
          max_age: 1,
          allow_methods: NonEmptyStringList.default(visited),
          allow_headers: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCorsConfiguration.new
        data = {}
        data['AllowOrigins'] = NonEmptyStringList.stub(stub[:allow_origins]) unless stub[:allow_origins].nil?
        data['AllowCredentials'] = stub[:allow_credentials] unless stub[:allow_credentials].nil?
        data['ExposeHeaders'] = NonEmptyStringList.stub(stub[:expose_headers]) unless stub[:expose_headers].nil?
        data['MaxAge'] = stub[:max_age] unless stub[:max_age].nil?
        data['AllowMethods'] = NonEmptyStringList.stub(stub[:allow_methods]) unless stub[:allow_methods].nil?
        data['AllowHeaders'] = NonEmptyStringList.stub(stub[:allow_headers]) unless stub[:allow_headers].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayV2StageDetails
    class AwsApiGatewayV2StageDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayV2StageDetails')
        visited = visited + ['AwsApiGatewayV2StageDetails']
        {
          client_certificate_id: 'client_certificate_id',
          created_date: 'created_date',
          description: 'description',
          default_route_settings: AwsApiGatewayV2RouteSettings.default(visited),
          deployment_id: 'deployment_id',
          last_updated_date: 'last_updated_date',
          route_settings: AwsApiGatewayV2RouteSettings.default(visited),
          stage_name: 'stage_name',
          stage_variables: FieldMap.default(visited),
          access_log_settings: AwsApiGatewayAccessLogSettings.default(visited),
          auto_deploy: false,
          last_deployment_status_message: 'last_deployment_status_message',
          api_gateway_managed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayV2StageDetails.new
        data = {}
        data['ClientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultRouteSettings'] = AwsApiGatewayV2RouteSettings.stub(stub[:default_route_settings]) unless stub[:default_route_settings].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['LastUpdatedDate'] = stub[:last_updated_date] unless stub[:last_updated_date].nil?
        data['RouteSettings'] = AwsApiGatewayV2RouteSettings.stub(stub[:route_settings]) unless stub[:route_settings].nil?
        data['StageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['StageVariables'] = FieldMap.stub(stub[:stage_variables]) unless stub[:stage_variables].nil?
        data['AccessLogSettings'] = AwsApiGatewayAccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['AutoDeploy'] = stub[:auto_deploy] unless stub[:auto_deploy].nil?
        data['LastDeploymentStatusMessage'] = stub[:last_deployment_status_message] unless stub[:last_deployment_status_message].nil?
        data['ApiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data
      end
    end

    # Structure Stubber for AwsApiGatewayV2RouteSettings
    class AwsApiGatewayV2RouteSettings
      def self.default(visited=[])
        return nil if visited.include?('AwsApiGatewayV2RouteSettings')
        visited = visited + ['AwsApiGatewayV2RouteSettings']
        {
          detailed_metrics_enabled: false,
          logging_level: 'logging_level',
          data_trace_enabled: false,
          throttling_burst_limit: 1,
          throttling_rate_limit: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiGatewayV2RouteSettings.new
        data = {}
        data['DetailedMetricsEnabled'] = stub[:detailed_metrics_enabled] unless stub[:detailed_metrics_enabled].nil?
        data['LoggingLevel'] = stub[:logging_level] unless stub[:logging_level].nil?
        data['DataTraceEnabled'] = stub[:data_trace_enabled] unless stub[:data_trace_enabled].nil?
        data['ThrottlingBurstLimit'] = stub[:throttling_burst_limit] unless stub[:throttling_burst_limit].nil?
        data['ThrottlingRateLimit'] = Hearth::NumberHelper.serialize(stub[:throttling_rate_limit])
        data
      end
    end

    # Structure Stubber for AwsIamPolicyDetails
    class AwsIamPolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsIamPolicyDetails')
        visited = visited + ['AwsIamPolicyDetails']
        {
          attachment_count: 1,
          create_date: 'create_date',
          default_version_id: 'default_version_id',
          description: 'description',
          is_attachable: false,
          path: 'path',
          permissions_boundary_usage_count: 1,
          policy_id: 'policy_id',
          policy_name: 'policy_name',
          policy_version_list: AwsIamPolicyVersionList.default(visited),
          update_date: 'update_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamPolicyDetails.new
        data = {}
        data['AttachmentCount'] = stub[:attachment_count] unless stub[:attachment_count].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['DefaultVersionId'] = stub[:default_version_id] unless stub[:default_version_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['IsAttachable'] = stub[:is_attachable] unless stub[:is_attachable].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['PermissionsBoundaryUsageCount'] = stub[:permissions_boundary_usage_count] unless stub[:permissions_boundary_usage_count].nil?
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['PolicyVersionList'] = AwsIamPolicyVersionList.stub(stub[:policy_version_list]) unless stub[:policy_version_list].nil?
        data['UpdateDate'] = stub[:update_date] unless stub[:update_date].nil?
        data
      end
    end

    # List Stubber for AwsIamPolicyVersionList
    class AwsIamPolicyVersionList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamPolicyVersionList')
        visited = visited + ['AwsIamPolicyVersionList']
        [
          AwsIamPolicyVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamPolicyVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamPolicyVersion
    class AwsIamPolicyVersion
      def self.default(visited=[])
        return nil if visited.include?('AwsIamPolicyVersion')
        visited = visited + ['AwsIamPolicyVersion']
        {
          version_id: 'version_id',
          is_default_version: false,
          create_date: 'create_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamPolicyVersion.new
        data = {}
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['IsDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data
      end
    end

    # Structure Stubber for AwsIamUserDetails
    class AwsIamUserDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsIamUserDetails')
        visited = visited + ['AwsIamUserDetails']
        {
          attached_managed_policies: AwsIamAttachedManagedPolicyList.default(visited),
          create_date: 'create_date',
          group_list: StringList.default(visited),
          path: 'path',
          permissions_boundary: AwsIamPermissionsBoundary.default(visited),
          user_id: 'user_id',
          user_name: 'user_name',
          user_policy_list: AwsIamUserPolicyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamUserDetails.new
        data = {}
        data['AttachedManagedPolicies'] = AwsIamAttachedManagedPolicyList.stub(stub[:attached_managed_policies]) unless stub[:attached_managed_policies].nil?
        data['CreateDate'] = stub[:create_date] unless stub[:create_date].nil?
        data['GroupList'] = StringList.stub(stub[:group_list]) unless stub[:group_list].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['PermissionsBoundary'] = AwsIamPermissionsBoundary.stub(stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['UserPolicyList'] = AwsIamUserPolicyList.stub(stub[:user_policy_list]) unless stub[:user_policy_list].nil?
        data
      end
    end

    # List Stubber for AwsIamUserPolicyList
    class AwsIamUserPolicyList
      def self.default(visited=[])
        return nil if visited.include?('AwsIamUserPolicyList')
        visited = visited + ['AwsIamUserPolicyList']
        [
          AwsIamUserPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsIamUserPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsIamUserPolicy
    class AwsIamUserPolicy
      def self.default(visited=[])
        return nil if visited.include?('AwsIamUserPolicy')
        visited = visited + ['AwsIamUserPolicy']
        {
          policy_name: 'policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamUserPolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data
      end
    end

    # Structure Stubber for AwsIamAccessKeyDetails
    class AwsIamAccessKeyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAccessKeyDetails')
        visited = visited + ['AwsIamAccessKeyDetails']
        {
          user_name: 'user_name',
          status: 'status',
          created_at: 'created_at',
          principal_id: 'principal_id',
          principal_type: 'principal_type',
          principal_name: 'principal_name',
          account_id: 'account_id',
          access_key_id: 'access_key_id',
          session_context: AwsIamAccessKeySessionContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamAccessKeyDetails.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['PrincipalType'] = stub[:principal_type] unless stub[:principal_type].nil?
        data['PrincipalName'] = stub[:principal_name] unless stub[:principal_name].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['SessionContext'] = AwsIamAccessKeySessionContext.stub(stub[:session_context]) unless stub[:session_context].nil?
        data
      end
    end

    # Structure Stubber for AwsIamAccessKeySessionContext
    class AwsIamAccessKeySessionContext
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAccessKeySessionContext')
        visited = visited + ['AwsIamAccessKeySessionContext']
        {
          attributes: AwsIamAccessKeySessionContextAttributes.default(visited),
          session_issuer: AwsIamAccessKeySessionContextSessionIssuer.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamAccessKeySessionContext.new
        data = {}
        data['Attributes'] = AwsIamAccessKeySessionContextAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['SessionIssuer'] = AwsIamAccessKeySessionContextSessionIssuer.stub(stub[:session_issuer]) unless stub[:session_issuer].nil?
        data
      end
    end

    # Structure Stubber for AwsIamAccessKeySessionContextSessionIssuer
    class AwsIamAccessKeySessionContextSessionIssuer
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAccessKeySessionContextSessionIssuer')
        visited = visited + ['AwsIamAccessKeySessionContextSessionIssuer']
        {
          type: 'type',
          principal_id: 'principal_id',
          arn: 'arn',
          account_id: 'account_id',
          user_name: 'user_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamAccessKeySessionContextSessionIssuer.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data
      end
    end

    # Structure Stubber for AwsIamAccessKeySessionContextAttributes
    class AwsIamAccessKeySessionContextAttributes
      def self.default(visited=[])
        return nil if visited.include?('AwsIamAccessKeySessionContextAttributes')
        visited = visited + ['AwsIamAccessKeySessionContextAttributes']
        {
          mfa_authenticated: false,
          creation_date: 'creation_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamAccessKeySessionContextAttributes.new
        data = {}
        data['MfaAuthenticated'] = stub[:mfa_authenticated] unless stub[:mfa_authenticated].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data
      end
    end

    # Structure Stubber for AwsSecretsManagerSecretDetails
    class AwsSecretsManagerSecretDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsSecretsManagerSecretDetails')
        visited = visited + ['AwsSecretsManagerSecretDetails']
        {
          rotation_rules: AwsSecretsManagerSecretRotationRules.default(visited),
          rotation_occurred_within_frequency: false,
          kms_key_id: 'kms_key_id',
          rotation_enabled: false,
          rotation_lambda_arn: 'rotation_lambda_arn',
          deleted: false,
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSecretsManagerSecretDetails.new
        data = {}
        data['RotationRules'] = AwsSecretsManagerSecretRotationRules.stub(stub[:rotation_rules]) unless stub[:rotation_rules].nil?
        data['RotationOccurredWithinFrequency'] = stub[:rotation_occurred_within_frequency] unless stub[:rotation_occurred_within_frequency].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['RotationEnabled'] = stub[:rotation_enabled] unless stub[:rotation_enabled].nil?
        data['RotationLambdaArn'] = stub[:rotation_lambda_arn] unless stub[:rotation_lambda_arn].nil?
        data['Deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for AwsSecretsManagerSecretRotationRules
    class AwsSecretsManagerSecretRotationRules
      def self.default(visited=[])
        return nil if visited.include?('AwsSecretsManagerSecretRotationRules')
        visited = visited + ['AwsSecretsManagerSecretRotationRules']
        {
          automatically_after_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSecretsManagerSecretRotationRules.new
        data = {}
        data['AutomaticallyAfterDays'] = stub[:automatically_after_days] unless stub[:automatically_after_days].nil?
        data
      end
    end

    # Structure Stubber for AwsS3ObjectDetails
    class AwsS3ObjectDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3ObjectDetails')
        visited = visited + ['AwsS3ObjectDetails']
        {
          last_modified: 'last_modified',
          e_tag: 'e_tag',
          version_id: 'version_id',
          content_type: 'content_type',
          server_side_encryption: 'server_side_encryption',
          ssekms_key_id: 'ssekms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3ObjectDetails.new
        data = {}
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['ETag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['ServerSideEncryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil?
        data['SSEKMSKeyId'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil?
        data
      end
    end

    # Structure Stubber for AwsS3AccountPublicAccessBlockDetails
    class AwsS3AccountPublicAccessBlockDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3AccountPublicAccessBlockDetails')
        visited = visited + ['AwsS3AccountPublicAccessBlockDetails']
        {
          block_public_acls: false,
          block_public_policy: false,
          ignore_public_acls: false,
          restrict_public_buckets: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3AccountPublicAccessBlockDetails.new
        data = {}
        data['BlockPublicAcls'] = stub[:block_public_acls] unless stub[:block_public_acls].nil?
        data['BlockPublicPolicy'] = stub[:block_public_policy] unless stub[:block_public_policy].nil?
        data['IgnorePublicAcls'] = stub[:ignore_public_acls] unless stub[:ignore_public_acls].nil?
        data['RestrictPublicBuckets'] = stub[:restrict_public_buckets] unless stub[:restrict_public_buckets].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketDetails
    class AwsS3BucketDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketDetails')
        visited = visited + ['AwsS3BucketDetails']
        {
          owner_id: 'owner_id',
          owner_name: 'owner_name',
          owner_account_id: 'owner_account_id',
          created_at: 'created_at',
          server_side_encryption_configuration: AwsS3BucketServerSideEncryptionConfiguration.default(visited),
          bucket_lifecycle_configuration: AwsS3BucketBucketLifecycleConfigurationDetails.default(visited),
          public_access_block_configuration: AwsS3AccountPublicAccessBlockDetails.default(visited),
          access_control_list: 'access_control_list',
          bucket_logging_configuration: AwsS3BucketLoggingConfiguration.default(visited),
          bucket_website_configuration: AwsS3BucketWebsiteConfiguration.default(visited),
          bucket_notification_configuration: AwsS3BucketNotificationConfiguration.default(visited),
          bucket_versioning_configuration: AwsS3BucketBucketVersioningConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketDetails.new
        data = {}
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['OwnerName'] = stub[:owner_name] unless stub[:owner_name].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['ServerSideEncryptionConfiguration'] = AwsS3BucketServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['BucketLifecycleConfiguration'] = AwsS3BucketBucketLifecycleConfigurationDetails.stub(stub[:bucket_lifecycle_configuration]) unless stub[:bucket_lifecycle_configuration].nil?
        data['PublicAccessBlockConfiguration'] = AwsS3AccountPublicAccessBlockDetails.stub(stub[:public_access_block_configuration]) unless stub[:public_access_block_configuration].nil?
        data['AccessControlList'] = stub[:access_control_list] unless stub[:access_control_list].nil?
        data['BucketLoggingConfiguration'] = AwsS3BucketLoggingConfiguration.stub(stub[:bucket_logging_configuration]) unless stub[:bucket_logging_configuration].nil?
        data['BucketWebsiteConfiguration'] = AwsS3BucketWebsiteConfiguration.stub(stub[:bucket_website_configuration]) unless stub[:bucket_website_configuration].nil?
        data['BucketNotificationConfiguration'] = AwsS3BucketNotificationConfiguration.stub(stub[:bucket_notification_configuration]) unless stub[:bucket_notification_configuration].nil?
        data['BucketVersioningConfiguration'] = AwsS3BucketBucketVersioningConfiguration.stub(stub[:bucket_versioning_configuration]) unless stub[:bucket_versioning_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketVersioningConfiguration
    class AwsS3BucketBucketVersioningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketVersioningConfiguration')
        visited = visited + ['AwsS3BucketBucketVersioningConfiguration']
        {
          is_mfa_delete_enabled: false,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketVersioningConfiguration.new
        data = {}
        data['IsMfaDeleteEnabled'] = stub[:is_mfa_delete_enabled] unless stub[:is_mfa_delete_enabled].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketNotificationConfiguration
    class AwsS3BucketNotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfiguration')
        visited = visited + ['AwsS3BucketNotificationConfiguration']
        {
          configurations: AwsS3BucketNotificationConfigurationDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketNotificationConfiguration.new
        data = {}
        data['Configurations'] = AwsS3BucketNotificationConfigurationDetails.stub(stub[:configurations]) unless stub[:configurations].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketNotificationConfigurationDetails
    class AwsS3BucketNotificationConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationDetails')
        visited = visited + ['AwsS3BucketNotificationConfigurationDetails']
        [
          AwsS3BucketNotificationConfigurationDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketNotificationConfigurationDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketNotificationConfigurationDetail
    class AwsS3BucketNotificationConfigurationDetail
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationDetail')
        visited = visited + ['AwsS3BucketNotificationConfigurationDetail']
        {
          events: AwsS3BucketNotificationConfigurationEvents.default(visited),
          filter: AwsS3BucketNotificationConfigurationFilter.default(visited),
          destination: 'destination',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketNotificationConfigurationDetail.new
        data = {}
        data['Events'] = AwsS3BucketNotificationConfigurationEvents.stub(stub[:events]) unless stub[:events].nil?
        data['Filter'] = AwsS3BucketNotificationConfigurationFilter.stub(stub[:filter]) unless stub[:filter].nil?
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketNotificationConfigurationFilter
    class AwsS3BucketNotificationConfigurationFilter
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationFilter')
        visited = visited + ['AwsS3BucketNotificationConfigurationFilter']
        {
          s3_key_filter: AwsS3BucketNotificationConfigurationS3KeyFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketNotificationConfigurationFilter.new
        data = {}
        data['S3KeyFilter'] = AwsS3BucketNotificationConfigurationS3KeyFilter.stub(stub[:s3_key_filter]) unless stub[:s3_key_filter].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketNotificationConfigurationS3KeyFilter
    class AwsS3BucketNotificationConfigurationS3KeyFilter
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationS3KeyFilter')
        visited = visited + ['AwsS3BucketNotificationConfigurationS3KeyFilter']
        {
          filter_rules: AwsS3BucketNotificationConfigurationS3KeyFilterRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketNotificationConfigurationS3KeyFilter.new
        data = {}
        data['FilterRules'] = AwsS3BucketNotificationConfigurationS3KeyFilterRules.stub(stub[:filter_rules]) unless stub[:filter_rules].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketNotificationConfigurationS3KeyFilterRules
    class AwsS3BucketNotificationConfigurationS3KeyFilterRules
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationS3KeyFilterRules')
        visited = visited + ['AwsS3BucketNotificationConfigurationS3KeyFilterRules']
        [
          AwsS3BucketNotificationConfigurationS3KeyFilterRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketNotificationConfigurationS3KeyFilterRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketNotificationConfigurationS3KeyFilterRule
    class AwsS3BucketNotificationConfigurationS3KeyFilterRule
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationS3KeyFilterRule')
        visited = visited + ['AwsS3BucketNotificationConfigurationS3KeyFilterRule']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketNotificationConfigurationEvents
    class AwsS3BucketNotificationConfigurationEvents
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketNotificationConfigurationEvents')
        visited = visited + ['AwsS3BucketNotificationConfigurationEvents']
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

    # Structure Stubber for AwsS3BucketWebsiteConfiguration
    class AwsS3BucketWebsiteConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfiguration')
        visited = visited + ['AwsS3BucketWebsiteConfiguration']
        {
          error_document: 'error_document',
          index_document_suffix: 'index_document_suffix',
          redirect_all_requests_to: AwsS3BucketWebsiteConfigurationRedirectTo.default(visited),
          routing_rules: AwsS3BucketWebsiteConfigurationRoutingRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketWebsiteConfiguration.new
        data = {}
        data['ErrorDocument'] = stub[:error_document] unless stub[:error_document].nil?
        data['IndexDocumentSuffix'] = stub[:index_document_suffix] unless stub[:index_document_suffix].nil?
        data['RedirectAllRequestsTo'] = AwsS3BucketWebsiteConfigurationRedirectTo.stub(stub[:redirect_all_requests_to]) unless stub[:redirect_all_requests_to].nil?
        data['RoutingRules'] = AwsS3BucketWebsiteConfigurationRoutingRules.stub(stub[:routing_rules]) unless stub[:routing_rules].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketWebsiteConfigurationRoutingRules
    class AwsS3BucketWebsiteConfigurationRoutingRules
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfigurationRoutingRules')
        visited = visited + ['AwsS3BucketWebsiteConfigurationRoutingRules']
        [
          AwsS3BucketWebsiteConfigurationRoutingRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketWebsiteConfigurationRoutingRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketWebsiteConfigurationRoutingRule
    class AwsS3BucketWebsiteConfigurationRoutingRule
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfigurationRoutingRule')
        visited = visited + ['AwsS3BucketWebsiteConfigurationRoutingRule']
        {
          condition: AwsS3BucketWebsiteConfigurationRoutingRuleCondition.default(visited),
          redirect: AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketWebsiteConfigurationRoutingRule.new
        data = {}
        data['Condition'] = AwsS3BucketWebsiteConfigurationRoutingRuleCondition.stub(stub[:condition]) unless stub[:condition].nil?
        data['Redirect'] = AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.stub(stub[:redirect]) unless stub[:redirect].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
    class AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfigurationRoutingRuleRedirect')
        visited = visited + ['AwsS3BucketWebsiteConfigurationRoutingRuleRedirect']
        {
          hostname: 'hostname',
          http_redirect_code: 'http_redirect_code',
          protocol: 'protocol',
          replace_key_prefix_with: 'replace_key_prefix_with',
          replace_key_with: 'replace_key_with',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.new
        data = {}
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['HttpRedirectCode'] = stub[:http_redirect_code] unless stub[:http_redirect_code].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['ReplaceKeyPrefixWith'] = stub[:replace_key_prefix_with] unless stub[:replace_key_prefix_with].nil?
        data['ReplaceKeyWith'] = stub[:replace_key_with] unless stub[:replace_key_with].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketWebsiteConfigurationRoutingRuleCondition
    class AwsS3BucketWebsiteConfigurationRoutingRuleCondition
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfigurationRoutingRuleCondition')
        visited = visited + ['AwsS3BucketWebsiteConfigurationRoutingRuleCondition']
        {
          http_error_code_returned_equals: 'http_error_code_returned_equals',
          key_prefix_equals: 'key_prefix_equals',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.new
        data = {}
        data['HttpErrorCodeReturnedEquals'] = stub[:http_error_code_returned_equals] unless stub[:http_error_code_returned_equals].nil?
        data['KeyPrefixEquals'] = stub[:key_prefix_equals] unless stub[:key_prefix_equals].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketWebsiteConfigurationRedirectTo
    class AwsS3BucketWebsiteConfigurationRedirectTo
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketWebsiteConfigurationRedirectTo')
        visited = visited + ['AwsS3BucketWebsiteConfigurationRedirectTo']
        {
          hostname: 'hostname',
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketWebsiteConfigurationRedirectTo.new
        data = {}
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketLoggingConfiguration
    class AwsS3BucketLoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketLoggingConfiguration')
        visited = visited + ['AwsS3BucketLoggingConfiguration']
        {
          destination_bucket_name: 'destination_bucket_name',
          log_file_prefix: 'log_file_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketLoggingConfiguration.new
        data = {}
        data['DestinationBucketName'] = stub[:destination_bucket_name] unless stub[:destination_bucket_name].nil?
        data['LogFilePrefix'] = stub[:log_file_prefix] unless stub[:log_file_prefix].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationDetails
    class AwsS3BucketBucketLifecycleConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationDetails']
        {
          rules: AwsS3BucketBucketLifecycleConfigurationRulesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationDetails.new
        data = {}
        data['Rules'] = AwsS3BucketBucketLifecycleConfigurationRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketBucketLifecycleConfigurationRulesList
    class AwsS3BucketBucketLifecycleConfigurationRulesList
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesList')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesList']
        [
          AwsS3BucketBucketLifecycleConfigurationRulesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketBucketLifecycleConfigurationRulesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesDetails']
        {
          abort_incomplete_multipart_upload: AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.default(visited),
          expiration_date: 'expiration_date',
          expiration_in_days: 1,
          expired_object_delete_marker: false,
          filter: AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.default(visited),
          id: 'id',
          noncurrent_version_expiration_in_days: 1,
          noncurrent_version_transitions: AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.default(visited),
          prefix: 'prefix',
          status: 'status',
          transitions: AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails.new
        data = {}
        data['AbortIncompleteMultipartUpload'] = AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.stub(stub[:abort_incomplete_multipart_upload]) unless stub[:abort_incomplete_multipart_upload].nil?
        data['ExpirationDate'] = stub[:expiration_date] unless stub[:expiration_date].nil?
        data['ExpirationInDays'] = stub[:expiration_in_days] unless stub[:expiration_in_days].nil?
        data['ExpiredObjectDeleteMarker'] = stub[:expired_object_delete_marker] unless stub[:expired_object_delete_marker].nil?
        data['Filter'] = AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.stub(stub[:filter]) unless stub[:filter].nil?
        data['ID'] = stub[:id] unless stub[:id].nil?
        data['NoncurrentVersionExpirationInDays'] = stub[:noncurrent_version_expiration_in_days] unless stub[:noncurrent_version_expiration_in_days].nil?
        data['NoncurrentVersionTransitions'] = AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.stub(stub[:noncurrent_version_transitions]) unless stub[:noncurrent_version_transitions].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Transitions'] = AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.stub(stub[:transitions]) unless stub[:transitions].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList']
        [
          AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails']
        {
          date: 'date',
          days: 1,
          storage_class: 'storage_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.new
        data = {}
        data['Date'] = stub[:date] unless stub[:date].nil?
        data['Days'] = stub[:days] unless stub[:days].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList']
        [
          AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails']
        {
          days: 1,
          storage_class: 'storage_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.new
        data = {}
        data['Days'] = stub[:days] unless stub[:days].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails']
        {
          predicate: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.new
        data = {}
        data['Predicate'] = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.stub(stub[:predicate]) unless stub[:predicate].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails']
        {
          operands: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.default(visited),
          prefix: 'prefix',
          tag: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.new
        data = {}
        data['Operands'] = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.stub(stub[:operands]) unless stub[:operands].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['Tag'] = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.stub(stub[:tag]) unless stub[:tag].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList']
        [
          AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails']
        {
          prefix: 'prefix',
          tag: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.new
        data = {}
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['Tag'] = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.stub(stub[:tag]) unless stub[:tag].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
    class AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails')
        visited = visited + ['AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails']
        {
          days_after_initiation: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.new
        data = {}
        data['DaysAfterInitiation'] = stub[:days_after_initiation] unless stub[:days_after_initiation].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketServerSideEncryptionConfiguration
    class AwsS3BucketServerSideEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketServerSideEncryptionConfiguration')
        visited = visited + ['AwsS3BucketServerSideEncryptionConfiguration']
        {
          rules: AwsS3BucketServerSideEncryptionRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketServerSideEncryptionConfiguration.new
        data = {}
        data['Rules'] = AwsS3BucketServerSideEncryptionRules.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for AwsS3BucketServerSideEncryptionRules
    class AwsS3BucketServerSideEncryptionRules
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketServerSideEncryptionRules')
        visited = visited + ['AwsS3BucketServerSideEncryptionRules']
        [
          AwsS3BucketServerSideEncryptionRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsS3BucketServerSideEncryptionRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsS3BucketServerSideEncryptionRule
    class AwsS3BucketServerSideEncryptionRule
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketServerSideEncryptionRule')
        visited = visited + ['AwsS3BucketServerSideEncryptionRule']
        {
          apply_server_side_encryption_by_default: AwsS3BucketServerSideEncryptionByDefault.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketServerSideEncryptionRule.new
        data = {}
        data['ApplyServerSideEncryptionByDefault'] = AwsS3BucketServerSideEncryptionByDefault.stub(stub[:apply_server_side_encryption_by_default]) unless stub[:apply_server_side_encryption_by_default].nil?
        data
      end
    end

    # Structure Stubber for AwsS3BucketServerSideEncryptionByDefault
    class AwsS3BucketServerSideEncryptionByDefault
      def self.default(visited=[])
        return nil if visited.include?('AwsS3BucketServerSideEncryptionByDefault')
        visited = visited + ['AwsS3BucketServerSideEncryptionByDefault']
        {
          sse_algorithm: 'sse_algorithm',
          kms_master_key_id: 'kms_master_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsS3BucketServerSideEncryptionByDefault.new
        data = {}
        data['SSEAlgorithm'] = stub[:sse_algorithm] unless stub[:sse_algorithm].nil?
        data['KMSMasterKeyID'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainDetails
    class AwsElasticsearchDomainDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainDetails')
        visited = visited + ['AwsElasticsearchDomainDetails']
        {
          access_policies: 'access_policies',
          domain_endpoint_options: AwsElasticsearchDomainDomainEndpointOptions.default(visited),
          domain_id: 'domain_id',
          domain_name: 'domain_name',
          endpoint: 'endpoint',
          endpoints: FieldMap.default(visited),
          elasticsearch_version: 'elasticsearch_version',
          elasticsearch_cluster_config: AwsElasticsearchDomainElasticsearchClusterConfigDetails.default(visited),
          encryption_at_rest_options: AwsElasticsearchDomainEncryptionAtRestOptions.default(visited),
          log_publishing_options: AwsElasticsearchDomainLogPublishingOptions.default(visited),
          node_to_node_encryption_options: AwsElasticsearchDomainNodeToNodeEncryptionOptions.default(visited),
          service_software_options: AwsElasticsearchDomainServiceSoftwareOptions.default(visited),
          vpc_options: AwsElasticsearchDomainVPCOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainDetails.new
        data = {}
        data['AccessPolicies'] = stub[:access_policies] unless stub[:access_policies].nil?
        data['DomainEndpointOptions'] = AwsElasticsearchDomainDomainEndpointOptions.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Endpoints'] = FieldMap.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['ElasticsearchVersion'] = stub[:elasticsearch_version] unless stub[:elasticsearch_version].nil?
        data['ElasticsearchClusterConfig'] = AwsElasticsearchDomainElasticsearchClusterConfigDetails.stub(stub[:elasticsearch_cluster_config]) unless stub[:elasticsearch_cluster_config].nil?
        data['EncryptionAtRestOptions'] = AwsElasticsearchDomainEncryptionAtRestOptions.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['LogPublishingOptions'] = AwsElasticsearchDomainLogPublishingOptions.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['NodeToNodeEncryptionOptions'] = AwsElasticsearchDomainNodeToNodeEncryptionOptions.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['ServiceSoftwareOptions'] = AwsElasticsearchDomainServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        data['VPCOptions'] = AwsElasticsearchDomainVPCOptions.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainVPCOptions
    class AwsElasticsearchDomainVPCOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainVPCOptions')
        visited = visited + ['AwsElasticsearchDomainVPCOptions']
        {
          availability_zones: NonEmptyStringList.default(visited),
          security_group_ids: NonEmptyStringList.default(visited),
          subnet_ids: NonEmptyStringList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainVPCOptions.new
        data = {}
        data['AvailabilityZones'] = NonEmptyStringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['SecurityGroupIds'] = NonEmptyStringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SubnetIds'] = NonEmptyStringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['VPCId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainServiceSoftwareOptions
    class AwsElasticsearchDomainServiceSoftwareOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainServiceSoftwareOptions')
        visited = visited + ['AwsElasticsearchDomainServiceSoftwareOptions']
        {
          automated_update_date: 'automated_update_date',
          cancellable: false,
          current_version: 'current_version',
          description: 'description',
          new_version: 'new_version',
          update_available: false,
          update_status: 'update_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainServiceSoftwareOptions.new
        data = {}
        data['AutomatedUpdateDate'] = stub[:automated_update_date] unless stub[:automated_update_date].nil?
        data['Cancellable'] = stub[:cancellable] unless stub[:cancellable].nil?
        data['CurrentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['NewVersion'] = stub[:new_version] unless stub[:new_version].nil?
        data['UpdateAvailable'] = stub[:update_available] unless stub[:update_available].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainNodeToNodeEncryptionOptions
    class AwsElasticsearchDomainNodeToNodeEncryptionOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainNodeToNodeEncryptionOptions')
        visited = visited + ['AwsElasticsearchDomainNodeToNodeEncryptionOptions']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainLogPublishingOptions
    class AwsElasticsearchDomainLogPublishingOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainLogPublishingOptions')
        visited = visited + ['AwsElasticsearchDomainLogPublishingOptions']
        {
          index_slow_logs: AwsElasticsearchDomainLogPublishingOptionsLogConfig.default(visited),
          search_slow_logs: AwsElasticsearchDomainLogPublishingOptionsLogConfig.default(visited),
          audit_logs: AwsElasticsearchDomainLogPublishingOptionsLogConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainLogPublishingOptions.new
        data = {}
        data['IndexSlowLogs'] = AwsElasticsearchDomainLogPublishingOptionsLogConfig.stub(stub[:index_slow_logs]) unless stub[:index_slow_logs].nil?
        data['SearchSlowLogs'] = AwsElasticsearchDomainLogPublishingOptionsLogConfig.stub(stub[:search_slow_logs]) unless stub[:search_slow_logs].nil?
        data['AuditLogs'] = AwsElasticsearchDomainLogPublishingOptionsLogConfig.stub(stub[:audit_logs]) unless stub[:audit_logs].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainLogPublishingOptionsLogConfig
    class AwsElasticsearchDomainLogPublishingOptionsLogConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainLogPublishingOptionsLogConfig')
        visited = visited + ['AwsElasticsearchDomainLogPublishingOptionsLogConfig']
        {
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig.new
        data = {}
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainEncryptionAtRestOptions
    class AwsElasticsearchDomainEncryptionAtRestOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainEncryptionAtRestOptions')
        visited = visited + ['AwsElasticsearchDomainEncryptionAtRestOptions']
        {
          enabled: false,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainEncryptionAtRestOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainElasticsearchClusterConfigDetails
    class AwsElasticsearchDomainElasticsearchClusterConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainElasticsearchClusterConfigDetails')
        visited = visited + ['AwsElasticsearchDomainElasticsearchClusterConfigDetails']
        {
          dedicated_master_count: 1,
          dedicated_master_enabled: false,
          dedicated_master_type: 'dedicated_master_type',
          instance_count: 1,
          instance_type: 'instance_type',
          zone_awareness_config: AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.default(visited),
          zone_awareness_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails.new
        data = {}
        data['DedicatedMasterCount'] = stub[:dedicated_master_count] unless stub[:dedicated_master_count].nil?
        data['DedicatedMasterEnabled'] = stub[:dedicated_master_enabled] unless stub[:dedicated_master_enabled].nil?
        data['DedicatedMasterType'] = stub[:dedicated_master_type] unless stub[:dedicated_master_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['ZoneAwarenessConfig'] = AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.stub(stub[:zone_awareness_config]) unless stub[:zone_awareness_config].nil?
        data['ZoneAwarenessEnabled'] = stub[:zone_awareness_enabled] unless stub[:zone_awareness_enabled].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
    class AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails')
        visited = visited + ['AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails']
        {
          availability_zone_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.new
        data = {}
        data['AvailabilityZoneCount'] = stub[:availability_zone_count] unless stub[:availability_zone_count].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticsearchDomainDomainEndpointOptions
    class AwsElasticsearchDomainDomainEndpointOptions
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticsearchDomainDomainEndpointOptions')
        visited = visited + ['AwsElasticsearchDomainDomainEndpointOptions']
        {
          enforce_https: false,
          tls_security_policy: 'tls_security_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticsearchDomainDomainEndpointOptions.new
        data = {}
        data['EnforceHTTPS'] = stub[:enforce_https] unless stub[:enforce_https].nil?
        data['TLSSecurityPolicy'] = stub[:tls_security_policy] unless stub[:tls_security_policy].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticBeanstalkEnvironmentDetails
    class AwsElasticBeanstalkEnvironmentDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentDetails')
        visited = visited + ['AwsElasticBeanstalkEnvironmentDetails']
        {
          application_name: 'application_name',
          cname: 'cname',
          date_created: 'date_created',
          date_updated: 'date_updated',
          description: 'description',
          endpoint_url: 'endpoint_url',
          environment_arn: 'environment_arn',
          environment_id: 'environment_id',
          environment_links: AwsElasticBeanstalkEnvironmentEnvironmentLinks.default(visited),
          environment_name: 'environment_name',
          option_settings: AwsElasticBeanstalkEnvironmentOptionSettings.default(visited),
          platform_arn: 'platform_arn',
          solution_stack_name: 'solution_stack_name',
          status: 'status',
          tier: AwsElasticBeanstalkEnvironmentTier.default(visited),
          version_label: 'version_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticBeanstalkEnvironmentDetails.new
        data = {}
        data['ApplicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['Cname'] = stub[:cname] unless stub[:cname].nil?
        data['DateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['DateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EndpointUrl'] = stub[:endpoint_url] unless stub[:endpoint_url].nil?
        data['EnvironmentArn'] = stub[:environment_arn] unless stub[:environment_arn].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['EnvironmentLinks'] = AwsElasticBeanstalkEnvironmentEnvironmentLinks.stub(stub[:environment_links]) unless stub[:environment_links].nil?
        data['EnvironmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['OptionSettings'] = AwsElasticBeanstalkEnvironmentOptionSettings.stub(stub[:option_settings]) unless stub[:option_settings].nil?
        data['PlatformArn'] = stub[:platform_arn] unless stub[:platform_arn].nil?
        data['SolutionStackName'] = stub[:solution_stack_name] unless stub[:solution_stack_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Tier'] = AwsElasticBeanstalkEnvironmentTier.stub(stub[:tier]) unless stub[:tier].nil?
        data['VersionLabel'] = stub[:version_label] unless stub[:version_label].nil?
        data
      end
    end

    # Structure Stubber for AwsElasticBeanstalkEnvironmentTier
    class AwsElasticBeanstalkEnvironmentTier
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentTier')
        visited = visited + ['AwsElasticBeanstalkEnvironmentTier']
        {
          name: 'name',
          type: 'type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticBeanstalkEnvironmentTier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for AwsElasticBeanstalkEnvironmentOptionSettings
    class AwsElasticBeanstalkEnvironmentOptionSettings
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentOptionSettings')
        visited = visited + ['AwsElasticBeanstalkEnvironmentOptionSettings']
        [
          AwsElasticBeanstalkEnvironmentOptionSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElasticBeanstalkEnvironmentOptionSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElasticBeanstalkEnvironmentOptionSetting
    class AwsElasticBeanstalkEnvironmentOptionSetting
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentOptionSetting')
        visited = visited + ['AwsElasticBeanstalkEnvironmentOptionSetting']
        {
          namespace: 'namespace',
          option_name: 'option_name',
          resource_name: 'resource_name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticBeanstalkEnvironmentOptionSetting.new
        data = {}
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['OptionName'] = stub[:option_name] unless stub[:option_name].nil?
        data['ResourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AwsElasticBeanstalkEnvironmentEnvironmentLinks
    class AwsElasticBeanstalkEnvironmentEnvironmentLinks
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentEnvironmentLinks')
        visited = visited + ['AwsElasticBeanstalkEnvironmentEnvironmentLinks']
        [
          AwsElasticBeanstalkEnvironmentEnvironmentLink.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElasticBeanstalkEnvironmentEnvironmentLink.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElasticBeanstalkEnvironmentEnvironmentLink
    class AwsElasticBeanstalkEnvironmentEnvironmentLink
      def self.default(visited=[])
        return nil if visited.include?('AwsElasticBeanstalkEnvironmentEnvironmentLink')
        visited = visited + ['AwsElasticBeanstalkEnvironmentEnvironmentLink']
        {
          environment_name: 'environment_name',
          link_name: 'link_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElasticBeanstalkEnvironmentEnvironmentLink.new
        data = {}
        data['EnvironmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['LinkName'] = stub[:link_name] unless stub[:link_name].nil?
        data
      end
    end

    # Structure Stubber for AwsElbv2LoadBalancerDetails
    class AwsElbv2LoadBalancerDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsElbv2LoadBalancerDetails')
        visited = visited + ['AwsElbv2LoadBalancerDetails']
        {
          availability_zones: AvailabilityZones.default(visited),
          canonical_hosted_zone_id: 'canonical_hosted_zone_id',
          created_time: 'created_time',
          dns_name: 'dns_name',
          ip_address_type: 'ip_address_type',
          scheme: 'scheme',
          security_groups: SecurityGroups.default(visited),
          state: LoadBalancerState.default(visited),
          type: 'type',
          vpc_id: 'vpc_id',
          load_balancer_attributes: AwsElbv2LoadBalancerAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbv2LoadBalancerDetails.new
        data = {}
        data['AvailabilityZones'] = AvailabilityZones.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['CanonicalHostedZoneId'] = stub[:canonical_hosted_zone_id] unless stub[:canonical_hosted_zone_id].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['DNSName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['IpAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['Scheme'] = stub[:scheme] unless stub[:scheme].nil?
        data['SecurityGroups'] = SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['State'] = LoadBalancerState.stub(stub[:state]) unless stub[:state].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['LoadBalancerAttributes'] = AwsElbv2LoadBalancerAttributes.stub(stub[:load_balancer_attributes]) unless stub[:load_balancer_attributes].nil?
        data
      end
    end

    # List Stubber for AwsElbv2LoadBalancerAttributes
    class AwsElbv2LoadBalancerAttributes
      def self.default(visited=[])
        return nil if visited.include?('AwsElbv2LoadBalancerAttributes')
        visited = visited + ['AwsElbv2LoadBalancerAttributes']
        [
          AwsElbv2LoadBalancerAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsElbv2LoadBalancerAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsElbv2LoadBalancerAttribute
    class AwsElbv2LoadBalancerAttribute
      def self.default(visited=[])
        return nil if visited.include?('AwsElbv2LoadBalancerAttribute')
        visited = visited + ['AwsElbv2LoadBalancerAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsElbv2LoadBalancerAttribute.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for LoadBalancerState
    class LoadBalancerState
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerState')
        visited = visited + ['LoadBalancerState']
        {
          code: 'code',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerState.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
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

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
        [
          AvailabilityZone.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AvailabilityZone.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          zone_name: 'zone_name',
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailabilityZone.new
        data = {}
        data['ZoneName'] = stub[:zone_name] unless stub[:zone_name].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkAclDetails
    class AwsEc2NetworkAclDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkAclDetails')
        visited = visited + ['AwsEc2NetworkAclDetails']
        {
          is_default: false,
          network_acl_id: 'network_acl_id',
          owner_id: 'owner_id',
          vpc_id: 'vpc_id',
          associations: AwsEc2NetworkAclAssociationList.default(visited),
          entries: AwsEc2NetworkAclEntryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkAclDetails.new
        data = {}
        data['IsDefault'] = stub[:is_default] unless stub[:is_default].nil?
        data['NetworkAclId'] = stub[:network_acl_id] unless stub[:network_acl_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Associations'] = AwsEc2NetworkAclAssociationList.stub(stub[:associations]) unless stub[:associations].nil?
        data['Entries'] = AwsEc2NetworkAclEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkAclEntryList
    class AwsEc2NetworkAclEntryList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkAclEntryList')
        visited = visited + ['AwsEc2NetworkAclEntryList']
        [
          AwsEc2NetworkAclEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkAclEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkAclEntry
    class AwsEc2NetworkAclEntry
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkAclEntry')
        visited = visited + ['AwsEc2NetworkAclEntry']
        {
          cidr_block: 'cidr_block',
          egress: false,
          icmp_type_code: IcmpTypeCode.default(visited),
          ipv6_cidr_block: 'ipv6_cidr_block',
          port_range: PortRangeFromTo.default(visited),
          protocol: 'protocol',
          rule_action: 'rule_action',
          rule_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkAclEntry.new
        data = {}
        data['CidrBlock'] = stub[:cidr_block] unless stub[:cidr_block].nil?
        data['Egress'] = stub[:egress] unless stub[:egress].nil?
        data['IcmpTypeCode'] = IcmpTypeCode.stub(stub[:icmp_type_code]) unless stub[:icmp_type_code].nil?
        data['Ipv6CidrBlock'] = stub[:ipv6_cidr_block] unless stub[:ipv6_cidr_block].nil?
        data['PortRange'] = PortRangeFromTo.stub(stub[:port_range]) unless stub[:port_range].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['RuleAction'] = stub[:rule_action] unless stub[:rule_action].nil?
        data['RuleNumber'] = stub[:rule_number] unless stub[:rule_number].nil?
        data
      end
    end

    # Structure Stubber for PortRangeFromTo
    class PortRangeFromTo
      def self.default(visited=[])
        return nil if visited.include?('PortRangeFromTo')
        visited = visited + ['PortRangeFromTo']
        {
          from: 1,
          to: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRangeFromTo.new
        data = {}
        data['From'] = stub[:from] unless stub[:from].nil?
        data['To'] = stub[:to] unless stub[:to].nil?
        data
      end
    end

    # Structure Stubber for IcmpTypeCode
    class IcmpTypeCode
      def self.default(visited=[])
        return nil if visited.include?('IcmpTypeCode')
        visited = visited + ['IcmpTypeCode']
        {
          code: 1,
          type: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IcmpTypeCode.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkAclAssociationList
    class AwsEc2NetworkAclAssociationList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkAclAssociationList')
        visited = visited + ['AwsEc2NetworkAclAssociationList']
        [
          AwsEc2NetworkAclAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkAclAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkAclAssociation
    class AwsEc2NetworkAclAssociation
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkAclAssociation')
        visited = visited + ['AwsEc2NetworkAclAssociation']
        {
          network_acl_association_id: 'network_acl_association_id',
          network_acl_id: 'network_acl_id',
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkAclAssociation.new
        data = {}
        data['NetworkAclAssociationId'] = stub[:network_acl_association_id] unless stub[:network_acl_association_id].nil?
        data['NetworkAclId'] = stub[:network_acl_id] unless stub[:network_acl_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2SubnetDetails
    class AwsEc2SubnetDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SubnetDetails')
        visited = visited + ['AwsEc2SubnetDetails']
        {
          assign_ipv6_address_on_creation: false,
          availability_zone: 'availability_zone',
          availability_zone_id: 'availability_zone_id',
          available_ip_address_count: 1,
          cidr_block: 'cidr_block',
          default_for_az: false,
          map_public_ip_on_launch: false,
          owner_id: 'owner_id',
          state: 'state',
          subnet_arn: 'subnet_arn',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          ipv6_cidr_block_association_set: Ipv6CidrBlockAssociationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SubnetDetails.new
        data = {}
        data['AssignIpv6AddressOnCreation'] = stub[:assign_ipv6_address_on_creation] unless stub[:assign_ipv6_address_on_creation].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['AvailableIpAddressCount'] = stub[:available_ip_address_count] unless stub[:available_ip_address_count].nil?
        data['CidrBlock'] = stub[:cidr_block] unless stub[:cidr_block].nil?
        data['DefaultForAz'] = stub[:default_for_az] unless stub[:default_for_az].nil?
        data['MapPublicIpOnLaunch'] = stub[:map_public_ip_on_launch] unless stub[:map_public_ip_on_launch].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['SubnetArn'] = stub[:subnet_arn] unless stub[:subnet_arn].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Ipv6CidrBlockAssociationSet'] = Ipv6CidrBlockAssociationList.stub(stub[:ipv6_cidr_block_association_set]) unless stub[:ipv6_cidr_block_association_set].nil?
        data
      end
    end

    # List Stubber for Ipv6CidrBlockAssociationList
    class Ipv6CidrBlockAssociationList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrBlockAssociationList')
        visited = visited + ['Ipv6CidrBlockAssociationList']
        [
          Ipv6CidrBlockAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Ipv6CidrBlockAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ipv6CidrBlockAssociation
    class Ipv6CidrBlockAssociation
      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrBlockAssociation')
        visited = visited + ['Ipv6CidrBlockAssociation']
        {
          association_id: 'association_id',
          ipv6_cidr_block: 'ipv6_cidr_block',
          cidr_block_state: 'cidr_block_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ipv6CidrBlockAssociation.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Ipv6CidrBlock'] = stub[:ipv6_cidr_block] unless stub[:ipv6_cidr_block].nil?
        data['CidrBlockState'] = stub[:cidr_block_state] unless stub[:cidr_block_state].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2EipDetails
    class AwsEc2EipDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2EipDetails')
        visited = visited + ['AwsEc2EipDetails']
        {
          instance_id: 'instance_id',
          public_ip: 'public_ip',
          allocation_id: 'allocation_id',
          association_id: 'association_id',
          domain: 'domain',
          public_ipv4_pool: 'public_ipv4_pool',
          network_border_group: 'network_border_group',
          network_interface_id: 'network_interface_id',
          network_interface_owner_id: 'network_interface_owner_id',
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2EipDetails.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['PublicIp'] = stub[:public_ip] unless stub[:public_ip].nil?
        data['AllocationId'] = stub[:allocation_id] unless stub[:allocation_id].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['PublicIpv4Pool'] = stub[:public_ipv4_pool] unless stub[:public_ipv4_pool].nil?
        data['NetworkBorderGroup'] = stub[:network_border_group] unless stub[:network_border_group].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['NetworkInterfaceOwnerId'] = stub[:network_interface_owner_id] unless stub[:network_interface_owner_id].nil?
        data['PrivateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2VpcDetails
    class AwsEc2VpcDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VpcDetails')
        visited = visited + ['AwsEc2VpcDetails']
        {
          cidr_block_association_set: CidrBlockAssociationList.default(visited),
          ipv6_cidr_block_association_set: Ipv6CidrBlockAssociationList.default(visited),
          dhcp_options_id: 'dhcp_options_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VpcDetails.new
        data = {}
        data['CidrBlockAssociationSet'] = CidrBlockAssociationList.stub(stub[:cidr_block_association_set]) unless stub[:cidr_block_association_set].nil?
        data['Ipv6CidrBlockAssociationSet'] = Ipv6CidrBlockAssociationList.stub(stub[:ipv6_cidr_block_association_set]) unless stub[:ipv6_cidr_block_association_set].nil?
        data['DhcpOptionsId'] = stub[:dhcp_options_id] unless stub[:dhcp_options_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # List Stubber for CidrBlockAssociationList
    class CidrBlockAssociationList
      def self.default(visited=[])
        return nil if visited.include?('CidrBlockAssociationList')
        visited = visited + ['CidrBlockAssociationList']
        [
          CidrBlockAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CidrBlockAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CidrBlockAssociation
    class CidrBlockAssociation
      def self.default(visited=[])
        return nil if visited.include?('CidrBlockAssociation')
        visited = visited + ['CidrBlockAssociation']
        {
          association_id: 'association_id',
          cidr_block: 'cidr_block',
          cidr_block_state: 'cidr_block_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::CidrBlockAssociation.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['CidrBlock'] = stub[:cidr_block] unless stub[:cidr_block].nil?
        data['CidrBlockState'] = stub[:cidr_block_state] unless stub[:cidr_block_state].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2VolumeDetails
    class AwsEc2VolumeDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VolumeDetails')
        visited = visited + ['AwsEc2VolumeDetails']
        {
          create_time: 'create_time',
          encrypted: false,
          size: 1,
          snapshot_id: 'snapshot_id',
          status: 'status',
          kms_key_id: 'kms_key_id',
          attachments: AwsEc2VolumeAttachmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VolumeDetails.new
        data = {}
        data['CreateTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['Attachments'] = AwsEc2VolumeAttachmentList.stub(stub[:attachments]) unless stub[:attachments].nil?
        data
      end
    end

    # List Stubber for AwsEc2VolumeAttachmentList
    class AwsEc2VolumeAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VolumeAttachmentList')
        visited = visited + ['AwsEc2VolumeAttachmentList']
        [
          AwsEc2VolumeAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2VolumeAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2VolumeAttachment
    class AwsEc2VolumeAttachment
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2VolumeAttachment')
        visited = visited + ['AwsEc2VolumeAttachment']
        {
          attach_time: 'attach_time',
          delete_on_termination: false,
          instance_id: 'instance_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2VolumeAttachment.new
        data = {}
        data['AttachTime'] = stub[:attach_time] unless stub[:attach_time].nil?
        data['DeleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupDetails
    class AwsEc2SecurityGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupDetails')
        visited = visited + ['AwsEc2SecurityGroupDetails']
        {
          group_name: 'group_name',
          group_id: 'group_id',
          owner_id: 'owner_id',
          vpc_id: 'vpc_id',
          ip_permissions: AwsEc2SecurityGroupIpPermissionList.default(visited),
          ip_permissions_egress: AwsEc2SecurityGroupIpPermissionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupDetails.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['IpPermissions'] = AwsEc2SecurityGroupIpPermissionList.stub(stub[:ip_permissions]) unless stub[:ip_permissions].nil?
        data['IpPermissionsEgress'] = AwsEc2SecurityGroupIpPermissionList.stub(stub[:ip_permissions_egress]) unless stub[:ip_permissions_egress].nil?
        data
      end
    end

    # List Stubber for AwsEc2SecurityGroupIpPermissionList
    class AwsEc2SecurityGroupIpPermissionList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpPermissionList')
        visited = visited + ['AwsEc2SecurityGroupIpPermissionList']
        [
          AwsEc2SecurityGroupIpPermission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2SecurityGroupIpPermission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupIpPermission
    class AwsEc2SecurityGroupIpPermission
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpPermission')
        visited = visited + ['AwsEc2SecurityGroupIpPermission']
        {
          ip_protocol: 'ip_protocol',
          from_port: 1,
          to_port: 1,
          user_id_group_pairs: AwsEc2SecurityGroupUserIdGroupPairList.default(visited),
          ip_ranges: AwsEc2SecurityGroupIpRangeList.default(visited),
          ipv6_ranges: AwsEc2SecurityGroupIpv6RangeList.default(visited),
          prefix_list_ids: AwsEc2SecurityGroupPrefixListIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupIpPermission.new
        data = {}
        data['IpProtocol'] = stub[:ip_protocol] unless stub[:ip_protocol].nil?
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data['UserIdGroupPairs'] = AwsEc2SecurityGroupUserIdGroupPairList.stub(stub[:user_id_group_pairs]) unless stub[:user_id_group_pairs].nil?
        data['IpRanges'] = AwsEc2SecurityGroupIpRangeList.stub(stub[:ip_ranges]) unless stub[:ip_ranges].nil?
        data['Ipv6Ranges'] = AwsEc2SecurityGroupIpv6RangeList.stub(stub[:ipv6_ranges]) unless stub[:ipv6_ranges].nil?
        data['PrefixListIds'] = AwsEc2SecurityGroupPrefixListIdList.stub(stub[:prefix_list_ids]) unless stub[:prefix_list_ids].nil?
        data
      end
    end

    # List Stubber for AwsEc2SecurityGroupPrefixListIdList
    class AwsEc2SecurityGroupPrefixListIdList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupPrefixListIdList')
        visited = visited + ['AwsEc2SecurityGroupPrefixListIdList']
        [
          AwsEc2SecurityGroupPrefixListId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2SecurityGroupPrefixListId.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupPrefixListId
    class AwsEc2SecurityGroupPrefixListId
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupPrefixListId')
        visited = visited + ['AwsEc2SecurityGroupPrefixListId']
        {
          prefix_list_id: 'prefix_list_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupPrefixListId.new
        data = {}
        data['PrefixListId'] = stub[:prefix_list_id] unless stub[:prefix_list_id].nil?
        data
      end
    end

    # List Stubber for AwsEc2SecurityGroupIpv6RangeList
    class AwsEc2SecurityGroupIpv6RangeList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpv6RangeList')
        visited = visited + ['AwsEc2SecurityGroupIpv6RangeList']
        [
          AwsEc2SecurityGroupIpv6Range.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2SecurityGroupIpv6Range.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupIpv6Range
    class AwsEc2SecurityGroupIpv6Range
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpv6Range')
        visited = visited + ['AwsEc2SecurityGroupIpv6Range']
        {
          cidr_ipv6: 'cidr_ipv6',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupIpv6Range.new
        data = {}
        data['CidrIpv6'] = stub[:cidr_ipv6] unless stub[:cidr_ipv6].nil?
        data
      end
    end

    # List Stubber for AwsEc2SecurityGroupIpRangeList
    class AwsEc2SecurityGroupIpRangeList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpRangeList')
        visited = visited + ['AwsEc2SecurityGroupIpRangeList']
        [
          AwsEc2SecurityGroupIpRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2SecurityGroupIpRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupIpRange
    class AwsEc2SecurityGroupIpRange
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupIpRange')
        visited = visited + ['AwsEc2SecurityGroupIpRange']
        {
          cidr_ip: 'cidr_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupIpRange.new
        data = {}
        data['CidrIp'] = stub[:cidr_ip] unless stub[:cidr_ip].nil?
        data
      end
    end

    # List Stubber for AwsEc2SecurityGroupUserIdGroupPairList
    class AwsEc2SecurityGroupUserIdGroupPairList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupUserIdGroupPairList')
        visited = visited + ['AwsEc2SecurityGroupUserIdGroupPairList']
        [
          AwsEc2SecurityGroupUserIdGroupPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2SecurityGroupUserIdGroupPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2SecurityGroupUserIdGroupPair
    class AwsEc2SecurityGroupUserIdGroupPair
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2SecurityGroupUserIdGroupPair')
        visited = visited + ['AwsEc2SecurityGroupUserIdGroupPair']
        {
          group_id: 'group_id',
          group_name: 'group_name',
          peering_status: 'peering_status',
          user_id: 'user_id',
          vpc_id: 'vpc_id',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2SecurityGroupUserIdGroupPair.new
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['PeeringStatus'] = stub[:peering_status] unless stub[:peering_status].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['VpcPeeringConnectionId'] = stub[:vpc_peering_connection_id] unless stub[:vpc_peering_connection_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfaceDetails
    class AwsEc2NetworkInterfaceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceDetails')
        visited = visited + ['AwsEc2NetworkInterfaceDetails']
        {
          attachment: AwsEc2NetworkInterfaceAttachment.default(visited),
          network_interface_id: 'network_interface_id',
          security_groups: AwsEc2NetworkInterfaceSecurityGroupList.default(visited),
          source_dest_check: false,
          ip_v6_addresses: AwsEc2NetworkInterfaceIpV6AddressList.default(visited),
          private_ip_addresses: AwsEc2NetworkInterfacePrivateIpAddressList.default(visited),
          public_dns_name: 'public_dns_name',
          public_ip: 'public_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfaceDetails.new
        data = {}
        data['Attachment'] = AwsEc2NetworkInterfaceAttachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['SecurityGroups'] = AwsEc2NetworkInterfaceSecurityGroupList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['SourceDestCheck'] = stub[:source_dest_check] unless stub[:source_dest_check].nil?
        data['IpV6Addresses'] = AwsEc2NetworkInterfaceIpV6AddressList.stub(stub[:ip_v6_addresses]) unless stub[:ip_v6_addresses].nil?
        data['PrivateIpAddresses'] = AwsEc2NetworkInterfacePrivateIpAddressList.stub(stub[:private_ip_addresses]) unless stub[:private_ip_addresses].nil?
        data['PublicDnsName'] = stub[:public_dns_name] unless stub[:public_dns_name].nil?
        data['PublicIp'] = stub[:public_ip] unless stub[:public_ip].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkInterfacePrivateIpAddressList
    class AwsEc2NetworkInterfacePrivateIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfacePrivateIpAddressList')
        visited = visited + ['AwsEc2NetworkInterfacePrivateIpAddressList']
        [
          AwsEc2NetworkInterfacePrivateIpAddressDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkInterfacePrivateIpAddressDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfacePrivateIpAddressDetail
    class AwsEc2NetworkInterfacePrivateIpAddressDetail
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfacePrivateIpAddressDetail')
        visited = visited + ['AwsEc2NetworkInterfacePrivateIpAddressDetail']
        {
          private_ip_address: 'private_ip_address',
          private_dns_name: 'private_dns_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfacePrivateIpAddressDetail.new
        data = {}
        data['PrivateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['PrivateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkInterfaceIpV6AddressList
    class AwsEc2NetworkInterfaceIpV6AddressList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceIpV6AddressList')
        visited = visited + ['AwsEc2NetworkInterfaceIpV6AddressList']
        [
          AwsEc2NetworkInterfaceIpV6AddressDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkInterfaceIpV6AddressDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfaceIpV6AddressDetail
    class AwsEc2NetworkInterfaceIpV6AddressDetail
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceIpV6AddressDetail')
        visited = visited + ['AwsEc2NetworkInterfaceIpV6AddressDetail']
        {
          ip_v6_address: 'ip_v6_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfaceIpV6AddressDetail.new
        data = {}
        data['IpV6Address'] = stub[:ip_v6_address] unless stub[:ip_v6_address].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkInterfaceSecurityGroupList
    class AwsEc2NetworkInterfaceSecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceSecurityGroupList')
        visited = visited + ['AwsEc2NetworkInterfaceSecurityGroupList']
        [
          AwsEc2NetworkInterfaceSecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkInterfaceSecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfaceSecurityGroup
    class AwsEc2NetworkInterfaceSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceSecurityGroup')
        visited = visited + ['AwsEc2NetworkInterfaceSecurityGroup']
        {
          group_name: 'group_name',
          group_id: 'group_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfaceSecurityGroup.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfaceAttachment
    class AwsEc2NetworkInterfaceAttachment
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceAttachment')
        visited = visited + ['AwsEc2NetworkInterfaceAttachment']
        {
          attach_time: 'attach_time',
          attachment_id: 'attachment_id',
          delete_on_termination: false,
          device_index: 1,
          instance_id: 'instance_id',
          instance_owner_id: 'instance_owner_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfaceAttachment.new
        data = {}
        data['AttachTime'] = stub[:attach_time] unless stub[:attach_time].nil?
        data['AttachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['DeleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data['DeviceIndex'] = stub[:device_index] unless stub[:device_index].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['InstanceOwnerId'] = stub[:instance_owner_id] unless stub[:instance_owner_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2InstanceDetails
    class AwsEc2InstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2InstanceDetails')
        visited = visited + ['AwsEc2InstanceDetails']
        {
          type: 'type',
          image_id: 'image_id',
          ip_v4_addresses: StringList.default(visited),
          ip_v6_addresses: StringList.default(visited),
          key_name: 'key_name',
          iam_instance_profile_arn: 'iam_instance_profile_arn',
          vpc_id: 'vpc_id',
          subnet_id: 'subnet_id',
          launched_at: 'launched_at',
          network_interfaces: AwsEc2InstanceNetworkInterfacesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2InstanceDetails.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['IpV4Addresses'] = StringList.stub(stub[:ip_v4_addresses]) unless stub[:ip_v4_addresses].nil?
        data['IpV6Addresses'] = StringList.stub(stub[:ip_v6_addresses]) unless stub[:ip_v6_addresses].nil?
        data['KeyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['IamInstanceProfileArn'] = stub[:iam_instance_profile_arn] unless stub[:iam_instance_profile_arn].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['LaunchedAt'] = stub[:launched_at] unless stub[:launched_at].nil?
        data['NetworkInterfaces'] = AwsEc2InstanceNetworkInterfacesList.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data
      end
    end

    # List Stubber for AwsEc2InstanceNetworkInterfacesList
    class AwsEc2InstanceNetworkInterfacesList
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2InstanceNetworkInterfacesList')
        visited = visited + ['AwsEc2InstanceNetworkInterfacesList']
        [
          AwsEc2InstanceNetworkInterfacesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2InstanceNetworkInterfacesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2InstanceNetworkInterfacesDetails
    class AwsEc2InstanceNetworkInterfacesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2InstanceNetworkInterfacesDetails')
        visited = visited + ['AwsEc2InstanceNetworkInterfacesDetails']
        {
          network_interface_id: 'network_interface_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2InstanceNetworkInterfacesDetails.new
        data = {}
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionDetails
    class AwsCloudFrontDistributionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionDetails')
        visited = visited + ['AwsCloudFrontDistributionDetails']
        {
          cache_behaviors: AwsCloudFrontDistributionCacheBehaviors.default(visited),
          default_cache_behavior: AwsCloudFrontDistributionDefaultCacheBehavior.default(visited),
          default_root_object: 'default_root_object',
          domain_name: 'domain_name',
          e_tag: 'e_tag',
          last_modified_time: 'last_modified_time',
          logging: AwsCloudFrontDistributionLogging.default(visited),
          origins: AwsCloudFrontDistributionOrigins.default(visited),
          origin_groups: AwsCloudFrontDistributionOriginGroups.default(visited),
          viewer_certificate: AwsCloudFrontDistributionViewerCertificate.default(visited),
          status: 'status',
          web_acl_id: 'web_acl_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionDetails.new
        data = {}
        data['CacheBehaviors'] = AwsCloudFrontDistributionCacheBehaviors.stub(stub[:cache_behaviors]) unless stub[:cache_behaviors].nil?
        data['DefaultCacheBehavior'] = AwsCloudFrontDistributionDefaultCacheBehavior.stub(stub[:default_cache_behavior]) unless stub[:default_cache_behavior].nil?
        data['DefaultRootObject'] = stub[:default_root_object] unless stub[:default_root_object].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ETag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['Logging'] = AwsCloudFrontDistributionLogging.stub(stub[:logging]) unless stub[:logging].nil?
        data['Origins'] = AwsCloudFrontDistributionOrigins.stub(stub[:origins]) unless stub[:origins].nil?
        data['OriginGroups'] = AwsCloudFrontDistributionOriginGroups.stub(stub[:origin_groups]) unless stub[:origin_groups].nil?
        data['ViewerCertificate'] = AwsCloudFrontDistributionViewerCertificate.stub(stub[:viewer_certificate]) unless stub[:viewer_certificate].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['WebAclId'] = stub[:web_acl_id] unless stub[:web_acl_id].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionViewerCertificate
    class AwsCloudFrontDistributionViewerCertificate
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionViewerCertificate')
        visited = visited + ['AwsCloudFrontDistributionViewerCertificate']
        {
          acm_certificate_arn: 'acm_certificate_arn',
          certificate: 'certificate',
          certificate_source: 'certificate_source',
          cloud_front_default_certificate: false,
          iam_certificate_id: 'iam_certificate_id',
          minimum_protocol_version: 'minimum_protocol_version',
          ssl_support_method: 'ssl_support_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionViewerCertificate.new
        data = {}
        data['AcmCertificateArn'] = stub[:acm_certificate_arn] unless stub[:acm_certificate_arn].nil?
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['CertificateSource'] = stub[:certificate_source] unless stub[:certificate_source].nil?
        data['CloudFrontDefaultCertificate'] = stub[:cloud_front_default_certificate] unless stub[:cloud_front_default_certificate].nil?
        data['IamCertificateId'] = stub[:iam_certificate_id] unless stub[:iam_certificate_id].nil?
        data['MinimumProtocolVersion'] = stub[:minimum_protocol_version] unless stub[:minimum_protocol_version].nil?
        data['SslSupportMethod'] = stub[:ssl_support_method] unless stub[:ssl_support_method].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginGroups
    class AwsCloudFrontDistributionOriginGroups
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroups')
        visited = visited + ['AwsCloudFrontDistributionOriginGroups']
        {
          items: AwsCloudFrontDistributionOriginGroupsItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginGroups.new
        data = {}
        data['Items'] = AwsCloudFrontDistributionOriginGroupsItemList.stub(stub[:items]) unless stub[:items].nil?
        data
      end
    end

    # List Stubber for AwsCloudFrontDistributionOriginGroupsItemList
    class AwsCloudFrontDistributionOriginGroupsItemList
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroupsItemList')
        visited = visited + ['AwsCloudFrontDistributionOriginGroupsItemList']
        [
          AwsCloudFrontDistributionOriginGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCloudFrontDistributionOriginGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginGroup
    class AwsCloudFrontDistributionOriginGroup
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroup')
        visited = visited + ['AwsCloudFrontDistributionOriginGroup']
        {
          failover_criteria: AwsCloudFrontDistributionOriginGroupFailover.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginGroup.new
        data = {}
        data['FailoverCriteria'] = AwsCloudFrontDistributionOriginGroupFailover.stub(stub[:failover_criteria]) unless stub[:failover_criteria].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginGroupFailover
    class AwsCloudFrontDistributionOriginGroupFailover
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroupFailover')
        visited = visited + ['AwsCloudFrontDistributionOriginGroupFailover']
        {
          status_codes: AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginGroupFailover.new
        data = {}
        data['StatusCodes'] = AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.stub(stub[:status_codes]) unless stub[:status_codes].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroupFailoverStatusCodes')
        visited = visited + ['AwsCloudFrontDistributionOriginGroupFailoverStatusCodes']
        {
          items: AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.default(visited),
          quantity: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.new
        data = {}
        data['Items'] = AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Quantity'] = stub[:quantity] unless stub[:quantity].nil?
        data
      end
    end

    # List Stubber for AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList')
        visited = visited + ['AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList']
        [
          1
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

    # Structure Stubber for AwsCloudFrontDistributionOrigins
    class AwsCloudFrontDistributionOrigins
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOrigins')
        visited = visited + ['AwsCloudFrontDistributionOrigins']
        {
          items: AwsCloudFrontDistributionOriginItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOrigins.new
        data = {}
        data['Items'] = AwsCloudFrontDistributionOriginItemList.stub(stub[:items]) unless stub[:items].nil?
        data
      end
    end

    # List Stubber for AwsCloudFrontDistributionOriginItemList
    class AwsCloudFrontDistributionOriginItemList
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginItemList')
        visited = visited + ['AwsCloudFrontDistributionOriginItemList']
        [
          AwsCloudFrontDistributionOriginItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCloudFrontDistributionOriginItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginItem
    class AwsCloudFrontDistributionOriginItem
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginItem')
        visited = visited + ['AwsCloudFrontDistributionOriginItem']
        {
          domain_name: 'domain_name',
          id: 'id',
          origin_path: 'origin_path',
          s3_origin_config: AwsCloudFrontDistributionOriginS3OriginConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginItem.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['OriginPath'] = stub[:origin_path] unless stub[:origin_path].nil?
        data['S3OriginConfig'] = AwsCloudFrontDistributionOriginS3OriginConfig.stub(stub[:s3_origin_config]) unless stub[:s3_origin_config].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionOriginS3OriginConfig
    class AwsCloudFrontDistributionOriginS3OriginConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionOriginS3OriginConfig')
        visited = visited + ['AwsCloudFrontDistributionOriginS3OriginConfig']
        {
          origin_access_identity: 'origin_access_identity',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionOriginS3OriginConfig.new
        data = {}
        data['OriginAccessIdentity'] = stub[:origin_access_identity] unless stub[:origin_access_identity].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionLogging
    class AwsCloudFrontDistributionLogging
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionLogging')
        visited = visited + ['AwsCloudFrontDistributionLogging']
        {
          bucket: 'bucket',
          enabled: false,
          include_cookies: false,
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionLogging.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['IncludeCookies'] = stub[:include_cookies] unless stub[:include_cookies].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionDefaultCacheBehavior
    class AwsCloudFrontDistributionDefaultCacheBehavior
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionDefaultCacheBehavior')
        visited = visited + ['AwsCloudFrontDistributionDefaultCacheBehavior']
        {
          viewer_protocol_policy: 'viewer_protocol_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionDefaultCacheBehavior.new
        data = {}
        data['ViewerProtocolPolicy'] = stub[:viewer_protocol_policy] unless stub[:viewer_protocol_policy].nil?
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionCacheBehaviors
    class AwsCloudFrontDistributionCacheBehaviors
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionCacheBehaviors')
        visited = visited + ['AwsCloudFrontDistributionCacheBehaviors']
        {
          items: AwsCloudFrontDistributionCacheBehaviorsItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionCacheBehaviors.new
        data = {}
        data['Items'] = AwsCloudFrontDistributionCacheBehaviorsItemList.stub(stub[:items]) unless stub[:items].nil?
        data
      end
    end

    # List Stubber for AwsCloudFrontDistributionCacheBehaviorsItemList
    class AwsCloudFrontDistributionCacheBehaviorsItemList
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionCacheBehaviorsItemList')
        visited = visited + ['AwsCloudFrontDistributionCacheBehaviorsItemList']
        [
          AwsCloudFrontDistributionCacheBehavior.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCloudFrontDistributionCacheBehavior.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCloudFrontDistributionCacheBehavior
    class AwsCloudFrontDistributionCacheBehavior
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudFrontDistributionCacheBehavior')
        visited = visited + ['AwsCloudFrontDistributionCacheBehavior']
        {
          viewer_protocol_policy: 'viewer_protocol_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudFrontDistributionCacheBehavior.new
        data = {}
        data['ViewerProtocolPolicy'] = stub[:viewer_protocol_policy] unless stub[:viewer_protocol_policy].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectDetails
    class AwsCodeBuildProjectDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectDetails')
        visited = visited + ['AwsCodeBuildProjectDetails']
        {
          encryption_key: 'encryption_key',
          artifacts: AwsCodeBuildProjectArtifactsList.default(visited),
          environment: AwsCodeBuildProjectEnvironment.default(visited),
          name: 'name',
          source: AwsCodeBuildProjectSource.default(visited),
          service_role: 'service_role',
          logs_config: AwsCodeBuildProjectLogsConfigDetails.default(visited),
          vpc_config: AwsCodeBuildProjectVpcConfig.default(visited),
          secondary_artifacts: AwsCodeBuildProjectArtifactsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectDetails.new
        data = {}
        data['EncryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['Artifacts'] = AwsCodeBuildProjectArtifactsList.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['Environment'] = AwsCodeBuildProjectEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Source'] = AwsCodeBuildProjectSource.stub(stub[:source]) unless stub[:source].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['LogsConfig'] = AwsCodeBuildProjectLogsConfigDetails.stub(stub[:logs_config]) unless stub[:logs_config].nil?
        data['VpcConfig'] = AwsCodeBuildProjectVpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['SecondaryArtifacts'] = AwsCodeBuildProjectArtifactsList.stub(stub[:secondary_artifacts]) unless stub[:secondary_artifacts].nil?
        data
      end
    end

    # List Stubber for AwsCodeBuildProjectArtifactsList
    class AwsCodeBuildProjectArtifactsList
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectArtifactsList')
        visited = visited + ['AwsCodeBuildProjectArtifactsList']
        [
          AwsCodeBuildProjectArtifactsDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCodeBuildProjectArtifactsDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectArtifactsDetails
    class AwsCodeBuildProjectArtifactsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectArtifactsDetails')
        visited = visited + ['AwsCodeBuildProjectArtifactsDetails']
        {
          artifact_identifier: 'artifact_identifier',
          encryption_disabled: false,
          location: 'location',
          name: 'name',
          namespace_type: 'namespace_type',
          override_artifact_name: false,
          packaging: 'packaging',
          path: 'path',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectArtifactsDetails.new
        data = {}
        data['ArtifactIdentifier'] = stub[:artifact_identifier] unless stub[:artifact_identifier].nil?
        data['EncryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NamespaceType'] = stub[:namespace_type] unless stub[:namespace_type].nil?
        data['OverrideArtifactName'] = stub[:override_artifact_name] unless stub[:override_artifact_name].nil?
        data['Packaging'] = stub[:packaging] unless stub[:packaging].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectVpcConfig
    class AwsCodeBuildProjectVpcConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectVpcConfig')
        visited = visited + ['AwsCodeBuildProjectVpcConfig']
        {
          vpc_id: 'vpc_id',
          subnets: NonEmptyStringList.default(visited),
          security_group_ids: NonEmptyStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectVpcConfig.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Subnets'] = NonEmptyStringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['SecurityGroupIds'] = NonEmptyStringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectLogsConfigDetails
    class AwsCodeBuildProjectLogsConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectLogsConfigDetails')
        visited = visited + ['AwsCodeBuildProjectLogsConfigDetails']
        {
          cloud_watch_logs: AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.default(visited),
          s3_logs: AwsCodeBuildProjectLogsConfigS3LogsDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectLogsConfigDetails.new
        data = {}
        data['CloudWatchLogs'] = AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data['S3Logs'] = AwsCodeBuildProjectLogsConfigS3LogsDetails.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectLogsConfigS3LogsDetails
    class AwsCodeBuildProjectLogsConfigS3LogsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectLogsConfigS3LogsDetails')
        visited = visited + ['AwsCodeBuildProjectLogsConfigS3LogsDetails']
        {
          encryption_disabled: false,
          location: 'location',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectLogsConfigS3LogsDetails.new
        data = {}
        data['EncryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
    class AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails')
        visited = visited + ['AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails']
        {
          group_name: 'group_name',
          status: 'status',
          stream_name: 'stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectSource
    class AwsCodeBuildProjectSource
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectSource')
        visited = visited + ['AwsCodeBuildProjectSource']
        {
          type: 'type',
          location: 'location',
          git_clone_depth: 1,
          insecure_ssl: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectSource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['GitCloneDepth'] = stub[:git_clone_depth] unless stub[:git_clone_depth].nil?
        data['InsecureSsl'] = stub[:insecure_ssl] unless stub[:insecure_ssl].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectEnvironment
    class AwsCodeBuildProjectEnvironment
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectEnvironment')
        visited = visited + ['AwsCodeBuildProjectEnvironment']
        {
          certificate: 'certificate',
          environment_variables: AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.default(visited),
          privileged_mode: false,
          image_pull_credentials_type: 'image_pull_credentials_type',
          registry_credential: AwsCodeBuildProjectEnvironmentRegistryCredential.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectEnvironment.new
        data = {}
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['EnvironmentVariables'] = AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['PrivilegedMode'] = stub[:privileged_mode] unless stub[:privileged_mode].nil?
        data['ImagePullCredentialsType'] = stub[:image_pull_credentials_type] unless stub[:image_pull_credentials_type].nil?
        data['RegistryCredential'] = AwsCodeBuildProjectEnvironmentRegistryCredential.stub(stub[:registry_credential]) unless stub[:registry_credential].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectEnvironmentRegistryCredential
    class AwsCodeBuildProjectEnvironmentRegistryCredential
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectEnvironmentRegistryCredential')
        visited = visited + ['AwsCodeBuildProjectEnvironmentRegistryCredential']
        {
          credential: 'credential',
          credential_provider: 'credential_provider',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectEnvironmentRegistryCredential.new
        data = {}
        data['Credential'] = stub[:credential] unless stub[:credential].nil?
        data['CredentialProvider'] = stub[:credential_provider] unless stub[:credential_provider].nil?
        data
      end
    end

    # List Stubber for AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectEnvironmentEnvironmentVariablesList')
        visited = visited + ['AwsCodeBuildProjectEnvironmentEnvironmentVariablesList']
        [
          AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails')
        visited = visited + ['AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails']
        {
          name: 'name',
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupDetails
    class AwsAutoScalingAutoScalingGroupDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupDetails']
        {
          launch_configuration_name: 'launch_configuration_name',
          load_balancer_names: StringList.default(visited),
          health_check_type: 'health_check_type',
          health_check_grace_period: 1,
          created_time: 'created_time',
          mixed_instances_policy: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.default(visited),
          availability_zones: AwsAutoScalingAutoScalingGroupAvailabilityZonesList.default(visited),
          launch_template: AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.default(visited),
          capacity_rebalance: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupDetails.new
        data = {}
        data['LaunchConfigurationName'] = stub[:launch_configuration_name] unless stub[:launch_configuration_name].nil?
        data['LoadBalancerNames'] = StringList.stub(stub[:load_balancer_names]) unless stub[:load_balancer_names].nil?
        data['HealthCheckType'] = stub[:health_check_type] unless stub[:health_check_type].nil?
        data['HealthCheckGracePeriod'] = stub[:health_check_grace_period] unless stub[:health_check_grace_period].nil?
        data['CreatedTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['MixedInstancesPolicy'] = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.stub(stub[:mixed_instances_policy]) unless stub[:mixed_instances_policy].nil?
        data['AvailabilityZones'] = AwsAutoScalingAutoScalingGroupAvailabilityZonesList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['LaunchTemplate'] = AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.stub(stub[:launch_template]) unless stub[:launch_template].nil?
        data['CapacityRebalance'] = stub[:capacity_rebalance] unless stub[:capacity_rebalance].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
    class AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification')
        visited = visited + ['AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.new
        data = {}
        data['LaunchTemplateId'] = stub[:launch_template_id] unless stub[:launch_template_id].nil?
        data['LaunchTemplateName'] = stub[:launch_template_name] unless stub[:launch_template_name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for AwsAutoScalingAutoScalingGroupAvailabilityZonesList
    class AwsAutoScalingAutoScalingGroupAvailabilityZonesList
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupAvailabilityZonesList')
        visited = visited + ['AwsAutoScalingAutoScalingGroupAvailabilityZonesList']
        [
          AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
    class AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails']
        {
          instances_distribution: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.default(visited),
          launch_template: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.new
        data = {}
        data['InstancesDistribution'] = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.stub(stub[:instances_distribution]) unless stub[:instances_distribution].nil?
        data['LaunchTemplate'] = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.stub(stub[:launch_template]) unless stub[:launch_template].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails']
        {
          launch_template_specification: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.default(visited),
          overrides: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.new
        data = {}
        data['LaunchTemplateSpecification'] = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.stub(stub[:launch_template_specification]) unless stub[:launch_template_specification].nil?
        data['Overrides'] = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.stub(stub[:overrides]) unless stub[:overrides].nil?
        data
      end
    end

    # List Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList']
        [
          AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails']
        {
          instance_type: 'instance_type',
          weighted_capacity: 'weighted_capacity',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['WeightedCapacity'] = stub[:weighted_capacity] unless stub[:weighted_capacity].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.new
        data = {}
        data['LaunchTemplateId'] = stub[:launch_template_id] unless stub[:launch_template_id].nil?
        data['LaunchTemplateName'] = stub[:launch_template_name] unless stub[:launch_template_name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
      def self.default(visited=[])
        return nil if visited.include?('AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails')
        visited = visited + ['AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails']
        {
          on_demand_allocation_strategy: 'on_demand_allocation_strategy',
          on_demand_base_capacity: 1,
          on_demand_percentage_above_base_capacity: 1,
          spot_allocation_strategy: 'spot_allocation_strategy',
          spot_instance_pools: 1,
          spot_max_price: 'spot_max_price',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.new
        data = {}
        data['OnDemandAllocationStrategy'] = stub[:on_demand_allocation_strategy] unless stub[:on_demand_allocation_strategy].nil?
        data['OnDemandBaseCapacity'] = stub[:on_demand_base_capacity] unless stub[:on_demand_base_capacity].nil?
        data['OnDemandPercentageAboveBaseCapacity'] = stub[:on_demand_percentage_above_base_capacity] unless stub[:on_demand_percentage_above_base_capacity].nil?
        data['SpotAllocationStrategy'] = stub[:spot_allocation_strategy] unless stub[:spot_allocation_strategy].nil?
        data['SpotInstancePools'] = stub[:spot_instance_pools] unless stub[:spot_instance_pools].nil?
        data['SpotMaxPrice'] = stub[:spot_max_price] unless stub[:spot_max_price].nil?
        data
      end
    end

    # Structure Stubber for DataClassificationDetails
    class DataClassificationDetails
      def self.default(visited=[])
        return nil if visited.include?('DataClassificationDetails')
        visited = visited + ['DataClassificationDetails']
        {
          detailed_results_location: 'detailed_results_location',
          result: ClassificationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataClassificationDetails.new
        data = {}
        data['DetailedResultsLocation'] = stub[:detailed_results_location] unless stub[:detailed_results_location].nil?
        data['Result'] = ClassificationResult.stub(stub[:result]) unless stub[:result].nil?
        data
      end
    end

    # Structure Stubber for ClassificationResult
    class ClassificationResult
      def self.default(visited=[])
        return nil if visited.include?('ClassificationResult')
        visited = visited + ['ClassificationResult']
        {
          mime_type: 'mime_type',
          size_classified: 1,
          additional_occurrences: false,
          status: ClassificationStatus.default(visited),
          sensitive_data: SensitiveDataResultList.default(visited),
          custom_data_identifiers: CustomDataIdentifiersResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationResult.new
        data = {}
        data['MimeType'] = stub[:mime_type] unless stub[:mime_type].nil?
        data['SizeClassified'] = stub[:size_classified] unless stub[:size_classified].nil?
        data['AdditionalOccurrences'] = stub[:additional_occurrences] unless stub[:additional_occurrences].nil?
        data['Status'] = ClassificationStatus.stub(stub[:status]) unless stub[:status].nil?
        data['SensitiveData'] = SensitiveDataResultList.stub(stub[:sensitive_data]) unless stub[:sensitive_data].nil?
        data['CustomDataIdentifiers'] = CustomDataIdentifiersResult.stub(stub[:custom_data_identifiers]) unless stub[:custom_data_identifiers].nil?
        data
      end
    end

    # Structure Stubber for CustomDataIdentifiersResult
    class CustomDataIdentifiersResult
      def self.default(visited=[])
        return nil if visited.include?('CustomDataIdentifiersResult')
        visited = visited + ['CustomDataIdentifiersResult']
        {
          detections: CustomDataIdentifiersDetectionsList.default(visited),
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDataIdentifiersResult.new
        data = {}
        data['Detections'] = CustomDataIdentifiersDetectionsList.stub(stub[:detections]) unless stub[:detections].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for CustomDataIdentifiersDetectionsList
    class CustomDataIdentifiersDetectionsList
      def self.default(visited=[])
        return nil if visited.include?('CustomDataIdentifiersDetectionsList')
        visited = visited + ['CustomDataIdentifiersDetectionsList']
        [
          CustomDataIdentifiersDetections.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomDataIdentifiersDetections.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomDataIdentifiersDetections
    class CustomDataIdentifiersDetections
      def self.default(visited=[])
        return nil if visited.include?('CustomDataIdentifiersDetections')
        visited = visited + ['CustomDataIdentifiersDetections']
        {
          count: 1,
          arn: 'arn',
          name: 'name',
          occurrences: Occurrences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDataIdentifiersDetections.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Occurrences'] = Occurrences.stub(stub[:occurrences]) unless stub[:occurrences].nil?
        data
      end
    end

    # Structure Stubber for Occurrences
    class Occurrences
      def self.default(visited=[])
        return nil if visited.include?('Occurrences')
        visited = visited + ['Occurrences']
        {
          line_ranges: Ranges.default(visited),
          offset_ranges: Ranges.default(visited),
          pages: Pages.default(visited),
          records: Records.default(visited),
          cells: Cells.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Occurrences.new
        data = {}
        data['LineRanges'] = Ranges.stub(stub[:line_ranges]) unless stub[:line_ranges].nil?
        data['OffsetRanges'] = Ranges.stub(stub[:offset_ranges]) unless stub[:offset_ranges].nil?
        data['Pages'] = Pages.stub(stub[:pages]) unless stub[:pages].nil?
        data['Records'] = Records.stub(stub[:records]) unless stub[:records].nil?
        data['Cells'] = Cells.stub(stub[:cells]) unless stub[:cells].nil?
        data
      end
    end

    # List Stubber for Cells
    class Cells
      def self.default(visited=[])
        return nil if visited.include?('Cells')
        visited = visited + ['Cells']
        [
          Cell.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Cell.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Cell
    class Cell
      def self.default(visited=[])
        return nil if visited.include?('Cell')
        visited = visited + ['Cell']
        {
          column: 1,
          row: 1,
          column_name: 'column_name',
          cell_reference: 'cell_reference',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cell.new
        data = {}
        data['Column'] = stub[:column] unless stub[:column].nil?
        data['Row'] = stub[:row] unless stub[:row].nil?
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['CellReference'] = stub[:cell_reference] unless stub[:cell_reference].nil?
        data
      end
    end

    # List Stubber for Records
    class Records
      def self.default(visited=[])
        return nil if visited.include?('Records')
        visited = visited + ['Records']
        [
          Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          json_path: 'json_path',
          record_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['JsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data['RecordIndex'] = stub[:record_index] unless stub[:record_index].nil?
        data
      end
    end

    # List Stubber for Pages
    class Pages
      def self.default(visited=[])
        return nil if visited.include?('Pages')
        visited = visited + ['Pages']
        [
          Page.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Page.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Page
    class Page
      def self.default(visited=[])
        return nil if visited.include?('Page')
        visited = visited + ['Page']
        {
          page_number: 1,
          line_range: Range.default(visited),
          offset_range: Range.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Page.new
        data = {}
        data['PageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data['LineRange'] = Range.stub(stub[:line_range]) unless stub[:line_range].nil?
        data['OffsetRange'] = Range.stub(stub[:offset_range]) unless stub[:offset_range].nil?
        data
      end
    end

    # Structure Stubber for Range
    class Range
      def self.default(visited=[])
        return nil if visited.include?('Range')
        visited = visited + ['Range']
        {
          start: 1,
          end: 1,
          start_column: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Range.new
        data = {}
        data['Start'] = stub[:start] unless stub[:start].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data['StartColumn'] = stub[:start_column] unless stub[:start_column].nil?
        data
      end
    end

    # List Stubber for Ranges
    class Ranges
      def self.default(visited=[])
        return nil if visited.include?('Ranges')
        visited = visited + ['Ranges']
        [
          Range.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Range.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SensitiveDataResultList
    class SensitiveDataResultList
      def self.default(visited=[])
        return nil if visited.include?('SensitiveDataResultList')
        visited = visited + ['SensitiveDataResultList']
        [
          SensitiveDataResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SensitiveDataResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SensitiveDataResult
    class SensitiveDataResult
      def self.default(visited=[])
        return nil if visited.include?('SensitiveDataResult')
        visited = visited + ['SensitiveDataResult']
        {
          category: 'category',
          detections: SensitiveDataDetectionsList.default(visited),
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SensitiveDataResult.new
        data = {}
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Detections'] = SensitiveDataDetectionsList.stub(stub[:detections]) unless stub[:detections].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for SensitiveDataDetectionsList
    class SensitiveDataDetectionsList
      def self.default(visited=[])
        return nil if visited.include?('SensitiveDataDetectionsList')
        visited = visited + ['SensitiveDataDetectionsList']
        [
          SensitiveDataDetections.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SensitiveDataDetections.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SensitiveDataDetections
    class SensitiveDataDetections
      def self.default(visited=[])
        return nil if visited.include?('SensitiveDataDetections')
        visited = visited + ['SensitiveDataDetections']
        {
          count: 1,
          type: 'type',
          occurrences: Occurrences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SensitiveDataDetections.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Occurrences'] = Occurrences.stub(stub[:occurrences]) unless stub[:occurrences].nil?
        data
      end
    end

    # Structure Stubber for ClassificationStatus
    class ClassificationStatus
      def self.default(visited=[])
        return nil if visited.include?('ClassificationStatus')
        visited = visited + ['ClassificationStatus']
        {
          code: 'code',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationStatus.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ThreatIntelIndicatorList
    class ThreatIntelIndicatorList
      def self.default(visited=[])
        return nil if visited.include?('ThreatIntelIndicatorList')
        visited = visited + ['ThreatIntelIndicatorList']
        [
          ThreatIntelIndicator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThreatIntelIndicator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThreatIntelIndicator
    class ThreatIntelIndicator
      def self.default(visited=[])
        return nil if visited.include?('ThreatIntelIndicator')
        visited = visited + ['ThreatIntelIndicator']
        {
          type: 'type',
          value: 'value',
          category: 'category',
          last_observed_at: 'last_observed_at',
          source: 'source',
          source_url: 'source_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThreatIntelIndicator.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['LastObservedAt'] = stub[:last_observed_at] unless stub[:last_observed_at].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['SourceUrl'] = stub[:source_url] unless stub[:source_url].nil?
        data
      end
    end

    # Structure Stubber for ProcessDetails
    class ProcessDetails
      def self.default(visited=[])
        return nil if visited.include?('ProcessDetails')
        visited = visited + ['ProcessDetails']
        {
          name: 'name',
          path: 'path',
          pid: 1,
          parent_pid: 1,
          launched_at: 'launched_at',
          terminated_at: 'terminated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Pid'] = stub[:pid] unless stub[:pid].nil?
        data['ParentPid'] = stub[:parent_pid] unless stub[:parent_pid].nil?
        data['LaunchedAt'] = stub[:launched_at] unless stub[:launched_at].nil?
        data['TerminatedAt'] = stub[:terminated_at] unless stub[:terminated_at].nil?
        data
      end
    end

    # List Stubber for NetworkPathList
    class NetworkPathList
      def self.default(visited=[])
        return nil if visited.include?('NetworkPathList')
        visited = visited + ['NetworkPathList']
        [
          NetworkPathComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkPathComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkPathComponent
    class NetworkPathComponent
      def self.default(visited=[])
        return nil if visited.include?('NetworkPathComponent')
        visited = visited + ['NetworkPathComponent']
        {
          component_id: 'component_id',
          component_type: 'component_type',
          egress: NetworkHeader.default(visited),
          ingress: NetworkHeader.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkPathComponent.new
        data = {}
        data['ComponentId'] = stub[:component_id] unless stub[:component_id].nil?
        data['ComponentType'] = stub[:component_type] unless stub[:component_type].nil?
        data['Egress'] = NetworkHeader.stub(stub[:egress]) unless stub[:egress].nil?
        data['Ingress'] = NetworkHeader.stub(stub[:ingress]) unless stub[:ingress].nil?
        data
      end
    end

    # Structure Stubber for NetworkHeader
    class NetworkHeader
      def self.default(visited=[])
        return nil if visited.include?('NetworkHeader')
        visited = visited + ['NetworkHeader']
        {
          protocol: 'protocol',
          destination: NetworkPathComponentDetails.default(visited),
          source: NetworkPathComponentDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkHeader.new
        data = {}
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Destination'] = NetworkPathComponentDetails.stub(stub[:destination]) unless stub[:destination].nil?
        data['Source'] = NetworkPathComponentDetails.stub(stub[:source]) unless stub[:source].nil?
        data
      end
    end

    # Structure Stubber for NetworkPathComponentDetails
    class NetworkPathComponentDetails
      def self.default(visited=[])
        return nil if visited.include?('NetworkPathComponentDetails')
        visited = visited + ['NetworkPathComponentDetails']
        {
          address: StringList.default(visited),
          port_ranges: PortRangeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkPathComponentDetails.new
        data = {}
        data['Address'] = StringList.stub(stub[:address]) unless stub[:address].nil?
        data['PortRanges'] = PortRangeList.stub(stub[:port_ranges]) unless stub[:port_ranges].nil?
        data
      end
    end

    # List Stubber for PortRangeList
    class PortRangeList
      def self.default(visited=[])
        return nil if visited.include?('PortRangeList')
        visited = visited + ['PortRangeList']
        [
          PortRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange
      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          begin: 1,
          end: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRange.new
        data = {}
        data['Begin'] = stub[:begin] unless stub[:begin].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for Network
    class Network
      def self.default(visited=[])
        return nil if visited.include?('Network')
        visited = visited + ['Network']
        {
          direction: 'direction',
          protocol: 'protocol',
          open_port_range: PortRange.default(visited),
          source_ip_v4: 'source_ip_v4',
          source_ip_v6: 'source_ip_v6',
          source_port: 1,
          source_domain: 'source_domain',
          source_mac: 'source_mac',
          destination_ip_v4: 'destination_ip_v4',
          destination_ip_v6: 'destination_ip_v6',
          destination_port: 1,
          destination_domain: 'destination_domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::Network.new
        data = {}
        data['Direction'] = stub[:direction] unless stub[:direction].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['OpenPortRange'] = PortRange.stub(stub[:open_port_range]) unless stub[:open_port_range].nil?
        data['SourceIpV4'] = stub[:source_ip_v4] unless stub[:source_ip_v4].nil?
        data['SourceIpV6'] = stub[:source_ip_v6] unless stub[:source_ip_v6].nil?
        data['SourcePort'] = stub[:source_port] unless stub[:source_port].nil?
        data['SourceDomain'] = stub[:source_domain] unless stub[:source_domain].nil?
        data['SourceMac'] = stub[:source_mac] unless stub[:source_mac].nil?
        data['DestinationIpV4'] = stub[:destination_ip_v4] unless stub[:destination_ip_v4].nil?
        data['DestinationIpV6'] = stub[:destination_ip_v6] unless stub[:destination_ip_v6].nil?
        data['DestinationPort'] = stub[:destination_port] unless stub[:destination_port].nil?
        data['DestinationDomain'] = stub[:destination_domain] unless stub[:destination_domain].nil?
        data
      end
    end

    # List Stubber for MalwareList
    class MalwareList
      def self.default(visited=[])
        return nil if visited.include?('MalwareList')
        visited = visited + ['MalwareList']
        [
          Malware.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Malware.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Malware
    class Malware
      def self.default(visited=[])
        return nil if visited.include?('Malware')
        visited = visited + ['Malware']
        {
          name: 'name',
          type: 'type',
          path: 'path',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Malware.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for Remediation
    class Remediation
      def self.default(visited=[])
        return nil if visited.include?('Remediation')
        visited = visited + ['Remediation']
        {
          recommendation: Recommendation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Remediation.new
        data = {}
        data['Recommendation'] = Recommendation.stub(stub[:recommendation]) unless stub[:recommendation].nil?
        data
      end
    end

    # Structure Stubber for Recommendation
    class Recommendation
      def self.default(visited=[])
        return nil if visited.include?('Recommendation')
        visited = visited + ['Recommendation']
        {
          text: 'text',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for Severity
    class Severity
      def self.default(visited=[])
        return nil if visited.include?('Severity')
        visited = visited + ['Severity']
        {
          product: 1.0,
          label: 'label',
          normalized: 1,
          original: 'original',
        }
      end

      def self.stub(stub)
        stub ||= Types::Severity.new
        data = {}
        data['Product'] = Hearth::NumberHelper.serialize(stub[:product])
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Normalized'] = stub[:normalized] unless stub[:normalized].nil?
        data['Original'] = stub[:original] unless stub[:original].nil?
        data
      end
    end

    # Operation Stubber for GetInsightResults
    class GetInsightResults
      def self.default(visited=[])
        {
          insight_results: InsightResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightResults'] = InsightResults.stub(stub[:insight_results]) unless stub[:insight_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InsightResults
    class InsightResults
      def self.default(visited=[])
        return nil if visited.include?('InsightResults')
        visited = visited + ['InsightResults']
        {
          insight_arn: 'insight_arn',
          group_by_attribute: 'group_by_attribute',
          result_values: InsightResultValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightResults.new
        data = {}
        data['InsightArn'] = stub[:insight_arn] unless stub[:insight_arn].nil?
        data['GroupByAttribute'] = stub[:group_by_attribute] unless stub[:group_by_attribute].nil?
        data['ResultValues'] = InsightResultValueList.stub(stub[:result_values]) unless stub[:result_values].nil?
        data
      end
    end

    # List Stubber for InsightResultValueList
    class InsightResultValueList
      def self.default(visited=[])
        return nil if visited.include?('InsightResultValueList')
        visited = visited + ['InsightResultValueList']
        [
          InsightResultValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InsightResultValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightResultValue
    class InsightResultValue
      def self.default(visited=[])
        return nil if visited.include?('InsightResultValue')
        visited = visited + ['InsightResultValue']
        {
          group_by_attribute_value: 'group_by_attribute_value',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightResultValue.new
        data = {}
        data['GroupByAttributeValue'] = stub[:group_by_attribute_value] unless stub[:group_by_attribute_value].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for GetInsights
    class GetInsights
      def self.default(visited=[])
        {
          insights: InsightList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Insights'] = InsightList.stub(stub[:insights]) unless stub[:insights].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InsightList
    class InsightList
      def self.default(visited=[])
        return nil if visited.include?('InsightList')
        visited = visited + ['InsightList']
        [
          Insight.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Insight.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Insight
    class Insight
      def self.default(visited=[])
        return nil if visited.include?('Insight')
        visited = visited + ['Insight']
        {
          insight_arn: 'insight_arn',
          name: 'name',
          filters: AwsSecurityFindingFilters.default(visited),
          group_by_attribute: 'group_by_attribute',
        }
      end

      def self.stub(stub)
        stub ||= Types::Insight.new
        data = {}
        data['InsightArn'] = stub[:insight_arn] unless stub[:insight_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Filters'] = AwsSecurityFindingFilters.stub(stub[:filters]) unless stub[:filters].nil?
        data['GroupByAttribute'] = stub[:group_by_attribute] unless stub[:group_by_attribute].nil?
        data
      end
    end

    # Structure Stubber for AwsSecurityFindingFilters
    class AwsSecurityFindingFilters
      def self.default(visited=[])
        return nil if visited.include?('AwsSecurityFindingFilters')
        visited = visited + ['AwsSecurityFindingFilters']
        {
          product_arn: StringFilterList.default(visited),
          aws_account_id: StringFilterList.default(visited),
          id: StringFilterList.default(visited),
          generator_id: StringFilterList.default(visited),
          region: StringFilterList.default(visited),
          type: StringFilterList.default(visited),
          first_observed_at: DateFilterList.default(visited),
          last_observed_at: DateFilterList.default(visited),
          created_at: DateFilterList.default(visited),
          updated_at: DateFilterList.default(visited),
          severity_product: NumberFilterList.default(visited),
          severity_normalized: NumberFilterList.default(visited),
          severity_label: StringFilterList.default(visited),
          confidence: NumberFilterList.default(visited),
          criticality: NumberFilterList.default(visited),
          title: StringFilterList.default(visited),
          description: StringFilterList.default(visited),
          recommendation_text: StringFilterList.default(visited),
          source_url: StringFilterList.default(visited),
          product_fields: MapFilterList.default(visited),
          product_name: StringFilterList.default(visited),
          company_name: StringFilterList.default(visited),
          user_defined_fields: MapFilterList.default(visited),
          malware_name: StringFilterList.default(visited),
          malware_type: StringFilterList.default(visited),
          malware_path: StringFilterList.default(visited),
          malware_state: StringFilterList.default(visited),
          network_direction: StringFilterList.default(visited),
          network_protocol: StringFilterList.default(visited),
          network_source_ip_v4: IpFilterList.default(visited),
          network_source_ip_v6: IpFilterList.default(visited),
          network_source_port: NumberFilterList.default(visited),
          network_source_domain: StringFilterList.default(visited),
          network_source_mac: StringFilterList.default(visited),
          network_destination_ip_v4: IpFilterList.default(visited),
          network_destination_ip_v6: IpFilterList.default(visited),
          network_destination_port: NumberFilterList.default(visited),
          network_destination_domain: StringFilterList.default(visited),
          process_name: StringFilterList.default(visited),
          process_path: StringFilterList.default(visited),
          process_pid: NumberFilterList.default(visited),
          process_parent_pid: NumberFilterList.default(visited),
          process_launched_at: DateFilterList.default(visited),
          process_terminated_at: DateFilterList.default(visited),
          threat_intel_indicator_type: StringFilterList.default(visited),
          threat_intel_indicator_value: StringFilterList.default(visited),
          threat_intel_indicator_category: StringFilterList.default(visited),
          threat_intel_indicator_last_observed_at: DateFilterList.default(visited),
          threat_intel_indicator_source: StringFilterList.default(visited),
          threat_intel_indicator_source_url: StringFilterList.default(visited),
          resource_type: StringFilterList.default(visited),
          resource_id: StringFilterList.default(visited),
          resource_partition: StringFilterList.default(visited),
          resource_region: StringFilterList.default(visited),
          resource_tags: MapFilterList.default(visited),
          resource_aws_ec2_instance_type: StringFilterList.default(visited),
          resource_aws_ec2_instance_image_id: StringFilterList.default(visited),
          resource_aws_ec2_instance_ip_v4_addresses: IpFilterList.default(visited),
          resource_aws_ec2_instance_ip_v6_addresses: IpFilterList.default(visited),
          resource_aws_ec2_instance_key_name: StringFilterList.default(visited),
          resource_aws_ec2_instance_iam_instance_profile_arn: StringFilterList.default(visited),
          resource_aws_ec2_instance_vpc_id: StringFilterList.default(visited),
          resource_aws_ec2_instance_subnet_id: StringFilterList.default(visited),
          resource_aws_ec2_instance_launched_at: DateFilterList.default(visited),
          resource_aws_s3_bucket_owner_id: StringFilterList.default(visited),
          resource_aws_s3_bucket_owner_name: StringFilterList.default(visited),
          resource_aws_iam_access_key_user_name: StringFilterList.default(visited),
          resource_aws_iam_access_key_principal_name: StringFilterList.default(visited),
          resource_aws_iam_access_key_status: StringFilterList.default(visited),
          resource_aws_iam_access_key_created_at: DateFilterList.default(visited),
          resource_aws_iam_user_user_name: StringFilterList.default(visited),
          resource_container_name: StringFilterList.default(visited),
          resource_container_image_id: StringFilterList.default(visited),
          resource_container_image_name: StringFilterList.default(visited),
          resource_container_launched_at: DateFilterList.default(visited),
          resource_details_other: MapFilterList.default(visited),
          compliance_status: StringFilterList.default(visited),
          verification_state: StringFilterList.default(visited),
          workflow_state: StringFilterList.default(visited),
          workflow_status: StringFilterList.default(visited),
          record_state: StringFilterList.default(visited),
          related_findings_product_arn: StringFilterList.default(visited),
          related_findings_id: StringFilterList.default(visited),
          note_text: StringFilterList.default(visited),
          note_updated_at: DateFilterList.default(visited),
          note_updated_by: StringFilterList.default(visited),
          keyword: KeywordFilterList.default(visited),
          finding_provider_fields_confidence: NumberFilterList.default(visited),
          finding_provider_fields_criticality: NumberFilterList.default(visited),
          finding_provider_fields_related_findings_id: StringFilterList.default(visited),
          finding_provider_fields_related_findings_product_arn: StringFilterList.default(visited),
          finding_provider_fields_severity_label: StringFilterList.default(visited),
          finding_provider_fields_severity_original: StringFilterList.default(visited),
          finding_provider_fields_types: StringFilterList.default(visited),
          sample: BooleanFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSecurityFindingFilters.new
        data = {}
        data['ProductArn'] = StringFilterList.stub(stub[:product_arn]) unless stub[:product_arn].nil?
        data['AwsAccountId'] = StringFilterList.stub(stub[:aws_account_id]) unless stub[:aws_account_id].nil?
        data['Id'] = StringFilterList.stub(stub[:id]) unless stub[:id].nil?
        data['GeneratorId'] = StringFilterList.stub(stub[:generator_id]) unless stub[:generator_id].nil?
        data['Region'] = StringFilterList.stub(stub[:region]) unless stub[:region].nil?
        data['Type'] = StringFilterList.stub(stub[:type]) unless stub[:type].nil?
        data['FirstObservedAt'] = DateFilterList.stub(stub[:first_observed_at]) unless stub[:first_observed_at].nil?
        data['LastObservedAt'] = DateFilterList.stub(stub[:last_observed_at]) unless stub[:last_observed_at].nil?
        data['CreatedAt'] = DateFilterList.stub(stub[:created_at]) unless stub[:created_at].nil?
        data['UpdatedAt'] = DateFilterList.stub(stub[:updated_at]) unless stub[:updated_at].nil?
        data['SeverityProduct'] = NumberFilterList.stub(stub[:severity_product]) unless stub[:severity_product].nil?
        data['SeverityNormalized'] = NumberFilterList.stub(stub[:severity_normalized]) unless stub[:severity_normalized].nil?
        data['SeverityLabel'] = StringFilterList.stub(stub[:severity_label]) unless stub[:severity_label].nil?
        data['Confidence'] = NumberFilterList.stub(stub[:confidence]) unless stub[:confidence].nil?
        data['Criticality'] = NumberFilterList.stub(stub[:criticality]) unless stub[:criticality].nil?
        data['Title'] = StringFilterList.stub(stub[:title]) unless stub[:title].nil?
        data['Description'] = StringFilterList.stub(stub[:description]) unless stub[:description].nil?
        data['RecommendationText'] = StringFilterList.stub(stub[:recommendation_text]) unless stub[:recommendation_text].nil?
        data['SourceUrl'] = StringFilterList.stub(stub[:source_url]) unless stub[:source_url].nil?
        data['ProductFields'] = MapFilterList.stub(stub[:product_fields]) unless stub[:product_fields].nil?
        data['ProductName'] = StringFilterList.stub(stub[:product_name]) unless stub[:product_name].nil?
        data['CompanyName'] = StringFilterList.stub(stub[:company_name]) unless stub[:company_name].nil?
        data['UserDefinedFields'] = MapFilterList.stub(stub[:user_defined_fields]) unless stub[:user_defined_fields].nil?
        data['MalwareName'] = StringFilterList.stub(stub[:malware_name]) unless stub[:malware_name].nil?
        data['MalwareType'] = StringFilterList.stub(stub[:malware_type]) unless stub[:malware_type].nil?
        data['MalwarePath'] = StringFilterList.stub(stub[:malware_path]) unless stub[:malware_path].nil?
        data['MalwareState'] = StringFilterList.stub(stub[:malware_state]) unless stub[:malware_state].nil?
        data['NetworkDirection'] = StringFilterList.stub(stub[:network_direction]) unless stub[:network_direction].nil?
        data['NetworkProtocol'] = StringFilterList.stub(stub[:network_protocol]) unless stub[:network_protocol].nil?
        data['NetworkSourceIpV4'] = IpFilterList.stub(stub[:network_source_ip_v4]) unless stub[:network_source_ip_v4].nil?
        data['NetworkSourceIpV6'] = IpFilterList.stub(stub[:network_source_ip_v6]) unless stub[:network_source_ip_v6].nil?
        data['NetworkSourcePort'] = NumberFilterList.stub(stub[:network_source_port]) unless stub[:network_source_port].nil?
        data['NetworkSourceDomain'] = StringFilterList.stub(stub[:network_source_domain]) unless stub[:network_source_domain].nil?
        data['NetworkSourceMac'] = StringFilterList.stub(stub[:network_source_mac]) unless stub[:network_source_mac].nil?
        data['NetworkDestinationIpV4'] = IpFilterList.stub(stub[:network_destination_ip_v4]) unless stub[:network_destination_ip_v4].nil?
        data['NetworkDestinationIpV6'] = IpFilterList.stub(stub[:network_destination_ip_v6]) unless stub[:network_destination_ip_v6].nil?
        data['NetworkDestinationPort'] = NumberFilterList.stub(stub[:network_destination_port]) unless stub[:network_destination_port].nil?
        data['NetworkDestinationDomain'] = StringFilterList.stub(stub[:network_destination_domain]) unless stub[:network_destination_domain].nil?
        data['ProcessName'] = StringFilterList.stub(stub[:process_name]) unless stub[:process_name].nil?
        data['ProcessPath'] = StringFilterList.stub(stub[:process_path]) unless stub[:process_path].nil?
        data['ProcessPid'] = NumberFilterList.stub(stub[:process_pid]) unless stub[:process_pid].nil?
        data['ProcessParentPid'] = NumberFilterList.stub(stub[:process_parent_pid]) unless stub[:process_parent_pid].nil?
        data['ProcessLaunchedAt'] = DateFilterList.stub(stub[:process_launched_at]) unless stub[:process_launched_at].nil?
        data['ProcessTerminatedAt'] = DateFilterList.stub(stub[:process_terminated_at]) unless stub[:process_terminated_at].nil?
        data['ThreatIntelIndicatorType'] = StringFilterList.stub(stub[:threat_intel_indicator_type]) unless stub[:threat_intel_indicator_type].nil?
        data['ThreatIntelIndicatorValue'] = StringFilterList.stub(stub[:threat_intel_indicator_value]) unless stub[:threat_intel_indicator_value].nil?
        data['ThreatIntelIndicatorCategory'] = StringFilterList.stub(stub[:threat_intel_indicator_category]) unless stub[:threat_intel_indicator_category].nil?
        data['ThreatIntelIndicatorLastObservedAt'] = DateFilterList.stub(stub[:threat_intel_indicator_last_observed_at]) unless stub[:threat_intel_indicator_last_observed_at].nil?
        data['ThreatIntelIndicatorSource'] = StringFilterList.stub(stub[:threat_intel_indicator_source]) unless stub[:threat_intel_indicator_source].nil?
        data['ThreatIntelIndicatorSourceUrl'] = StringFilterList.stub(stub[:threat_intel_indicator_source_url]) unless stub[:threat_intel_indicator_source_url].nil?
        data['ResourceType'] = StringFilterList.stub(stub[:resource_type]) unless stub[:resource_type].nil?
        data['ResourceId'] = StringFilterList.stub(stub[:resource_id]) unless stub[:resource_id].nil?
        data['ResourcePartition'] = StringFilterList.stub(stub[:resource_partition]) unless stub[:resource_partition].nil?
        data['ResourceRegion'] = StringFilterList.stub(stub[:resource_region]) unless stub[:resource_region].nil?
        data['ResourceTags'] = MapFilterList.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['ResourceAwsEc2InstanceType'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_type]) unless stub[:resource_aws_ec2_instance_type].nil?
        data['ResourceAwsEc2InstanceImageId'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_image_id]) unless stub[:resource_aws_ec2_instance_image_id].nil?
        data['ResourceAwsEc2InstanceIpV4Addresses'] = IpFilterList.stub(stub[:resource_aws_ec2_instance_ip_v4_addresses]) unless stub[:resource_aws_ec2_instance_ip_v4_addresses].nil?
        data['ResourceAwsEc2InstanceIpV6Addresses'] = IpFilterList.stub(stub[:resource_aws_ec2_instance_ip_v6_addresses]) unless stub[:resource_aws_ec2_instance_ip_v6_addresses].nil?
        data['ResourceAwsEc2InstanceKeyName'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_key_name]) unless stub[:resource_aws_ec2_instance_key_name].nil?
        data['ResourceAwsEc2InstanceIamInstanceProfileArn'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_iam_instance_profile_arn]) unless stub[:resource_aws_ec2_instance_iam_instance_profile_arn].nil?
        data['ResourceAwsEc2InstanceVpcId'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_vpc_id]) unless stub[:resource_aws_ec2_instance_vpc_id].nil?
        data['ResourceAwsEc2InstanceSubnetId'] = StringFilterList.stub(stub[:resource_aws_ec2_instance_subnet_id]) unless stub[:resource_aws_ec2_instance_subnet_id].nil?
        data['ResourceAwsEc2InstanceLaunchedAt'] = DateFilterList.stub(stub[:resource_aws_ec2_instance_launched_at]) unless stub[:resource_aws_ec2_instance_launched_at].nil?
        data['ResourceAwsS3BucketOwnerId'] = StringFilterList.stub(stub[:resource_aws_s3_bucket_owner_id]) unless stub[:resource_aws_s3_bucket_owner_id].nil?
        data['ResourceAwsS3BucketOwnerName'] = StringFilterList.stub(stub[:resource_aws_s3_bucket_owner_name]) unless stub[:resource_aws_s3_bucket_owner_name].nil?
        data['ResourceAwsIamAccessKeyUserName'] = StringFilterList.stub(stub[:resource_aws_iam_access_key_user_name]) unless stub[:resource_aws_iam_access_key_user_name].nil?
        data['ResourceAwsIamAccessKeyPrincipalName'] = StringFilterList.stub(stub[:resource_aws_iam_access_key_principal_name]) unless stub[:resource_aws_iam_access_key_principal_name].nil?
        data['ResourceAwsIamAccessKeyStatus'] = StringFilterList.stub(stub[:resource_aws_iam_access_key_status]) unless stub[:resource_aws_iam_access_key_status].nil?
        data['ResourceAwsIamAccessKeyCreatedAt'] = DateFilterList.stub(stub[:resource_aws_iam_access_key_created_at]) unless stub[:resource_aws_iam_access_key_created_at].nil?
        data['ResourceAwsIamUserUserName'] = StringFilterList.stub(stub[:resource_aws_iam_user_user_name]) unless stub[:resource_aws_iam_user_user_name].nil?
        data['ResourceContainerName'] = StringFilterList.stub(stub[:resource_container_name]) unless stub[:resource_container_name].nil?
        data['ResourceContainerImageId'] = StringFilterList.stub(stub[:resource_container_image_id]) unless stub[:resource_container_image_id].nil?
        data['ResourceContainerImageName'] = StringFilterList.stub(stub[:resource_container_image_name]) unless stub[:resource_container_image_name].nil?
        data['ResourceContainerLaunchedAt'] = DateFilterList.stub(stub[:resource_container_launched_at]) unless stub[:resource_container_launched_at].nil?
        data['ResourceDetailsOther'] = MapFilterList.stub(stub[:resource_details_other]) unless stub[:resource_details_other].nil?
        data['ComplianceStatus'] = StringFilterList.stub(stub[:compliance_status]) unless stub[:compliance_status].nil?
        data['VerificationState'] = StringFilterList.stub(stub[:verification_state]) unless stub[:verification_state].nil?
        data['WorkflowState'] = StringFilterList.stub(stub[:workflow_state]) unless stub[:workflow_state].nil?
        data['WorkflowStatus'] = StringFilterList.stub(stub[:workflow_status]) unless stub[:workflow_status].nil?
        data['RecordState'] = StringFilterList.stub(stub[:record_state]) unless stub[:record_state].nil?
        data['RelatedFindingsProductArn'] = StringFilterList.stub(stub[:related_findings_product_arn]) unless stub[:related_findings_product_arn].nil?
        data['RelatedFindingsId'] = StringFilterList.stub(stub[:related_findings_id]) unless stub[:related_findings_id].nil?
        data['NoteText'] = StringFilterList.stub(stub[:note_text]) unless stub[:note_text].nil?
        data['NoteUpdatedAt'] = DateFilterList.stub(stub[:note_updated_at]) unless stub[:note_updated_at].nil?
        data['NoteUpdatedBy'] = StringFilterList.stub(stub[:note_updated_by]) unless stub[:note_updated_by].nil?
        data['Keyword'] = KeywordFilterList.stub(stub[:keyword]) unless stub[:keyword].nil?
        data['FindingProviderFieldsConfidence'] = NumberFilterList.stub(stub[:finding_provider_fields_confidence]) unless stub[:finding_provider_fields_confidence].nil?
        data['FindingProviderFieldsCriticality'] = NumberFilterList.stub(stub[:finding_provider_fields_criticality]) unless stub[:finding_provider_fields_criticality].nil?
        data['FindingProviderFieldsRelatedFindingsId'] = StringFilterList.stub(stub[:finding_provider_fields_related_findings_id]) unless stub[:finding_provider_fields_related_findings_id].nil?
        data['FindingProviderFieldsRelatedFindingsProductArn'] = StringFilterList.stub(stub[:finding_provider_fields_related_findings_product_arn]) unless stub[:finding_provider_fields_related_findings_product_arn].nil?
        data['FindingProviderFieldsSeverityLabel'] = StringFilterList.stub(stub[:finding_provider_fields_severity_label]) unless stub[:finding_provider_fields_severity_label].nil?
        data['FindingProviderFieldsSeverityOriginal'] = StringFilterList.stub(stub[:finding_provider_fields_severity_original]) unless stub[:finding_provider_fields_severity_original].nil?
        data['FindingProviderFieldsTypes'] = StringFilterList.stub(stub[:finding_provider_fields_types]) unless stub[:finding_provider_fields_types].nil?
        data['Sample'] = BooleanFilterList.stub(stub[:sample]) unless stub[:sample].nil?
        data
      end
    end

    # List Stubber for BooleanFilterList
    class BooleanFilterList
      def self.default(visited=[])
        return nil if visited.include?('BooleanFilterList')
        visited = visited + ['BooleanFilterList']
        [
          BooleanFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BooleanFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BooleanFilter
    class BooleanFilter
      def self.default(visited=[])
        return nil if visited.include?('BooleanFilter')
        visited = visited + ['BooleanFilter']
        {
          value: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BooleanFilter.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for StringFilterList
    class StringFilterList
      def self.default(visited=[])
        return nil if visited.include?('StringFilterList')
        visited = visited + ['StringFilterList']
        [
          StringFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StringFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StringFilter
    class StringFilter
      def self.default(visited=[])
        return nil if visited.include?('StringFilter')
        visited = visited + ['StringFilter']
        {
          value: 'value',
          comparison: 'comparison',
        }
      end

      def self.stub(stub)
        stub ||= Types::StringFilter.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Comparison'] = stub[:comparison] unless stub[:comparison].nil?
        data
      end
    end

    # List Stubber for NumberFilterList
    class NumberFilterList
      def self.default(visited=[])
        return nil if visited.include?('NumberFilterList')
        visited = visited + ['NumberFilterList']
        [
          NumberFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NumberFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NumberFilter
    class NumberFilter
      def self.default(visited=[])
        return nil if visited.include?('NumberFilter')
        visited = visited + ['NumberFilter']
        {
          gte: 1.0,
          lte: 1.0,
          eq: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::NumberFilter.new
        data = {}
        data['Gte'] = Hearth::NumberHelper.serialize(stub[:gte])
        data['Lte'] = Hearth::NumberHelper.serialize(stub[:lte])
        data['Eq'] = Hearth::NumberHelper.serialize(stub[:eq])
        data
      end
    end

    # List Stubber for KeywordFilterList
    class KeywordFilterList
      def self.default(visited=[])
        return nil if visited.include?('KeywordFilterList')
        visited = visited + ['KeywordFilterList']
        [
          KeywordFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeywordFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeywordFilter
    class KeywordFilter
      def self.default(visited=[])
        return nil if visited.include?('KeywordFilter')
        visited = visited + ['KeywordFilter']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeywordFilter.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for DateFilterList
    class DateFilterList
      def self.default(visited=[])
        return nil if visited.include?('DateFilterList')
        visited = visited + ['DateFilterList']
        [
          DateFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DateFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DateFilter
    class DateFilter
      def self.default(visited=[])
        return nil if visited.include?('DateFilter')
        visited = visited + ['DateFilter']
        {
          start: 'start',
          end: 'end',
          date_range: DateRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DateFilter.new
        data = {}
        data['Start'] = stub[:start] unless stub[:start].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data['DateRange'] = DateRange.stub(stub[:date_range]) unless stub[:date_range].nil?
        data
      end
    end

    # Structure Stubber for DateRange
    class DateRange
      def self.default(visited=[])
        return nil if visited.include?('DateRange')
        visited = visited + ['DateRange']
        {
          value: 1,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::DateRange.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for MapFilterList
    class MapFilterList
      def self.default(visited=[])
        return nil if visited.include?('MapFilterList')
        visited = visited + ['MapFilterList']
        [
          MapFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MapFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MapFilter
    class MapFilter
      def self.default(visited=[])
        return nil if visited.include?('MapFilter')
        visited = visited + ['MapFilter']
        {
          key: 'key',
          value: 'value',
          comparison: 'comparison',
        }
      end

      def self.stub(stub)
        stub ||= Types::MapFilter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Comparison'] = stub[:comparison] unless stub[:comparison].nil?
        data
      end
    end

    # List Stubber for IpFilterList
    class IpFilterList
      def self.default(visited=[])
        return nil if visited.include?('IpFilterList')
        visited = visited + ['IpFilterList']
        [
          IpFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpFilter
    class IpFilter
      def self.default(visited=[])
        return nil if visited.include?('IpFilter')
        visited = visited + ['IpFilter']
        {
          cidr: 'cidr',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpFilter.new
        data = {}
        data['Cidr'] = stub[:cidr] unless stub[:cidr].nil?
        data
      end
    end

    # Operation Stubber for GetInvitationsCount
    class GetInvitationsCount
      def self.default(visited=[])
        {
          invitations_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InvitationsCount'] = stub[:invitations_count] unless stub[:invitations_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMasterAccount
    class GetMasterAccount
      def self.default(visited=[])
        {
          master: Invitation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Master'] = Invitation.stub(stub[:master]) unless stub[:master].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMembers
    class GetMembers
      def self.default(visited=[])
        {
          members: MemberList.default(visited),
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Members'] = MemberList.stub(stub[:members]) unless stub[:members].nil?
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MemberList
    class MemberList
      def self.default(visited=[])
        return nil if visited.include?('MemberList')
        visited = visited + ['MemberList']
        [
          Member.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Member.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          account_id: 'account_id',
          email: 'email',
          master_id: 'master_id',
          administrator_id: 'administrator_id',
          member_status: 'member_status',
          invited_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['MasterId'] = stub[:master_id] unless stub[:master_id].nil?
        data['AdministratorId'] = stub[:administrator_id] unless stub[:administrator_id].nil?
        data['MemberStatus'] = stub[:member_status] unless stub[:member_status].nil?
        data['InvitedAt'] = Hearth::TimeHelper.to_date_time(stub[:invited_at]) unless stub[:invited_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for InviteMembers
    class InviteMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: ResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedAccounts'] = ResultList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListEnabledProductsForImport
    class ListEnabledProductsForImport
      def self.default(visited=[])
        {
          product_subscriptions: ProductSubscriptionArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProductSubscriptions'] = ProductSubscriptionArnList.stub(stub[:product_subscriptions]) unless stub[:product_subscriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProductSubscriptionArnList
    class ProductSubscriptionArnList
      def self.default(visited=[])
        return nil if visited.include?('ProductSubscriptionArnList')
        visited = visited + ['ProductSubscriptionArnList']
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

    # Operation Stubber for ListFindingAggregators
    class ListFindingAggregators
      def self.default(visited=[])
        {
          finding_aggregators: FindingAggregatorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FindingAggregators'] = FindingAggregatorList.stub(stub[:finding_aggregators]) unless stub[:finding_aggregators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FindingAggregatorList
    class FindingAggregatorList
      def self.default(visited=[])
        return nil if visited.include?('FindingAggregatorList')
        visited = visited + ['FindingAggregatorList']
        [
          FindingAggregator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FindingAggregator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FindingAggregator
    class FindingAggregator
      def self.default(visited=[])
        return nil if visited.include?('FindingAggregator')
        visited = visited + ['FindingAggregator']
        {
          finding_aggregator_arn: 'finding_aggregator_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingAggregator.new
        data = {}
        data['FindingAggregatorArn'] = stub[:finding_aggregator_arn] unless stub[:finding_aggregator_arn].nil?
        data
      end
    end

    # Operation Stubber for ListInvitations
    class ListInvitations
      def self.default(visited=[])
        {
          invitations: InvitationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Invitations'] = InvitationList.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InvitationList
    class InvitationList
      def self.default(visited=[])
        return nil if visited.include?('InvitationList')
        visited = visited + ['InvitationList']
        [
          Invitation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Invitation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          members: MemberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Members'] = MemberList.stub(stub[:members]) unless stub[:members].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.default(visited=[])
        {
          admin_accounts: AdminAccounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AdminAccounts'] = AdminAccounts.stub(stub[:admin_accounts]) unless stub[:admin_accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AdminAccounts
    class AdminAccounts
      def self.default(visited=[])
        return nil if visited.include?('AdminAccounts')
        visited = visited + ['AdminAccounts']
        [
          AdminAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdminAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdminAccount
    class AdminAccount
      def self.default(visited=[])
        return nil if visited.include?('AdminAccount')
        visited = visited + ['AdminAccount']
        {
          account_id: 'account_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdminAccount.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateActionTarget
    class UpdateActionTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFindingAggregator
    class UpdateFindingAggregator
      def self.default(visited=[])
        {
          finding_aggregator_arn: 'finding_aggregator_arn',
          finding_aggregation_region: 'finding_aggregation_region',
          region_linking_mode: 'region_linking_mode',
          regions: StringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FindingAggregatorArn'] = stub[:finding_aggregator_arn] unless stub[:finding_aggregator_arn].nil?
        data['FindingAggregationRegion'] = stub[:finding_aggregation_region] unless stub[:finding_aggregation_region].nil?
        data['RegionLinkingMode'] = stub[:region_linking_mode] unless stub[:region_linking_mode].nil?
        data['Regions'] = StringList.stub(stub[:regions]) unless stub[:regions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFindings
    class UpdateFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInsight
    class UpdateInsight
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSecurityHubConfiguration
    class UpdateSecurityHubConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStandardsControl
    class UpdateStandardsControl
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
