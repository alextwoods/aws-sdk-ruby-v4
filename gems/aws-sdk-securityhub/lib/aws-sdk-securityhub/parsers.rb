# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecurityHub
  module Parsers

    # Operation Parser for AcceptAdministratorInvitation
    class AcceptAdministratorInvitation
      def self.parse(http_resp)
        data = Types::AcceptAdministratorInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InvalidAccessException
    class InvalidAccessException
      def self.parse(http_resp)
        data = Types::InvalidAccessException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for AcceptInvitation
    class AcceptInvitation
      def self.parse(http_resp)
        data = Types::AcceptInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for BatchDisableStandards
    class BatchDisableStandards
      def self.parse(http_resp)
        data = Types::BatchDisableStandardsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.standards_subscriptions = (Parsers::StandardsSubscriptions.parse(map['StandardsSubscriptions']) unless map['StandardsSubscriptions'].nil?)
        data
      end
    end

    class StandardsSubscriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StandardsSubscription.parse(value) unless value.nil?
        end
        data
      end
    end

    class StandardsSubscription
      def self.parse(map)
        data = Types::StandardsSubscription.new
        data.standards_subscription_arn = map['StandardsSubscriptionArn']
        data.standards_arn = map['StandardsArn']
        data.standards_input = (Parsers::StandardsInputParameterMap.parse(map['StandardsInput']) unless map['StandardsInput'].nil?)
        data.standards_status = map['StandardsStatus']
        data.standards_status_reason = (Parsers::StandardsStatusReason.parse(map['StandardsStatusReason']) unless map['StandardsStatusReason'].nil?)
        return data
      end
    end

    class StandardsStatusReason
      def self.parse(map)
        data = Types::StandardsStatusReason.new
        data.status_reason_code = map['StatusReasonCode']
        return data
      end
    end

    class StandardsInputParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for BatchEnableStandards
    class BatchEnableStandards
      def self.parse(http_resp)
        data = Types::BatchEnableStandardsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.standards_subscriptions = (Parsers::StandardsSubscriptions.parse(map['StandardsSubscriptions']) unless map['StandardsSubscriptions'].nil?)
        data
      end
    end

    # Operation Parser for BatchImportFindings
    class BatchImportFindings
      def self.parse(http_resp)
        data = Types::BatchImportFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failed_count = map['FailedCount']
        data.success_count = map['SuccessCount']
        data.failed_findings = (Parsers::ImportFindingsErrorList.parse(map['FailedFindings']) unless map['FailedFindings'].nil?)
        data
      end
    end

    class ImportFindingsErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ImportFindingsError.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImportFindingsError
      def self.parse(map)
        data = Types::ImportFindingsError.new
        data.id = map['Id']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for BatchUpdateFindings
    class BatchUpdateFindings
      def self.parse(http_resp)
        data = Types::BatchUpdateFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.processed_findings = (Parsers::AwsSecurityFindingIdentifierList.parse(map['ProcessedFindings']) unless map['ProcessedFindings'].nil?)
        data.unprocessed_findings = (Parsers::BatchUpdateFindingsUnprocessedFindingsList.parse(map['UnprocessedFindings']) unless map['UnprocessedFindings'].nil?)
        data
      end
    end

    class BatchUpdateFindingsUnprocessedFindingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchUpdateFindingsUnprocessedFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchUpdateFindingsUnprocessedFinding
      def self.parse(map)
        data = Types::BatchUpdateFindingsUnprocessedFinding.new
        data.finding_identifier = (Parsers::AwsSecurityFindingIdentifier.parse(map['FindingIdentifier']) unless map['FindingIdentifier'].nil?)
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class AwsSecurityFindingIdentifier
      def self.parse(map)
        data = Types::AwsSecurityFindingIdentifier.new
        data.id = map['Id']
        data.product_arn = map['ProductArn']
        return data
      end
    end

    class AwsSecurityFindingIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsSecurityFindingIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateActionTarget
    class CreateActionTarget
      def self.parse(http_resp)
        data = Types::CreateActionTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_target_arn = map['ActionTargetArn']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for CreateFindingAggregator
    class CreateFindingAggregator
      def self.parse(http_resp)
        data = Types::CreateFindingAggregatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_aggregator_arn = map['FindingAggregatorArn']
        data.finding_aggregation_region = map['FindingAggregationRegion']
        data.region_linking_mode = map['RegionLinkingMode']
        data.regions = (Parsers::StringList.parse(map['Regions']) unless map['Regions'].nil?)
        data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for CreateInsight
    class CreateInsight
      def self.parse(http_resp)
        data = Types::CreateInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_arn = map['InsightArn']
        data
      end
    end

    # Operation Parser for CreateMembers
    class CreateMembers
      def self.parse(http_resp)
        data = Types::CreateMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    class ResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Result.parse(value) unless value.nil?
        end
        data
      end
    end

    class Result
      def self.parse(map)
        data = Types::Result.new
        data.account_id = map['AccountId']
        data.processing_result = map['ProcessingResult']
        return data
      end
    end

    # Operation Parser for DeclineInvitations
    class DeclineInvitations
      def self.parse(http_resp)
        data = Types::DeclineInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteActionTarget
    class DeleteActionTarget
      def self.parse(http_resp)
        data = Types::DeleteActionTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_target_arn = map['ActionTargetArn']
        data
      end
    end

    # Operation Parser for DeleteFindingAggregator
    class DeleteFindingAggregator
      def self.parse(http_resp)
        data = Types::DeleteFindingAggregatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInsight
    class DeleteInsight
      def self.parse(http_resp)
        data = Types::DeleteInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_arn = map['InsightArn']
        data
      end
    end

    # Operation Parser for DeleteInvitations
    class DeleteInvitations
      def self.parse(http_resp)
        data = Types::DeleteInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteMembers
    class DeleteMembers
      def self.parse(http_resp)
        data = Types::DeleteMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DescribeActionTargets
    class DescribeActionTargets
      def self.parse(http_resp)
        data = Types::DescribeActionTargetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_targets = (Parsers::ActionTargetList.parse(map['ActionTargets']) unless map['ActionTargets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ActionTargetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActionTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActionTarget
      def self.parse(map)
        data = Types::ActionTarget.new
        data.action_target_arn = map['ActionTargetArn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for DescribeHub
    class DescribeHub
      def self.parse(http_resp)
        data = Types::DescribeHubOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hub_arn = map['HubArn']
        data.subscribed_at = map['SubscribedAt']
        data.auto_enable_controls = map['AutoEnableControls']
        data
      end
    end

    # Operation Parser for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = map['AutoEnable']
        data.member_account_limit_reached = map['MemberAccountLimitReached']
        data.auto_enable_standards = map['AutoEnableStandards']
        data
      end
    end

    # Operation Parser for DescribeProducts
    class DescribeProducts
      def self.parse(http_resp)
        data = Types::DescribeProductsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.products = (Parsers::ProductsList.parse(map['Products']) unless map['Products'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProductsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Product.parse(value) unless value.nil?
        end
        data
      end
    end

    class Product
      def self.parse(map)
        data = Types::Product.new
        data.product_arn = map['ProductArn']
        data.product_name = map['ProductName']
        data.company_name = map['CompanyName']
        data.description = map['Description']
        data.categories = (Parsers::CategoryList.parse(map['Categories']) unless map['Categories'].nil?)
        data.integration_types = (Parsers::IntegrationTypeList.parse(map['IntegrationTypes']) unless map['IntegrationTypes'].nil?)
        data.marketplace_url = map['MarketplaceUrl']
        data.activation_url = map['ActivationUrl']
        data.product_subscription_resource_policy = map['ProductSubscriptionResourcePolicy']
        return data
      end
    end

    class IntegrationTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CategoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeStandards
    class DescribeStandards
      def self.parse(http_resp)
        data = Types::DescribeStandardsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.standards = (Parsers::Standards.parse(map['Standards']) unless map['Standards'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Standards
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Standard.parse(value) unless value.nil?
        end
        data
      end
    end

    class Standard
      def self.parse(map)
        data = Types::Standard.new
        data.standards_arn = map['StandardsArn']
        data.name = map['Name']
        data.description = map['Description']
        data.enabled_by_default = map['EnabledByDefault']
        return data
      end
    end

    # Operation Parser for DescribeStandardsControls
    class DescribeStandardsControls
      def self.parse(http_resp)
        data = Types::DescribeStandardsControlsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.controls = (Parsers::StandardsControls.parse(map['Controls']) unless map['Controls'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StandardsControls
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StandardsControl.parse(value) unless value.nil?
        end
        data
      end
    end

    class StandardsControl
      def self.parse(map)
        data = Types::StandardsControl.new
        data.standards_control_arn = map['StandardsControlArn']
        data.control_status = map['ControlStatus']
        data.disabled_reason = map['DisabledReason']
        data.control_status_updated_at = Time.parse(map['ControlStatusUpdatedAt']) if map['ControlStatusUpdatedAt']
        data.control_id = map['ControlId']
        data.title = map['Title']
        data.description = map['Description']
        data.remediation_url = map['RemediationUrl']
        data.severity_rating = map['SeverityRating']
        data.related_requirements = (Parsers::RelatedRequirementsList.parse(map['RelatedRequirements']) unless map['RelatedRequirements'].nil?)
        return data
      end
    end

    class RelatedRequirementsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DisableImportFindingsForProduct
    class DisableImportFindingsForProduct
      def self.parse(http_resp)
        data = Types::DisableImportFindingsForProductOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisableSecurityHub
    class DisableSecurityHub
      def self.parse(http_resp)
        data = Types::DisableSecurityHubOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.parse(http_resp)
        data = Types::DisassociateFromAdministratorAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.parse(http_resp)
        data = Types::DisassociateFromMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateMembers
    class DisassociateMembers
      def self.parse(http_resp)
        data = Types::DisassociateMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableImportFindingsForProduct
    class EnableImportFindingsForProduct
      def self.parse(http_resp)
        data = Types::EnableImportFindingsForProductOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.product_subscription_arn = map['ProductSubscriptionArn']
        data
      end
    end

    # Operation Parser for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableSecurityHub
    class EnableSecurityHub
      def self.parse(http_resp)
        data = Types::EnableSecurityHubOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAdministratorAccount
    class GetAdministratorAccount
      def self.parse(http_resp)
        data = Types::GetAdministratorAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.administrator = (Parsers::Invitation.parse(map['Administrator']) unless map['Administrator'].nil?)
        data
      end
    end

    class Invitation
      def self.parse(map)
        data = Types::Invitation.new
        data.account_id = map['AccountId']
        data.invitation_id = map['InvitationId']
        data.invited_at = Time.parse(map['InvitedAt']) if map['InvitedAt']
        data.member_status = map['MemberStatus']
        return data
      end
    end

    # Operation Parser for GetEnabledStandards
    class GetEnabledStandards
      def self.parse(http_resp)
        data = Types::GetEnabledStandardsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.standards_subscriptions = (Parsers::StandardsSubscriptions.parse(map['StandardsSubscriptions']) unless map['StandardsSubscriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetFindingAggregator
    class GetFindingAggregator
      def self.parse(http_resp)
        data = Types::GetFindingAggregatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_aggregator_arn = map['FindingAggregatorArn']
        data.finding_aggregation_region = map['FindingAggregationRegion']
        data.region_linking_mode = map['RegionLinkingMode']
        data.regions = (Parsers::StringList.parse(map['Regions']) unless map['Regions'].nil?)
        data
      end
    end

    # Operation Parser for GetFindings
    class GetFindings
      def self.parse(http_resp)
        data = Types::GetFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::AwsSecurityFindingList.parse(map['Findings']) unless map['Findings'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AwsSecurityFindingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsSecurityFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsSecurityFinding
      def self.parse(map)
        data = Types::AwsSecurityFinding.new
        data.schema_version = map['SchemaVersion']
        data.id = map['Id']
        data.product_arn = map['ProductArn']
        data.product_name = map['ProductName']
        data.company_name = map['CompanyName']
        data.region = map['Region']
        data.generator_id = map['GeneratorId']
        data.aws_account_id = map['AwsAccountId']
        data.types = (Parsers::TypeList.parse(map['Types']) unless map['Types'].nil?)
        data.first_observed_at = map['FirstObservedAt']
        data.last_observed_at = map['LastObservedAt']
        data.created_at = map['CreatedAt']
        data.updated_at = map['UpdatedAt']
        data.severity = (Parsers::Severity.parse(map['Severity']) unless map['Severity'].nil?)
        data.confidence = map['Confidence']
        data.criticality = map['Criticality']
        data.title = map['Title']
        data.description = map['Description']
        data.remediation = (Parsers::Remediation.parse(map['Remediation']) unless map['Remediation'].nil?)
        data.source_url = map['SourceUrl']
        data.product_fields = (Parsers::FieldMap.parse(map['ProductFields']) unless map['ProductFields'].nil?)
        data.user_defined_fields = (Parsers::FieldMap.parse(map['UserDefinedFields']) unless map['UserDefinedFields'].nil?)
        data.malware = (Parsers::MalwareList.parse(map['Malware']) unless map['Malware'].nil?)
        data.network = (Parsers::Network.parse(map['Network']) unless map['Network'].nil?)
        data.network_path = (Parsers::NetworkPathList.parse(map['NetworkPath']) unless map['NetworkPath'].nil?)
        data.process = (Parsers::ProcessDetails.parse(map['Process']) unless map['Process'].nil?)
        data.threat_intel_indicators = (Parsers::ThreatIntelIndicatorList.parse(map['ThreatIntelIndicators']) unless map['ThreatIntelIndicators'].nil?)
        data.resources = (Parsers::ResourceList.parse(map['Resources']) unless map['Resources'].nil?)
        data.compliance = (Parsers::Compliance.parse(map['Compliance']) unless map['Compliance'].nil?)
        data.verification_state = map['VerificationState']
        data.workflow_state = map['WorkflowState']
        data.workflow = (Parsers::Workflow.parse(map['Workflow']) unless map['Workflow'].nil?)
        data.record_state = map['RecordState']
        data.related_findings = (Parsers::RelatedFindingList.parse(map['RelatedFindings']) unless map['RelatedFindings'].nil?)
        data.note = (Parsers::Note.parse(map['Note']) unless map['Note'].nil?)
        data.vulnerabilities = (Parsers::VulnerabilityList.parse(map['Vulnerabilities']) unless map['Vulnerabilities'].nil?)
        data.patch_summary = (Parsers::PatchSummary.parse(map['PatchSummary']) unless map['PatchSummary'].nil?)
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.finding_provider_fields = (Parsers::FindingProviderFields.parse(map['FindingProviderFields']) unless map['FindingProviderFields'].nil?)
        data.sample = map['Sample']
        return data
      end
    end

    class FindingProviderFields
      def self.parse(map)
        data = Types::FindingProviderFields.new
        data.confidence = map['Confidence']
        data.criticality = map['Criticality']
        data.related_findings = (Parsers::RelatedFindingList.parse(map['RelatedFindings']) unless map['RelatedFindings'].nil?)
        data.severity = (Parsers::FindingProviderSeverity.parse(map['Severity']) unless map['Severity'].nil?)
        data.types = (Parsers::TypeList.parse(map['Types']) unless map['Types'].nil?)
        return data
      end
    end

    class TypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FindingProviderSeverity
      def self.parse(map)
        data = Types::FindingProviderSeverity.new
        data.label = map['Label']
        data.original = map['Original']
        return data
      end
    end

    class RelatedFindingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RelatedFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    class RelatedFinding
      def self.parse(map)
        data = Types::RelatedFinding.new
        data.product_arn = map['ProductArn']
        data.id = map['Id']
        return data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.action_type = map['ActionType']
        data.network_connection_action = (Parsers::NetworkConnectionAction.parse(map['NetworkConnectionAction']) unless map['NetworkConnectionAction'].nil?)
        data.aws_api_call_action = (Parsers::AwsApiCallAction.parse(map['AwsApiCallAction']) unless map['AwsApiCallAction'].nil?)
        data.dns_request_action = (Parsers::DnsRequestAction.parse(map['DnsRequestAction']) unless map['DnsRequestAction'].nil?)
        data.port_probe_action = (Parsers::PortProbeAction.parse(map['PortProbeAction']) unless map['PortProbeAction'].nil?)
        return data
      end
    end

    class PortProbeAction
      def self.parse(map)
        data = Types::PortProbeAction.new
        data.port_probe_details = (Parsers::PortProbeDetailList.parse(map['PortProbeDetails']) unless map['PortProbeDetails'].nil?)
        data.blocked = map['Blocked']
        return data
      end
    end

    class PortProbeDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PortProbeDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortProbeDetail
      def self.parse(map)
        data = Types::PortProbeDetail.new
        data.local_port_details = (Parsers::ActionLocalPortDetails.parse(map['LocalPortDetails']) unless map['LocalPortDetails'].nil?)
        data.local_ip_details = (Parsers::ActionLocalIpDetails.parse(map['LocalIpDetails']) unless map['LocalIpDetails'].nil?)
        data.remote_ip_details = (Parsers::ActionRemoteIpDetails.parse(map['RemoteIpDetails']) unless map['RemoteIpDetails'].nil?)
        return data
      end
    end

    class ActionRemoteIpDetails
      def self.parse(map)
        data = Types::ActionRemoteIpDetails.new
        data.ip_address_v4 = map['IpAddressV4']
        data.organization = (Parsers::IpOrganizationDetails.parse(map['Organization']) unless map['Organization'].nil?)
        data.country = (Parsers::Country.parse(map['Country']) unless map['Country'].nil?)
        data.city = (Parsers::City.parse(map['City']) unless map['City'].nil?)
        data.geo_location = (Parsers::GeoLocation.parse(map['GeoLocation']) unless map['GeoLocation'].nil?)
        return data
      end
    end

    class GeoLocation
      def self.parse(map)
        data = Types::GeoLocation.new
        data.lon = Hearth::NumberHelper.deserialize(map['Lon'])
        data.lat = Hearth::NumberHelper.deserialize(map['Lat'])
        return data
      end
    end

    class City
      def self.parse(map)
        data = Types::City.new
        data.city_name = map['CityName']
        return data
      end
    end

    class Country
      def self.parse(map)
        data = Types::Country.new
        data.country_code = map['CountryCode']
        data.country_name = map['CountryName']
        return data
      end
    end

    class IpOrganizationDetails
      def self.parse(map)
        data = Types::IpOrganizationDetails.new
        data.asn = map['Asn']
        data.asn_org = map['AsnOrg']
        data.isp = map['Isp']
        data.org = map['Org']
        return data
      end
    end

    class ActionLocalIpDetails
      def self.parse(map)
        data = Types::ActionLocalIpDetails.new
        data.ip_address_v4 = map['IpAddressV4']
        return data
      end
    end

    class ActionLocalPortDetails
      def self.parse(map)
        data = Types::ActionLocalPortDetails.new
        data.port = map['Port']
        data.port_name = map['PortName']
        return data
      end
    end

    class DnsRequestAction
      def self.parse(map)
        data = Types::DnsRequestAction.new
        data.domain = map['Domain']
        data.protocol = map['Protocol']
        data.blocked = map['Blocked']
        return data
      end
    end

    class AwsApiCallAction
      def self.parse(map)
        data = Types::AwsApiCallAction.new
        data.api = map['Api']
        data.service_name = map['ServiceName']
        data.caller_type = map['CallerType']
        data.remote_ip_details = (Parsers::ActionRemoteIpDetails.parse(map['RemoteIpDetails']) unless map['RemoteIpDetails'].nil?)
        data.domain_details = (Parsers::AwsApiCallActionDomainDetails.parse(map['DomainDetails']) unless map['DomainDetails'].nil?)
        data.affected_resources = (Parsers::FieldMap.parse(map['AffectedResources']) unless map['AffectedResources'].nil?)
        data.first_seen = map['FirstSeen']
        data.last_seen = map['LastSeen']
        return data
      end
    end

    class FieldMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AwsApiCallActionDomainDetails
      def self.parse(map)
        data = Types::AwsApiCallActionDomainDetails.new
        data.domain = map['Domain']
        return data
      end
    end

    class NetworkConnectionAction
      def self.parse(map)
        data = Types::NetworkConnectionAction.new
        data.connection_direction = map['ConnectionDirection']
        data.remote_ip_details = (Parsers::ActionRemoteIpDetails.parse(map['RemoteIpDetails']) unless map['RemoteIpDetails'].nil?)
        data.remote_port_details = (Parsers::ActionRemotePortDetails.parse(map['RemotePortDetails']) unless map['RemotePortDetails'].nil?)
        data.local_port_details = (Parsers::ActionLocalPortDetails.parse(map['LocalPortDetails']) unless map['LocalPortDetails'].nil?)
        data.protocol = map['Protocol']
        data.blocked = map['Blocked']
        return data
      end
    end

    class ActionRemotePortDetails
      def self.parse(map)
        data = Types::ActionRemotePortDetails.new
        data.port = map['Port']
        data.port_name = map['PortName']
        return data
      end
    end

    class PatchSummary
      def self.parse(map)
        data = Types::PatchSummary.new
        data.id = map['Id']
        data.installed_count = map['InstalledCount']
        data.missing_count = map['MissingCount']
        data.failed_count = map['FailedCount']
        data.installed_other_count = map['InstalledOtherCount']
        data.installed_rejected_count = map['InstalledRejectedCount']
        data.installed_pending_reboot = map['InstalledPendingReboot']
        data.operation_start_time = map['OperationStartTime']
        data.operation_end_time = map['OperationEndTime']
        data.reboot_option = map['RebootOption']
        data.operation = map['Operation']
        return data
      end
    end

    class VulnerabilityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Vulnerability.parse(value) unless value.nil?
        end
        data
      end
    end

    class Vulnerability
      def self.parse(map)
        data = Types::Vulnerability.new
        data.id = map['Id']
        data.vulnerable_packages = (Parsers::SoftwarePackageList.parse(map['VulnerablePackages']) unless map['VulnerablePackages'].nil?)
        data.cvss = (Parsers::CvssList.parse(map['Cvss']) unless map['Cvss'].nil?)
        data.related_vulnerabilities = (Parsers::StringList.parse(map['RelatedVulnerabilities']) unless map['RelatedVulnerabilities'].nil?)
        data.vendor = (Parsers::VulnerabilityVendor.parse(map['Vendor']) unless map['Vendor'].nil?)
        data.reference_urls = (Parsers::StringList.parse(map['ReferenceUrls']) unless map['ReferenceUrls'].nil?)
        return data
      end
    end

    class VulnerabilityVendor
      def self.parse(map)
        data = Types::VulnerabilityVendor.new
        data.name = map['Name']
        data.url = map['Url']
        data.vendor_severity = map['VendorSeverity']
        data.vendor_created_at = map['VendorCreatedAt']
        data.vendor_updated_at = map['VendorUpdatedAt']
        return data
      end
    end

    class CvssList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cvss.parse(value) unless value.nil?
        end
        data
      end
    end

    class Cvss
      def self.parse(map)
        data = Types::Cvss.new
        data.version = map['Version']
        data.base_score = Hearth::NumberHelper.deserialize(map['BaseScore'])
        data.base_vector = map['BaseVector']
        data.source = map['Source']
        data.adjustments = (Parsers::AdjustmentList.parse(map['Adjustments']) unless map['Adjustments'].nil?)
        return data
      end
    end

    class AdjustmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Adjustment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Adjustment
      def self.parse(map)
        data = Types::Adjustment.new
        data.metric = map['Metric']
        data.reason = map['Reason']
        return data
      end
    end

    class SoftwarePackageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SoftwarePackage.parse(value) unless value.nil?
        end
        data
      end
    end

    class SoftwarePackage
      def self.parse(map)
        data = Types::SoftwarePackage.new
        data.name = map['Name']
        data.version = map['Version']
        data.epoch = map['Epoch']
        data.release = map['Release']
        data.architecture = map['Architecture']
        data.package_manager = map['PackageManager']
        data.file_path = map['FilePath']
        return data
      end
    end

    class Note
      def self.parse(map)
        data = Types::Note.new
        data.text = map['Text']
        data.updated_by = map['UpdatedBy']
        data.updated_at = map['UpdatedAt']
        return data
      end
    end

    class Workflow
      def self.parse(map)
        data = Types::Workflow.new
        data.status = map['Status']
        return data
      end
    end

    class Compliance
      def self.parse(map)
        data = Types::Compliance.new
        data.status = map['Status']
        data.related_requirements = (Parsers::RelatedRequirementsList.parse(map['RelatedRequirements']) unless map['RelatedRequirements'].nil?)
        data.status_reasons = (Parsers::StatusReasonsList.parse(map['StatusReasons']) unless map['StatusReasons'].nil?)
        return data
      end
    end

    class StatusReasonsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StatusReason.parse(value) unless value.nil?
        end
        data
      end
    end

    class StatusReason
      def self.parse(map)
        data = Types::StatusReason.new
        data.reason_code = map['ReasonCode']
        data.description = map['Description']
        return data
      end
    end

    class ResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.type = map['Type']
        data.id = map['Id']
        data.partition = map['Partition']
        data.region = map['Region']
        data.resource_role = map['ResourceRole']
        data.tags = (Parsers::FieldMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.data_classification = (Parsers::DataClassificationDetails.parse(map['DataClassification']) unless map['DataClassification'].nil?)
        data.details = (Parsers::ResourceDetails.parse(map['Details']) unless map['Details'].nil?)
        return data
      end
    end

    class ResourceDetails
      def self.parse(map)
        data = Types::ResourceDetails.new
        data.aws_auto_scaling_auto_scaling_group = (Parsers::AwsAutoScalingAutoScalingGroupDetails.parse(map['AwsAutoScalingAutoScalingGroup']) unless map['AwsAutoScalingAutoScalingGroup'].nil?)
        data.aws_code_build_project = (Parsers::AwsCodeBuildProjectDetails.parse(map['AwsCodeBuildProject']) unless map['AwsCodeBuildProject'].nil?)
        data.aws_cloud_front_distribution = (Parsers::AwsCloudFrontDistributionDetails.parse(map['AwsCloudFrontDistribution']) unless map['AwsCloudFrontDistribution'].nil?)
        data.aws_ec2_instance = (Parsers::AwsEc2InstanceDetails.parse(map['AwsEc2Instance']) unless map['AwsEc2Instance'].nil?)
        data.aws_ec2_network_interface = (Parsers::AwsEc2NetworkInterfaceDetails.parse(map['AwsEc2NetworkInterface']) unless map['AwsEc2NetworkInterface'].nil?)
        data.aws_ec2_security_group = (Parsers::AwsEc2SecurityGroupDetails.parse(map['AwsEc2SecurityGroup']) unless map['AwsEc2SecurityGroup'].nil?)
        data.aws_ec2_volume = (Parsers::AwsEc2VolumeDetails.parse(map['AwsEc2Volume']) unless map['AwsEc2Volume'].nil?)
        data.aws_ec2_vpc = (Parsers::AwsEc2VpcDetails.parse(map['AwsEc2Vpc']) unless map['AwsEc2Vpc'].nil?)
        data.aws_ec2_eip = (Parsers::AwsEc2EipDetails.parse(map['AwsEc2Eip']) unless map['AwsEc2Eip'].nil?)
        data.aws_ec2_subnet = (Parsers::AwsEc2SubnetDetails.parse(map['AwsEc2Subnet']) unless map['AwsEc2Subnet'].nil?)
        data.aws_ec2_network_acl = (Parsers::AwsEc2NetworkAclDetails.parse(map['AwsEc2NetworkAcl']) unless map['AwsEc2NetworkAcl'].nil?)
        data.aws_elbv2_load_balancer = (Parsers::AwsElbv2LoadBalancerDetails.parse(map['AwsElbv2LoadBalancer']) unless map['AwsElbv2LoadBalancer'].nil?)
        data.aws_elastic_beanstalk_environment = (Parsers::AwsElasticBeanstalkEnvironmentDetails.parse(map['AwsElasticBeanstalkEnvironment']) unless map['AwsElasticBeanstalkEnvironment'].nil?)
        data.aws_elasticsearch_domain = (Parsers::AwsElasticsearchDomainDetails.parse(map['AwsElasticsearchDomain']) unless map['AwsElasticsearchDomain'].nil?)
        data.aws_s3_bucket = (Parsers::AwsS3BucketDetails.parse(map['AwsS3Bucket']) unless map['AwsS3Bucket'].nil?)
        data.aws_s3_account_public_access_block = (Parsers::AwsS3AccountPublicAccessBlockDetails.parse(map['AwsS3AccountPublicAccessBlock']) unless map['AwsS3AccountPublicAccessBlock'].nil?)
        data.aws_s3_object = (Parsers::AwsS3ObjectDetails.parse(map['AwsS3Object']) unless map['AwsS3Object'].nil?)
        data.aws_secrets_manager_secret = (Parsers::AwsSecretsManagerSecretDetails.parse(map['AwsSecretsManagerSecret']) unless map['AwsSecretsManagerSecret'].nil?)
        data.aws_iam_access_key = (Parsers::AwsIamAccessKeyDetails.parse(map['AwsIamAccessKey']) unless map['AwsIamAccessKey'].nil?)
        data.aws_iam_user = (Parsers::AwsIamUserDetails.parse(map['AwsIamUser']) unless map['AwsIamUser'].nil?)
        data.aws_iam_policy = (Parsers::AwsIamPolicyDetails.parse(map['AwsIamPolicy']) unless map['AwsIamPolicy'].nil?)
        data.aws_api_gateway_v2_stage = (Parsers::AwsApiGatewayV2StageDetails.parse(map['AwsApiGatewayV2Stage']) unless map['AwsApiGatewayV2Stage'].nil?)
        data.aws_api_gateway_v2_api = (Parsers::AwsApiGatewayV2ApiDetails.parse(map['AwsApiGatewayV2Api']) unless map['AwsApiGatewayV2Api'].nil?)
        data.aws_dynamo_db_table = (Parsers::AwsDynamoDbTableDetails.parse(map['AwsDynamoDbTable']) unless map['AwsDynamoDbTable'].nil?)
        data.aws_api_gateway_stage = (Parsers::AwsApiGatewayStageDetails.parse(map['AwsApiGatewayStage']) unless map['AwsApiGatewayStage'].nil?)
        data.aws_api_gateway_rest_api = (Parsers::AwsApiGatewayRestApiDetails.parse(map['AwsApiGatewayRestApi']) unless map['AwsApiGatewayRestApi'].nil?)
        data.aws_cloud_trail_trail = (Parsers::AwsCloudTrailTrailDetails.parse(map['AwsCloudTrailTrail']) unless map['AwsCloudTrailTrail'].nil?)
        data.aws_ssm_patch_compliance = (Parsers::AwsSsmPatchComplianceDetails.parse(map['AwsSsmPatchCompliance']) unless map['AwsSsmPatchCompliance'].nil?)
        data.aws_certificate_manager_certificate = (Parsers::AwsCertificateManagerCertificateDetails.parse(map['AwsCertificateManagerCertificate']) unless map['AwsCertificateManagerCertificate'].nil?)
        data.aws_redshift_cluster = (Parsers::AwsRedshiftClusterDetails.parse(map['AwsRedshiftCluster']) unless map['AwsRedshiftCluster'].nil?)
        data.aws_elb_load_balancer = (Parsers::AwsElbLoadBalancerDetails.parse(map['AwsElbLoadBalancer']) unless map['AwsElbLoadBalancer'].nil?)
        data.aws_iam_group = (Parsers::AwsIamGroupDetails.parse(map['AwsIamGroup']) unless map['AwsIamGroup'].nil?)
        data.aws_iam_role = (Parsers::AwsIamRoleDetails.parse(map['AwsIamRole']) unless map['AwsIamRole'].nil?)
        data.aws_kms_key = (Parsers::AwsKmsKeyDetails.parse(map['AwsKmsKey']) unless map['AwsKmsKey'].nil?)
        data.aws_lambda_function = (Parsers::AwsLambdaFunctionDetails.parse(map['AwsLambdaFunction']) unless map['AwsLambdaFunction'].nil?)
        data.aws_lambda_layer_version = (Parsers::AwsLambdaLayerVersionDetails.parse(map['AwsLambdaLayerVersion']) unless map['AwsLambdaLayerVersion'].nil?)
        data.aws_rds_db_instance = (Parsers::AwsRdsDbInstanceDetails.parse(map['AwsRdsDbInstance']) unless map['AwsRdsDbInstance'].nil?)
        data.aws_sns_topic = (Parsers::AwsSnsTopicDetails.parse(map['AwsSnsTopic']) unless map['AwsSnsTopic'].nil?)
        data.aws_sqs_queue = (Parsers::AwsSqsQueueDetails.parse(map['AwsSqsQueue']) unless map['AwsSqsQueue'].nil?)
        data.aws_waf_web_acl = (Parsers::AwsWafWebAclDetails.parse(map['AwsWafWebAcl']) unless map['AwsWafWebAcl'].nil?)
        data.aws_rds_db_snapshot = (Parsers::AwsRdsDbSnapshotDetails.parse(map['AwsRdsDbSnapshot']) unless map['AwsRdsDbSnapshot'].nil?)
        data.aws_rds_db_cluster_snapshot = (Parsers::AwsRdsDbClusterSnapshotDetails.parse(map['AwsRdsDbClusterSnapshot']) unless map['AwsRdsDbClusterSnapshot'].nil?)
        data.aws_rds_db_cluster = (Parsers::AwsRdsDbClusterDetails.parse(map['AwsRdsDbCluster']) unless map['AwsRdsDbCluster'].nil?)
        data.aws_ecs_cluster = (Parsers::AwsEcsClusterDetails.parse(map['AwsEcsCluster']) unless map['AwsEcsCluster'].nil?)
        data.aws_ecs_task_definition = (Parsers::AwsEcsTaskDefinitionDetails.parse(map['AwsEcsTaskDefinition']) unless map['AwsEcsTaskDefinition'].nil?)
        data.container = (Parsers::ContainerDetails.parse(map['Container']) unless map['Container'].nil?)
        data.other = (Parsers::FieldMap.parse(map['Other']) unless map['Other'].nil?)
        data.aws_rds_event_subscription = (Parsers::AwsRdsEventSubscriptionDetails.parse(map['AwsRdsEventSubscription']) unless map['AwsRdsEventSubscription'].nil?)
        data.aws_ecs_service = (Parsers::AwsEcsServiceDetails.parse(map['AwsEcsService']) unless map['AwsEcsService'].nil?)
        data.aws_auto_scaling_launch_configuration = (Parsers::AwsAutoScalingLaunchConfigurationDetails.parse(map['AwsAutoScalingLaunchConfiguration']) unless map['AwsAutoScalingLaunchConfiguration'].nil?)
        data.aws_ec2_vpn_connection = (Parsers::AwsEc2VpnConnectionDetails.parse(map['AwsEc2VpnConnection']) unless map['AwsEc2VpnConnection'].nil?)
        data.aws_ecr_container_image = (Parsers::AwsEcrContainerImageDetails.parse(map['AwsEcrContainerImage']) unless map['AwsEcrContainerImage'].nil?)
        data.aws_open_search_service_domain = (Parsers::AwsOpenSearchServiceDomainDetails.parse(map['AwsOpenSearchServiceDomain']) unless map['AwsOpenSearchServiceDomain'].nil?)
        data.aws_ec2_vpc_endpoint_service = (Parsers::AwsEc2VpcEndpointServiceDetails.parse(map['AwsEc2VpcEndpointService']) unless map['AwsEc2VpcEndpointService'].nil?)
        data.aws_xray_encryption_config = (Parsers::AwsXrayEncryptionConfigDetails.parse(map['AwsXrayEncryptionConfig']) unless map['AwsXrayEncryptionConfig'].nil?)
        data.aws_waf_rate_based_rule = (Parsers::AwsWafRateBasedRuleDetails.parse(map['AwsWafRateBasedRule']) unless map['AwsWafRateBasedRule'].nil?)
        data.aws_waf_regional_rate_based_rule = (Parsers::AwsWafRegionalRateBasedRuleDetails.parse(map['AwsWafRegionalRateBasedRule']) unless map['AwsWafRegionalRateBasedRule'].nil?)
        data.aws_ecr_repository = (Parsers::AwsEcrRepositoryDetails.parse(map['AwsEcrRepository']) unless map['AwsEcrRepository'].nil?)
        data.aws_eks_cluster = (Parsers::AwsEksClusterDetails.parse(map['AwsEksCluster']) unless map['AwsEksCluster'].nil?)
        data.aws_network_firewall_firewall_policy = (Parsers::AwsNetworkFirewallFirewallPolicyDetails.parse(map['AwsNetworkFirewallFirewallPolicy']) unless map['AwsNetworkFirewallFirewallPolicy'].nil?)
        data.aws_network_firewall_firewall = (Parsers::AwsNetworkFirewallFirewallDetails.parse(map['AwsNetworkFirewallFirewall']) unless map['AwsNetworkFirewallFirewall'].nil?)
        data.aws_network_firewall_rule_group = (Parsers::AwsNetworkFirewallRuleGroupDetails.parse(map['AwsNetworkFirewallRuleGroup']) unless map['AwsNetworkFirewallRuleGroup'].nil?)
        data.aws_rds_db_security_group = (Parsers::AwsRdsDbSecurityGroupDetails.parse(map['AwsRdsDbSecurityGroup']) unless map['AwsRdsDbSecurityGroup'].nil?)
        return data
      end
    end

    class AwsRdsDbSecurityGroupDetails
      def self.parse(map)
        data = Types::AwsRdsDbSecurityGroupDetails.new
        data.db_security_group_arn = map['DbSecurityGroupArn']
        data.db_security_group_description = map['DbSecurityGroupDescription']
        data.db_security_group_name = map['DbSecurityGroupName']
        data.ec2_security_groups = (Parsers::AwsRdsDbSecurityGroupEc2SecurityGroups.parse(map['Ec2SecurityGroups']) unless map['Ec2SecurityGroups'].nil?)
        data.ip_ranges = (Parsers::AwsRdsDbSecurityGroupIpRanges.parse(map['IpRanges']) unless map['IpRanges'].nil?)
        data.owner_id = map['OwnerId']
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class AwsRdsDbSecurityGroupIpRanges
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbSecurityGroupIpRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbSecurityGroupIpRange
      def self.parse(map)
        data = Types::AwsRdsDbSecurityGroupIpRange.new
        data.cidr_ip = map['CidrIp']
        data.status = map['Status']
        return data
      end
    end

    class AwsRdsDbSecurityGroupEc2SecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbSecurityGroupEc2SecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbSecurityGroupEc2SecurityGroup
      def self.parse(map)
        data = Types::AwsRdsDbSecurityGroupEc2SecurityGroup.new
        data.ec2_security_group_id = map['Ec2SecurityGroupId']
        data.ec2_security_group_name = map['Ec2SecurityGroupName']
        data.ec2_security_group_owner_id = map['Ec2SecurityGroupOwnerId']
        data.status = map['Status']
        return data
      end
    end

    class AwsNetworkFirewallRuleGroupDetails
      def self.parse(map)
        data = Types::AwsNetworkFirewallRuleGroupDetails.new
        data.capacity = map['Capacity']
        data.description = map['Description']
        data.rule_group = (Parsers::RuleGroupDetails.parse(map['RuleGroup']) unless map['RuleGroup'].nil?)
        data.rule_group_arn = map['RuleGroupArn']
        data.rule_group_id = map['RuleGroupId']
        data.rule_group_name = map['RuleGroupName']
        data.type = map['Type']
        return data
      end
    end

    class RuleGroupDetails
      def self.parse(map)
        data = Types::RuleGroupDetails.new
        data.rule_variables = (Parsers::RuleGroupVariables.parse(map['RuleVariables']) unless map['RuleVariables'].nil?)
        data.rules_source = (Parsers::RuleGroupSource.parse(map['RulesSource']) unless map['RulesSource'].nil?)
        return data
      end
    end

    class RuleGroupSource
      def self.parse(map)
        data = Types::RuleGroupSource.new
        data.rules_source_list = (Parsers::RuleGroupSourceListDetails.parse(map['RulesSourceList']) unless map['RulesSourceList'].nil?)
        data.rules_string = map['RulesString']
        data.stateful_rules = (Parsers::RuleGroupSourceStatefulRulesList.parse(map['StatefulRules']) unless map['StatefulRules'].nil?)
        data.stateless_rules_and_custom_actions = (Parsers::RuleGroupSourceStatelessRulesAndCustomActionsDetails.parse(map['StatelessRulesAndCustomActions']) unless map['StatelessRulesAndCustomActions'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatelessRulesAndCustomActionsDetails
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails.new
        data.custom_actions = (Parsers::RuleGroupSourceCustomActionsList.parse(map['CustomActions']) unless map['CustomActions'].nil?)
        data.stateless_rules = (Parsers::RuleGroupSourceStatelessRulesList.parse(map['StatelessRules']) unless map['StatelessRules'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatelessRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRulesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRulesDetails
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRulesDetails.new
        data.priority = map['Priority']
        data.rule_definition = (Parsers::RuleGroupSourceStatelessRuleDefinition.parse(map['RuleDefinition']) unless map['RuleDefinition'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatelessRuleDefinition
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleDefinition.new
        data.actions = (Parsers::NonEmptyStringList.parse(map['Actions']) unless map['Actions'].nil?)
        data.match_attributes = (Parsers::RuleGroupSourceStatelessRuleMatchAttributes.parse(map['MatchAttributes']) unless map['MatchAttributes'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributes
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributes.new
        data.destination_ports = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.parse(map['DestinationPorts']) unless map['DestinationPorts'].nil?)
        data.destinations = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.parse(map['Destinations']) unless map['Destinations'].nil?)
        data.protocols = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.parse(map['Protocols']) unless map['Protocols'].nil?)
        data.source_ports = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.parse(map['SourcePorts']) unless map['SourcePorts'].nil?)
        data.sources = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesSourcesList.parse(map['Sources']) unless map['Sources'].nil?)
        data.tcp_flags = (Parsers::RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.parse(map['TcpFlags']) unless map['TcpFlags'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.new
        data.flags = (Parsers::NonEmptyStringList.parse(map['Flags']) unless map['Flags'].nil?)
        data.masks = (Parsers::NonEmptyStringList.parse(map['Masks']) unless map['Masks'].nil?)
        return data
      end
    end

    class NonEmptyStringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRuleMatchAttributesSources.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSources
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributesSources.new
        data.address_definition = map['AddressDefinition']
        return data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        return data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRuleMatchAttributesDestinations.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinations
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations.new
        data.address_definition = map['AddressDefinition']
        return data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
      def self.parse(map)
        data = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        return data
      end
    end

    class RuleGroupSourceCustomActionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceCustomActionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceCustomActionsDetails
      def self.parse(map)
        data = Types::RuleGroupSourceCustomActionsDetails.new
        data.action_definition = (Parsers::StatelessCustomActionDefinition.parse(map['ActionDefinition']) unless map['ActionDefinition'].nil?)
        data.action_name = map['ActionName']
        return data
      end
    end

    class StatelessCustomActionDefinition
      def self.parse(map)
        data = Types::StatelessCustomActionDefinition.new
        data.publish_metric_action = (Parsers::StatelessCustomPublishMetricAction.parse(map['PublishMetricAction']) unless map['PublishMetricAction'].nil?)
        return data
      end
    end

    class StatelessCustomPublishMetricAction
      def self.parse(map)
        data = Types::StatelessCustomPublishMetricAction.new
        data.dimensions = (Parsers::StatelessCustomPublishMetricActionDimensionsList.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    class StatelessCustomPublishMetricActionDimensionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StatelessCustomPublishMetricActionDimension.parse(value) unless value.nil?
        end
        data
      end
    end

    class StatelessCustomPublishMetricActionDimension
      def self.parse(map)
        data = Types::StatelessCustomPublishMetricActionDimension.new
        data.value = map['Value']
        return data
      end
    end

    class RuleGroupSourceStatefulRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatefulRulesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatefulRulesDetails
      def self.parse(map)
        data = Types::RuleGroupSourceStatefulRulesDetails.new
        data.action = map['Action']
        data.header = (Parsers::RuleGroupSourceStatefulRulesHeaderDetails.parse(map['Header']) unless map['Header'].nil?)
        data.rule_options = (Parsers::RuleGroupSourceStatefulRulesOptionsList.parse(map['RuleOptions']) unless map['RuleOptions'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatefulRulesOptionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupSourceStatefulRulesOptionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatefulRulesOptionsDetails
      def self.parse(map)
        data = Types::RuleGroupSourceStatefulRulesOptionsDetails.new
        data.keyword = map['Keyword']
        data.settings = (Parsers::RuleGroupSourceStatefulRulesRuleOptionsSettingsList.parse(map['Settings']) unless map['Settings'].nil?)
        return data
      end
    end

    class RuleGroupSourceStatefulRulesRuleOptionsSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RuleGroupSourceStatefulRulesHeaderDetails
      def self.parse(map)
        data = Types::RuleGroupSourceStatefulRulesHeaderDetails.new
        data.destination = map['Destination']
        data.destination_port = map['DestinationPort']
        data.direction = map['Direction']
        data.protocol = map['Protocol']
        data.source = map['Source']
        data.source_port = map['SourcePort']
        return data
      end
    end

    class RuleGroupSourceListDetails
      def self.parse(map)
        data = Types::RuleGroupSourceListDetails.new
        data.generated_rules_type = map['GeneratedRulesType']
        data.target_types = (Parsers::NonEmptyStringList.parse(map['TargetTypes']) unless map['TargetTypes'].nil?)
        data.targets = (Parsers::NonEmptyStringList.parse(map['Targets']) unless map['Targets'].nil?)
        return data
      end
    end

    class RuleGroupVariables
      def self.parse(map)
        data = Types::RuleGroupVariables.new
        data.ip_sets = (Parsers::RuleGroupVariablesIpSetsDetails.parse(map['IpSets']) unless map['IpSets'].nil?)
        data.port_sets = (Parsers::RuleGroupVariablesPortSetsDetails.parse(map['PortSets']) unless map['PortSets'].nil?)
        return data
      end
    end

    class RuleGroupVariablesPortSetsDetails
      def self.parse(map)
        data = Types::RuleGroupVariablesPortSetsDetails.new
        data.definition = (Parsers::NonEmptyStringList.parse(map['Definition']) unless map['Definition'].nil?)
        return data
      end
    end

    class RuleGroupVariablesIpSetsDetails
      def self.parse(map)
        data = Types::RuleGroupVariablesIpSetsDetails.new
        data.definition = (Parsers::NonEmptyStringList.parse(map['Definition']) unless map['Definition'].nil?)
        return data
      end
    end

    class AwsNetworkFirewallFirewallDetails
      def self.parse(map)
        data = Types::AwsNetworkFirewallFirewallDetails.new
        data.delete_protection = map['DeleteProtection']
        data.description = map['Description']
        data.firewall_arn = map['FirewallArn']
        data.firewall_id = map['FirewallId']
        data.firewall_name = map['FirewallName']
        data.firewall_policy_arn = map['FirewallPolicyArn']
        data.firewall_policy_change_protection = map['FirewallPolicyChangeProtection']
        data.subnet_change_protection = map['SubnetChangeProtection']
        data.subnet_mappings = (Parsers::AwsNetworkFirewallFirewallSubnetMappingsList.parse(map['SubnetMappings']) unless map['SubnetMappings'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class AwsNetworkFirewallFirewallSubnetMappingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsNetworkFirewallFirewallSubnetMappingsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsNetworkFirewallFirewallSubnetMappingsDetails
      def self.parse(map)
        data = Types::AwsNetworkFirewallFirewallSubnetMappingsDetails.new
        data.subnet_id = map['SubnetId']
        return data
      end
    end

    class AwsNetworkFirewallFirewallPolicyDetails
      def self.parse(map)
        data = Types::AwsNetworkFirewallFirewallPolicyDetails.new
        data.firewall_policy = (Parsers::FirewallPolicyDetails.parse(map['FirewallPolicy']) unless map['FirewallPolicy'].nil?)
        data.firewall_policy_arn = map['FirewallPolicyArn']
        data.firewall_policy_id = map['FirewallPolicyId']
        data.firewall_policy_name = map['FirewallPolicyName']
        data.description = map['Description']
        return data
      end
    end

    class FirewallPolicyDetails
      def self.parse(map)
        data = Types::FirewallPolicyDetails.new
        data.stateful_rule_group_references = (Parsers::FirewallPolicyStatefulRuleGroupReferencesList.parse(map['StatefulRuleGroupReferences']) unless map['StatefulRuleGroupReferences'].nil?)
        data.stateless_custom_actions = (Parsers::FirewallPolicyStatelessCustomActionsList.parse(map['StatelessCustomActions']) unless map['StatelessCustomActions'].nil?)
        data.stateless_default_actions = (Parsers::NonEmptyStringList.parse(map['StatelessDefaultActions']) unless map['StatelessDefaultActions'].nil?)
        data.stateless_fragment_default_actions = (Parsers::NonEmptyStringList.parse(map['StatelessFragmentDefaultActions']) unless map['StatelessFragmentDefaultActions'].nil?)
        data.stateless_rule_group_references = (Parsers::FirewallPolicyStatelessRuleGroupReferencesList.parse(map['StatelessRuleGroupReferences']) unless map['StatelessRuleGroupReferences'].nil?)
        return data
      end
    end

    class FirewallPolicyStatelessRuleGroupReferencesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FirewallPolicyStatelessRuleGroupReferencesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class FirewallPolicyStatelessRuleGroupReferencesDetails
      def self.parse(map)
        data = Types::FirewallPolicyStatelessRuleGroupReferencesDetails.new
        data.priority = map['Priority']
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    class FirewallPolicyStatelessCustomActionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FirewallPolicyStatelessCustomActionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class FirewallPolicyStatelessCustomActionsDetails
      def self.parse(map)
        data = Types::FirewallPolicyStatelessCustomActionsDetails.new
        data.action_definition = (Parsers::StatelessCustomActionDefinition.parse(map['ActionDefinition']) unless map['ActionDefinition'].nil?)
        data.action_name = map['ActionName']
        return data
      end
    end

    class FirewallPolicyStatefulRuleGroupReferencesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FirewallPolicyStatefulRuleGroupReferencesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class FirewallPolicyStatefulRuleGroupReferencesDetails
      def self.parse(map)
        data = Types::FirewallPolicyStatefulRuleGroupReferencesDetails.new
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    class AwsEksClusterDetails
      def self.parse(map)
        data = Types::AwsEksClusterDetails.new
        data.arn = map['Arn']
        data.certificate_authority_data = map['CertificateAuthorityData']
        data.cluster_status = map['ClusterStatus']
        data.endpoint = map['Endpoint']
        data.name = map['Name']
        data.resources_vpc_config = (Parsers::AwsEksClusterResourcesVpcConfigDetails.parse(map['ResourcesVpcConfig']) unless map['ResourcesVpcConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.version = map['Version']
        data.logging = (Parsers::AwsEksClusterLoggingDetails.parse(map['Logging']) unless map['Logging'].nil?)
        return data
      end
    end

    class AwsEksClusterLoggingDetails
      def self.parse(map)
        data = Types::AwsEksClusterLoggingDetails.new
        data.cluster_logging = (Parsers::AwsEksClusterLoggingClusterLoggingList.parse(map['ClusterLogging']) unless map['ClusterLogging'].nil?)
        return data
      end
    end

    class AwsEksClusterLoggingClusterLoggingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEksClusterLoggingClusterLoggingDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEksClusterLoggingClusterLoggingDetails
      def self.parse(map)
        data = Types::AwsEksClusterLoggingClusterLoggingDetails.new
        data.enabled = map['Enabled']
        data.types = (Parsers::NonEmptyStringList.parse(map['Types']) unless map['Types'].nil?)
        return data
      end
    end

    class AwsEksClusterResourcesVpcConfigDetails
      def self.parse(map)
        data = Types::AwsEksClusterResourcesVpcConfigDetails.new
        data.security_group_ids = (Parsers::NonEmptyStringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_ids = (Parsers::NonEmptyStringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        return data
      end
    end

    class AwsEcrRepositoryDetails
      def self.parse(map)
        data = Types::AwsEcrRepositoryDetails.new
        data.arn = map['Arn']
        data.image_scanning_configuration = (Parsers::AwsEcrRepositoryImageScanningConfigurationDetails.parse(map['ImageScanningConfiguration']) unless map['ImageScanningConfiguration'].nil?)
        data.image_tag_mutability = map['ImageTagMutability']
        data.lifecycle_policy = (Parsers::AwsEcrRepositoryLifecyclePolicyDetails.parse(map['LifecyclePolicy']) unless map['LifecyclePolicy'].nil?)
        data.repository_name = map['RepositoryName']
        data.repository_policy_text = map['RepositoryPolicyText']
        return data
      end
    end

    class AwsEcrRepositoryLifecyclePolicyDetails
      def self.parse(map)
        data = Types::AwsEcrRepositoryLifecyclePolicyDetails.new
        data.lifecycle_policy_text = map['LifecyclePolicyText']
        data.registry_id = map['RegistryId']
        return data
      end
    end

    class AwsEcrRepositoryImageScanningConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcrRepositoryImageScanningConfigurationDetails.new
        data.scan_on_push = map['ScanOnPush']
        return data
      end
    end

    class AwsWafRegionalRateBasedRuleDetails
      def self.parse(map)
        data = Types::AwsWafRegionalRateBasedRuleDetails.new
        data.metric_name = map['MetricName']
        data.name = map['Name']
        data.rate_key = map['RateKey']
        data.rate_limit = map['RateLimit']
        data.rule_id = map['RuleId']
        data.match_predicates = (Parsers::AwsWafRegionalRateBasedRuleMatchPredicateList.parse(map['MatchPredicates']) unless map['MatchPredicates'].nil?)
        return data
      end
    end

    class AwsWafRegionalRateBasedRuleMatchPredicateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsWafRegionalRateBasedRuleMatchPredicate.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsWafRegionalRateBasedRuleMatchPredicate
      def self.parse(map)
        data = Types::AwsWafRegionalRateBasedRuleMatchPredicate.new
        data.data_id = map['DataId']
        data.negated = map['Negated']
        data.type = map['Type']
        return data
      end
    end

    class AwsWafRateBasedRuleDetails
      def self.parse(map)
        data = Types::AwsWafRateBasedRuleDetails.new
        data.metric_name = map['MetricName']
        data.name = map['Name']
        data.rate_key = map['RateKey']
        data.rate_limit = map['RateLimit']
        data.rule_id = map['RuleId']
        data.match_predicates = (Parsers::AwsWafRateBasedRuleMatchPredicateList.parse(map['MatchPredicates']) unless map['MatchPredicates'].nil?)
        return data
      end
    end

    class AwsWafRateBasedRuleMatchPredicateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsWafRateBasedRuleMatchPredicate.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsWafRateBasedRuleMatchPredicate
      def self.parse(map)
        data = Types::AwsWafRateBasedRuleMatchPredicate.new
        data.data_id = map['DataId']
        data.negated = map['Negated']
        data.type = map['Type']
        return data
      end
    end

    class AwsXrayEncryptionConfigDetails
      def self.parse(map)
        data = Types::AwsXrayEncryptionConfigDetails.new
        data.key_id = map['KeyId']
        data.status = map['Status']
        data.type = map['Type']
        return data
      end
    end

    class AwsEc2VpcEndpointServiceDetails
      def self.parse(map)
        data = Types::AwsEc2VpcEndpointServiceDetails.new
        data.acceptance_required = map['AcceptanceRequired']
        data.availability_zones = (Parsers::NonEmptyStringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.base_endpoint_dns_names = (Parsers::NonEmptyStringList.parse(map['BaseEndpointDnsNames']) unless map['BaseEndpointDnsNames'].nil?)
        data.manages_vpc_endpoints = map['ManagesVpcEndpoints']
        data.gateway_load_balancer_arns = (Parsers::NonEmptyStringList.parse(map['GatewayLoadBalancerArns']) unless map['GatewayLoadBalancerArns'].nil?)
        data.network_load_balancer_arns = (Parsers::NonEmptyStringList.parse(map['NetworkLoadBalancerArns']) unless map['NetworkLoadBalancerArns'].nil?)
        data.private_dns_name = map['PrivateDnsName']
        data.service_id = map['ServiceId']
        data.service_name = map['ServiceName']
        data.service_state = map['ServiceState']
        data.service_type = (Parsers::AwsEc2VpcEndpointServiceServiceTypeList.parse(map['ServiceType']) unless map['ServiceType'].nil?)
        return data
      end
    end

    class AwsEc2VpcEndpointServiceServiceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2VpcEndpointServiceServiceTypeDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2VpcEndpointServiceServiceTypeDetails
      def self.parse(map)
        data = Types::AwsEc2VpcEndpointServiceServiceTypeDetails.new
        data.service_type = map['ServiceType']
        return data
      end
    end

    class AwsOpenSearchServiceDomainDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainDetails.new
        data.arn = map['Arn']
        data.access_policies = map['AccessPolicies']
        data.domain_name = map['DomainName']
        data.id = map['Id']
        data.domain_endpoint = map['DomainEndpoint']
        data.engine_version = map['EngineVersion']
        data.encryption_at_rest_options = (Parsers::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.node_to_node_encryption_options = (Parsers::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.service_software_options = (Parsers::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data.cluster_config = (Parsers::AwsOpenSearchServiceDomainClusterConfigDetails.parse(map['ClusterConfig']) unless map['ClusterConfig'].nil?)
        data.domain_endpoint_options = (Parsers::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.vpc_options = (Parsers::AwsOpenSearchServiceDomainVpcOptionsDetails.parse(map['VpcOptions']) unless map['VpcOptions'].nil?)
        data.log_publishing_options = (Parsers::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.domain_endpoints = (Parsers::FieldMap.parse(map['DomainEndpoints']) unless map['DomainEndpoints'].nil?)
        return data
      end
    end

    class AwsOpenSearchServiceDomainLogPublishingOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.new
        data.index_slow_logs = (Parsers::AwsOpenSearchServiceDomainLogPublishingOption.parse(map['IndexSlowLogs']) unless map['IndexSlowLogs'].nil?)
        data.search_slow_logs = (Parsers::AwsOpenSearchServiceDomainLogPublishingOption.parse(map['SearchSlowLogs']) unless map['SearchSlowLogs'].nil?)
        data.audit_logs = (Parsers::AwsOpenSearchServiceDomainLogPublishingOption.parse(map['AuditLogs']) unless map['AuditLogs'].nil?)
        return data
      end
    end

    class AwsOpenSearchServiceDomainLogPublishingOption
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainLogPublishingOption.new
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsOpenSearchServiceDomainVpcOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainVpcOptionsDetails.new
        data.security_group_ids = (Parsers::NonEmptyStringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_ids = (Parsers::NonEmptyStringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        return data
      end
    end

    class AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.new
        data.custom_endpoint_certificate_arn = map['CustomEndpointCertificateArn']
        data.custom_endpoint_enabled = map['CustomEndpointEnabled']
        data.enforce_https = map['EnforceHTTPS']
        data.custom_endpoint = map['CustomEndpoint']
        data.tls_security_policy = map['TLSSecurityPolicy']
        return data
      end
    end

    class AwsOpenSearchServiceDomainClusterConfigDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainClusterConfigDetails.new
        data.instance_count = map['InstanceCount']
        data.warm_enabled = map['WarmEnabled']
        data.warm_count = map['WarmCount']
        data.dedicated_master_enabled = map['DedicatedMasterEnabled']
        data.zone_awareness_config = (Parsers::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.parse(map['ZoneAwarenessConfig']) unless map['ZoneAwarenessConfig'].nil?)
        data.dedicated_master_count = map['DedicatedMasterCount']
        data.instance_type = map['InstanceType']
        data.warm_type = map['WarmType']
        data.zone_awareness_enabled = map['ZoneAwarenessEnabled']
        data.dedicated_master_type = map['DedicatedMasterType']
        return data
      end
    end

    class AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.new
        data.availability_zone_count = map['AvailabilityZoneCount']
        return data
      end
    end

    class AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.new
        data.automated_update_date = map['AutomatedUpdateDate']
        data.cancellable = map['Cancellable']
        data.current_version = map['CurrentVersion']
        data.description = map['Description']
        data.new_version = map['NewVersion']
        data.update_available = map['UpdateAvailable']
        data.update_status = map['UpdateStatus']
        data.optional_deployment = map['OptionalDeployment']
        return data
      end
    end

    class AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
      def self.parse(map)
        data = Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.new
        data.enabled = map['Enabled']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class AwsEcrContainerImageDetails
      def self.parse(map)
        data = Types::AwsEcrContainerImageDetails.new
        data.registry_id = map['RegistryId']
        data.repository_name = map['RepositoryName']
        data.architecture = map['Architecture']
        data.image_digest = map['ImageDigest']
        data.image_tags = (Parsers::NonEmptyStringList.parse(map['ImageTags']) unless map['ImageTags'].nil?)
        data.image_published_at = map['ImagePublishedAt']
        return data
      end
    end

    class AwsEc2VpnConnectionDetails
      def self.parse(map)
        data = Types::AwsEc2VpnConnectionDetails.new
        data.vpn_connection_id = map['VpnConnectionId']
        data.state = map['State']
        data.customer_gateway_id = map['CustomerGatewayId']
        data.customer_gateway_configuration = map['CustomerGatewayConfiguration']
        data.type = map['Type']
        data.vpn_gateway_id = map['VpnGatewayId']
        data.category = map['Category']
        data.vgw_telemetry = (Parsers::AwsEc2VpnConnectionVgwTelemetryList.parse(map['VgwTelemetry']) unless map['VgwTelemetry'].nil?)
        data.options = (Parsers::AwsEc2VpnConnectionOptionsDetails.parse(map['Options']) unless map['Options'].nil?)
        data.routes = (Parsers::AwsEc2VpnConnectionRoutesList.parse(map['Routes']) unless map['Routes'].nil?)
        data.transit_gateway_id = map['TransitGatewayId']
        return data
      end
    end

    class AwsEc2VpnConnectionRoutesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2VpnConnectionRoutesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2VpnConnectionRoutesDetails
      def self.parse(map)
        data = Types::AwsEc2VpnConnectionRoutesDetails.new
        data.destination_cidr_block = map['DestinationCidrBlock']
        data.state = map['State']
        return data
      end
    end

    class AwsEc2VpnConnectionOptionsDetails
      def self.parse(map)
        data = Types::AwsEc2VpnConnectionOptionsDetails.new
        data.static_routes_only = map['StaticRoutesOnly']
        data.tunnel_options = (Parsers::AwsEc2VpnConnectionOptionsTunnelOptionsList.parse(map['TunnelOptions']) unless map['TunnelOptions'].nil?)
        return data
      end
    end

    class AwsEc2VpnConnectionOptionsTunnelOptionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2VpnConnectionOptionsTunnelOptionsDetails
      def self.parse(map)
        data = Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.new
        data.dpd_timeout_seconds = map['DpdTimeoutSeconds']
        data.ike_versions = (Parsers::NonEmptyStringList.parse(map['IkeVersions']) unless map['IkeVersions'].nil?)
        data.outside_ip_address = map['OutsideIpAddress']
        data.phase1_dh_group_numbers = (Parsers::IntegerList.parse(map['Phase1DhGroupNumbers']) unless map['Phase1DhGroupNumbers'].nil?)
        data.phase1_encryption_algorithms = (Parsers::NonEmptyStringList.parse(map['Phase1EncryptionAlgorithms']) unless map['Phase1EncryptionAlgorithms'].nil?)
        data.phase1_integrity_algorithms = (Parsers::NonEmptyStringList.parse(map['Phase1IntegrityAlgorithms']) unless map['Phase1IntegrityAlgorithms'].nil?)
        data.phase1_lifetime_seconds = map['Phase1LifetimeSeconds']
        data.phase2_dh_group_numbers = (Parsers::IntegerList.parse(map['Phase2DhGroupNumbers']) unless map['Phase2DhGroupNumbers'].nil?)
        data.phase2_encryption_algorithms = (Parsers::NonEmptyStringList.parse(map['Phase2EncryptionAlgorithms']) unless map['Phase2EncryptionAlgorithms'].nil?)
        data.phase2_integrity_algorithms = (Parsers::NonEmptyStringList.parse(map['Phase2IntegrityAlgorithms']) unless map['Phase2IntegrityAlgorithms'].nil?)
        data.phase2_lifetime_seconds = map['Phase2LifetimeSeconds']
        data.pre_shared_key = map['PreSharedKey']
        data.rekey_fuzz_percentage = map['RekeyFuzzPercentage']
        data.rekey_margin_time_seconds = map['RekeyMarginTimeSeconds']
        data.replay_window_size = map['ReplayWindowSize']
        data.tunnel_inside_cidr = map['TunnelInsideCidr']
        return data
      end
    end

    class IntegerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AwsEc2VpnConnectionVgwTelemetryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2VpnConnectionVgwTelemetryDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2VpnConnectionVgwTelemetryDetails
      def self.parse(map)
        data = Types::AwsEc2VpnConnectionVgwTelemetryDetails.new
        data.accepted_route_count = map['AcceptedRouteCount']
        data.certificate_arn = map['CertificateArn']
        data.last_status_change = map['LastStatusChange']
        data.outside_ip_address = map['OutsideIpAddress']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    class AwsAutoScalingLaunchConfigurationDetails
      def self.parse(map)
        data = Types::AwsAutoScalingLaunchConfigurationDetails.new
        data.associate_public_ip_address = map['AssociatePublicIpAddress']
        data.block_device_mappings = (Parsers::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.parse(map['BlockDeviceMappings']) unless map['BlockDeviceMappings'].nil?)
        data.classic_link_vpc_id = map['ClassicLinkVpcId']
        data.classic_link_vpc_security_groups = (Parsers::NonEmptyStringList.parse(map['ClassicLinkVpcSecurityGroups']) unless map['ClassicLinkVpcSecurityGroups'].nil?)
        data.created_time = map['CreatedTime']
        data.ebs_optimized = map['EbsOptimized']
        data.iam_instance_profile = map['IamInstanceProfile']
        data.image_id = map['ImageId']
        data.instance_monitoring = (Parsers::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.parse(map['InstanceMonitoring']) unless map['InstanceMonitoring'].nil?)
        data.instance_type = map['InstanceType']
        data.kernel_id = map['KernelId']
        data.key_name = map['KeyName']
        data.launch_configuration_name = map['LaunchConfigurationName']
        data.placement_tenancy = map['PlacementTenancy']
        data.ramdisk_id = map['RamdiskId']
        data.security_groups = (Parsers::NonEmptyStringList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.spot_price = map['SpotPrice']
        data.user_data = map['UserData']
        data.metadata_options = (Parsers::AwsAutoScalingLaunchConfigurationMetadataOptions.parse(map['MetadataOptions']) unless map['MetadataOptions'].nil?)
        return data
      end
    end

    class AwsAutoScalingLaunchConfigurationMetadataOptions
      def self.parse(map)
        data = Types::AwsAutoScalingLaunchConfigurationMetadataOptions.new
        data.http_endpoint = map['HttpEndpoint']
        data.http_put_response_hop_limit = map['HttpPutResponseHopLimit']
        data.http_tokens = map['HttpTokens']
        return data
      end
    end

    class AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
      def self.parse(map)
        data = Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
      def self.parse(map)
        data = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.new
        data.device_name = map['DeviceName']
        data.ebs = (Parsers::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.parse(map['Ebs']) unless map['Ebs'].nil?)
        data.no_device = map['NoDevice']
        data.virtual_name = map['VirtualName']
        return data
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
      def self.parse(map)
        data = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.new
        data.delete_on_termination = map['DeleteOnTermination']
        data.encrypted = map['Encrypted']
        data.iops = map['Iops']
        data.snapshot_id = map['SnapshotId']
        data.volume_size = map['VolumeSize']
        data.volume_type = map['VolumeType']
        return data
      end
    end

    class AwsEcsServiceDetails
      def self.parse(map)
        data = Types::AwsEcsServiceDetails.new
        data.capacity_provider_strategy = (Parsers::AwsEcsServiceCapacityProviderStrategyList.parse(map['CapacityProviderStrategy']) unless map['CapacityProviderStrategy'].nil?)
        data.cluster = map['Cluster']
        data.deployment_configuration = (Parsers::AwsEcsServiceDeploymentConfigurationDetails.parse(map['DeploymentConfiguration']) unless map['DeploymentConfiguration'].nil?)
        data.deployment_controller = (Parsers::AwsEcsServiceDeploymentControllerDetails.parse(map['DeploymentController']) unless map['DeploymentController'].nil?)
        data.desired_count = map['DesiredCount']
        data.enable_ecs_managed_tags = map['EnableEcsManagedTags']
        data.enable_execute_command = map['EnableExecuteCommand']
        data.health_check_grace_period_seconds = map['HealthCheckGracePeriodSeconds']
        data.launch_type = map['LaunchType']
        data.load_balancers = (Parsers::AwsEcsServiceLoadBalancersList.parse(map['LoadBalancers']) unless map['LoadBalancers'].nil?)
        data.name = map['Name']
        data.network_configuration = (Parsers::AwsEcsServiceNetworkConfigurationDetails.parse(map['NetworkConfiguration']) unless map['NetworkConfiguration'].nil?)
        data.placement_constraints = (Parsers::AwsEcsServicePlacementConstraintsList.parse(map['PlacementConstraints']) unless map['PlacementConstraints'].nil?)
        data.placement_strategies = (Parsers::AwsEcsServicePlacementStrategiesList.parse(map['PlacementStrategies']) unless map['PlacementStrategies'].nil?)
        data.platform_version = map['PlatformVersion']
        data.propagate_tags = map['PropagateTags']
        data.role = map['Role']
        data.scheduling_strategy = map['SchedulingStrategy']
        data.service_arn = map['ServiceArn']
        data.service_name = map['ServiceName']
        data.service_registries = (Parsers::AwsEcsServiceServiceRegistriesList.parse(map['ServiceRegistries']) unless map['ServiceRegistries'].nil?)
        data.task_definition = map['TaskDefinition']
        return data
      end
    end

    class AwsEcsServiceServiceRegistriesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsServiceServiceRegistriesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsServiceServiceRegistriesDetails
      def self.parse(map)
        data = Types::AwsEcsServiceServiceRegistriesDetails.new
        data.container_name = map['ContainerName']
        data.container_port = map['ContainerPort']
        data.port = map['Port']
        data.registry_arn = map['RegistryArn']
        return data
      end
    end

    class AwsEcsServicePlacementStrategiesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsServicePlacementStrategiesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsServicePlacementStrategiesDetails
      def self.parse(map)
        data = Types::AwsEcsServicePlacementStrategiesDetails.new
        data.field = map['Field']
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsServicePlacementConstraintsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsServicePlacementConstraintsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsServicePlacementConstraintsDetails
      def self.parse(map)
        data = Types::AwsEcsServicePlacementConstraintsDetails.new
        data.expression = map['Expression']
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsServiceNetworkConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsServiceNetworkConfigurationDetails.new
        data.aws_vpc_configuration = (Parsers::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.parse(map['AwsVpcConfiguration']) unless map['AwsVpcConfiguration'].nil?)
        return data
      end
    end

    class AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.new
        data.assign_public_ip = map['AssignPublicIp']
        data.security_groups = (Parsers::NonEmptyStringList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.subnets = (Parsers::NonEmptyStringList.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class AwsEcsServiceLoadBalancersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsServiceLoadBalancersDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsServiceLoadBalancersDetails
      def self.parse(map)
        data = Types::AwsEcsServiceLoadBalancersDetails.new
        data.container_name = map['ContainerName']
        data.container_port = map['ContainerPort']
        data.load_balancer_name = map['LoadBalancerName']
        data.target_group_arn = map['TargetGroupArn']
        return data
      end
    end

    class AwsEcsServiceDeploymentControllerDetails
      def self.parse(map)
        data = Types::AwsEcsServiceDeploymentControllerDetails.new
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsServiceDeploymentConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsServiceDeploymentConfigurationDetails.new
        data.deployment_circuit_breaker = (Parsers::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.parse(map['DeploymentCircuitBreaker']) unless map['DeploymentCircuitBreaker'].nil?)
        data.maximum_percent = map['MaximumPercent']
        data.minimum_healthy_percent = map['MinimumHealthyPercent']
        return data
      end
    end

    class AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
      def self.parse(map)
        data = Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.new
        data.enable = map['Enable']
        data.rollback = map['Rollback']
        return data
      end
    end

    class AwsEcsServiceCapacityProviderStrategyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsServiceCapacityProviderStrategyDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsServiceCapacityProviderStrategyDetails
      def self.parse(map)
        data = Types::AwsEcsServiceCapacityProviderStrategyDetails.new
        data.base = map['Base']
        data.capacity_provider = map['CapacityProvider']
        data.weight = map['Weight']
        return data
      end
    end

    class AwsRdsEventSubscriptionDetails
      def self.parse(map)
        data = Types::AwsRdsEventSubscriptionDetails.new
        data.cust_subscription_id = map['CustSubscriptionId']
        data.customer_aws_id = map['CustomerAwsId']
        data.enabled = map['Enabled']
        data.event_categories_list = (Parsers::NonEmptyStringList.parse(map['EventCategoriesList']) unless map['EventCategoriesList'].nil?)
        data.event_subscription_arn = map['EventSubscriptionArn']
        data.sns_topic_arn = map['SnsTopicArn']
        data.source_ids_list = (Parsers::NonEmptyStringList.parse(map['SourceIdsList']) unless map['SourceIdsList'].nil?)
        data.source_type = map['SourceType']
        data.status = map['Status']
        data.subscription_creation_time = map['SubscriptionCreationTime']
        return data
      end
    end

    class ContainerDetails
      def self.parse(map)
        data = Types::ContainerDetails.new
        data.name = map['Name']
        data.image_id = map['ImageId']
        data.image_name = map['ImageName']
        data.launched_at = map['LaunchedAt']
        return data
      end
    end

    class AwsEcsTaskDefinitionDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionDetails.new
        data.container_definitions = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsList.parse(map['ContainerDefinitions']) unless map['ContainerDefinitions'].nil?)
        data.cpu = map['Cpu']
        data.execution_role_arn = map['ExecutionRoleArn']
        data.family = map['Family']
        data.inference_accelerators = (Parsers::AwsEcsTaskDefinitionInferenceAcceleratorsList.parse(map['InferenceAccelerators']) unless map['InferenceAccelerators'].nil?)
        data.ipc_mode = map['IpcMode']
        data.memory = map['Memory']
        data.network_mode = map['NetworkMode']
        data.pid_mode = map['PidMode']
        data.placement_constraints = (Parsers::AwsEcsTaskDefinitionPlacementConstraintsList.parse(map['PlacementConstraints']) unless map['PlacementConstraints'].nil?)
        data.proxy_configuration = (Parsers::AwsEcsTaskDefinitionProxyConfigurationDetails.parse(map['ProxyConfiguration']) unless map['ProxyConfiguration'].nil?)
        data.requires_compatibilities = (Parsers::NonEmptyStringList.parse(map['RequiresCompatibilities']) unless map['RequiresCompatibilities'].nil?)
        data.task_role_arn = map['TaskRoleArn']
        data.volumes = (Parsers::AwsEcsTaskDefinitionVolumesList.parse(map['Volumes']) unless map['Volumes'].nil?)
        return data
      end
    end

    class AwsEcsTaskDefinitionVolumesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionVolumesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionVolumesDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionVolumesDetails.new
        data.docker_volume_configuration = (Parsers::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.parse(map['DockerVolumeConfiguration']) unless map['DockerVolumeConfiguration'].nil?)
        data.efs_volume_configuration = (Parsers::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.parse(map['EfsVolumeConfiguration']) unless map['EfsVolumeConfiguration'].nil?)
        data.host = (Parsers::AwsEcsTaskDefinitionVolumesHostDetails.parse(map['Host']) unless map['Host'].nil?)
        data.name = map['Name']
        return data
      end
    end

    class AwsEcsTaskDefinitionVolumesHostDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionVolumesHostDetails.new
        data.source_path = map['SourcePath']
        return data
      end
    end

    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.new
        data.authorization_config = (Parsers::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.parse(map['AuthorizationConfig']) unless map['AuthorizationConfig'].nil?)
        data.filesystem_id = map['FilesystemId']
        data.root_directory = map['RootDirectory']
        data.transit_encryption = map['TransitEncryption']
        data.transit_encryption_port = map['TransitEncryptionPort']
        return data
      end
    end

    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.new
        data.access_point_id = map['AccessPointId']
        data.iam = map['Iam']
        return data
      end
    end

    class AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.new
        data.autoprovision = map['Autoprovision']
        data.driver = map['Driver']
        data.driver_opts = (Parsers::FieldMap.parse(map['DriverOpts']) unless map['DriverOpts'].nil?)
        data.labels = (Parsers::FieldMap.parse(map['Labels']) unless map['Labels'].nil?)
        data.scope = map['Scope']
        return data
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionProxyConfigurationDetails.new
        data.container_name = map['ContainerName']
        data.proxy_configuration_properties = (Parsers::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.parse(map['ProxyConfigurationProperties']) unless map['ProxyConfigurationProperties'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AwsEcsTaskDefinitionPlacementConstraintsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionPlacementConstraintsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionPlacementConstraintsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionPlacementConstraintsDetails.new
        data.expression = map['Expression']
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsTaskDefinitionInferenceAcceleratorsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionInferenceAcceleratorsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.new
        data.device_name = map['DeviceName']
        data.device_type = map['DeviceType']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsDetails.new
        data.command = (Parsers::NonEmptyStringList.parse(map['Command']) unless map['Command'].nil?)
        data.cpu = map['Cpu']
        data.depends_on = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.parse(map['DependsOn']) unless map['DependsOn'].nil?)
        data.disable_networking = map['DisableNetworking']
        data.dns_search_domains = (Parsers::NonEmptyStringList.parse(map['DnsSearchDomains']) unless map['DnsSearchDomains'].nil?)
        data.dns_servers = (Parsers::NonEmptyStringList.parse(map['DnsServers']) unless map['DnsServers'].nil?)
        data.docker_labels = (Parsers::FieldMap.parse(map['DockerLabels']) unless map['DockerLabels'].nil?)
        data.docker_security_options = (Parsers::NonEmptyStringList.parse(map['DockerSecurityOptions']) unless map['DockerSecurityOptions'].nil?)
        data.entry_point = (Parsers::NonEmptyStringList.parse(map['EntryPoint']) unless map['EntryPoint'].nil?)
        data.environment = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.parse(map['Environment']) unless map['Environment'].nil?)
        data.environment_files = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.parse(map['EnvironmentFiles']) unless map['EnvironmentFiles'].nil?)
        data.essential = map['Essential']
        data.extra_hosts = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.parse(map['ExtraHosts']) unless map['ExtraHosts'].nil?)
        data.firelens_configuration = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.parse(map['FirelensConfiguration']) unless map['FirelensConfiguration'].nil?)
        data.health_check = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.parse(map['HealthCheck']) unless map['HealthCheck'].nil?)
        data.hostname = map['Hostname']
        data.image = map['Image']
        data.interactive = map['Interactive']
        data.links = (Parsers::NonEmptyStringList.parse(map['Links']) unless map['Links'].nil?)
        data.linux_parameters = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.parse(map['LinuxParameters']) unless map['LinuxParameters'].nil?)
        data.log_configuration = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.memory = map['Memory']
        data.memory_reservation = map['MemoryReservation']
        data.mount_points = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.parse(map['MountPoints']) unless map['MountPoints'].nil?)
        data.name = map['Name']
        data.port_mappings = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.parse(map['PortMappings']) unless map['PortMappings'].nil?)
        data.privileged = map['Privileged']
        data.pseudo_terminal = map['PseudoTerminal']
        data.readonly_root_filesystem = map['ReadonlyRootFilesystem']
        data.repository_credentials = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.parse(map['RepositoryCredentials']) unless map['RepositoryCredentials'].nil?)
        data.resource_requirements = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.parse(map['ResourceRequirements']) unless map['ResourceRequirements'].nil?)
        data.secrets = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsSecretsList.parse(map['Secrets']) unless map['Secrets'].nil?)
        data.start_timeout = map['StartTimeout']
        data.stop_timeout = map['StopTimeout']
        data.system_controls = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.parse(map['SystemControls']) unless map['SystemControls'].nil?)
        data.ulimits = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.parse(map['Ulimits']) unless map['Ulimits'].nil?)
        data.user = map['User']
        data.volumes_from = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.parse(map['VolumesFrom']) unless map['VolumesFrom'].nil?)
        data.working_directory = map['WorkingDirectory']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.new
        data.read_only = map['ReadOnly']
        data.source_container = map['SourceContainer']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.new
        data.hard_limit = map['HardLimit']
        data.name = map['Name']
        data.soft_limit = map['SoftLimit']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.new
        data.namespace = map['Namespace']
        data.value = map['Value']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSecretsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.new
        data.name = map['Name']
        data.value_from = map['ValueFrom']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.new
        data.credentials_parameter = map['CredentialsParameter']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.new
        data.container_port = map['ContainerPort']
        data.host_port = map['HostPort']
        data.protocol = map['Protocol']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.new
        data.container_path = map['ContainerPath']
        data.read_only = map['ReadOnly']
        data.source_volume = map['SourceVolume']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.new
        data.log_driver = map['LogDriver']
        data.options = (Parsers::FieldMap.parse(map['Options']) unless map['Options'].nil?)
        data.secret_options = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.parse(map['SecretOptions']) unless map['SecretOptions'].nil?)
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.new
        data.name = map['Name']
        data.value_from = map['ValueFrom']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.new
        data.capabilities = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.parse(map['Capabilities']) unless map['Capabilities'].nil?)
        data.devices = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.parse(map['Devices']) unless map['Devices'].nil?)
        data.init_process_enabled = map['InitProcessEnabled']
        data.max_swap = map['MaxSwap']
        data.shared_memory_size = map['SharedMemorySize']
        data.swappiness = map['Swappiness']
        data.tmpfs = (Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.parse(map['Tmpfs']) unless map['Tmpfs'].nil?)
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.new
        data.container_path = map['ContainerPath']
        data.mount_options = (Parsers::NonEmptyStringList.parse(map['MountOptions']) unless map['MountOptions'].nil?)
        data.size = map['Size']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.new
        data.container_path = map['ContainerPath']
        data.host_path = map['HostPath']
        data.permissions = (Parsers::NonEmptyStringList.parse(map['Permissions']) unless map['Permissions'].nil?)
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.new
        data.add = (Parsers::NonEmptyStringList.parse(map['Add']) unless map['Add'].nil?)
        data.drop = (Parsers::NonEmptyStringList.parse(map['Drop']) unless map['Drop'].nil?)
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.new
        data.command = (Parsers::NonEmptyStringList.parse(map['Command']) unless map['Command'].nil?)
        data.interval = map['Interval']
        data.retries = map['Retries']
        data.start_period = map['StartPeriod']
        data.timeout = map['Timeout']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.new
        data.options = (Parsers::FieldMap.parse(map['Options']) unless map['Options'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.new
        data.hostname = map['Hostname']
        data.ip_address = map['IpAddress']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
      def self.parse(map)
        data = Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.new
        data.condition = map['Condition']
        data.container_name = map['ContainerName']
        return data
      end
    end

    class AwsEcsClusterDetails
      def self.parse(map)
        data = Types::AwsEcsClusterDetails.new
        data.capacity_providers = (Parsers::NonEmptyStringList.parse(map['CapacityProviders']) unless map['CapacityProviders'].nil?)
        data.cluster_settings = (Parsers::AwsEcsClusterClusterSettingsList.parse(map['ClusterSettings']) unless map['ClusterSettings'].nil?)
        data.configuration = (Parsers::AwsEcsClusterConfigurationDetails.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.default_capacity_provider_strategy = (Parsers::AwsEcsClusterDefaultCapacityProviderStrategyList.parse(map['DefaultCapacityProviderStrategy']) unless map['DefaultCapacityProviderStrategy'].nil?)
        return data
      end
    end

    class AwsEcsClusterDefaultCapacityProviderStrategyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsClusterDefaultCapacityProviderStrategyDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsClusterDefaultCapacityProviderStrategyDetails
      def self.parse(map)
        data = Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails.new
        data.base = map['Base']
        data.capacity_provider = map['CapacityProvider']
        data.weight = map['Weight']
        return data
      end
    end

    class AwsEcsClusterConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsClusterConfigurationDetails.new
        data.execute_command_configuration = (Parsers::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.parse(map['ExecuteCommandConfiguration']) unless map['ExecuteCommandConfiguration'].nil?)
        return data
      end
    end

    class AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.new
        data.kms_key_id = map['KmsKeyId']
        data.log_configuration = (Parsers::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.logging = map['Logging']
        return data
      end
    end

    class AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
      def self.parse(map)
        data = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.new
        data.cloud_watch_encryption_enabled = map['CloudWatchEncryptionEnabled']
        data.cloud_watch_log_group_name = map['CloudWatchLogGroupName']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_encryption_enabled = map['S3EncryptionEnabled']
        data.s3_key_prefix = map['S3KeyPrefix']
        return data
      end
    end

    class AwsEcsClusterClusterSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEcsClusterClusterSettingsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEcsClusterClusterSettingsDetails
      def self.parse(map)
        data = Types::AwsEcsClusterClusterSettingsDetails.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AwsRdsDbClusterDetails
      def self.parse(map)
        data = Types::AwsRdsDbClusterDetails.new
        data.allocated_storage = map['AllocatedStorage']
        data.availability_zones = (Parsers::StringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.backup_retention_period = map['BackupRetentionPeriod']
        data.database_name = map['DatabaseName']
        data.status = map['Status']
        data.endpoint = map['Endpoint']
        data.reader_endpoint = map['ReaderEndpoint']
        data.custom_endpoints = (Parsers::StringList.parse(map['CustomEndpoints']) unless map['CustomEndpoints'].nil?)
        data.multi_az = map['MultiAz']
        data.engine = map['Engine']
        data.engine_version = map['EngineVersion']
        data.port = map['Port']
        data.master_username = map['MasterUsername']
        data.preferred_backup_window = map['PreferredBackupWindow']
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.read_replica_identifiers = (Parsers::StringList.parse(map['ReadReplicaIdentifiers']) unless map['ReadReplicaIdentifiers'].nil?)
        data.vpc_security_groups = (Parsers::AwsRdsDbInstanceVpcSecurityGroups.parse(map['VpcSecurityGroups']) unless map['VpcSecurityGroups'].nil?)
        data.hosted_zone_id = map['HostedZoneId']
        data.storage_encrypted = map['StorageEncrypted']
        data.kms_key_id = map['KmsKeyId']
        data.db_cluster_resource_id = map['DbClusterResourceId']
        data.associated_roles = (Parsers::AwsRdsDbClusterAssociatedRoles.parse(map['AssociatedRoles']) unless map['AssociatedRoles'].nil?)
        data.cluster_create_time = map['ClusterCreateTime']
        data.enabled_cloud_watch_logs_exports = (Parsers::StringList.parse(map['EnabledCloudWatchLogsExports']) unless map['EnabledCloudWatchLogsExports'].nil?)
        data.engine_mode = map['EngineMode']
        data.deletion_protection = map['DeletionProtection']
        data.http_endpoint_enabled = map['HttpEndpointEnabled']
        data.activity_stream_status = map['ActivityStreamStatus']
        data.copy_tags_to_snapshot = map['CopyTagsToSnapshot']
        data.cross_account_clone = map['CrossAccountClone']
        data.domain_memberships = (Parsers::AwsRdsDbDomainMemberships.parse(map['DomainMemberships']) unless map['DomainMemberships'].nil?)
        data.db_cluster_parameter_group = map['DbClusterParameterGroup']
        data.db_subnet_group = map['DbSubnetGroup']
        data.db_cluster_option_group_memberships = (Parsers::AwsRdsDbClusterOptionGroupMemberships.parse(map['DbClusterOptionGroupMemberships']) unless map['DbClusterOptionGroupMemberships'].nil?)
        data.db_cluster_identifier = map['DbClusterIdentifier']
        data.db_cluster_members = (Parsers::AwsRdsDbClusterMembers.parse(map['DbClusterMembers']) unless map['DbClusterMembers'].nil?)
        data.iam_database_authentication_enabled = map['IamDatabaseAuthenticationEnabled']
        return data
      end
    end

    class AwsRdsDbClusterMembers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbClusterMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbClusterMember
      def self.parse(map)
        data = Types::AwsRdsDbClusterMember.new
        data.is_cluster_writer = map['IsClusterWriter']
        data.promotion_tier = map['PromotionTier']
        data.db_instance_identifier = map['DbInstanceIdentifier']
        data.db_cluster_parameter_group_status = map['DbClusterParameterGroupStatus']
        return data
      end
    end

    class AwsRdsDbClusterOptionGroupMemberships
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbClusterOptionGroupMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbClusterOptionGroupMembership
      def self.parse(map)
        data = Types::AwsRdsDbClusterOptionGroupMembership.new
        data.db_cluster_option_group_name = map['DbClusterOptionGroupName']
        data.status = map['Status']
        return data
      end
    end

    class AwsRdsDbDomainMemberships
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbDomainMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbDomainMembership
      def self.parse(map)
        data = Types::AwsRdsDbDomainMembership.new
        data.domain = map['Domain']
        data.status = map['Status']
        data.fqdn = map['Fqdn']
        data.iam_role_name = map['IamRoleName']
        return data
      end
    end

    class AwsRdsDbClusterAssociatedRoles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbClusterAssociatedRole.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbClusterAssociatedRole
      def self.parse(map)
        data = Types::AwsRdsDbClusterAssociatedRole.new
        data.role_arn = map['RoleArn']
        data.status = map['Status']
        return data
      end
    end

    class AwsRdsDbInstanceVpcSecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbInstanceVpcSecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbInstanceVpcSecurityGroup
      def self.parse(map)
        data = Types::AwsRdsDbInstanceVpcSecurityGroup.new
        data.vpc_security_group_id = map['VpcSecurityGroupId']
        data.status = map['Status']
        return data
      end
    end

    class AwsRdsDbClusterSnapshotDetails
      def self.parse(map)
        data = Types::AwsRdsDbClusterSnapshotDetails.new
        data.availability_zones = (Parsers::StringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.snapshot_create_time = map['SnapshotCreateTime']
        data.engine = map['Engine']
        data.allocated_storage = map['AllocatedStorage']
        data.status = map['Status']
        data.port = map['Port']
        data.vpc_id = map['VpcId']
        data.cluster_create_time = map['ClusterCreateTime']
        data.master_username = map['MasterUsername']
        data.engine_version = map['EngineVersion']
        data.license_model = map['LicenseModel']
        data.snapshot_type = map['SnapshotType']
        data.percent_progress = map['PercentProgress']
        data.storage_encrypted = map['StorageEncrypted']
        data.kms_key_id = map['KmsKeyId']
        data.db_cluster_identifier = map['DbClusterIdentifier']
        data.db_cluster_snapshot_identifier = map['DbClusterSnapshotIdentifier']
        data.iam_database_authentication_enabled = map['IamDatabaseAuthenticationEnabled']
        return data
      end
    end

    class AwsRdsDbSnapshotDetails
      def self.parse(map)
        data = Types::AwsRdsDbSnapshotDetails.new
        data.db_snapshot_identifier = map['DbSnapshotIdentifier']
        data.db_instance_identifier = map['DbInstanceIdentifier']
        data.snapshot_create_time = map['SnapshotCreateTime']
        data.engine = map['Engine']
        data.allocated_storage = map['AllocatedStorage']
        data.status = map['Status']
        data.port = map['Port']
        data.availability_zone = map['AvailabilityZone']
        data.vpc_id = map['VpcId']
        data.instance_create_time = map['InstanceCreateTime']
        data.master_username = map['MasterUsername']
        data.engine_version = map['EngineVersion']
        data.license_model = map['LicenseModel']
        data.snapshot_type = map['SnapshotType']
        data.iops = map['Iops']
        data.option_group_name = map['OptionGroupName']
        data.percent_progress = map['PercentProgress']
        data.source_region = map['SourceRegion']
        data.source_db_snapshot_identifier = map['SourceDbSnapshotIdentifier']
        data.storage_type = map['StorageType']
        data.tde_credential_arn = map['TdeCredentialArn']
        data.encrypted = map['Encrypted']
        data.kms_key_id = map['KmsKeyId']
        data.timezone = map['Timezone']
        data.iam_database_authentication_enabled = map['IamDatabaseAuthenticationEnabled']
        data.processor_features = (Parsers::AwsRdsDbProcessorFeatures.parse(map['ProcessorFeatures']) unless map['ProcessorFeatures'].nil?)
        data.dbi_resource_id = map['DbiResourceId']
        return data
      end
    end

    class AwsRdsDbProcessorFeatures
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbProcessorFeature.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbProcessorFeature
      def self.parse(map)
        data = Types::AwsRdsDbProcessorFeature.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AwsWafWebAclDetails
      def self.parse(map)
        data = Types::AwsWafWebAclDetails.new
        data.name = map['Name']
        data.default_action = map['DefaultAction']
        data.rules = (Parsers::AwsWafWebAclRuleList.parse(map['Rules']) unless map['Rules'].nil?)
        data.web_acl_id = map['WebAclId']
        return data
      end
    end

    class AwsWafWebAclRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsWafWebAclRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsWafWebAclRule
      def self.parse(map)
        data = Types::AwsWafWebAclRule.new
        data.action = (Parsers::WafAction.parse(map['Action']) unless map['Action'].nil?)
        data.excluded_rules = (Parsers::WafExcludedRuleList.parse(map['ExcludedRules']) unless map['ExcludedRules'].nil?)
        data.override_action = (Parsers::WafOverrideAction.parse(map['OverrideAction']) unless map['OverrideAction'].nil?)
        data.priority = map['Priority']
        data.rule_id = map['RuleId']
        data.type = map['Type']
        return data
      end
    end

    class WafOverrideAction
      def self.parse(map)
        data = Types::WafOverrideAction.new
        data.type = map['Type']
        return data
      end
    end

    class WafExcludedRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WafExcludedRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class WafExcludedRule
      def self.parse(map)
        data = Types::WafExcludedRule.new
        data.rule_id = map['RuleId']
        return data
      end
    end

    class WafAction
      def self.parse(map)
        data = Types::WafAction.new
        data.type = map['Type']
        return data
      end
    end

    class AwsSqsQueueDetails
      def self.parse(map)
        data = Types::AwsSqsQueueDetails.new
        data.kms_data_key_reuse_period_seconds = map['KmsDataKeyReusePeriodSeconds']
        data.kms_master_key_id = map['KmsMasterKeyId']
        data.queue_name = map['QueueName']
        data.dead_letter_target_arn = map['DeadLetterTargetArn']
        return data
      end
    end

    class AwsSnsTopicDetails
      def self.parse(map)
        data = Types::AwsSnsTopicDetails.new
        data.kms_master_key_id = map['KmsMasterKeyId']
        data.subscription = (Parsers::AwsSnsTopicSubscriptionList.parse(map['Subscription']) unless map['Subscription'].nil?)
        data.topic_name = map['TopicName']
        data.owner = map['Owner']
        return data
      end
    end

    class AwsSnsTopicSubscriptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsSnsTopicSubscription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsSnsTopicSubscription
      def self.parse(map)
        data = Types::AwsSnsTopicSubscription.new
        data.endpoint = map['Endpoint']
        data.protocol = map['Protocol']
        return data
      end
    end

    class AwsRdsDbInstanceDetails
      def self.parse(map)
        data = Types::AwsRdsDbInstanceDetails.new
        data.associated_roles = (Parsers::AwsRdsDbInstanceAssociatedRoles.parse(map['AssociatedRoles']) unless map['AssociatedRoles'].nil?)
        data.ca_certificate_identifier = map['CACertificateIdentifier']
        data.db_cluster_identifier = map['DBClusterIdentifier']
        data.db_instance_identifier = map['DBInstanceIdentifier']
        data.db_instance_class = map['DBInstanceClass']
        data.db_instance_port = map['DbInstancePort']
        data.dbi_resource_id = map['DbiResourceId']
        data.db_name = map['DBName']
        data.deletion_protection = map['DeletionProtection']
        data.endpoint = (Parsers::AwsRdsDbInstanceEndpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data.engine = map['Engine']
        data.engine_version = map['EngineVersion']
        data.iam_database_authentication_enabled = map['IAMDatabaseAuthenticationEnabled']
        data.instance_create_time = map['InstanceCreateTime']
        data.kms_key_id = map['KmsKeyId']
        data.publicly_accessible = map['PubliclyAccessible']
        data.storage_encrypted = map['StorageEncrypted']
        data.tde_credential_arn = map['TdeCredentialArn']
        data.vpc_security_groups = (Parsers::AwsRdsDbInstanceVpcSecurityGroups.parse(map['VpcSecurityGroups']) unless map['VpcSecurityGroups'].nil?)
        data.multi_az = map['MultiAz']
        data.enhanced_monitoring_resource_arn = map['EnhancedMonitoringResourceArn']
        data.db_instance_status = map['DbInstanceStatus']
        data.master_username = map['MasterUsername']
        data.allocated_storage = map['AllocatedStorage']
        data.preferred_backup_window = map['PreferredBackupWindow']
        data.backup_retention_period = map['BackupRetentionPeriod']
        data.db_security_groups = (Parsers::StringList.parse(map['DbSecurityGroups']) unless map['DbSecurityGroups'].nil?)
        data.db_parameter_groups = (Parsers::AwsRdsDbParameterGroups.parse(map['DbParameterGroups']) unless map['DbParameterGroups'].nil?)
        data.availability_zone = map['AvailabilityZone']
        data.db_subnet_group = (Parsers::AwsRdsDbSubnetGroup.parse(map['DbSubnetGroup']) unless map['DbSubnetGroup'].nil?)
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.pending_modified_values = (Parsers::AwsRdsDbPendingModifiedValues.parse(map['PendingModifiedValues']) unless map['PendingModifiedValues'].nil?)
        data.latest_restorable_time = map['LatestRestorableTime']
        data.auto_minor_version_upgrade = map['AutoMinorVersionUpgrade']
        data.read_replica_source_db_instance_identifier = map['ReadReplicaSourceDBInstanceIdentifier']
        data.read_replica_db_instance_identifiers = (Parsers::StringList.parse(map['ReadReplicaDBInstanceIdentifiers']) unless map['ReadReplicaDBInstanceIdentifiers'].nil?)
        data.read_replica_db_cluster_identifiers = (Parsers::StringList.parse(map['ReadReplicaDBClusterIdentifiers']) unless map['ReadReplicaDBClusterIdentifiers'].nil?)
        data.license_model = map['LicenseModel']
        data.iops = map['Iops']
        data.option_group_memberships = (Parsers::AwsRdsDbOptionGroupMemberships.parse(map['OptionGroupMemberships']) unless map['OptionGroupMemberships'].nil?)
        data.character_set_name = map['CharacterSetName']
        data.secondary_availability_zone = map['SecondaryAvailabilityZone']
        data.status_infos = (Parsers::AwsRdsDbStatusInfos.parse(map['StatusInfos']) unless map['StatusInfos'].nil?)
        data.storage_type = map['StorageType']
        data.domain_memberships = (Parsers::AwsRdsDbDomainMemberships.parse(map['DomainMemberships']) unless map['DomainMemberships'].nil?)
        data.copy_tags_to_snapshot = map['CopyTagsToSnapshot']
        data.monitoring_interval = map['MonitoringInterval']
        data.monitoring_role_arn = map['MonitoringRoleArn']
        data.promotion_tier = map['PromotionTier']
        data.timezone = map['Timezone']
        data.performance_insights_enabled = map['PerformanceInsightsEnabled']
        data.performance_insights_kms_key_id = map['PerformanceInsightsKmsKeyId']
        data.performance_insights_retention_period = map['PerformanceInsightsRetentionPeriod']
        data.enabled_cloud_watch_logs_exports = (Parsers::StringList.parse(map['EnabledCloudWatchLogsExports']) unless map['EnabledCloudWatchLogsExports'].nil?)
        data.processor_features = (Parsers::AwsRdsDbProcessorFeatures.parse(map['ProcessorFeatures']) unless map['ProcessorFeatures'].nil?)
        data.listener_endpoint = (Parsers::AwsRdsDbInstanceEndpoint.parse(map['ListenerEndpoint']) unless map['ListenerEndpoint'].nil?)
        data.max_allocated_storage = map['MaxAllocatedStorage']
        return data
      end
    end

    class AwsRdsDbInstanceEndpoint
      def self.parse(map)
        data = Types::AwsRdsDbInstanceEndpoint.new
        data.address = map['Address']
        data.port = map['Port']
        data.hosted_zone_id = map['HostedZoneId']
        return data
      end
    end

    class AwsRdsDbStatusInfos
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbStatusInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbStatusInfo
      def self.parse(map)
        data = Types::AwsRdsDbStatusInfo.new
        data.status_type = map['StatusType']
        data.normal = map['Normal']
        data.status = map['Status']
        data.message = map['Message']
        return data
      end
    end

    class AwsRdsDbOptionGroupMemberships
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbOptionGroupMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbOptionGroupMembership
      def self.parse(map)
        data = Types::AwsRdsDbOptionGroupMembership.new
        data.option_group_name = map['OptionGroupName']
        data.status = map['Status']
        return data
      end
    end

    class AwsRdsDbPendingModifiedValues
      def self.parse(map)
        data = Types::AwsRdsDbPendingModifiedValues.new
        data.db_instance_class = map['DbInstanceClass']
        data.allocated_storage = map['AllocatedStorage']
        data.master_user_password = map['MasterUserPassword']
        data.port = map['Port']
        data.backup_retention_period = map['BackupRetentionPeriod']
        data.multi_az = map['MultiAZ']
        data.engine_version = map['EngineVersion']
        data.license_model = map['LicenseModel']
        data.iops = map['Iops']
        data.db_instance_identifier = map['DbInstanceIdentifier']
        data.storage_type = map['StorageType']
        data.ca_certificate_identifier = map['CaCertificateIdentifier']
        data.db_subnet_group_name = map['DbSubnetGroupName']
        data.pending_cloud_watch_logs_exports = (Parsers::AwsRdsPendingCloudWatchLogsExports.parse(map['PendingCloudWatchLogsExports']) unless map['PendingCloudWatchLogsExports'].nil?)
        data.processor_features = (Parsers::AwsRdsDbProcessorFeatures.parse(map['ProcessorFeatures']) unless map['ProcessorFeatures'].nil?)
        return data
      end
    end

    class AwsRdsPendingCloudWatchLogsExports
      def self.parse(map)
        data = Types::AwsRdsPendingCloudWatchLogsExports.new
        data.log_types_to_enable = (Parsers::StringList.parse(map['LogTypesToEnable']) unless map['LogTypesToEnable'].nil?)
        data.log_types_to_disable = (Parsers::StringList.parse(map['LogTypesToDisable']) unless map['LogTypesToDisable'].nil?)
        return data
      end
    end

    class AwsRdsDbSubnetGroup
      def self.parse(map)
        data = Types::AwsRdsDbSubnetGroup.new
        data.db_subnet_group_name = map['DbSubnetGroupName']
        data.db_subnet_group_description = map['DbSubnetGroupDescription']
        data.vpc_id = map['VpcId']
        data.subnet_group_status = map['SubnetGroupStatus']
        data.subnets = (Parsers::AwsRdsDbSubnetGroupSubnets.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.db_subnet_group_arn = map['DbSubnetGroupArn']
        return data
      end
    end

    class AwsRdsDbSubnetGroupSubnets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbSubnetGroupSubnet.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbSubnetGroupSubnet
      def self.parse(map)
        data = Types::AwsRdsDbSubnetGroupSubnet.new
        data.subnet_identifier = map['SubnetIdentifier']
        data.subnet_availability_zone = (Parsers::AwsRdsDbSubnetGroupSubnetAvailabilityZone.parse(map['SubnetAvailabilityZone']) unless map['SubnetAvailabilityZone'].nil?)
        data.subnet_status = map['SubnetStatus']
        return data
      end
    end

    class AwsRdsDbSubnetGroupSubnetAvailabilityZone
      def self.parse(map)
        data = Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone.new
        data.name = map['Name']
        return data
      end
    end

    class AwsRdsDbParameterGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbParameterGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbParameterGroup
      def self.parse(map)
        data = Types::AwsRdsDbParameterGroup.new
        data.db_parameter_group_name = map['DbParameterGroupName']
        data.parameter_apply_status = map['ParameterApplyStatus']
        return data
      end
    end

    class AwsRdsDbInstanceAssociatedRoles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRdsDbInstanceAssociatedRole.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRdsDbInstanceAssociatedRole
      def self.parse(map)
        data = Types::AwsRdsDbInstanceAssociatedRole.new
        data.role_arn = map['RoleArn']
        data.feature_name = map['FeatureName']
        data.status = map['Status']
        return data
      end
    end

    class AwsLambdaLayerVersionDetails
      def self.parse(map)
        data = Types::AwsLambdaLayerVersionDetails.new
        data.version = map['Version']
        data.compatible_runtimes = (Parsers::NonEmptyStringList.parse(map['CompatibleRuntimes']) unless map['CompatibleRuntimes'].nil?)
        data.created_date = map['CreatedDate']
        return data
      end
    end

    class AwsLambdaFunctionDetails
      def self.parse(map)
        data = Types::AwsLambdaFunctionDetails.new
        data.code = (Parsers::AwsLambdaFunctionCode.parse(map['Code']) unless map['Code'].nil?)
        data.code_sha256 = map['CodeSha256']
        data.dead_letter_config = (Parsers::AwsLambdaFunctionDeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::AwsLambdaFunctionEnvironment.parse(map['Environment']) unless map['Environment'].nil?)
        data.function_name = map['FunctionName']
        data.handler = map['Handler']
        data.kms_key_arn = map['KmsKeyArn']
        data.last_modified = map['LastModified']
        data.layers = (Parsers::AwsLambdaFunctionLayerList.parse(map['Layers']) unless map['Layers'].nil?)
        data.master_arn = map['MasterArn']
        data.memory_size = map['MemorySize']
        data.revision_id = map['RevisionId']
        data.role = map['Role']
        data.runtime = map['Runtime']
        data.timeout = map['Timeout']
        data.tracing_config = (Parsers::AwsLambdaFunctionTracingConfig.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.vpc_config = (Parsers::AwsLambdaFunctionVpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.version = map['Version']
        return data
      end
    end

    class AwsLambdaFunctionVpcConfig
      def self.parse(map)
        data = Types::AwsLambdaFunctionVpcConfig.new
        data.security_group_ids = (Parsers::NonEmptyStringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_ids = (Parsers::NonEmptyStringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class AwsLambdaFunctionTracingConfig
      def self.parse(map)
        data = Types::AwsLambdaFunctionTracingConfig.new
        data.mode = map['Mode']
        return data
      end
    end

    class AwsLambdaFunctionLayerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsLambdaFunctionLayer.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsLambdaFunctionLayer
      def self.parse(map)
        data = Types::AwsLambdaFunctionLayer.new
        data.arn = map['Arn']
        data.code_size = map['CodeSize']
        return data
      end
    end

    class AwsLambdaFunctionEnvironment
      def self.parse(map)
        data = Types::AwsLambdaFunctionEnvironment.new
        data.variables = (Parsers::FieldMap.parse(map['Variables']) unless map['Variables'].nil?)
        data.error = (Parsers::AwsLambdaFunctionEnvironmentError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class AwsLambdaFunctionEnvironmentError
      def self.parse(map)
        data = Types::AwsLambdaFunctionEnvironmentError.new
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    class AwsLambdaFunctionDeadLetterConfig
      def self.parse(map)
        data = Types::AwsLambdaFunctionDeadLetterConfig.new
        data.target_arn = map['TargetArn']
        return data
      end
    end

    class AwsLambdaFunctionCode
      def self.parse(map)
        data = Types::AwsLambdaFunctionCode.new
        data.s3_bucket = map['S3Bucket']
        data.s3_key = map['S3Key']
        data.s3_object_version = map['S3ObjectVersion']
        data.zip_file = map['ZipFile']
        return data
      end
    end

    class AwsKmsKeyDetails
      def self.parse(map)
        data = Types::AwsKmsKeyDetails.new
        data.aws_account_id = map['AWSAccountId']
        data.creation_date = Hearth::NumberHelper.deserialize(map['CreationDate'])
        data.key_id = map['KeyId']
        data.key_manager = map['KeyManager']
        data.key_state = map['KeyState']
        data.origin = map['Origin']
        data.description = map['Description']
        data.key_rotation_status = map['KeyRotationStatus']
        return data
      end
    end

    class AwsIamRoleDetails
      def self.parse(map)
        data = Types::AwsIamRoleDetails.new
        data.assume_role_policy_document = map['AssumeRolePolicyDocument']
        data.attached_managed_policies = (Parsers::AwsIamAttachedManagedPolicyList.parse(map['AttachedManagedPolicies']) unless map['AttachedManagedPolicies'].nil?)
        data.create_date = map['CreateDate']
        data.instance_profile_list = (Parsers::AwsIamInstanceProfileList.parse(map['InstanceProfileList']) unless map['InstanceProfileList'].nil?)
        data.permissions_boundary = (Parsers::AwsIamPermissionsBoundary.parse(map['PermissionsBoundary']) unless map['PermissionsBoundary'].nil?)
        data.role_id = map['RoleId']
        data.role_name = map['RoleName']
        data.role_policy_list = (Parsers::AwsIamRolePolicyList.parse(map['RolePolicyList']) unless map['RolePolicyList'].nil?)
        data.max_session_duration = map['MaxSessionDuration']
        data.path = map['Path']
        return data
      end
    end

    class AwsIamRolePolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamRolePolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamRolePolicy
      def self.parse(map)
        data = Types::AwsIamRolePolicy.new
        data.policy_name = map['PolicyName']
        return data
      end
    end

    class AwsIamPermissionsBoundary
      def self.parse(map)
        data = Types::AwsIamPermissionsBoundary.new
        data.permissions_boundary_arn = map['PermissionsBoundaryArn']
        data.permissions_boundary_type = map['PermissionsBoundaryType']
        return data
      end
    end

    class AwsIamInstanceProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamInstanceProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamInstanceProfile
      def self.parse(map)
        data = Types::AwsIamInstanceProfile.new
        data.arn = map['Arn']
        data.create_date = map['CreateDate']
        data.instance_profile_id = map['InstanceProfileId']
        data.instance_profile_name = map['InstanceProfileName']
        data.path = map['Path']
        data.roles = (Parsers::AwsIamInstanceProfileRoles.parse(map['Roles']) unless map['Roles'].nil?)
        return data
      end
    end

    class AwsIamInstanceProfileRoles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamInstanceProfileRole.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamInstanceProfileRole
      def self.parse(map)
        data = Types::AwsIamInstanceProfileRole.new
        data.arn = map['Arn']
        data.assume_role_policy_document = map['AssumeRolePolicyDocument']
        data.create_date = map['CreateDate']
        data.path = map['Path']
        data.role_id = map['RoleId']
        data.role_name = map['RoleName']
        return data
      end
    end

    class AwsIamAttachedManagedPolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamAttachedManagedPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamAttachedManagedPolicy
      def self.parse(map)
        data = Types::AwsIamAttachedManagedPolicy.new
        data.policy_name = map['PolicyName']
        data.policy_arn = map['PolicyArn']
        return data
      end
    end

    class AwsIamGroupDetails
      def self.parse(map)
        data = Types::AwsIamGroupDetails.new
        data.attached_managed_policies = (Parsers::AwsIamAttachedManagedPolicyList.parse(map['AttachedManagedPolicies']) unless map['AttachedManagedPolicies'].nil?)
        data.create_date = map['CreateDate']
        data.group_id = map['GroupId']
        data.group_name = map['GroupName']
        data.group_policy_list = (Parsers::AwsIamGroupPolicyList.parse(map['GroupPolicyList']) unless map['GroupPolicyList'].nil?)
        data.path = map['Path']
        return data
      end
    end

    class AwsIamGroupPolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamGroupPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamGroupPolicy
      def self.parse(map)
        data = Types::AwsIamGroupPolicy.new
        data.policy_name = map['PolicyName']
        return data
      end
    end

    class AwsElbLoadBalancerDetails
      def self.parse(map)
        data = Types::AwsElbLoadBalancerDetails.new
        data.availability_zones = (Parsers::StringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.backend_server_descriptions = (Parsers::AwsElbLoadBalancerBackendServerDescriptions.parse(map['BackendServerDescriptions']) unless map['BackendServerDescriptions'].nil?)
        data.canonical_hosted_zone_name = map['CanonicalHostedZoneName']
        data.canonical_hosted_zone_name_id = map['CanonicalHostedZoneNameID']
        data.created_time = map['CreatedTime']
        data.dns_name = map['DnsName']
        data.health_check = (Parsers::AwsElbLoadBalancerHealthCheck.parse(map['HealthCheck']) unless map['HealthCheck'].nil?)
        data.instances = (Parsers::AwsElbLoadBalancerInstances.parse(map['Instances']) unless map['Instances'].nil?)
        data.listener_descriptions = (Parsers::AwsElbLoadBalancerListenerDescriptions.parse(map['ListenerDescriptions']) unless map['ListenerDescriptions'].nil?)
        data.load_balancer_attributes = (Parsers::AwsElbLoadBalancerAttributes.parse(map['LoadBalancerAttributes']) unless map['LoadBalancerAttributes'].nil?)
        data.load_balancer_name = map['LoadBalancerName']
        data.policies = (Parsers::AwsElbLoadBalancerPolicies.parse(map['Policies']) unless map['Policies'].nil?)
        data.scheme = map['Scheme']
        data.security_groups = (Parsers::StringList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.source_security_group = (Parsers::AwsElbLoadBalancerSourceSecurityGroup.parse(map['SourceSecurityGroup']) unless map['SourceSecurityGroup'].nil?)
        data.subnets = (Parsers::StringList.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class AwsElbLoadBalancerSourceSecurityGroup
      def self.parse(map)
        data = Types::AwsElbLoadBalancerSourceSecurityGroup.new
        data.group_name = map['GroupName']
        data.owner_alias = map['OwnerAlias']
        return data
      end
    end

    class AwsElbLoadBalancerPolicies
      def self.parse(map)
        data = Types::AwsElbLoadBalancerPolicies.new
        data.app_cookie_stickiness_policies = (Parsers::AwsElbAppCookieStickinessPolicies.parse(map['AppCookieStickinessPolicies']) unless map['AppCookieStickinessPolicies'].nil?)
        data.lb_cookie_stickiness_policies = (Parsers::AwsElbLbCookieStickinessPolicies.parse(map['LbCookieStickinessPolicies']) unless map['LbCookieStickinessPolicies'].nil?)
        data.other_policies = (Parsers::StringList.parse(map['OtherPolicies']) unless map['OtherPolicies'].nil?)
        return data
      end
    end

    class AwsElbLbCookieStickinessPolicies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbLbCookieStickinessPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbLbCookieStickinessPolicy
      def self.parse(map)
        data = Types::AwsElbLbCookieStickinessPolicy.new
        data.cookie_expiration_period = map['CookieExpirationPeriod']
        data.policy_name = map['PolicyName']
        return data
      end
    end

    class AwsElbAppCookieStickinessPolicies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbAppCookieStickinessPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbAppCookieStickinessPolicy
      def self.parse(map)
        data = Types::AwsElbAppCookieStickinessPolicy.new
        data.cookie_name = map['CookieName']
        data.policy_name = map['PolicyName']
        return data
      end
    end

    class AwsElbLoadBalancerAttributes
      def self.parse(map)
        data = Types::AwsElbLoadBalancerAttributes.new
        data.access_log = (Parsers::AwsElbLoadBalancerAccessLog.parse(map['AccessLog']) unless map['AccessLog'].nil?)
        data.connection_draining = (Parsers::AwsElbLoadBalancerConnectionDraining.parse(map['ConnectionDraining']) unless map['ConnectionDraining'].nil?)
        data.connection_settings = (Parsers::AwsElbLoadBalancerConnectionSettings.parse(map['ConnectionSettings']) unless map['ConnectionSettings'].nil?)
        data.cross_zone_load_balancing = (Parsers::AwsElbLoadBalancerCrossZoneLoadBalancing.parse(map['CrossZoneLoadBalancing']) unless map['CrossZoneLoadBalancing'].nil?)
        data.additional_attributes = (Parsers::AwsElbLoadBalancerAdditionalAttributeList.parse(map['AdditionalAttributes']) unless map['AdditionalAttributes'].nil?)
        return data
      end
    end

    class AwsElbLoadBalancerAdditionalAttributeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbLoadBalancerAdditionalAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbLoadBalancerAdditionalAttribute
      def self.parse(map)
        data = Types::AwsElbLoadBalancerAdditionalAttribute.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class AwsElbLoadBalancerCrossZoneLoadBalancing
      def self.parse(map)
        data = Types::AwsElbLoadBalancerCrossZoneLoadBalancing.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsElbLoadBalancerConnectionSettings
      def self.parse(map)
        data = Types::AwsElbLoadBalancerConnectionSettings.new
        data.idle_timeout = map['IdleTimeout']
        return data
      end
    end

    class AwsElbLoadBalancerConnectionDraining
      def self.parse(map)
        data = Types::AwsElbLoadBalancerConnectionDraining.new
        data.enabled = map['Enabled']
        data.timeout = map['Timeout']
        return data
      end
    end

    class AwsElbLoadBalancerAccessLog
      def self.parse(map)
        data = Types::AwsElbLoadBalancerAccessLog.new
        data.emit_interval = map['EmitInterval']
        data.enabled = map['Enabled']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_bucket_prefix = map['S3BucketPrefix']
        return data
      end
    end

    class AwsElbLoadBalancerListenerDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbLoadBalancerListenerDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbLoadBalancerListenerDescription
      def self.parse(map)
        data = Types::AwsElbLoadBalancerListenerDescription.new
        data.listener = (Parsers::AwsElbLoadBalancerListener.parse(map['Listener']) unless map['Listener'].nil?)
        data.policy_names = (Parsers::StringList.parse(map['PolicyNames']) unless map['PolicyNames'].nil?)
        return data
      end
    end

    class AwsElbLoadBalancerListener
      def self.parse(map)
        data = Types::AwsElbLoadBalancerListener.new
        data.instance_port = map['InstancePort']
        data.instance_protocol = map['InstanceProtocol']
        data.load_balancer_port = map['LoadBalancerPort']
        data.protocol = map['Protocol']
        data.ssl_certificate_id = map['SslCertificateId']
        return data
      end
    end

    class AwsElbLoadBalancerInstances
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbLoadBalancerInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbLoadBalancerInstance
      def self.parse(map)
        data = Types::AwsElbLoadBalancerInstance.new
        data.instance_id = map['InstanceId']
        return data
      end
    end

    class AwsElbLoadBalancerHealthCheck
      def self.parse(map)
        data = Types::AwsElbLoadBalancerHealthCheck.new
        data.healthy_threshold = map['HealthyThreshold']
        data.interval = map['Interval']
        data.target = map['Target']
        data.timeout = map['Timeout']
        data.unhealthy_threshold = map['UnhealthyThreshold']
        return data
      end
    end

    class AwsElbLoadBalancerBackendServerDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbLoadBalancerBackendServerDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbLoadBalancerBackendServerDescription
      def self.parse(map)
        data = Types::AwsElbLoadBalancerBackendServerDescription.new
        data.instance_port = map['InstancePort']
        data.policy_names = (Parsers::StringList.parse(map['PolicyNames']) unless map['PolicyNames'].nil?)
        return data
      end
    end

    class AwsRedshiftClusterDetails
      def self.parse(map)
        data = Types::AwsRedshiftClusterDetails.new
        data.allow_version_upgrade = map['AllowVersionUpgrade']
        data.automated_snapshot_retention_period = map['AutomatedSnapshotRetentionPeriod']
        data.availability_zone = map['AvailabilityZone']
        data.cluster_availability_status = map['ClusterAvailabilityStatus']
        data.cluster_create_time = map['ClusterCreateTime']
        data.cluster_identifier = map['ClusterIdentifier']
        data.cluster_nodes = (Parsers::AwsRedshiftClusterClusterNodes.parse(map['ClusterNodes']) unless map['ClusterNodes'].nil?)
        data.cluster_parameter_groups = (Parsers::AwsRedshiftClusterClusterParameterGroups.parse(map['ClusterParameterGroups']) unless map['ClusterParameterGroups'].nil?)
        data.cluster_public_key = map['ClusterPublicKey']
        data.cluster_revision_number = map['ClusterRevisionNumber']
        data.cluster_security_groups = (Parsers::AwsRedshiftClusterClusterSecurityGroups.parse(map['ClusterSecurityGroups']) unless map['ClusterSecurityGroups'].nil?)
        data.cluster_snapshot_copy_status = (Parsers::AwsRedshiftClusterClusterSnapshotCopyStatus.parse(map['ClusterSnapshotCopyStatus']) unless map['ClusterSnapshotCopyStatus'].nil?)
        data.cluster_status = map['ClusterStatus']
        data.cluster_subnet_group_name = map['ClusterSubnetGroupName']
        data.cluster_version = map['ClusterVersion']
        data.db_name = map['DBName']
        data.deferred_maintenance_windows = (Parsers::AwsRedshiftClusterDeferredMaintenanceWindows.parse(map['DeferredMaintenanceWindows']) unless map['DeferredMaintenanceWindows'].nil?)
        data.elastic_ip_status = (Parsers::AwsRedshiftClusterElasticIpStatus.parse(map['ElasticIpStatus']) unless map['ElasticIpStatus'].nil?)
        data.elastic_resize_number_of_node_options = map['ElasticResizeNumberOfNodeOptions']
        data.encrypted = map['Encrypted']
        data.endpoint = (Parsers::AwsRedshiftClusterEndpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data.enhanced_vpc_routing = map['EnhancedVpcRouting']
        data.expected_next_snapshot_schedule_time = map['ExpectedNextSnapshotScheduleTime']
        data.expected_next_snapshot_schedule_time_status = map['ExpectedNextSnapshotScheduleTimeStatus']
        data.hsm_status = (Parsers::AwsRedshiftClusterHsmStatus.parse(map['HsmStatus']) unless map['HsmStatus'].nil?)
        data.iam_roles = (Parsers::AwsRedshiftClusterIamRoles.parse(map['IamRoles']) unless map['IamRoles'].nil?)
        data.kms_key_id = map['KmsKeyId']
        data.maintenance_track_name = map['MaintenanceTrackName']
        data.manual_snapshot_retention_period = map['ManualSnapshotRetentionPeriod']
        data.master_username = map['MasterUsername']
        data.next_maintenance_window_start_time = map['NextMaintenanceWindowStartTime']
        data.node_type = map['NodeType']
        data.number_of_nodes = map['NumberOfNodes']
        data.pending_actions = (Parsers::StringList.parse(map['PendingActions']) unless map['PendingActions'].nil?)
        data.pending_modified_values = (Parsers::AwsRedshiftClusterPendingModifiedValues.parse(map['PendingModifiedValues']) unless map['PendingModifiedValues'].nil?)
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.publicly_accessible = map['PubliclyAccessible']
        data.resize_info = (Parsers::AwsRedshiftClusterResizeInfo.parse(map['ResizeInfo']) unless map['ResizeInfo'].nil?)
        data.restore_status = (Parsers::AwsRedshiftClusterRestoreStatus.parse(map['RestoreStatus']) unless map['RestoreStatus'].nil?)
        data.snapshot_schedule_identifier = map['SnapshotScheduleIdentifier']
        data.snapshot_schedule_state = map['SnapshotScheduleState']
        data.vpc_id = map['VpcId']
        data.vpc_security_groups = (Parsers::AwsRedshiftClusterVpcSecurityGroups.parse(map['VpcSecurityGroups']) unless map['VpcSecurityGroups'].nil?)
        data.logging_status = (Parsers::AwsRedshiftClusterLoggingStatus.parse(map['LoggingStatus']) unless map['LoggingStatus'].nil?)
        return data
      end
    end

    class AwsRedshiftClusterLoggingStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterLoggingStatus.new
        data.bucket_name = map['BucketName']
        data.last_failure_message = map['LastFailureMessage']
        data.last_failure_time = map['LastFailureTime']
        data.last_successful_delivery_time = map['LastSuccessfulDeliveryTime']
        data.logging_enabled = map['LoggingEnabled']
        data.s3_key_prefix = map['S3KeyPrefix']
        return data
      end
    end

    class AwsRedshiftClusterVpcSecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterVpcSecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterVpcSecurityGroup
      def self.parse(map)
        data = Types::AwsRedshiftClusterVpcSecurityGroup.new
        data.status = map['Status']
        data.vpc_security_group_id = map['VpcSecurityGroupId']
        return data
      end
    end

    class AwsRedshiftClusterRestoreStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterRestoreStatus.new
        data.current_restore_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(map['CurrentRestoreRateInMegaBytesPerSecond'])
        data.elapsed_time_in_seconds = map['ElapsedTimeInSeconds']
        data.estimated_time_to_completion_in_seconds = map['EstimatedTimeToCompletionInSeconds']
        data.progress_in_mega_bytes = map['ProgressInMegaBytes']
        data.snapshot_size_in_mega_bytes = map['SnapshotSizeInMegaBytes']
        data.status = map['Status']
        return data
      end
    end

    class AwsRedshiftClusterResizeInfo
      def self.parse(map)
        data = Types::AwsRedshiftClusterResizeInfo.new
        data.allow_cancel_resize = map['AllowCancelResize']
        data.resize_type = map['ResizeType']
        return data
      end
    end

    class AwsRedshiftClusterPendingModifiedValues
      def self.parse(map)
        data = Types::AwsRedshiftClusterPendingModifiedValues.new
        data.automated_snapshot_retention_period = map['AutomatedSnapshotRetentionPeriod']
        data.cluster_identifier = map['ClusterIdentifier']
        data.cluster_type = map['ClusterType']
        data.cluster_version = map['ClusterVersion']
        data.encryption_type = map['EncryptionType']
        data.enhanced_vpc_routing = map['EnhancedVpcRouting']
        data.maintenance_track_name = map['MaintenanceTrackName']
        data.master_user_password = map['MasterUserPassword']
        data.node_type = map['NodeType']
        data.number_of_nodes = map['NumberOfNodes']
        data.publicly_accessible = map['PubliclyAccessible']
        return data
      end
    end

    class AwsRedshiftClusterIamRoles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterIamRole.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterIamRole
      def self.parse(map)
        data = Types::AwsRedshiftClusterIamRole.new
        data.apply_status = map['ApplyStatus']
        data.iam_role_arn = map['IamRoleArn']
        return data
      end
    end

    class AwsRedshiftClusterHsmStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterHsmStatus.new
        data.hsm_client_certificate_identifier = map['HsmClientCertificateIdentifier']
        data.hsm_configuration_identifier = map['HsmConfigurationIdentifier']
        data.status = map['Status']
        return data
      end
    end

    class AwsRedshiftClusterEndpoint
      def self.parse(map)
        data = Types::AwsRedshiftClusterEndpoint.new
        data.address = map['Address']
        data.port = map['Port']
        return data
      end
    end

    class AwsRedshiftClusterElasticIpStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterElasticIpStatus.new
        data.elastic_ip = map['ElasticIp']
        data.status = map['Status']
        return data
      end
    end

    class AwsRedshiftClusterDeferredMaintenanceWindows
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterDeferredMaintenanceWindow.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterDeferredMaintenanceWindow
      def self.parse(map)
        data = Types::AwsRedshiftClusterDeferredMaintenanceWindow.new
        data.defer_maintenance_end_time = map['DeferMaintenanceEndTime']
        data.defer_maintenance_identifier = map['DeferMaintenanceIdentifier']
        data.defer_maintenance_start_time = map['DeferMaintenanceStartTime']
        return data
      end
    end

    class AwsRedshiftClusterClusterSnapshotCopyStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterClusterSnapshotCopyStatus.new
        data.destination_region = map['DestinationRegion']
        data.manual_snapshot_retention_period = map['ManualSnapshotRetentionPeriod']
        data.retention_period = map['RetentionPeriod']
        data.snapshot_copy_grant_name = map['SnapshotCopyGrantName']
        return data
      end
    end

    class AwsRedshiftClusterClusterSecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterClusterSecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterClusterSecurityGroup
      def self.parse(map)
        data = Types::AwsRedshiftClusterClusterSecurityGroup.new
        data.cluster_security_group_name = map['ClusterSecurityGroupName']
        data.status = map['Status']
        return data
      end
    end

    class AwsRedshiftClusterClusterParameterGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterClusterParameterGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterClusterParameterGroup
      def self.parse(map)
        data = Types::AwsRedshiftClusterClusterParameterGroup.new
        data.cluster_parameter_status_list = (Parsers::AwsRedshiftClusterClusterParameterStatusList.parse(map['ClusterParameterStatusList']) unless map['ClusterParameterStatusList'].nil?)
        data.parameter_apply_status = map['ParameterApplyStatus']
        data.parameter_group_name = map['ParameterGroupName']
        return data
      end
    end

    class AwsRedshiftClusterClusterParameterStatusList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterClusterParameterStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterClusterParameterStatus
      def self.parse(map)
        data = Types::AwsRedshiftClusterClusterParameterStatus.new
        data.parameter_name = map['ParameterName']
        data.parameter_apply_status = map['ParameterApplyStatus']
        data.parameter_apply_error_description = map['ParameterApplyErrorDescription']
        return data
      end
    end

    class AwsRedshiftClusterClusterNodes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsRedshiftClusterClusterNode.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsRedshiftClusterClusterNode
      def self.parse(map)
        data = Types::AwsRedshiftClusterClusterNode.new
        data.node_role = map['NodeRole']
        data.private_ip_address = map['PrivateIpAddress']
        data.public_ip_address = map['PublicIpAddress']
        return data
      end
    end

    class AwsCertificateManagerCertificateDetails
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateDetails.new
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        data.created_at = map['CreatedAt']
        data.domain_name = map['DomainName']
        data.domain_validation_options = (Parsers::AwsCertificateManagerCertificateDomainValidationOptions.parse(map['DomainValidationOptions']) unless map['DomainValidationOptions'].nil?)
        data.extended_key_usages = (Parsers::AwsCertificateManagerCertificateExtendedKeyUsages.parse(map['ExtendedKeyUsages']) unless map['ExtendedKeyUsages'].nil?)
        data.failure_reason = map['FailureReason']
        data.imported_at = map['ImportedAt']
        data.in_use_by = (Parsers::StringList.parse(map['InUseBy']) unless map['InUseBy'].nil?)
        data.issued_at = map['IssuedAt']
        data.issuer = map['Issuer']
        data.key_algorithm = map['KeyAlgorithm']
        data.key_usages = (Parsers::AwsCertificateManagerCertificateKeyUsages.parse(map['KeyUsages']) unless map['KeyUsages'].nil?)
        data.not_after = map['NotAfter']
        data.not_before = map['NotBefore']
        data.options = (Parsers::AwsCertificateManagerCertificateOptions.parse(map['Options']) unless map['Options'].nil?)
        data.renewal_eligibility = map['RenewalEligibility']
        data.renewal_summary = (Parsers::AwsCertificateManagerCertificateRenewalSummary.parse(map['RenewalSummary']) unless map['RenewalSummary'].nil?)
        data.serial = map['Serial']
        data.signature_algorithm = map['SignatureAlgorithm']
        data.status = map['Status']
        data.subject = map['Subject']
        data.subject_alternative_names = (Parsers::StringList.parse(map['SubjectAlternativeNames']) unless map['SubjectAlternativeNames'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsCertificateManagerCertificateRenewalSummary
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateRenewalSummary.new
        data.domain_validation_options = (Parsers::AwsCertificateManagerCertificateDomainValidationOptions.parse(map['DomainValidationOptions']) unless map['DomainValidationOptions'].nil?)
        data.renewal_status = map['RenewalStatus']
        data.renewal_status_reason = map['RenewalStatusReason']
        data.updated_at = map['UpdatedAt']
        return data
      end
    end

    class AwsCertificateManagerCertificateDomainValidationOptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCertificateManagerCertificateDomainValidationOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCertificateManagerCertificateDomainValidationOption
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateDomainValidationOption.new
        data.domain_name = map['DomainName']
        data.resource_record = (Parsers::AwsCertificateManagerCertificateResourceRecord.parse(map['ResourceRecord']) unless map['ResourceRecord'].nil?)
        data.validation_domain = map['ValidationDomain']
        data.validation_emails = (Parsers::StringList.parse(map['ValidationEmails']) unless map['ValidationEmails'].nil?)
        data.validation_method = map['ValidationMethod']
        data.validation_status = map['ValidationStatus']
        return data
      end
    end

    class AwsCertificateManagerCertificateResourceRecord
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateResourceRecord.new
        data.name = map['Name']
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class AwsCertificateManagerCertificateOptions
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateOptions.new
        data.certificate_transparency_logging_preference = map['CertificateTransparencyLoggingPreference']
        return data
      end
    end

    class AwsCertificateManagerCertificateKeyUsages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCertificateManagerCertificateKeyUsage.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCertificateManagerCertificateKeyUsage
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateKeyUsage.new
        data.name = map['Name']
        return data
      end
    end

    class AwsCertificateManagerCertificateExtendedKeyUsages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCertificateManagerCertificateExtendedKeyUsage.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCertificateManagerCertificateExtendedKeyUsage
      def self.parse(map)
        data = Types::AwsCertificateManagerCertificateExtendedKeyUsage.new
        data.name = map['Name']
        data.o_id = map['OId']
        return data
      end
    end

    class AwsSsmPatchComplianceDetails
      def self.parse(map)
        data = Types::AwsSsmPatchComplianceDetails.new
        data.patch = (Parsers::AwsSsmPatch.parse(map['Patch']) unless map['Patch'].nil?)
        return data
      end
    end

    class AwsSsmPatch
      def self.parse(map)
        data = Types::AwsSsmPatch.new
        data.compliance_summary = (Parsers::AwsSsmComplianceSummary.parse(map['ComplianceSummary']) unless map['ComplianceSummary'].nil?)
        return data
      end
    end

    class AwsSsmComplianceSummary
      def self.parse(map)
        data = Types::AwsSsmComplianceSummary.new
        data.status = map['Status']
        data.compliant_critical_count = map['CompliantCriticalCount']
        data.compliant_high_count = map['CompliantHighCount']
        data.compliant_medium_count = map['CompliantMediumCount']
        data.execution_type = map['ExecutionType']
        data.non_compliant_critical_count = map['NonCompliantCriticalCount']
        data.compliant_informational_count = map['CompliantInformationalCount']
        data.non_compliant_informational_count = map['NonCompliantInformationalCount']
        data.compliant_unspecified_count = map['CompliantUnspecifiedCount']
        data.non_compliant_low_count = map['NonCompliantLowCount']
        data.non_compliant_high_count = map['NonCompliantHighCount']
        data.compliant_low_count = map['CompliantLowCount']
        data.compliance_type = map['ComplianceType']
        data.patch_baseline_id = map['PatchBaselineId']
        data.overall_severity = map['OverallSeverity']
        data.non_compliant_medium_count = map['NonCompliantMediumCount']
        data.non_compliant_unspecified_count = map['NonCompliantUnspecifiedCount']
        data.patch_group = map['PatchGroup']
        return data
      end
    end

    class AwsCloudTrailTrailDetails
      def self.parse(map)
        data = Types::AwsCloudTrailTrailDetails.new
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.cloud_watch_logs_role_arn = map['CloudWatchLogsRoleArn']
        data.has_custom_event_selectors = map['HasCustomEventSelectors']
        data.home_region = map['HomeRegion']
        data.include_global_service_events = map['IncludeGlobalServiceEvents']
        data.is_multi_region_trail = map['IsMultiRegionTrail']
        data.is_organization_trail = map['IsOrganizationTrail']
        data.kms_key_id = map['KmsKeyId']
        data.log_file_validation_enabled = map['LogFileValidationEnabled']
        data.name = map['Name']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.sns_topic_arn = map['SnsTopicArn']
        data.sns_topic_name = map['SnsTopicName']
        data.trail_arn = map['TrailArn']
        return data
      end
    end

    class AwsApiGatewayRestApiDetails
      def self.parse(map)
        data = Types::AwsApiGatewayRestApiDetails.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.created_date = map['CreatedDate']
        data.version = map['Version']
        data.binary_media_types = (Parsers::NonEmptyStringList.parse(map['BinaryMediaTypes']) unless map['BinaryMediaTypes'].nil?)
        data.minimum_compression_size = map['MinimumCompressionSize']
        data.api_key_source = map['ApiKeySource']
        data.endpoint_configuration = (Parsers::AwsApiGatewayEndpointConfiguration.parse(map['EndpointConfiguration']) unless map['EndpointConfiguration'].nil?)
        return data
      end
    end

    class AwsApiGatewayEndpointConfiguration
      def self.parse(map)
        data = Types::AwsApiGatewayEndpointConfiguration.new
        data.types = (Parsers::NonEmptyStringList.parse(map['Types']) unless map['Types'].nil?)
        return data
      end
    end

    class AwsApiGatewayStageDetails
      def self.parse(map)
        data = Types::AwsApiGatewayStageDetails.new
        data.deployment_id = map['DeploymentId']
        data.client_certificate_id = map['ClientCertificateId']
        data.stage_name = map['StageName']
        data.description = map['Description']
        data.cache_cluster_enabled = map['CacheClusterEnabled']
        data.cache_cluster_size = map['CacheClusterSize']
        data.cache_cluster_status = map['CacheClusterStatus']
        data.method_settings = (Parsers::AwsApiGatewayMethodSettingsList.parse(map['MethodSettings']) unless map['MethodSettings'].nil?)
        data.variables = (Parsers::FieldMap.parse(map['Variables']) unless map['Variables'].nil?)
        data.documentation_version = map['DocumentationVersion']
        data.access_log_settings = (Parsers::AwsApiGatewayAccessLogSettings.parse(map['AccessLogSettings']) unless map['AccessLogSettings'].nil?)
        data.canary_settings = (Parsers::AwsApiGatewayCanarySettings.parse(map['CanarySettings']) unless map['CanarySettings'].nil?)
        data.tracing_enabled = map['TracingEnabled']
        data.created_date = map['CreatedDate']
        data.last_updated_date = map['LastUpdatedDate']
        data.web_acl_arn = map['WebAclArn']
        return data
      end
    end

    class AwsApiGatewayCanarySettings
      def self.parse(map)
        data = Types::AwsApiGatewayCanarySettings.new
        data.percent_traffic = Hearth::NumberHelper.deserialize(map['PercentTraffic'])
        data.deployment_id = map['DeploymentId']
        data.stage_variable_overrides = (Parsers::FieldMap.parse(map['StageVariableOverrides']) unless map['StageVariableOverrides'].nil?)
        data.use_stage_cache = map['UseStageCache']
        return data
      end
    end

    class AwsApiGatewayAccessLogSettings
      def self.parse(map)
        data = Types::AwsApiGatewayAccessLogSettings.new
        data.format = map['Format']
        data.destination_arn = map['DestinationArn']
        return data
      end
    end

    class AwsApiGatewayMethodSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsApiGatewayMethodSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsApiGatewayMethodSettings
      def self.parse(map)
        data = Types::AwsApiGatewayMethodSettings.new
        data.metrics_enabled = map['MetricsEnabled']
        data.logging_level = map['LoggingLevel']
        data.data_trace_enabled = map['DataTraceEnabled']
        data.throttling_burst_limit = map['ThrottlingBurstLimit']
        data.throttling_rate_limit = Hearth::NumberHelper.deserialize(map['ThrottlingRateLimit'])
        data.caching_enabled = map['CachingEnabled']
        data.cache_ttl_in_seconds = map['CacheTtlInSeconds']
        data.cache_data_encrypted = map['CacheDataEncrypted']
        data.require_authorization_for_cache_control = map['RequireAuthorizationForCacheControl']
        data.unauthorized_cache_control_header_strategy = map['UnauthorizedCacheControlHeaderStrategy']
        data.http_method = map['HttpMethod']
        data.resource_path = map['ResourcePath']
        return data
      end
    end

    class AwsDynamoDbTableDetails
      def self.parse(map)
        data = Types::AwsDynamoDbTableDetails.new
        data.attribute_definitions = (Parsers::AwsDynamoDbTableAttributeDefinitionList.parse(map['AttributeDefinitions']) unless map['AttributeDefinitions'].nil?)
        data.billing_mode_summary = (Parsers::AwsDynamoDbTableBillingModeSummary.parse(map['BillingModeSummary']) unless map['BillingModeSummary'].nil?)
        data.creation_date_time = map['CreationDateTime']
        data.global_secondary_indexes = (Parsers::AwsDynamoDbTableGlobalSecondaryIndexList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?)
        data.global_table_version = map['GlobalTableVersion']
        data.item_count = map['ItemCount']
        data.key_schema = (Parsers::AwsDynamoDbTableKeySchemaList.parse(map['KeySchema']) unless map['KeySchema'].nil?)
        data.latest_stream_arn = map['LatestStreamArn']
        data.latest_stream_label = map['LatestStreamLabel']
        data.local_secondary_indexes = (Parsers::AwsDynamoDbTableLocalSecondaryIndexList.parse(map['LocalSecondaryIndexes']) unless map['LocalSecondaryIndexes'].nil?)
        data.provisioned_throughput = (Parsers::AwsDynamoDbTableProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?)
        data.replicas = (Parsers::AwsDynamoDbTableReplicaList.parse(map['Replicas']) unless map['Replicas'].nil?)
        data.restore_summary = (Parsers::AwsDynamoDbTableRestoreSummary.parse(map['RestoreSummary']) unless map['RestoreSummary'].nil?)
        data.sse_description = (Parsers::AwsDynamoDbTableSseDescription.parse(map['SseDescription']) unless map['SseDescription'].nil?)
        data.stream_specification = (Parsers::AwsDynamoDbTableStreamSpecification.parse(map['StreamSpecification']) unless map['StreamSpecification'].nil?)
        data.table_id = map['TableId']
        data.table_name = map['TableName']
        data.table_size_bytes = map['TableSizeBytes']
        data.table_status = map['TableStatus']
        return data
      end
    end

    class AwsDynamoDbTableStreamSpecification
      def self.parse(map)
        data = Types::AwsDynamoDbTableStreamSpecification.new
        data.stream_enabled = map['StreamEnabled']
        data.stream_view_type = map['StreamViewType']
        return data
      end
    end

    class AwsDynamoDbTableSseDescription
      def self.parse(map)
        data = Types::AwsDynamoDbTableSseDescription.new
        data.inaccessible_encryption_date_time = map['InaccessibleEncryptionDateTime']
        data.status = map['Status']
        data.sse_type = map['SseType']
        data.kms_master_key_arn = map['KmsMasterKeyArn']
        return data
      end
    end

    class AwsDynamoDbTableRestoreSummary
      def self.parse(map)
        data = Types::AwsDynamoDbTableRestoreSummary.new
        data.source_backup_arn = map['SourceBackupArn']
        data.source_table_arn = map['SourceTableArn']
        data.restore_date_time = map['RestoreDateTime']
        data.restore_in_progress = map['RestoreInProgress']
        return data
      end
    end

    class AwsDynamoDbTableReplicaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableReplica.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableReplica
      def self.parse(map)
        data = Types::AwsDynamoDbTableReplica.new
        data.global_secondary_indexes = (Parsers::AwsDynamoDbTableReplicaGlobalSecondaryIndexList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?)
        data.kms_master_key_id = map['KmsMasterKeyId']
        data.provisioned_throughput_override = (Parsers::AwsDynamoDbTableProvisionedThroughputOverride.parse(map['ProvisionedThroughputOverride']) unless map['ProvisionedThroughputOverride'].nil?)
        data.region_name = map['RegionName']
        data.replica_status = map['ReplicaStatus']
        data.replica_status_description = map['ReplicaStatusDescription']
        return data
      end
    end

    class AwsDynamoDbTableProvisionedThroughputOverride
      def self.parse(map)
        data = Types::AwsDynamoDbTableProvisionedThroughputOverride.new
        data.read_capacity_units = map['ReadCapacityUnits']
        return data
      end
    end

    class AwsDynamoDbTableReplicaGlobalSecondaryIndexList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableReplicaGlobalSecondaryIndex.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableReplicaGlobalSecondaryIndex
      def self.parse(map)
        data = Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex.new
        data.index_name = map['IndexName']
        data.provisioned_throughput_override = (Parsers::AwsDynamoDbTableProvisionedThroughputOverride.parse(map['ProvisionedThroughputOverride']) unless map['ProvisionedThroughputOverride'].nil?)
        return data
      end
    end

    class AwsDynamoDbTableProvisionedThroughput
      def self.parse(map)
        data = Types::AwsDynamoDbTableProvisionedThroughput.new
        data.last_decrease_date_time = map['LastDecreaseDateTime']
        data.last_increase_date_time = map['LastIncreaseDateTime']
        data.number_of_decreases_today = map['NumberOfDecreasesToday']
        data.read_capacity_units = map['ReadCapacityUnits']
        data.write_capacity_units = map['WriteCapacityUnits']
        return data
      end
    end

    class AwsDynamoDbTableLocalSecondaryIndexList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableLocalSecondaryIndex.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableLocalSecondaryIndex
      def self.parse(map)
        data = Types::AwsDynamoDbTableLocalSecondaryIndex.new
        data.index_arn = map['IndexArn']
        data.index_name = map['IndexName']
        data.key_schema = (Parsers::AwsDynamoDbTableKeySchemaList.parse(map['KeySchema']) unless map['KeySchema'].nil?)
        data.projection = (Parsers::AwsDynamoDbTableProjection.parse(map['Projection']) unless map['Projection'].nil?)
        return data
      end
    end

    class AwsDynamoDbTableProjection
      def self.parse(map)
        data = Types::AwsDynamoDbTableProjection.new
        data.non_key_attributes = (Parsers::StringList.parse(map['NonKeyAttributes']) unless map['NonKeyAttributes'].nil?)
        data.projection_type = map['ProjectionType']
        return data
      end
    end

    class AwsDynamoDbTableKeySchemaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableKeySchema.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableKeySchema
      def self.parse(map)
        data = Types::AwsDynamoDbTableKeySchema.new
        data.attribute_name = map['AttributeName']
        data.key_type = map['KeyType']
        return data
      end
    end

    class AwsDynamoDbTableGlobalSecondaryIndexList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableGlobalSecondaryIndex.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableGlobalSecondaryIndex
      def self.parse(map)
        data = Types::AwsDynamoDbTableGlobalSecondaryIndex.new
        data.backfilling = map['Backfilling']
        data.index_arn = map['IndexArn']
        data.index_name = map['IndexName']
        data.index_size_bytes = map['IndexSizeBytes']
        data.index_status = map['IndexStatus']
        data.item_count = map['ItemCount']
        data.key_schema = (Parsers::AwsDynamoDbTableKeySchemaList.parse(map['KeySchema']) unless map['KeySchema'].nil?)
        data.projection = (Parsers::AwsDynamoDbTableProjection.parse(map['Projection']) unless map['Projection'].nil?)
        data.provisioned_throughput = (Parsers::AwsDynamoDbTableProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?)
        return data
      end
    end

    class AwsDynamoDbTableBillingModeSummary
      def self.parse(map)
        data = Types::AwsDynamoDbTableBillingModeSummary.new
        data.billing_mode = map['BillingMode']
        data.last_update_to_pay_per_request_date_time = map['LastUpdateToPayPerRequestDateTime']
        return data
      end
    end

    class AwsDynamoDbTableAttributeDefinitionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsDynamoDbTableAttributeDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsDynamoDbTableAttributeDefinition
      def self.parse(map)
        data = Types::AwsDynamoDbTableAttributeDefinition.new
        data.attribute_name = map['AttributeName']
        data.attribute_type = map['AttributeType']
        return data
      end
    end

    class AwsApiGatewayV2ApiDetails
      def self.parse(map)
        data = Types::AwsApiGatewayV2ApiDetails.new
        data.api_endpoint = map['ApiEndpoint']
        data.api_id = map['ApiId']
        data.api_key_selection_expression = map['ApiKeySelectionExpression']
        data.created_date = map['CreatedDate']
        data.description = map['Description']
        data.version = map['Version']
        data.name = map['Name']
        data.protocol_type = map['ProtocolType']
        data.route_selection_expression = map['RouteSelectionExpression']
        data.cors_configuration = (Parsers::AwsCorsConfiguration.parse(map['CorsConfiguration']) unless map['CorsConfiguration'].nil?)
        return data
      end
    end

    class AwsCorsConfiguration
      def self.parse(map)
        data = Types::AwsCorsConfiguration.new
        data.allow_origins = (Parsers::NonEmptyStringList.parse(map['AllowOrigins']) unless map['AllowOrigins'].nil?)
        data.allow_credentials = map['AllowCredentials']
        data.expose_headers = (Parsers::NonEmptyStringList.parse(map['ExposeHeaders']) unless map['ExposeHeaders'].nil?)
        data.max_age = map['MaxAge']
        data.allow_methods = (Parsers::NonEmptyStringList.parse(map['AllowMethods']) unless map['AllowMethods'].nil?)
        data.allow_headers = (Parsers::NonEmptyStringList.parse(map['AllowHeaders']) unless map['AllowHeaders'].nil?)
        return data
      end
    end

    class AwsApiGatewayV2StageDetails
      def self.parse(map)
        data = Types::AwsApiGatewayV2StageDetails.new
        data.client_certificate_id = map['ClientCertificateId']
        data.created_date = map['CreatedDate']
        data.description = map['Description']
        data.default_route_settings = (Parsers::AwsApiGatewayV2RouteSettings.parse(map['DefaultRouteSettings']) unless map['DefaultRouteSettings'].nil?)
        data.deployment_id = map['DeploymentId']
        data.last_updated_date = map['LastUpdatedDate']
        data.route_settings = (Parsers::AwsApiGatewayV2RouteSettings.parse(map['RouteSettings']) unless map['RouteSettings'].nil?)
        data.stage_name = map['StageName']
        data.stage_variables = (Parsers::FieldMap.parse(map['StageVariables']) unless map['StageVariables'].nil?)
        data.access_log_settings = (Parsers::AwsApiGatewayAccessLogSettings.parse(map['AccessLogSettings']) unless map['AccessLogSettings'].nil?)
        data.auto_deploy = map['AutoDeploy']
        data.last_deployment_status_message = map['LastDeploymentStatusMessage']
        data.api_gateway_managed = map['ApiGatewayManaged']
        return data
      end
    end

    class AwsApiGatewayV2RouteSettings
      def self.parse(map)
        data = Types::AwsApiGatewayV2RouteSettings.new
        data.detailed_metrics_enabled = map['DetailedMetricsEnabled']
        data.logging_level = map['LoggingLevel']
        data.data_trace_enabled = map['DataTraceEnabled']
        data.throttling_burst_limit = map['ThrottlingBurstLimit']
        data.throttling_rate_limit = Hearth::NumberHelper.deserialize(map['ThrottlingRateLimit'])
        return data
      end
    end

    class AwsIamPolicyDetails
      def self.parse(map)
        data = Types::AwsIamPolicyDetails.new
        data.attachment_count = map['AttachmentCount']
        data.create_date = map['CreateDate']
        data.default_version_id = map['DefaultVersionId']
        data.description = map['Description']
        data.is_attachable = map['IsAttachable']
        data.path = map['Path']
        data.permissions_boundary_usage_count = map['PermissionsBoundaryUsageCount']
        data.policy_id = map['PolicyId']
        data.policy_name = map['PolicyName']
        data.policy_version_list = (Parsers::AwsIamPolicyVersionList.parse(map['PolicyVersionList']) unless map['PolicyVersionList'].nil?)
        data.update_date = map['UpdateDate']
        return data
      end
    end

    class AwsIamPolicyVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamPolicyVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamPolicyVersion
      def self.parse(map)
        data = Types::AwsIamPolicyVersion.new
        data.version_id = map['VersionId']
        data.is_default_version = map['IsDefaultVersion']
        data.create_date = map['CreateDate']
        return data
      end
    end

    class AwsIamUserDetails
      def self.parse(map)
        data = Types::AwsIamUserDetails.new
        data.attached_managed_policies = (Parsers::AwsIamAttachedManagedPolicyList.parse(map['AttachedManagedPolicies']) unless map['AttachedManagedPolicies'].nil?)
        data.create_date = map['CreateDate']
        data.group_list = (Parsers::StringList.parse(map['GroupList']) unless map['GroupList'].nil?)
        data.path = map['Path']
        data.permissions_boundary = (Parsers::AwsIamPermissionsBoundary.parse(map['PermissionsBoundary']) unless map['PermissionsBoundary'].nil?)
        data.user_id = map['UserId']
        data.user_name = map['UserName']
        data.user_policy_list = (Parsers::AwsIamUserPolicyList.parse(map['UserPolicyList']) unless map['UserPolicyList'].nil?)
        return data
      end
    end

    class AwsIamUserPolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsIamUserPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsIamUserPolicy
      def self.parse(map)
        data = Types::AwsIamUserPolicy.new
        data.policy_name = map['PolicyName']
        return data
      end
    end

    class AwsIamAccessKeyDetails
      def self.parse(map)
        data = Types::AwsIamAccessKeyDetails.new
        data.user_name = map['UserName']
        data.status = map['Status']
        data.created_at = map['CreatedAt']
        data.principal_id = map['PrincipalId']
        data.principal_type = map['PrincipalType']
        data.principal_name = map['PrincipalName']
        data.account_id = map['AccountId']
        data.access_key_id = map['AccessKeyId']
        data.session_context = (Parsers::AwsIamAccessKeySessionContext.parse(map['SessionContext']) unless map['SessionContext'].nil?)
        return data
      end
    end

    class AwsIamAccessKeySessionContext
      def self.parse(map)
        data = Types::AwsIamAccessKeySessionContext.new
        data.attributes = (Parsers::AwsIamAccessKeySessionContextAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.session_issuer = (Parsers::AwsIamAccessKeySessionContextSessionIssuer.parse(map['SessionIssuer']) unless map['SessionIssuer'].nil?)
        return data
      end
    end

    class AwsIamAccessKeySessionContextSessionIssuer
      def self.parse(map)
        data = Types::AwsIamAccessKeySessionContextSessionIssuer.new
        data.type = map['Type']
        data.principal_id = map['PrincipalId']
        data.arn = map['Arn']
        data.account_id = map['AccountId']
        data.user_name = map['UserName']
        return data
      end
    end

    class AwsIamAccessKeySessionContextAttributes
      def self.parse(map)
        data = Types::AwsIamAccessKeySessionContextAttributes.new
        data.mfa_authenticated = map['MfaAuthenticated']
        data.creation_date = map['CreationDate']
        return data
      end
    end

    class AwsSecretsManagerSecretDetails
      def self.parse(map)
        data = Types::AwsSecretsManagerSecretDetails.new
        data.rotation_rules = (Parsers::AwsSecretsManagerSecretRotationRules.parse(map['RotationRules']) unless map['RotationRules'].nil?)
        data.rotation_occurred_within_frequency = map['RotationOccurredWithinFrequency']
        data.kms_key_id = map['KmsKeyId']
        data.rotation_enabled = map['RotationEnabled']
        data.rotation_lambda_arn = map['RotationLambdaArn']
        data.deleted = map['Deleted']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    class AwsSecretsManagerSecretRotationRules
      def self.parse(map)
        data = Types::AwsSecretsManagerSecretRotationRules.new
        data.automatically_after_days = map['AutomaticallyAfterDays']
        return data
      end
    end

    class AwsS3ObjectDetails
      def self.parse(map)
        data = Types::AwsS3ObjectDetails.new
        data.last_modified = map['LastModified']
        data.e_tag = map['ETag']
        data.version_id = map['VersionId']
        data.content_type = map['ContentType']
        data.server_side_encryption = map['ServerSideEncryption']
        data.ssekms_key_id = map['SSEKMSKeyId']
        return data
      end
    end

    class AwsS3AccountPublicAccessBlockDetails
      def self.parse(map)
        data = Types::AwsS3AccountPublicAccessBlockDetails.new
        data.block_public_acls = map['BlockPublicAcls']
        data.block_public_policy = map['BlockPublicPolicy']
        data.ignore_public_acls = map['IgnorePublicAcls']
        data.restrict_public_buckets = map['RestrictPublicBuckets']
        return data
      end
    end

    class AwsS3BucketDetails
      def self.parse(map)
        data = Types::AwsS3BucketDetails.new
        data.owner_id = map['OwnerId']
        data.owner_name = map['OwnerName']
        data.owner_account_id = map['OwnerAccountId']
        data.created_at = map['CreatedAt']
        data.server_side_encryption_configuration = (Parsers::AwsS3BucketServerSideEncryptionConfiguration.parse(map['ServerSideEncryptionConfiguration']) unless map['ServerSideEncryptionConfiguration'].nil?)
        data.bucket_lifecycle_configuration = (Parsers::AwsS3BucketBucketLifecycleConfigurationDetails.parse(map['BucketLifecycleConfiguration']) unless map['BucketLifecycleConfiguration'].nil?)
        data.public_access_block_configuration = (Parsers::AwsS3AccountPublicAccessBlockDetails.parse(map['PublicAccessBlockConfiguration']) unless map['PublicAccessBlockConfiguration'].nil?)
        data.access_control_list = map['AccessControlList']
        data.bucket_logging_configuration = (Parsers::AwsS3BucketLoggingConfiguration.parse(map['BucketLoggingConfiguration']) unless map['BucketLoggingConfiguration'].nil?)
        data.bucket_website_configuration = (Parsers::AwsS3BucketWebsiteConfiguration.parse(map['BucketWebsiteConfiguration']) unless map['BucketWebsiteConfiguration'].nil?)
        data.bucket_notification_configuration = (Parsers::AwsS3BucketNotificationConfiguration.parse(map['BucketNotificationConfiguration']) unless map['BucketNotificationConfiguration'].nil?)
        data.bucket_versioning_configuration = (Parsers::AwsS3BucketBucketVersioningConfiguration.parse(map['BucketVersioningConfiguration']) unless map['BucketVersioningConfiguration'].nil?)
        return data
      end
    end

    class AwsS3BucketBucketVersioningConfiguration
      def self.parse(map)
        data = Types::AwsS3BucketBucketVersioningConfiguration.new
        data.is_mfa_delete_enabled = map['IsMfaDeleteEnabled']
        data.status = map['Status']
        return data
      end
    end

    class AwsS3BucketNotificationConfiguration
      def self.parse(map)
        data = Types::AwsS3BucketNotificationConfiguration.new
        data.configurations = (Parsers::AwsS3BucketNotificationConfigurationDetails.parse(map['Configurations']) unless map['Configurations'].nil?)
        return data
      end
    end

    class AwsS3BucketNotificationConfigurationDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketNotificationConfigurationDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketNotificationConfigurationDetail
      def self.parse(map)
        data = Types::AwsS3BucketNotificationConfigurationDetail.new
        data.events = (Parsers::AwsS3BucketNotificationConfigurationEvents.parse(map['Events']) unless map['Events'].nil?)
        data.filter = (Parsers::AwsS3BucketNotificationConfigurationFilter.parse(map['Filter']) unless map['Filter'].nil?)
        data.destination = map['Destination']
        data.type = map['Type']
        return data
      end
    end

    class AwsS3BucketNotificationConfigurationFilter
      def self.parse(map)
        data = Types::AwsS3BucketNotificationConfigurationFilter.new
        data.s3_key_filter = (Parsers::AwsS3BucketNotificationConfigurationS3KeyFilter.parse(map['S3KeyFilter']) unless map['S3KeyFilter'].nil?)
        return data
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilter
      def self.parse(map)
        data = Types::AwsS3BucketNotificationConfigurationS3KeyFilter.new
        data.filter_rules = (Parsers::AwsS3BucketNotificationConfigurationS3KeyFilterRules.parse(map['FilterRules']) unless map['FilterRules'].nil?)
        return data
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilterRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketNotificationConfigurationS3KeyFilterRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilterRule
      def self.parse(map)
        data = Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AwsS3BucketNotificationConfigurationEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketWebsiteConfiguration
      def self.parse(map)
        data = Types::AwsS3BucketWebsiteConfiguration.new
        data.error_document = map['ErrorDocument']
        data.index_document_suffix = map['IndexDocumentSuffix']
        data.redirect_all_requests_to = (Parsers::AwsS3BucketWebsiteConfigurationRedirectTo.parse(map['RedirectAllRequestsTo']) unless map['RedirectAllRequestsTo'].nil?)
        data.routing_rules = (Parsers::AwsS3BucketWebsiteConfigurationRoutingRules.parse(map['RoutingRules']) unless map['RoutingRules'].nil?)
        return data
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketWebsiteConfigurationRoutingRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRule
      def self.parse(map)
        data = Types::AwsS3BucketWebsiteConfigurationRoutingRule.new
        data.condition = (Parsers::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.parse(map['Condition']) unless map['Condition'].nil?)
        data.redirect = (Parsers::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.parse(map['Redirect']) unless map['Redirect'].nil?)
        return data
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
      def self.parse(map)
        data = Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.new
        data.hostname = map['Hostname']
        data.http_redirect_code = map['HttpRedirectCode']
        data.protocol = map['Protocol']
        data.replace_key_prefix_with = map['ReplaceKeyPrefixWith']
        data.replace_key_with = map['ReplaceKeyWith']
        return data
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRuleCondition
      def self.parse(map)
        data = Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.new
        data.http_error_code_returned_equals = map['HttpErrorCodeReturnedEquals']
        data.key_prefix_equals = map['KeyPrefixEquals']
        return data
      end
    end

    class AwsS3BucketWebsiteConfigurationRedirectTo
      def self.parse(map)
        data = Types::AwsS3BucketWebsiteConfigurationRedirectTo.new
        data.hostname = map['Hostname']
        data.protocol = map['Protocol']
        return data
      end
    end

    class AwsS3BucketLoggingConfiguration
      def self.parse(map)
        data = Types::AwsS3BucketLoggingConfiguration.new
        data.destination_bucket_name = map['DestinationBucketName']
        data.log_file_prefix = map['LogFilePrefix']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationDetails.new
        data.rules = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketBucketLifecycleConfigurationRulesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails.new
        data.abort_incomplete_multipart_upload = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.parse(map['AbortIncompleteMultipartUpload']) unless map['AbortIncompleteMultipartUpload'].nil?)
        data.expiration_date = map['ExpirationDate']
        data.expiration_in_days = map['ExpirationInDays']
        data.expired_object_delete_marker = map['ExpiredObjectDeleteMarker']
        data.filter = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.parse(map['Filter']) unless map['Filter'].nil?)
        data.id = map['ID']
        data.noncurrent_version_expiration_in_days = map['NoncurrentVersionExpirationInDays']
        data.noncurrent_version_transitions = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.parse(map['NoncurrentVersionTransitions']) unless map['NoncurrentVersionTransitions'].nil?)
        data.prefix = map['Prefix']
        data.status = map['Status']
        data.transitions = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.parse(map['Transitions']) unless map['Transitions'].nil?)
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.new
        data.date = map['Date']
        data.days = map['Days']
        data.storage_class = map['StorageClass']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.new
        data.days = map['Days']
        data.storage_class = map['StorageClass']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.new
        data.predicate = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.parse(map['Predicate']) unless map['Predicate'].nil?)
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.new
        data.operands = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.parse(map['Operands']) unless map['Operands'].nil?)
        data.prefix = map['Prefix']
        data.tag = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.parse(map['Tag']) unless map['Tag'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.new
        data.prefix = map['Prefix']
        data.tag = (Parsers::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.parse(map['Tag']) unless map['Tag'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
      def self.parse(map)
        data = Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.new
        data.days_after_initiation = map['DaysAfterInitiation']
        return data
      end
    end

    class AwsS3BucketServerSideEncryptionConfiguration
      def self.parse(map)
        data = Types::AwsS3BucketServerSideEncryptionConfiguration.new
        data.rules = (Parsers::AwsS3BucketServerSideEncryptionRules.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class AwsS3BucketServerSideEncryptionRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsS3BucketServerSideEncryptionRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsS3BucketServerSideEncryptionRule
      def self.parse(map)
        data = Types::AwsS3BucketServerSideEncryptionRule.new
        data.apply_server_side_encryption_by_default = (Parsers::AwsS3BucketServerSideEncryptionByDefault.parse(map['ApplyServerSideEncryptionByDefault']) unless map['ApplyServerSideEncryptionByDefault'].nil?)
        return data
      end
    end

    class AwsS3BucketServerSideEncryptionByDefault
      def self.parse(map)
        data = Types::AwsS3BucketServerSideEncryptionByDefault.new
        data.sse_algorithm = map['SSEAlgorithm']
        data.kms_master_key_id = map['KMSMasterKeyID']
        return data
      end
    end

    class AwsElasticsearchDomainDetails
      def self.parse(map)
        data = Types::AwsElasticsearchDomainDetails.new
        data.access_policies = map['AccessPolicies']
        data.domain_endpoint_options = (Parsers::AwsElasticsearchDomainDomainEndpointOptions.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.domain_id = map['DomainId']
        data.domain_name = map['DomainName']
        data.endpoint = map['Endpoint']
        data.endpoints = (Parsers::FieldMap.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.elasticsearch_version = map['ElasticsearchVersion']
        data.elasticsearch_cluster_config = (Parsers::AwsElasticsearchDomainElasticsearchClusterConfigDetails.parse(map['ElasticsearchClusterConfig']) unless map['ElasticsearchClusterConfig'].nil?)
        data.encryption_at_rest_options = (Parsers::AwsElasticsearchDomainEncryptionAtRestOptions.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.log_publishing_options = (Parsers::AwsElasticsearchDomainLogPublishingOptions.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.node_to_node_encryption_options = (Parsers::AwsElasticsearchDomainNodeToNodeEncryptionOptions.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.service_software_options = (Parsers::AwsElasticsearchDomainServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data.vpc_options = (Parsers::AwsElasticsearchDomainVPCOptions.parse(map['VPCOptions']) unless map['VPCOptions'].nil?)
        return data
      end
    end

    class AwsElasticsearchDomainVPCOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainVPCOptions.new
        data.availability_zones = (Parsers::NonEmptyStringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.security_group_ids = (Parsers::NonEmptyStringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnet_ids = (Parsers::NonEmptyStringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.vpc_id = map['VPCId']
        return data
      end
    end

    class AwsElasticsearchDomainServiceSoftwareOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainServiceSoftwareOptions.new
        data.automated_update_date = map['AutomatedUpdateDate']
        data.cancellable = map['Cancellable']
        data.current_version = map['CurrentVersion']
        data.description = map['Description']
        data.new_version = map['NewVersion']
        data.update_available = map['UpdateAvailable']
        data.update_status = map['UpdateStatus']
        return data
      end
    end

    class AwsElasticsearchDomainNodeToNodeEncryptionOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsElasticsearchDomainLogPublishingOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainLogPublishingOptions.new
        data.index_slow_logs = (Parsers::AwsElasticsearchDomainLogPublishingOptionsLogConfig.parse(map['IndexSlowLogs']) unless map['IndexSlowLogs'].nil?)
        data.search_slow_logs = (Parsers::AwsElasticsearchDomainLogPublishingOptionsLogConfig.parse(map['SearchSlowLogs']) unless map['SearchSlowLogs'].nil?)
        data.audit_logs = (Parsers::AwsElasticsearchDomainLogPublishingOptionsLogConfig.parse(map['AuditLogs']) unless map['AuditLogs'].nil?)
        return data
      end
    end

    class AwsElasticsearchDomainLogPublishingOptionsLogConfig
      def self.parse(map)
        data = Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig.new
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.enabled = map['Enabled']
        return data
      end
    end

    class AwsElasticsearchDomainEncryptionAtRestOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainEncryptionAtRestOptions.new
        data.enabled = map['Enabled']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class AwsElasticsearchDomainElasticsearchClusterConfigDetails
      def self.parse(map)
        data = Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails.new
        data.dedicated_master_count = map['DedicatedMasterCount']
        data.dedicated_master_enabled = map['DedicatedMasterEnabled']
        data.dedicated_master_type = map['DedicatedMasterType']
        data.instance_count = map['InstanceCount']
        data.instance_type = map['InstanceType']
        data.zone_awareness_config = (Parsers::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.parse(map['ZoneAwarenessConfig']) unless map['ZoneAwarenessConfig'].nil?)
        data.zone_awareness_enabled = map['ZoneAwarenessEnabled']
        return data
      end
    end

    class AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
      def self.parse(map)
        data = Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.new
        data.availability_zone_count = map['AvailabilityZoneCount']
        return data
      end
    end

    class AwsElasticsearchDomainDomainEndpointOptions
      def self.parse(map)
        data = Types::AwsElasticsearchDomainDomainEndpointOptions.new
        data.enforce_https = map['EnforceHTTPS']
        data.tls_security_policy = map['TLSSecurityPolicy']
        return data
      end
    end

    class AwsElasticBeanstalkEnvironmentDetails
      def self.parse(map)
        data = Types::AwsElasticBeanstalkEnvironmentDetails.new
        data.application_name = map['ApplicationName']
        data.cname = map['Cname']
        data.date_created = map['DateCreated']
        data.date_updated = map['DateUpdated']
        data.description = map['Description']
        data.endpoint_url = map['EndpointUrl']
        data.environment_arn = map['EnvironmentArn']
        data.environment_id = map['EnvironmentId']
        data.environment_links = (Parsers::AwsElasticBeanstalkEnvironmentEnvironmentLinks.parse(map['EnvironmentLinks']) unless map['EnvironmentLinks'].nil?)
        data.environment_name = map['EnvironmentName']
        data.option_settings = (Parsers::AwsElasticBeanstalkEnvironmentOptionSettings.parse(map['OptionSettings']) unless map['OptionSettings'].nil?)
        data.platform_arn = map['PlatformArn']
        data.solution_stack_name = map['SolutionStackName']
        data.status = map['Status']
        data.tier = (Parsers::AwsElasticBeanstalkEnvironmentTier.parse(map['Tier']) unless map['Tier'].nil?)
        data.version_label = map['VersionLabel']
        return data
      end
    end

    class AwsElasticBeanstalkEnvironmentTier
      def self.parse(map)
        data = Types::AwsElasticBeanstalkEnvironmentTier.new
        data.name = map['Name']
        data.type = map['Type']
        data.version = map['Version']
        return data
      end
    end

    class AwsElasticBeanstalkEnvironmentOptionSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElasticBeanstalkEnvironmentOptionSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElasticBeanstalkEnvironmentOptionSetting
      def self.parse(map)
        data = Types::AwsElasticBeanstalkEnvironmentOptionSetting.new
        data.namespace = map['Namespace']
        data.option_name = map['OptionName']
        data.resource_name = map['ResourceName']
        data.value = map['Value']
        return data
      end
    end

    class AwsElasticBeanstalkEnvironmentEnvironmentLinks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElasticBeanstalkEnvironmentEnvironmentLink.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElasticBeanstalkEnvironmentEnvironmentLink
      def self.parse(map)
        data = Types::AwsElasticBeanstalkEnvironmentEnvironmentLink.new
        data.environment_name = map['EnvironmentName']
        data.link_name = map['LinkName']
        return data
      end
    end

    class AwsElbv2LoadBalancerDetails
      def self.parse(map)
        data = Types::AwsElbv2LoadBalancerDetails.new
        data.availability_zones = (Parsers::AvailabilityZones.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.canonical_hosted_zone_id = map['CanonicalHostedZoneId']
        data.created_time = map['CreatedTime']
        data.dns_name = map['DNSName']
        data.ip_address_type = map['IpAddressType']
        data.scheme = map['Scheme']
        data.security_groups = (Parsers::SecurityGroups.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.state = (Parsers::LoadBalancerState.parse(map['State']) unless map['State'].nil?)
        data.type = map['Type']
        data.vpc_id = map['VpcId']
        data.load_balancer_attributes = (Parsers::AwsElbv2LoadBalancerAttributes.parse(map['LoadBalancerAttributes']) unless map['LoadBalancerAttributes'].nil?)
        return data
      end
    end

    class AwsElbv2LoadBalancerAttributes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsElbv2LoadBalancerAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsElbv2LoadBalancerAttribute
      def self.parse(map)
        data = Types::AwsElbv2LoadBalancerAttribute.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class LoadBalancerState
      def self.parse(map)
        data = Types::LoadBalancerState.new
        data.code = map['Code']
        data.reason = map['Reason']
        return data
      end
    end

    class SecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AvailabilityZones
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AvailabilityZone.parse(value) unless value.nil?
        end
        data
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        data.zone_name = map['ZoneName']
        data.subnet_id = map['SubnetId']
        return data
      end
    end

    class AwsEc2NetworkAclDetails
      def self.parse(map)
        data = Types::AwsEc2NetworkAclDetails.new
        data.is_default = map['IsDefault']
        data.network_acl_id = map['NetworkAclId']
        data.owner_id = map['OwnerId']
        data.vpc_id = map['VpcId']
        data.associations = (Parsers::AwsEc2NetworkAclAssociationList.parse(map['Associations']) unless map['Associations'].nil?)
        data.entries = (Parsers::AwsEc2NetworkAclEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        return data
      end
    end

    class AwsEc2NetworkAclEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2NetworkAclEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2NetworkAclEntry
      def self.parse(map)
        data = Types::AwsEc2NetworkAclEntry.new
        data.cidr_block = map['CidrBlock']
        data.egress = map['Egress']
        data.icmp_type_code = (Parsers::IcmpTypeCode.parse(map['IcmpTypeCode']) unless map['IcmpTypeCode'].nil?)
        data.ipv6_cidr_block = map['Ipv6CidrBlock']
        data.port_range = (Parsers::PortRangeFromTo.parse(map['PortRange']) unless map['PortRange'].nil?)
        data.protocol = map['Protocol']
        data.rule_action = map['RuleAction']
        data.rule_number = map['RuleNumber']
        return data
      end
    end

    class PortRangeFromTo
      def self.parse(map)
        data = Types::PortRangeFromTo.new
        data.from = map['From']
        data.to = map['To']
        return data
      end
    end

    class IcmpTypeCode
      def self.parse(map)
        data = Types::IcmpTypeCode.new
        data.code = map['Code']
        data.type = map['Type']
        return data
      end
    end

    class AwsEc2NetworkAclAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2NetworkAclAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2NetworkAclAssociation
      def self.parse(map)
        data = Types::AwsEc2NetworkAclAssociation.new
        data.network_acl_association_id = map['NetworkAclAssociationId']
        data.network_acl_id = map['NetworkAclId']
        data.subnet_id = map['SubnetId']
        return data
      end
    end

    class AwsEc2SubnetDetails
      def self.parse(map)
        data = Types::AwsEc2SubnetDetails.new
        data.assign_ipv6_address_on_creation = map['AssignIpv6AddressOnCreation']
        data.availability_zone = map['AvailabilityZone']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.available_ip_address_count = map['AvailableIpAddressCount']
        data.cidr_block = map['CidrBlock']
        data.default_for_az = map['DefaultForAz']
        data.map_public_ip_on_launch = map['MapPublicIpOnLaunch']
        data.owner_id = map['OwnerId']
        data.state = map['State']
        data.subnet_arn = map['SubnetArn']
        data.subnet_id = map['SubnetId']
        data.vpc_id = map['VpcId']
        data.ipv6_cidr_block_association_set = (Parsers::Ipv6CidrBlockAssociationList.parse(map['Ipv6CidrBlockAssociationSet']) unless map['Ipv6CidrBlockAssociationSet'].nil?)
        return data
      end
    end

    class Ipv6CidrBlockAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Ipv6CidrBlockAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Ipv6CidrBlockAssociation
      def self.parse(map)
        data = Types::Ipv6CidrBlockAssociation.new
        data.association_id = map['AssociationId']
        data.ipv6_cidr_block = map['Ipv6CidrBlock']
        data.cidr_block_state = map['CidrBlockState']
        return data
      end
    end

    class AwsEc2EipDetails
      def self.parse(map)
        data = Types::AwsEc2EipDetails.new
        data.instance_id = map['InstanceId']
        data.public_ip = map['PublicIp']
        data.allocation_id = map['AllocationId']
        data.association_id = map['AssociationId']
        data.domain = map['Domain']
        data.public_ipv4_pool = map['PublicIpv4Pool']
        data.network_border_group = map['NetworkBorderGroup']
        data.network_interface_id = map['NetworkInterfaceId']
        data.network_interface_owner_id = map['NetworkInterfaceOwnerId']
        data.private_ip_address = map['PrivateIpAddress']
        return data
      end
    end

    class AwsEc2VpcDetails
      def self.parse(map)
        data = Types::AwsEc2VpcDetails.new
        data.cidr_block_association_set = (Parsers::CidrBlockAssociationList.parse(map['CidrBlockAssociationSet']) unless map['CidrBlockAssociationSet'].nil?)
        data.ipv6_cidr_block_association_set = (Parsers::Ipv6CidrBlockAssociationList.parse(map['Ipv6CidrBlockAssociationSet']) unless map['Ipv6CidrBlockAssociationSet'].nil?)
        data.dhcp_options_id = map['DhcpOptionsId']
        data.state = map['State']
        return data
      end
    end

    class CidrBlockAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CidrBlockAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class CidrBlockAssociation
      def self.parse(map)
        data = Types::CidrBlockAssociation.new
        data.association_id = map['AssociationId']
        data.cidr_block = map['CidrBlock']
        data.cidr_block_state = map['CidrBlockState']
        return data
      end
    end

    class AwsEc2VolumeDetails
      def self.parse(map)
        data = Types::AwsEc2VolumeDetails.new
        data.create_time = map['CreateTime']
        data.encrypted = map['Encrypted']
        data.size = map['Size']
        data.snapshot_id = map['SnapshotId']
        data.status = map['Status']
        data.kms_key_id = map['KmsKeyId']
        data.attachments = (Parsers::AwsEc2VolumeAttachmentList.parse(map['Attachments']) unless map['Attachments'].nil?)
        return data
      end
    end

    class AwsEc2VolumeAttachmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2VolumeAttachment.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2VolumeAttachment
      def self.parse(map)
        data = Types::AwsEc2VolumeAttachment.new
        data.attach_time = map['AttachTime']
        data.delete_on_termination = map['DeleteOnTermination']
        data.instance_id = map['InstanceId']
        data.status = map['Status']
        return data
      end
    end

    class AwsEc2SecurityGroupDetails
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupDetails.new
        data.group_name = map['GroupName']
        data.group_id = map['GroupId']
        data.owner_id = map['OwnerId']
        data.vpc_id = map['VpcId']
        data.ip_permissions = (Parsers::AwsEc2SecurityGroupIpPermissionList.parse(map['IpPermissions']) unless map['IpPermissions'].nil?)
        data.ip_permissions_egress = (Parsers::AwsEc2SecurityGroupIpPermissionList.parse(map['IpPermissionsEgress']) unless map['IpPermissionsEgress'].nil?)
        return data
      end
    end

    class AwsEc2SecurityGroupIpPermissionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2SecurityGroupIpPermission.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2SecurityGroupIpPermission
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupIpPermission.new
        data.ip_protocol = map['IpProtocol']
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        data.user_id_group_pairs = (Parsers::AwsEc2SecurityGroupUserIdGroupPairList.parse(map['UserIdGroupPairs']) unless map['UserIdGroupPairs'].nil?)
        data.ip_ranges = (Parsers::AwsEc2SecurityGroupIpRangeList.parse(map['IpRanges']) unless map['IpRanges'].nil?)
        data.ipv6_ranges = (Parsers::AwsEc2SecurityGroupIpv6RangeList.parse(map['Ipv6Ranges']) unless map['Ipv6Ranges'].nil?)
        data.prefix_list_ids = (Parsers::AwsEc2SecurityGroupPrefixListIdList.parse(map['PrefixListIds']) unless map['PrefixListIds'].nil?)
        return data
      end
    end

    class AwsEc2SecurityGroupPrefixListIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2SecurityGroupPrefixListId.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2SecurityGroupPrefixListId
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupPrefixListId.new
        data.prefix_list_id = map['PrefixListId']
        return data
      end
    end

    class AwsEc2SecurityGroupIpv6RangeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2SecurityGroupIpv6Range.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2SecurityGroupIpv6Range
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupIpv6Range.new
        data.cidr_ipv6 = map['CidrIpv6']
        return data
      end
    end

    class AwsEc2SecurityGroupIpRangeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2SecurityGroupIpRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2SecurityGroupIpRange
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupIpRange.new
        data.cidr_ip = map['CidrIp']
        return data
      end
    end

    class AwsEc2SecurityGroupUserIdGroupPairList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2SecurityGroupUserIdGroupPair.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2SecurityGroupUserIdGroupPair
      def self.parse(map)
        data = Types::AwsEc2SecurityGroupUserIdGroupPair.new
        data.group_id = map['GroupId']
        data.group_name = map['GroupName']
        data.peering_status = map['PeeringStatus']
        data.user_id = map['UserId']
        data.vpc_id = map['VpcId']
        data.vpc_peering_connection_id = map['VpcPeeringConnectionId']
        return data
      end
    end

    class AwsEc2NetworkInterfaceDetails
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfaceDetails.new
        data.attachment = (Parsers::AwsEc2NetworkInterfaceAttachment.parse(map['Attachment']) unless map['Attachment'].nil?)
        data.network_interface_id = map['NetworkInterfaceId']
        data.security_groups = (Parsers::AwsEc2NetworkInterfaceSecurityGroupList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.source_dest_check = map['SourceDestCheck']
        data.ip_v6_addresses = (Parsers::AwsEc2NetworkInterfaceIpV6AddressList.parse(map['IpV6Addresses']) unless map['IpV6Addresses'].nil?)
        data.private_ip_addresses = (Parsers::AwsEc2NetworkInterfacePrivateIpAddressList.parse(map['PrivateIpAddresses']) unless map['PrivateIpAddresses'].nil?)
        data.public_dns_name = map['PublicDnsName']
        data.public_ip = map['PublicIp']
        return data
      end
    end

    class AwsEc2NetworkInterfacePrivateIpAddressList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2NetworkInterfacePrivateIpAddressDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2NetworkInterfacePrivateIpAddressDetail
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfacePrivateIpAddressDetail.new
        data.private_ip_address = map['PrivateIpAddress']
        data.private_dns_name = map['PrivateDnsName']
        return data
      end
    end

    class AwsEc2NetworkInterfaceIpV6AddressList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2NetworkInterfaceIpV6AddressDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2NetworkInterfaceIpV6AddressDetail
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfaceIpV6AddressDetail.new
        data.ip_v6_address = map['IpV6Address']
        return data
      end
    end

    class AwsEc2NetworkInterfaceSecurityGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2NetworkInterfaceSecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2NetworkInterfaceSecurityGroup
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfaceSecurityGroup.new
        data.group_name = map['GroupName']
        data.group_id = map['GroupId']
        return data
      end
    end

    class AwsEc2NetworkInterfaceAttachment
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfaceAttachment.new
        data.attach_time = map['AttachTime']
        data.attachment_id = map['AttachmentId']
        data.delete_on_termination = map['DeleteOnTermination']
        data.device_index = map['DeviceIndex']
        data.instance_id = map['InstanceId']
        data.instance_owner_id = map['InstanceOwnerId']
        data.status = map['Status']
        return data
      end
    end

    class AwsEc2InstanceDetails
      def self.parse(map)
        data = Types::AwsEc2InstanceDetails.new
        data.type = map['Type']
        data.image_id = map['ImageId']
        data.ip_v4_addresses = (Parsers::StringList.parse(map['IpV4Addresses']) unless map['IpV4Addresses'].nil?)
        data.ip_v6_addresses = (Parsers::StringList.parse(map['IpV6Addresses']) unless map['IpV6Addresses'].nil?)
        data.key_name = map['KeyName']
        data.iam_instance_profile_arn = map['IamInstanceProfileArn']
        data.vpc_id = map['VpcId']
        data.subnet_id = map['SubnetId']
        data.launched_at = map['LaunchedAt']
        data.network_interfaces = (Parsers::AwsEc2InstanceNetworkInterfacesList.parse(map['NetworkInterfaces']) unless map['NetworkInterfaces'].nil?)
        return data
      end
    end

    class AwsEc2InstanceNetworkInterfacesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsEc2InstanceNetworkInterfacesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsEc2InstanceNetworkInterfacesDetails
      def self.parse(map)
        data = Types::AwsEc2InstanceNetworkInterfacesDetails.new
        data.network_interface_id = map['NetworkInterfaceId']
        return data
      end
    end

    class AwsCloudFrontDistributionDetails
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionDetails.new
        data.cache_behaviors = (Parsers::AwsCloudFrontDistributionCacheBehaviors.parse(map['CacheBehaviors']) unless map['CacheBehaviors'].nil?)
        data.default_cache_behavior = (Parsers::AwsCloudFrontDistributionDefaultCacheBehavior.parse(map['DefaultCacheBehavior']) unless map['DefaultCacheBehavior'].nil?)
        data.default_root_object = map['DefaultRootObject']
        data.domain_name = map['DomainName']
        data.e_tag = map['ETag']
        data.last_modified_time = map['LastModifiedTime']
        data.logging = (Parsers::AwsCloudFrontDistributionLogging.parse(map['Logging']) unless map['Logging'].nil?)
        data.origins = (Parsers::AwsCloudFrontDistributionOrigins.parse(map['Origins']) unless map['Origins'].nil?)
        data.origin_groups = (Parsers::AwsCloudFrontDistributionOriginGroups.parse(map['OriginGroups']) unless map['OriginGroups'].nil?)
        data.viewer_certificate = (Parsers::AwsCloudFrontDistributionViewerCertificate.parse(map['ViewerCertificate']) unless map['ViewerCertificate'].nil?)
        data.status = map['Status']
        data.web_acl_id = map['WebAclId']
        return data
      end
    end

    class AwsCloudFrontDistributionViewerCertificate
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionViewerCertificate.new
        data.acm_certificate_arn = map['AcmCertificateArn']
        data.certificate = map['Certificate']
        data.certificate_source = map['CertificateSource']
        data.cloud_front_default_certificate = map['CloudFrontDefaultCertificate']
        data.iam_certificate_id = map['IamCertificateId']
        data.minimum_protocol_version = map['MinimumProtocolVersion']
        data.ssl_support_method = map['SslSupportMethod']
        return data
      end
    end

    class AwsCloudFrontDistributionOriginGroups
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginGroups.new
        data.items = (Parsers::AwsCloudFrontDistributionOriginGroupsItemList.parse(map['Items']) unless map['Items'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionOriginGroupsItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCloudFrontDistributionOriginGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCloudFrontDistributionOriginGroup
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginGroup.new
        data.failover_criteria = (Parsers::AwsCloudFrontDistributionOriginGroupFailover.parse(map['FailoverCriteria']) unless map['FailoverCriteria'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailover
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginGroupFailover.new
        data.status_codes = (Parsers::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.parse(map['StatusCodes']) unless map['StatusCodes'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.new
        data.items = (Parsers::AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.parse(map['Items']) unless map['Items'].nil?)
        data.quantity = map['Quantity']
        return data
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AwsCloudFrontDistributionOrigins
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOrigins.new
        data.items = (Parsers::AwsCloudFrontDistributionOriginItemList.parse(map['Items']) unless map['Items'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionOriginItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCloudFrontDistributionOriginItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCloudFrontDistributionOriginItem
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginItem.new
        data.domain_name = map['DomainName']
        data.id = map['Id']
        data.origin_path = map['OriginPath']
        data.s3_origin_config = (Parsers::AwsCloudFrontDistributionOriginS3OriginConfig.parse(map['S3OriginConfig']) unless map['S3OriginConfig'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionOriginS3OriginConfig
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionOriginS3OriginConfig.new
        data.origin_access_identity = map['OriginAccessIdentity']
        return data
      end
    end

    class AwsCloudFrontDistributionLogging
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionLogging.new
        data.bucket = map['Bucket']
        data.enabled = map['Enabled']
        data.include_cookies = map['IncludeCookies']
        data.prefix = map['Prefix']
        return data
      end
    end

    class AwsCloudFrontDistributionDefaultCacheBehavior
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionDefaultCacheBehavior.new
        data.viewer_protocol_policy = map['ViewerProtocolPolicy']
        return data
      end
    end

    class AwsCloudFrontDistributionCacheBehaviors
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionCacheBehaviors.new
        data.items = (Parsers::AwsCloudFrontDistributionCacheBehaviorsItemList.parse(map['Items']) unless map['Items'].nil?)
        return data
      end
    end

    class AwsCloudFrontDistributionCacheBehaviorsItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCloudFrontDistributionCacheBehavior.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCloudFrontDistributionCacheBehavior
      def self.parse(map)
        data = Types::AwsCloudFrontDistributionCacheBehavior.new
        data.viewer_protocol_policy = map['ViewerProtocolPolicy']
        return data
      end
    end

    class AwsCodeBuildProjectDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectDetails.new
        data.encryption_key = map['EncryptionKey']
        data.artifacts = (Parsers::AwsCodeBuildProjectArtifactsList.parse(map['Artifacts']) unless map['Artifacts'].nil?)
        data.environment = (Parsers::AwsCodeBuildProjectEnvironment.parse(map['Environment']) unless map['Environment'].nil?)
        data.name = map['Name']
        data.source = (Parsers::AwsCodeBuildProjectSource.parse(map['Source']) unless map['Source'].nil?)
        data.service_role = map['ServiceRole']
        data.logs_config = (Parsers::AwsCodeBuildProjectLogsConfigDetails.parse(map['LogsConfig']) unless map['LogsConfig'].nil?)
        data.vpc_config = (Parsers::AwsCodeBuildProjectVpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.secondary_artifacts = (Parsers::AwsCodeBuildProjectArtifactsList.parse(map['SecondaryArtifacts']) unless map['SecondaryArtifacts'].nil?)
        return data
      end
    end

    class AwsCodeBuildProjectArtifactsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCodeBuildProjectArtifactsDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCodeBuildProjectArtifactsDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectArtifactsDetails.new
        data.artifact_identifier = map['ArtifactIdentifier']
        data.encryption_disabled = map['EncryptionDisabled']
        data.location = map['Location']
        data.name = map['Name']
        data.namespace_type = map['NamespaceType']
        data.override_artifact_name = map['OverrideArtifactName']
        data.packaging = map['Packaging']
        data.path = map['Path']
        data.type = map['Type']
        return data
      end
    end

    class AwsCodeBuildProjectVpcConfig
      def self.parse(map)
        data = Types::AwsCodeBuildProjectVpcConfig.new
        data.vpc_id = map['VpcId']
        data.subnets = (Parsers::NonEmptyStringList.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.security_group_ids = (Parsers::NonEmptyStringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class AwsCodeBuildProjectLogsConfigDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectLogsConfigDetails.new
        data.cloud_watch_logs = (Parsers::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.parse(map['CloudWatchLogs']) unless map['CloudWatchLogs'].nil?)
        data.s3_logs = (Parsers::AwsCodeBuildProjectLogsConfigS3LogsDetails.parse(map['S3Logs']) unless map['S3Logs'].nil?)
        return data
      end
    end

    class AwsCodeBuildProjectLogsConfigS3LogsDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectLogsConfigS3LogsDetails.new
        data.encryption_disabled = map['EncryptionDisabled']
        data.location = map['Location']
        data.status = map['Status']
        return data
      end
    end

    class AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.new
        data.group_name = map['GroupName']
        data.status = map['Status']
        data.stream_name = map['StreamName']
        return data
      end
    end

    class AwsCodeBuildProjectSource
      def self.parse(map)
        data = Types::AwsCodeBuildProjectSource.new
        data.type = map['Type']
        data.location = map['Location']
        data.git_clone_depth = map['GitCloneDepth']
        data.insecure_ssl = map['InsecureSsl']
        return data
      end
    end

    class AwsCodeBuildProjectEnvironment
      def self.parse(map)
        data = Types::AwsCodeBuildProjectEnvironment.new
        data.certificate = map['Certificate']
        data.environment_variables = (Parsers::AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.parse(map['EnvironmentVariables']) unless map['EnvironmentVariables'].nil?)
        data.privileged_mode = map['PrivilegedMode']
        data.image_pull_credentials_type = map['ImagePullCredentialsType']
        data.registry_credential = (Parsers::AwsCodeBuildProjectEnvironmentRegistryCredential.parse(map['RegistryCredential']) unless map['RegistryCredential'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AwsCodeBuildProjectEnvironmentRegistryCredential
      def self.parse(map)
        data = Types::AwsCodeBuildProjectEnvironmentRegistryCredential.new
        data.credential = map['Credential']
        data.credential_provider = map['CredentialProvider']
        return data
      end
    end

    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
      def self.parse(map)
        data = Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.new
        data.name = map['Name']
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupDetails.new
        data.launch_configuration_name = map['LaunchConfigurationName']
        data.load_balancer_names = (Parsers::StringList.parse(map['LoadBalancerNames']) unless map['LoadBalancerNames'].nil?)
        data.health_check_type = map['HealthCheckType']
        data.health_check_grace_period = map['HealthCheckGracePeriod']
        data.created_time = map['CreatedTime']
        data.mixed_instances_policy = (Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.parse(map['MixedInstancesPolicy']) unless map['MixedInstancesPolicy'].nil?)
        data.availability_zones = (Parsers::AwsAutoScalingAutoScalingGroupAvailabilityZonesList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.launch_template = (Parsers::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.parse(map['LaunchTemplate']) unless map['LaunchTemplate'].nil?)
        data.capacity_rebalance = map['CapacityRebalance']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.new
        data.launch_template_id = map['LaunchTemplateId']
        data.launch_template_name = map['LaunchTemplateName']
        data.version = map['Version']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupAvailabilityZonesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.new
        data.value = map['Value']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.new
        data.instances_distribution = (Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.parse(map['InstancesDistribution']) unless map['InstancesDistribution'].nil?)
        data.launch_template = (Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.parse(map['LaunchTemplate']) unless map['LaunchTemplate'].nil?)
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.new
        data.launch_template_specification = (Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.parse(map['LaunchTemplateSpecification']) unless map['LaunchTemplateSpecification'].nil?)
        data.overrides = (Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.parse(map['Overrides']) unless map['Overrides'].nil?)
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.new
        data.instance_type = map['InstanceType']
        data.weighted_capacity = map['WeightedCapacity']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.new
        data.launch_template_id = map['LaunchTemplateId']
        data.launch_template_name = map['LaunchTemplateName']
        data.version = map['Version']
        return data
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
      def self.parse(map)
        data = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.new
        data.on_demand_allocation_strategy = map['OnDemandAllocationStrategy']
        data.on_demand_base_capacity = map['OnDemandBaseCapacity']
        data.on_demand_percentage_above_base_capacity = map['OnDemandPercentageAboveBaseCapacity']
        data.spot_allocation_strategy = map['SpotAllocationStrategy']
        data.spot_instance_pools = map['SpotInstancePools']
        data.spot_max_price = map['SpotMaxPrice']
        return data
      end
    end

    class DataClassificationDetails
      def self.parse(map)
        data = Types::DataClassificationDetails.new
        data.detailed_results_location = map['DetailedResultsLocation']
        data.result = (Parsers::ClassificationResult.parse(map['Result']) unless map['Result'].nil?)
        return data
      end
    end

    class ClassificationResult
      def self.parse(map)
        data = Types::ClassificationResult.new
        data.mime_type = map['MimeType']
        data.size_classified = map['SizeClassified']
        data.additional_occurrences = map['AdditionalOccurrences']
        data.status = (Parsers::ClassificationStatus.parse(map['Status']) unless map['Status'].nil?)
        data.sensitive_data = (Parsers::SensitiveDataResultList.parse(map['SensitiveData']) unless map['SensitiveData'].nil?)
        data.custom_data_identifiers = (Parsers::CustomDataIdentifiersResult.parse(map['CustomDataIdentifiers']) unless map['CustomDataIdentifiers'].nil?)
        return data
      end
    end

    class CustomDataIdentifiersResult
      def self.parse(map)
        data = Types::CustomDataIdentifiersResult.new
        data.detections = (Parsers::CustomDataIdentifiersDetectionsList.parse(map['Detections']) unless map['Detections'].nil?)
        data.total_count = map['TotalCount']
        return data
      end
    end

    class CustomDataIdentifiersDetectionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomDataIdentifiersDetections.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomDataIdentifiersDetections
      def self.parse(map)
        data = Types::CustomDataIdentifiersDetections.new
        data.count = map['Count']
        data.arn = map['Arn']
        data.name = map['Name']
        data.occurrences = (Parsers::Occurrences.parse(map['Occurrences']) unless map['Occurrences'].nil?)
        return data
      end
    end

    class Occurrences
      def self.parse(map)
        data = Types::Occurrences.new
        data.line_ranges = (Parsers::Ranges.parse(map['LineRanges']) unless map['LineRanges'].nil?)
        data.offset_ranges = (Parsers::Ranges.parse(map['OffsetRanges']) unless map['OffsetRanges'].nil?)
        data.pages = (Parsers::Pages.parse(map['Pages']) unless map['Pages'].nil?)
        data.records = (Parsers::Records.parse(map['Records']) unless map['Records'].nil?)
        data.cells = (Parsers::Cells.parse(map['Cells']) unless map['Cells'].nil?)
        return data
      end
    end

    class Cells
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cell.parse(value) unless value.nil?
        end
        data
      end
    end

    class Cell
      def self.parse(map)
        data = Types::Cell.new
        data.column = map['Column']
        data.row = map['Row']
        data.column_name = map['ColumnName']
        data.cell_reference = map['CellReference']
        return data
      end
    end

    class Records
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Record.parse(value) unless value.nil?
        end
        data
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.json_path = map['JsonPath']
        data.record_index = map['RecordIndex']
        return data
      end
    end

    class Pages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Page.parse(value) unless value.nil?
        end
        data
      end
    end

    class Page
      def self.parse(map)
        data = Types::Page.new
        data.page_number = map['PageNumber']
        data.line_range = (Parsers::Range.parse(map['LineRange']) unless map['LineRange'].nil?)
        data.offset_range = (Parsers::Range.parse(map['OffsetRange']) unless map['OffsetRange'].nil?)
        return data
      end
    end

    class Range
      def self.parse(map)
        data = Types::Range.new
        data.start = map['Start']
        data.end = map['End']
        data.start_column = map['StartColumn']
        return data
      end
    end

    class Ranges
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Range.parse(value) unless value.nil?
        end
        data
      end
    end

    class SensitiveDataResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SensitiveDataResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class SensitiveDataResult
      def self.parse(map)
        data = Types::SensitiveDataResult.new
        data.category = map['Category']
        data.detections = (Parsers::SensitiveDataDetectionsList.parse(map['Detections']) unless map['Detections'].nil?)
        data.total_count = map['TotalCount']
        return data
      end
    end

    class SensitiveDataDetectionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SensitiveDataDetections.parse(value) unless value.nil?
        end
        data
      end
    end

    class SensitiveDataDetections
      def self.parse(map)
        data = Types::SensitiveDataDetections.new
        data.count = map['Count']
        data.type = map['Type']
        data.occurrences = (Parsers::Occurrences.parse(map['Occurrences']) unless map['Occurrences'].nil?)
        return data
      end
    end

    class ClassificationStatus
      def self.parse(map)
        data = Types::ClassificationStatus.new
        data.code = map['Code']
        data.reason = map['Reason']
        return data
      end
    end

    class ThreatIntelIndicatorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThreatIntelIndicator.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThreatIntelIndicator
      def self.parse(map)
        data = Types::ThreatIntelIndicator.new
        data.type = map['Type']
        data.value = map['Value']
        data.category = map['Category']
        data.last_observed_at = map['LastObservedAt']
        data.source = map['Source']
        data.source_url = map['SourceUrl']
        return data
      end
    end

    class ProcessDetails
      def self.parse(map)
        data = Types::ProcessDetails.new
        data.name = map['Name']
        data.path = map['Path']
        data.pid = map['Pid']
        data.parent_pid = map['ParentPid']
        data.launched_at = map['LaunchedAt']
        data.terminated_at = map['TerminatedAt']
        return data
      end
    end

    class NetworkPathList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkPathComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkPathComponent
      def self.parse(map)
        data = Types::NetworkPathComponent.new
        data.component_id = map['ComponentId']
        data.component_type = map['ComponentType']
        data.egress = (Parsers::NetworkHeader.parse(map['Egress']) unless map['Egress'].nil?)
        data.ingress = (Parsers::NetworkHeader.parse(map['Ingress']) unless map['Ingress'].nil?)
        return data
      end
    end

    class NetworkHeader
      def self.parse(map)
        data = Types::NetworkHeader.new
        data.protocol = map['Protocol']
        data.destination = (Parsers::NetworkPathComponentDetails.parse(map['Destination']) unless map['Destination'].nil?)
        data.source = (Parsers::NetworkPathComponentDetails.parse(map['Source']) unless map['Source'].nil?)
        return data
      end
    end

    class NetworkPathComponentDetails
      def self.parse(map)
        data = Types::NetworkPathComponentDetails.new
        data.address = (Parsers::StringList.parse(map['Address']) unless map['Address'].nil?)
        data.port_ranges = (Parsers::PortRangeList.parse(map['PortRanges']) unless map['PortRanges'].nil?)
        return data
      end
    end

    class PortRangeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PortRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        data.begin = map['Begin']
        data.end = map['End']
        return data
      end
    end

    class Network
      def self.parse(map)
        data = Types::Network.new
        data.direction = map['Direction']
        data.protocol = map['Protocol']
        data.open_port_range = (Parsers::PortRange.parse(map['OpenPortRange']) unless map['OpenPortRange'].nil?)
        data.source_ip_v4 = map['SourceIpV4']
        data.source_ip_v6 = map['SourceIpV6']
        data.source_port = map['SourcePort']
        data.source_domain = map['SourceDomain']
        data.source_mac = map['SourceMac']
        data.destination_ip_v4 = map['DestinationIpV4']
        data.destination_ip_v6 = map['DestinationIpV6']
        data.destination_port = map['DestinationPort']
        data.destination_domain = map['DestinationDomain']
        return data
      end
    end

    class MalwareList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Malware.parse(value) unless value.nil?
        end
        data
      end
    end

    class Malware
      def self.parse(map)
        data = Types::Malware.new
        data.name = map['Name']
        data.type = map['Type']
        data.path = map['Path']
        data.state = map['State']
        return data
      end
    end

    class Remediation
      def self.parse(map)
        data = Types::Remediation.new
        data.recommendation = (Parsers::Recommendation.parse(map['Recommendation']) unless map['Recommendation'].nil?)
        return data
      end
    end

    class Recommendation
      def self.parse(map)
        data = Types::Recommendation.new
        data.text = map['Text']
        data.url = map['Url']
        return data
      end
    end

    class Severity
      def self.parse(map)
        data = Types::Severity.new
        data.product = Hearth::NumberHelper.deserialize(map['Product'])
        data.label = map['Label']
        data.normalized = map['Normalized']
        data.original = map['Original']
        return data
      end
    end

    # Operation Parser for GetInsightResults
    class GetInsightResults
      def self.parse(http_resp)
        data = Types::GetInsightResultsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_results = (Parsers::InsightResults.parse(map['InsightResults']) unless map['InsightResults'].nil?)
        data
      end
    end

    class InsightResults
      def self.parse(map)
        data = Types::InsightResults.new
        data.insight_arn = map['InsightArn']
        data.group_by_attribute = map['GroupByAttribute']
        data.result_values = (Parsers::InsightResultValueList.parse(map['ResultValues']) unless map['ResultValues'].nil?)
        return data
      end
    end

    class InsightResultValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsightResultValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsightResultValue
      def self.parse(map)
        data = Types::InsightResultValue.new
        data.group_by_attribute_value = map['GroupByAttributeValue']
        data.count = map['Count']
        return data
      end
    end

    # Operation Parser for GetInsights
    class GetInsights
      def self.parse(http_resp)
        data = Types::GetInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insights = (Parsers::InsightList.parse(map['Insights']) unless map['Insights'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InsightList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Insight.parse(value) unless value.nil?
        end
        data
      end
    end

    class Insight
      def self.parse(map)
        data = Types::Insight.new
        data.insight_arn = map['InsightArn']
        data.name = map['Name']
        data.filters = (Parsers::AwsSecurityFindingFilters.parse(map['Filters']) unless map['Filters'].nil?)
        data.group_by_attribute = map['GroupByAttribute']
        return data
      end
    end

    class AwsSecurityFindingFilters
      def self.parse(map)
        data = Types::AwsSecurityFindingFilters.new
        data.product_arn = (Parsers::StringFilterList.parse(map['ProductArn']) unless map['ProductArn'].nil?)
        data.aws_account_id = (Parsers::StringFilterList.parse(map['AwsAccountId']) unless map['AwsAccountId'].nil?)
        data.id = (Parsers::StringFilterList.parse(map['Id']) unless map['Id'].nil?)
        data.generator_id = (Parsers::StringFilterList.parse(map['GeneratorId']) unless map['GeneratorId'].nil?)
        data.region = (Parsers::StringFilterList.parse(map['Region']) unless map['Region'].nil?)
        data.type = (Parsers::StringFilterList.parse(map['Type']) unless map['Type'].nil?)
        data.first_observed_at = (Parsers::DateFilterList.parse(map['FirstObservedAt']) unless map['FirstObservedAt'].nil?)
        data.last_observed_at = (Parsers::DateFilterList.parse(map['LastObservedAt']) unless map['LastObservedAt'].nil?)
        data.created_at = (Parsers::DateFilterList.parse(map['CreatedAt']) unless map['CreatedAt'].nil?)
        data.updated_at = (Parsers::DateFilterList.parse(map['UpdatedAt']) unless map['UpdatedAt'].nil?)
        data.severity_product = (Parsers::NumberFilterList.parse(map['SeverityProduct']) unless map['SeverityProduct'].nil?)
        data.severity_normalized = (Parsers::NumberFilterList.parse(map['SeverityNormalized']) unless map['SeverityNormalized'].nil?)
        data.severity_label = (Parsers::StringFilterList.parse(map['SeverityLabel']) unless map['SeverityLabel'].nil?)
        data.confidence = (Parsers::NumberFilterList.parse(map['Confidence']) unless map['Confidence'].nil?)
        data.criticality = (Parsers::NumberFilterList.parse(map['Criticality']) unless map['Criticality'].nil?)
        data.title = (Parsers::StringFilterList.parse(map['Title']) unless map['Title'].nil?)
        data.description = (Parsers::StringFilterList.parse(map['Description']) unless map['Description'].nil?)
        data.recommendation_text = (Parsers::StringFilterList.parse(map['RecommendationText']) unless map['RecommendationText'].nil?)
        data.source_url = (Parsers::StringFilterList.parse(map['SourceUrl']) unless map['SourceUrl'].nil?)
        data.product_fields = (Parsers::MapFilterList.parse(map['ProductFields']) unless map['ProductFields'].nil?)
        data.product_name = (Parsers::StringFilterList.parse(map['ProductName']) unless map['ProductName'].nil?)
        data.company_name = (Parsers::StringFilterList.parse(map['CompanyName']) unless map['CompanyName'].nil?)
        data.user_defined_fields = (Parsers::MapFilterList.parse(map['UserDefinedFields']) unless map['UserDefinedFields'].nil?)
        data.malware_name = (Parsers::StringFilterList.parse(map['MalwareName']) unless map['MalwareName'].nil?)
        data.malware_type = (Parsers::StringFilterList.parse(map['MalwareType']) unless map['MalwareType'].nil?)
        data.malware_path = (Parsers::StringFilterList.parse(map['MalwarePath']) unless map['MalwarePath'].nil?)
        data.malware_state = (Parsers::StringFilterList.parse(map['MalwareState']) unless map['MalwareState'].nil?)
        data.network_direction = (Parsers::StringFilterList.parse(map['NetworkDirection']) unless map['NetworkDirection'].nil?)
        data.network_protocol = (Parsers::StringFilterList.parse(map['NetworkProtocol']) unless map['NetworkProtocol'].nil?)
        data.network_source_ip_v4 = (Parsers::IpFilterList.parse(map['NetworkSourceIpV4']) unless map['NetworkSourceIpV4'].nil?)
        data.network_source_ip_v6 = (Parsers::IpFilterList.parse(map['NetworkSourceIpV6']) unless map['NetworkSourceIpV6'].nil?)
        data.network_source_port = (Parsers::NumberFilterList.parse(map['NetworkSourcePort']) unless map['NetworkSourcePort'].nil?)
        data.network_source_domain = (Parsers::StringFilterList.parse(map['NetworkSourceDomain']) unless map['NetworkSourceDomain'].nil?)
        data.network_source_mac = (Parsers::StringFilterList.parse(map['NetworkSourceMac']) unless map['NetworkSourceMac'].nil?)
        data.network_destination_ip_v4 = (Parsers::IpFilterList.parse(map['NetworkDestinationIpV4']) unless map['NetworkDestinationIpV4'].nil?)
        data.network_destination_ip_v6 = (Parsers::IpFilterList.parse(map['NetworkDestinationIpV6']) unless map['NetworkDestinationIpV6'].nil?)
        data.network_destination_port = (Parsers::NumberFilterList.parse(map['NetworkDestinationPort']) unless map['NetworkDestinationPort'].nil?)
        data.network_destination_domain = (Parsers::StringFilterList.parse(map['NetworkDestinationDomain']) unless map['NetworkDestinationDomain'].nil?)
        data.process_name = (Parsers::StringFilterList.parse(map['ProcessName']) unless map['ProcessName'].nil?)
        data.process_path = (Parsers::StringFilterList.parse(map['ProcessPath']) unless map['ProcessPath'].nil?)
        data.process_pid = (Parsers::NumberFilterList.parse(map['ProcessPid']) unless map['ProcessPid'].nil?)
        data.process_parent_pid = (Parsers::NumberFilterList.parse(map['ProcessParentPid']) unless map['ProcessParentPid'].nil?)
        data.process_launched_at = (Parsers::DateFilterList.parse(map['ProcessLaunchedAt']) unless map['ProcessLaunchedAt'].nil?)
        data.process_terminated_at = (Parsers::DateFilterList.parse(map['ProcessTerminatedAt']) unless map['ProcessTerminatedAt'].nil?)
        data.threat_intel_indicator_type = (Parsers::StringFilterList.parse(map['ThreatIntelIndicatorType']) unless map['ThreatIntelIndicatorType'].nil?)
        data.threat_intel_indicator_value = (Parsers::StringFilterList.parse(map['ThreatIntelIndicatorValue']) unless map['ThreatIntelIndicatorValue'].nil?)
        data.threat_intel_indicator_category = (Parsers::StringFilterList.parse(map['ThreatIntelIndicatorCategory']) unless map['ThreatIntelIndicatorCategory'].nil?)
        data.threat_intel_indicator_last_observed_at = (Parsers::DateFilterList.parse(map['ThreatIntelIndicatorLastObservedAt']) unless map['ThreatIntelIndicatorLastObservedAt'].nil?)
        data.threat_intel_indicator_source = (Parsers::StringFilterList.parse(map['ThreatIntelIndicatorSource']) unless map['ThreatIntelIndicatorSource'].nil?)
        data.threat_intel_indicator_source_url = (Parsers::StringFilterList.parse(map['ThreatIntelIndicatorSourceUrl']) unless map['ThreatIntelIndicatorSourceUrl'].nil?)
        data.resource_type = (Parsers::StringFilterList.parse(map['ResourceType']) unless map['ResourceType'].nil?)
        data.resource_id = (Parsers::StringFilterList.parse(map['ResourceId']) unless map['ResourceId'].nil?)
        data.resource_partition = (Parsers::StringFilterList.parse(map['ResourcePartition']) unless map['ResourcePartition'].nil?)
        data.resource_region = (Parsers::StringFilterList.parse(map['ResourceRegion']) unless map['ResourceRegion'].nil?)
        data.resource_tags = (Parsers::MapFilterList.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.resource_aws_ec2_instance_type = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceType']) unless map['ResourceAwsEc2InstanceType'].nil?)
        data.resource_aws_ec2_instance_image_id = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceImageId']) unless map['ResourceAwsEc2InstanceImageId'].nil?)
        data.resource_aws_ec2_instance_ip_v4_addresses = (Parsers::IpFilterList.parse(map['ResourceAwsEc2InstanceIpV4Addresses']) unless map['ResourceAwsEc2InstanceIpV4Addresses'].nil?)
        data.resource_aws_ec2_instance_ip_v6_addresses = (Parsers::IpFilterList.parse(map['ResourceAwsEc2InstanceIpV6Addresses']) unless map['ResourceAwsEc2InstanceIpV6Addresses'].nil?)
        data.resource_aws_ec2_instance_key_name = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceKeyName']) unless map['ResourceAwsEc2InstanceKeyName'].nil?)
        data.resource_aws_ec2_instance_iam_instance_profile_arn = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceIamInstanceProfileArn']) unless map['ResourceAwsEc2InstanceIamInstanceProfileArn'].nil?)
        data.resource_aws_ec2_instance_vpc_id = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceVpcId']) unless map['ResourceAwsEc2InstanceVpcId'].nil?)
        data.resource_aws_ec2_instance_subnet_id = (Parsers::StringFilterList.parse(map['ResourceAwsEc2InstanceSubnetId']) unless map['ResourceAwsEc2InstanceSubnetId'].nil?)
        data.resource_aws_ec2_instance_launched_at = (Parsers::DateFilterList.parse(map['ResourceAwsEc2InstanceLaunchedAt']) unless map['ResourceAwsEc2InstanceLaunchedAt'].nil?)
        data.resource_aws_s3_bucket_owner_id = (Parsers::StringFilterList.parse(map['ResourceAwsS3BucketOwnerId']) unless map['ResourceAwsS3BucketOwnerId'].nil?)
        data.resource_aws_s3_bucket_owner_name = (Parsers::StringFilterList.parse(map['ResourceAwsS3BucketOwnerName']) unless map['ResourceAwsS3BucketOwnerName'].nil?)
        data.resource_aws_iam_access_key_user_name = (Parsers::StringFilterList.parse(map['ResourceAwsIamAccessKeyUserName']) unless map['ResourceAwsIamAccessKeyUserName'].nil?)
        data.resource_aws_iam_access_key_principal_name = (Parsers::StringFilterList.parse(map['ResourceAwsIamAccessKeyPrincipalName']) unless map['ResourceAwsIamAccessKeyPrincipalName'].nil?)
        data.resource_aws_iam_access_key_status = (Parsers::StringFilterList.parse(map['ResourceAwsIamAccessKeyStatus']) unless map['ResourceAwsIamAccessKeyStatus'].nil?)
        data.resource_aws_iam_access_key_created_at = (Parsers::DateFilterList.parse(map['ResourceAwsIamAccessKeyCreatedAt']) unless map['ResourceAwsIamAccessKeyCreatedAt'].nil?)
        data.resource_aws_iam_user_user_name = (Parsers::StringFilterList.parse(map['ResourceAwsIamUserUserName']) unless map['ResourceAwsIamUserUserName'].nil?)
        data.resource_container_name = (Parsers::StringFilterList.parse(map['ResourceContainerName']) unless map['ResourceContainerName'].nil?)
        data.resource_container_image_id = (Parsers::StringFilterList.parse(map['ResourceContainerImageId']) unless map['ResourceContainerImageId'].nil?)
        data.resource_container_image_name = (Parsers::StringFilterList.parse(map['ResourceContainerImageName']) unless map['ResourceContainerImageName'].nil?)
        data.resource_container_launched_at = (Parsers::DateFilterList.parse(map['ResourceContainerLaunchedAt']) unless map['ResourceContainerLaunchedAt'].nil?)
        data.resource_details_other = (Parsers::MapFilterList.parse(map['ResourceDetailsOther']) unless map['ResourceDetailsOther'].nil?)
        data.compliance_status = (Parsers::StringFilterList.parse(map['ComplianceStatus']) unless map['ComplianceStatus'].nil?)
        data.verification_state = (Parsers::StringFilterList.parse(map['VerificationState']) unless map['VerificationState'].nil?)
        data.workflow_state = (Parsers::StringFilterList.parse(map['WorkflowState']) unless map['WorkflowState'].nil?)
        data.workflow_status = (Parsers::StringFilterList.parse(map['WorkflowStatus']) unless map['WorkflowStatus'].nil?)
        data.record_state = (Parsers::StringFilterList.parse(map['RecordState']) unless map['RecordState'].nil?)
        data.related_findings_product_arn = (Parsers::StringFilterList.parse(map['RelatedFindingsProductArn']) unless map['RelatedFindingsProductArn'].nil?)
        data.related_findings_id = (Parsers::StringFilterList.parse(map['RelatedFindingsId']) unless map['RelatedFindingsId'].nil?)
        data.note_text = (Parsers::StringFilterList.parse(map['NoteText']) unless map['NoteText'].nil?)
        data.note_updated_at = (Parsers::DateFilterList.parse(map['NoteUpdatedAt']) unless map['NoteUpdatedAt'].nil?)
        data.note_updated_by = (Parsers::StringFilterList.parse(map['NoteUpdatedBy']) unless map['NoteUpdatedBy'].nil?)
        data.keyword = (Parsers::KeywordFilterList.parse(map['Keyword']) unless map['Keyword'].nil?)
        data.finding_provider_fields_confidence = (Parsers::NumberFilterList.parse(map['FindingProviderFieldsConfidence']) unless map['FindingProviderFieldsConfidence'].nil?)
        data.finding_provider_fields_criticality = (Parsers::NumberFilterList.parse(map['FindingProviderFieldsCriticality']) unless map['FindingProviderFieldsCriticality'].nil?)
        data.finding_provider_fields_related_findings_id = (Parsers::StringFilterList.parse(map['FindingProviderFieldsRelatedFindingsId']) unless map['FindingProviderFieldsRelatedFindingsId'].nil?)
        data.finding_provider_fields_related_findings_product_arn = (Parsers::StringFilterList.parse(map['FindingProviderFieldsRelatedFindingsProductArn']) unless map['FindingProviderFieldsRelatedFindingsProductArn'].nil?)
        data.finding_provider_fields_severity_label = (Parsers::StringFilterList.parse(map['FindingProviderFieldsSeverityLabel']) unless map['FindingProviderFieldsSeverityLabel'].nil?)
        data.finding_provider_fields_severity_original = (Parsers::StringFilterList.parse(map['FindingProviderFieldsSeverityOriginal']) unless map['FindingProviderFieldsSeverityOriginal'].nil?)
        data.finding_provider_fields_types = (Parsers::StringFilterList.parse(map['FindingProviderFieldsTypes']) unless map['FindingProviderFieldsTypes'].nil?)
        data.sample = (Parsers::BooleanFilterList.parse(map['Sample']) unless map['Sample'].nil?)
        return data
      end
    end

    class BooleanFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BooleanFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class BooleanFilter
      def self.parse(map)
        data = Types::BooleanFilter.new
        data.value = map['Value']
        return data
      end
    end

    class StringFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StringFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class StringFilter
      def self.parse(map)
        data = Types::StringFilter.new
        data.value = map['Value']
        data.comparison = map['Comparison']
        return data
      end
    end

    class NumberFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NumberFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class NumberFilter
      def self.parse(map)
        data = Types::NumberFilter.new
        data.gte = Hearth::NumberHelper.deserialize(map['Gte'])
        data.lte = Hearth::NumberHelper.deserialize(map['Lte'])
        data.eq = Hearth::NumberHelper.deserialize(map['Eq'])
        return data
      end
    end

    class KeywordFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KeywordFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class KeywordFilter
      def self.parse(map)
        data = Types::KeywordFilter.new
        data.value = map['Value']
        return data
      end
    end

    class DateFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DateFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class DateFilter
      def self.parse(map)
        data = Types::DateFilter.new
        data.start = map['Start']
        data.end = map['End']
        data.date_range = (Parsers::DateRange.parse(map['DateRange']) unless map['DateRange'].nil?)
        return data
      end
    end

    class DateRange
      def self.parse(map)
        data = Types::DateRange.new
        data.value = map['Value']
        data.unit = map['Unit']
        return data
      end
    end

    class MapFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MapFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class MapFilter
      def self.parse(map)
        data = Types::MapFilter.new
        data.key = map['Key']
        data.value = map['Value']
        data.comparison = map['Comparison']
        return data
      end
    end

    class IpFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IpFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class IpFilter
      def self.parse(map)
        data = Types::IpFilter.new
        data.cidr = map['Cidr']
        return data
      end
    end

    # Operation Parser for GetInvitationsCount
    class GetInvitationsCount
      def self.parse(http_resp)
        data = Types::GetInvitationsCountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations_count = map['InvitationsCount']
        data
      end
    end

    # Operation Parser for GetMasterAccount
    class GetMasterAccount
      def self.parse(http_resp)
        data = Types::GetMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.master = (Parsers::Invitation.parse(map['Master']) unless map['Master'].nil?)
        data
      end
    end

    # Operation Parser for GetMembers
    class GetMembers
      def self.parse(http_resp)
        data = Types::GetMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::MemberList.parse(map['Members']) unless map['Members'].nil?)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    class MemberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Member.parse(value) unless value.nil?
        end
        data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.account_id = map['AccountId']
        data.email = map['Email']
        data.master_id = map['MasterId']
        data.administrator_id = map['AdministratorId']
        data.member_status = map['MemberStatus']
        data.invited_at = Time.parse(map['InvitedAt']) if map['InvitedAt']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for InviteMembers
    class InviteMembers
      def self.parse(http_resp)
        data = Types::InviteMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::ResultList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for ListEnabledProductsForImport
    class ListEnabledProductsForImport
      def self.parse(http_resp)
        data = Types::ListEnabledProductsForImportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.product_subscriptions = (Parsers::ProductSubscriptionArnList.parse(map['ProductSubscriptions']) unless map['ProductSubscriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProductSubscriptionArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFindingAggregators
    class ListFindingAggregators
      def self.parse(http_resp)
        data = Types::ListFindingAggregatorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_aggregators = (Parsers::FindingAggregatorList.parse(map['FindingAggregators']) unless map['FindingAggregators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FindingAggregatorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FindingAggregator.parse(value) unless value.nil?
        end
        data
      end
    end

    class FindingAggregator
      def self.parse(map)
        data = Types::FindingAggregator.new
        data.finding_aggregator_arn = map['FindingAggregatorArn']
        return data
      end
    end

    # Operation Parser for ListInvitations
    class ListInvitations
      def self.parse(http_resp)
        data = Types::ListInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations = (Parsers::InvitationList.parse(map['Invitations']) unless map['Invitations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InvitationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Invitation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::MemberList.parse(map['Members']) unless map['Members'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.parse(http_resp)
        data = Types::ListOrganizationAdminAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.admin_accounts = (Parsers::AdminAccounts.parse(map['AdminAccounts']) unless map['AdminAccounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AdminAccounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AdminAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdminAccount
      def self.parse(map)
        data = Types::AdminAccount.new
        data.account_id = map['AccountId']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateActionTarget
    class UpdateActionTarget
      def self.parse(http_resp)
        data = Types::UpdateActionTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFindingAggregator
    class UpdateFindingAggregator
      def self.parse(http_resp)
        data = Types::UpdateFindingAggregatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_aggregator_arn = map['FindingAggregatorArn']
        data.finding_aggregation_region = map['FindingAggregationRegion']
        data.region_linking_mode = map['RegionLinkingMode']
        data.regions = (Parsers::StringList.parse(map['Regions']) unless map['Regions'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFindings
    class UpdateFindings
      def self.parse(http_resp)
        data = Types::UpdateFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateInsight
    class UpdateInsight
      def self.parse(http_resp)
        data = Types::UpdateInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateSecurityHubConfiguration
    class UpdateSecurityHubConfiguration
      def self.parse(http_resp)
        data = Types::UpdateSecurityHubConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateStandardsControl
    class UpdateStandardsControl
      def self.parse(http_resp)
        data = Types::UpdateStandardsControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
