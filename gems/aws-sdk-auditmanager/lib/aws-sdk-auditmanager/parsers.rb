# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AuditManager
  module Parsers

    # Operation Parser for AssociateAssessmentReportEvidenceFolder
    class AssociateAssessmentReportEvidenceFolder
      def self.parse(http_resp)
        data = Types::AssociateAssessmentReportEvidenceFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['fields']) unless map['fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for BatchAssociateAssessmentReportEvidence
    class BatchAssociateAssessmentReportEvidence
      def self.parse(http_resp)
        data = Types::BatchAssociateAssessmentReportEvidenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence_ids = (Parsers::EvidenceIds.parse(map['evidenceIds']) unless map['evidenceIds'].nil?)
        data.errors = (Parsers::AssessmentReportEvidenceErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class AssessmentReportEvidenceErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentReportEvidenceError.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentReportEvidenceError
      def self.parse(map)
        data = Types::AssessmentReportEvidenceError.new
        data.evidence_id = map['evidenceId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class EvidenceIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for BatchCreateDelegationByAssessment
    class BatchCreateDelegationByAssessment
      def self.parse(http_resp)
        data = Types::BatchCreateDelegationByAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegations = (Parsers::Delegations.parse(map['delegations']) unless map['delegations'].nil?)
        data.errors = (Parsers::BatchCreateDelegationByAssessmentErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchCreateDelegationByAssessmentErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchCreateDelegationByAssessmentError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchCreateDelegationByAssessmentError
      def self.parse(map)
        data = Types::BatchCreateDelegationByAssessmentError.new
        data.create_delegation_request = (Parsers::CreateDelegationRequest.parse(map['createDelegationRequest']) unless map['createDelegationRequest'].nil?)
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class CreateDelegationRequest
      def self.parse(map)
        data = Types::CreateDelegationRequest.new
        data.comment = map['comment']
        data.control_set_id = map['controlSetId']
        data.role_arn = map['roleArn']
        data.role_type = map['roleType']
        return data
      end
    end

    class Delegations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Delegation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Delegation
      def self.parse(map)
        data = Types::Delegation.new
        data.id = map['id']
        data.assessment_name = map['assessmentName']
        data.assessment_id = map['assessmentId']
        data.status = map['status']
        data.role_arn = map['roleArn']
        data.role_type = map['roleType']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.control_set_id = map['controlSetId']
        data.comment = map['comment']
        data.created_by = map['createdBy']
        return data
      end
    end

    # Operation Parser for BatchDeleteDelegationByAssessment
    class BatchDeleteDelegationByAssessment
      def self.parse(http_resp)
        data = Types::BatchDeleteDelegationByAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (Parsers::BatchDeleteDelegationByAssessmentErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchDeleteDelegationByAssessmentErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchDeleteDelegationByAssessmentError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDeleteDelegationByAssessmentError
      def self.parse(map)
        data = Types::BatchDeleteDelegationByAssessmentError.new
        data.delegation_id = map['delegationId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for BatchDisassociateAssessmentReportEvidence
    class BatchDisassociateAssessmentReportEvidence
      def self.parse(http_resp)
        data = Types::BatchDisassociateAssessmentReportEvidenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence_ids = (Parsers::EvidenceIds.parse(map['evidenceIds']) unless map['evidenceIds'].nil?)
        data.errors = (Parsers::AssessmentReportEvidenceErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    # Operation Parser for BatchImportEvidenceToAssessmentControl
    class BatchImportEvidenceToAssessmentControl
      def self.parse(http_resp)
        data = Types::BatchImportEvidenceToAssessmentControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (Parsers::BatchImportEvidenceToAssessmentControlErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchImportEvidenceToAssessmentControlErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchImportEvidenceToAssessmentControlError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchImportEvidenceToAssessmentControlError
      def self.parse(map)
        data = Types::BatchImportEvidenceToAssessmentControlError.new
        data.manual_evidence = (Parsers::ManualEvidence.parse(map['manualEvidence']) unless map['manualEvidence'].nil?)
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class ManualEvidence
      def self.parse(map)
        data = Types::ManualEvidence.new
        data.s3_resource_path = map['s3ResourcePath']
        return data
      end
    end

    # Operation Parser for CreateAssessment
    class CreateAssessment
      def self.parse(http_resp)
        data = Types::CreateAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (Parsers::Assessment.parse(map['assessment']) unless map['assessment'].nil?)
        data
      end
    end

    class Assessment
      def self.parse(map)
        data = Types::Assessment.new
        data.arn = map['arn']
        data.aws_account = (Parsers::AWSAccount.parse(map['awsAccount']) unless map['awsAccount'].nil?)
        data.metadata = (Parsers::AssessmentMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.framework = (Parsers::AssessmentFramework.parse(map['framework']) unless map['framework'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    class AssessmentFramework
      def self.parse(map)
        data = Types::AssessmentFramework.new
        data.id = map['id']
        data.arn = map['arn']
        data.metadata = (Parsers::FrameworkMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.control_sets = (Parsers::AssessmentControlSets.parse(map['controlSets']) unless map['controlSets'].nil?)
        return data
      end
    end

    class AssessmentControlSets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentControlSet.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentControlSet
      def self.parse(map)
        data = Types::AssessmentControlSet.new
        data.id = map['id']
        data.description = map['description']
        data.status = map['status']
        data.roles = (Parsers::Roles.parse(map['roles']) unless map['roles'].nil?)
        data.controls = (Parsers::AssessmentControls.parse(map['controls']) unless map['controls'].nil?)
        data.delegations = (Parsers::Delegations.parse(map['delegations']) unless map['delegations'].nil?)
        data.system_evidence_count = map['systemEvidenceCount']
        data.manual_evidence_count = map['manualEvidenceCount']
        return data
      end
    end

    class AssessmentControls
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentControl.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentControl
      def self.parse(map)
        data = Types::AssessmentControl.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.status = map['status']
        data.response = map['response']
        data.comments = (Parsers::ControlComments.parse(map['comments']) unless map['comments'].nil?)
        data.evidence_sources = (Parsers::EvidenceSources.parse(map['evidenceSources']) unless map['evidenceSources'].nil?)
        data.evidence_count = map['evidenceCount']
        data.assessment_report_evidence_count = map['assessmentReportEvidenceCount']
        return data
      end
    end

    class EvidenceSources
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ControlComments
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlComment.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlComment
      def self.parse(map)
        data = Types::ControlComment.new
        data.author_name = map['authorName']
        data.comment_body = map['commentBody']
        data.posted_date = Time.at(map['postedDate'].to_i) if map['postedDate']
        return data
      end
    end

    class Roles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Role.parse(value) unless value.nil?
        end
        data
      end
    end

    class Role
      def self.parse(map)
        data = Types::Role.new
        data.role_type = map['roleType']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class FrameworkMetadata
      def self.parse(map)
        data = Types::FrameworkMetadata.new
        data.name = map['name']
        data.description = map['description']
        data.logo = map['logo']
        data.compliance_type = map['complianceType']
        return data
      end
    end

    class AssessmentMetadata
      def self.parse(map)
        data = Types::AssessmentMetadata.new
        data.name = map['name']
        data.id = map['id']
        data.description = map['description']
        data.compliance_type = map['complianceType']
        data.status = map['status']
        data.assessment_reports_destination = (Parsers::AssessmentReportsDestination.parse(map['assessmentReportsDestination']) unless map['assessmentReportsDestination'].nil?)
        data.scope = (Parsers::Scope.parse(map['scope']) unless map['scope'].nil?)
        data.roles = (Parsers::Roles.parse(map['roles']) unless map['roles'].nil?)
        data.delegations = (Parsers::Delegations.parse(map['delegations']) unless map['delegations'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    class Scope
      def self.parse(map)
        data = Types::Scope.new
        data.aws_accounts = (Parsers::AWSAccounts.parse(map['awsAccounts']) unless map['awsAccounts'].nil?)
        data.aws_services = (Parsers::AWSServices.parse(map['awsServices']) unless map['awsServices'].nil?)
        return data
      end
    end

    class AWSServices
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AWSService.parse(value) unless value.nil?
        end
        data
      end
    end

    class AWSService
      def self.parse(map)
        data = Types::AWSService.new
        data.service_name = map['serviceName']
        return data
      end
    end

    class AWSAccounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AWSAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class AWSAccount
      def self.parse(map)
        data = Types::AWSAccount.new
        data.id = map['id']
        data.email_address = map['emailAddress']
        data.name = map['name']
        return data
      end
    end

    class AssessmentReportsDestination
      def self.parse(map)
        data = Types::AssessmentReportsDestination.new
        data.destination_type = map['destinationType']
        data.destination = map['destination']
        return data
      end
    end

    # Operation Parser for CreateAssessmentFramework
    class CreateAssessmentFramework
      def self.parse(http_resp)
        data = Types::CreateAssessmentFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework = (Parsers::Framework.parse(map['framework']) unless map['framework'].nil?)
        data
      end
    end

    class Framework
      def self.parse(map)
        data = Types::Framework.new
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.type = map['type']
        data.compliance_type = map['complianceType']
        data.description = map['description']
        data.logo = map['logo']
        data.control_sources = map['controlSources']
        data.control_sets = (Parsers::ControlSets.parse(map['controlSets']) unless map['controlSets'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_by = map['createdBy']
        data.last_updated_by = map['lastUpdatedBy']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ControlSets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlSet.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlSet
      def self.parse(map)
        data = Types::ControlSet.new
        data.id = map['id']
        data.name = map['name']
        data.controls = (Parsers::Controls.parse(map['controls']) unless map['controls'].nil?)
        return data
      end
    end

    class Controls
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Control.parse(value) unless value.nil?
        end
        data
      end
    end

    class Control
      def self.parse(map)
        data = Types::Control.new
        data.arn = map['arn']
        data.id = map['id']
        data.type = map['type']
        data.name = map['name']
        data.description = map['description']
        data.testing_information = map['testingInformation']
        data.action_plan_title = map['actionPlanTitle']
        data.action_plan_instructions = map['actionPlanInstructions']
        data.control_sources = map['controlSources']
        data.control_mapping_sources = (Parsers::ControlMappingSources.parse(map['controlMappingSources']) unless map['controlMappingSources'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_by = map['createdBy']
        data.last_updated_by = map['lastUpdatedBy']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ControlMappingSources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlMappingSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlMappingSource
      def self.parse(map)
        data = Types::ControlMappingSource.new
        data.source_id = map['sourceId']
        data.source_name = map['sourceName']
        data.source_description = map['sourceDescription']
        data.source_set_up_option = map['sourceSetUpOption']
        data.source_type = map['sourceType']
        data.source_keyword = (Parsers::SourceKeyword.parse(map['sourceKeyword']) unless map['sourceKeyword'].nil?)
        data.source_frequency = map['sourceFrequency']
        data.troubleshooting_text = map['troubleshootingText']
        return data
      end
    end

    class SourceKeyword
      def self.parse(map)
        data = Types::SourceKeyword.new
        data.keyword_input_type = map['keywordInputType']
        data.keyword_value = map['keywordValue']
        return data
      end
    end

    # Operation Parser for CreateAssessmentReport
    class CreateAssessmentReport
      def self.parse(http_resp)
        data = Types::CreateAssessmentReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_report = (Parsers::AssessmentReport.parse(map['assessmentReport']) unless map['assessmentReport'].nil?)
        data
      end
    end

    class AssessmentReport
      def self.parse(map)
        data = Types::AssessmentReport.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.aws_account_id = map['awsAccountId']
        data.assessment_id = map['assessmentId']
        data.assessment_name = map['assessmentName']
        data.author = map['author']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    # Operation Parser for CreateControl
    class CreateControl
      def self.parse(http_resp)
        data = Types::CreateControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control = (Parsers::Control.parse(map['control']) unless map['control'].nil?)
        data
      end
    end

    # Operation Parser for DeleteAssessment
    class DeleteAssessment
      def self.parse(http_resp)
        data = Types::DeleteAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAssessmentFramework
    class DeleteAssessmentFramework
      def self.parse(http_resp)
        data = Types::DeleteAssessmentFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAssessmentFrameworkShare
    class DeleteAssessmentFrameworkShare
      def self.parse(http_resp)
        data = Types::DeleteAssessmentFrameworkShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAssessmentReport
    class DeleteAssessmentReport
      def self.parse(http_resp)
        data = Types::DeleteAssessmentReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteControl
    class DeleteControl
      def self.parse(http_resp)
        data = Types::DeleteControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeregisterAccount
    class DeregisterAccount
      def self.parse(http_resp)
        data = Types::DeregisterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeregisterOrganizationAdminAccount
    class DeregisterOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DeregisterOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateAssessmentReportEvidenceFolder
    class DisassociateAssessmentReportEvidenceFolder
      def self.parse(http_resp)
        data = Types::DisassociateAssessmentReportEvidenceFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAccountStatus
    class GetAccountStatus
      def self.parse(http_resp)
        data = Types::GetAccountStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data
      end
    end

    # Operation Parser for GetAssessment
    class GetAssessment
      def self.parse(http_resp)
        data = Types::GetAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (Parsers::Assessment.parse(map['assessment']) unless map['assessment'].nil?)
        data.user_role = (Parsers::Role.parse(map['userRole']) unless map['userRole'].nil?)
        data
      end
    end

    # Operation Parser for GetAssessmentFramework
    class GetAssessmentFramework
      def self.parse(http_resp)
        data = Types::GetAssessmentFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework = (Parsers::Framework.parse(map['framework']) unless map['framework'].nil?)
        data
      end
    end

    # Operation Parser for GetAssessmentReportUrl
    class GetAssessmentReportUrl
      def self.parse(http_resp)
        data = Types::GetAssessmentReportUrlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pre_signed_url = (Parsers::URL.parse(map['preSignedUrl']) unless map['preSignedUrl'].nil?)
        data
      end
    end

    class URL
      def self.parse(map)
        data = Types::URL.new
        data.hyperlink_name = map['hyperlinkName']
        data.link = map['link']
        return data
      end
    end

    # Operation Parser for GetChangeLogs
    class GetChangeLogs
      def self.parse(http_resp)
        data = Types::GetChangeLogsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_logs = (Parsers::ChangeLogs.parse(map['changeLogs']) unless map['changeLogs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ChangeLogs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChangeLog.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangeLog
      def self.parse(map)
        data = Types::ChangeLog.new
        data.object_type = map['objectType']
        data.object_name = map['objectName']
        data.action = map['action']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.created_by = map['createdBy']
        return data
      end
    end

    # Operation Parser for GetControl
    class GetControl
      def self.parse(http_resp)
        data = Types::GetControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control = (Parsers::Control.parse(map['control']) unless map['control'].nil?)
        data
      end
    end

    # Operation Parser for GetDelegations
    class GetDelegations
      def self.parse(http_resp)
        data = Types::GetDelegationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegations = (Parsers::DelegationMetadataList.parse(map['delegations']) unless map['delegations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DelegationMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DelegationMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class DelegationMetadata
      def self.parse(map)
        data = Types::DelegationMetadata.new
        data.id = map['id']
        data.assessment_name = map['assessmentName']
        data.assessment_id = map['assessmentId']
        data.status = map['status']
        data.role_arn = map['roleArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.control_set_name = map['controlSetName']
        return data
      end
    end

    # Operation Parser for GetEvidence
    class GetEvidence
      def self.parse(http_resp)
        data = Types::GetEvidenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence = (Parsers::Evidence.parse(map['evidence']) unless map['evidence'].nil?)
        data
      end
    end

    class Evidence
      def self.parse(map)
        data = Types::Evidence.new
        data.data_source = map['dataSource']
        data.evidence_aws_account_id = map['evidenceAwsAccountId']
        data.time = Time.at(map['time'].to_i) if map['time']
        data.event_source = map['eventSource']
        data.event_name = map['eventName']
        data.evidence_by_type = map['evidenceByType']
        data.resources_included = (Parsers::Resources.parse(map['resourcesIncluded']) unless map['resourcesIncluded'].nil?)
        data.attributes = (Parsers::EvidenceAttributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.iam_id = map['iamId']
        data.compliance_check = map['complianceCheck']
        data.aws_organization = map['awsOrganization']
        data.aws_account_id = map['awsAccountId']
        data.evidence_folder_id = map['evidenceFolderId']
        data.id = map['id']
        data.assessment_report_selection = map['assessmentReportSelection']
        return data
      end
    end

    class EvidenceAttributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Resources
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
        data.arn = map['arn']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for GetEvidenceByEvidenceFolder
    class GetEvidenceByEvidenceFolder
      def self.parse(http_resp)
        data = Types::GetEvidenceByEvidenceFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence = (Parsers::EvidenceList.parse(map['evidence']) unless map['evidence'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EvidenceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Evidence.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetEvidenceFolder
    class GetEvidenceFolder
      def self.parse(http_resp)
        data = Types::GetEvidenceFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence_folder = (Parsers::AssessmentEvidenceFolder.parse(map['evidenceFolder']) unless map['evidenceFolder'].nil?)
        data
      end
    end

    class AssessmentEvidenceFolder
      def self.parse(map)
        data = Types::AssessmentEvidenceFolder.new
        data.name = map['name']
        data.date = Time.at(map['date'].to_i) if map['date']
        data.assessment_id = map['assessmentId']
        data.control_set_id = map['controlSetId']
        data.control_id = map['controlId']
        data.id = map['id']
        data.data_source = map['dataSource']
        data.author = map['author']
        data.total_evidence = map['totalEvidence']
        data.assessment_report_selection_count = map['assessmentReportSelectionCount']
        data.control_name = map['controlName']
        data.evidence_resources_included_count = map['evidenceResourcesIncludedCount']
        data.evidence_by_type_configuration_data_count = map['evidenceByTypeConfigurationDataCount']
        data.evidence_by_type_manual_count = map['evidenceByTypeManualCount']
        data.evidence_by_type_compliance_check_count = map['evidenceByTypeComplianceCheckCount']
        data.evidence_by_type_compliance_check_issues_count = map['evidenceByTypeComplianceCheckIssuesCount']
        data.evidence_by_type_user_activity_count = map['evidenceByTypeUserActivityCount']
        data.evidence_aws_service_source_count = map['evidenceAwsServiceSourceCount']
        return data
      end
    end

    # Operation Parser for GetEvidenceFoldersByAssessment
    class GetEvidenceFoldersByAssessment
      def self.parse(http_resp)
        data = Types::GetEvidenceFoldersByAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence_folders = (Parsers::AssessmentEvidenceFolders.parse(map['evidenceFolders']) unless map['evidenceFolders'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssessmentEvidenceFolders
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentEvidenceFolder.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetEvidenceFoldersByAssessmentControl
    class GetEvidenceFoldersByAssessmentControl
      def self.parse(http_resp)
        data = Types::GetEvidenceFoldersByAssessmentControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.evidence_folders = (Parsers::AssessmentEvidenceFolders.parse(map['evidenceFolders']) unless map['evidenceFolders'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetInsights
    class GetInsights
      def self.parse(http_resp)
        data = Types::GetInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insights = (Parsers::Insights.parse(map['insights']) unless map['insights'].nil?)
        data
      end
    end

    class Insights
      def self.parse(map)
        data = Types::Insights.new
        data.active_assessments_count = map['activeAssessmentsCount']
        data.noncompliant_evidence_count = map['noncompliantEvidenceCount']
        data.compliant_evidence_count = map['compliantEvidenceCount']
        data.inconclusive_evidence_count = map['inconclusiveEvidenceCount']
        data.assessment_controls_count_by_noncompliant_evidence = map['assessmentControlsCountByNoncompliantEvidence']
        data.total_assessment_controls_count = map['totalAssessmentControlsCount']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    # Operation Parser for GetInsightsByAssessment
    class GetInsightsByAssessment
      def self.parse(http_resp)
        data = Types::GetInsightsByAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insights = (Parsers::InsightsByAssessment.parse(map['insights']) unless map['insights'].nil?)
        data
      end
    end

    class InsightsByAssessment
      def self.parse(map)
        data = Types::InsightsByAssessment.new
        data.noncompliant_evidence_count = map['noncompliantEvidenceCount']
        data.compliant_evidence_count = map['compliantEvidenceCount']
        data.inconclusive_evidence_count = map['inconclusiveEvidenceCount']
        data.assessment_controls_count_by_noncompliant_evidence = map['assessmentControlsCountByNoncompliantEvidence']
        data.total_assessment_controls_count = map['totalAssessmentControlsCount']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    # Operation Parser for GetOrganizationAdminAccount
    class GetOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::GetOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.admin_account_id = map['adminAccountId']
        data.organization_id = map['organizationId']
        data
      end
    end

    # Operation Parser for GetServicesInScope
    class GetServicesInScope
      def self.parse(http_resp)
        data = Types::GetServicesInScopeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_metadata = (Parsers::ServiceMetadataList.parse(map['serviceMetadata']) unless map['serviceMetadata'].nil?)
        data
      end
    end

    class ServiceMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServiceMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceMetadata
      def self.parse(map)
        data = Types::ServiceMetadata.new
        data.name = map['name']
        data.display_name = map['displayName']
        data.description = map['description']
        data.category = map['category']
        return data
      end
    end

    # Operation Parser for GetSettings
    class GetSettings
      def self.parse(http_resp)
        data = Types::GetSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.settings = (Parsers::Settings.parse(map['settings']) unless map['settings'].nil?)
        data
      end
    end

    class Settings
      def self.parse(map)
        data = Types::Settings.new
        data.is_aws_org_enabled = map['isAwsOrgEnabled']
        data.sns_topic = map['snsTopic']
        data.default_assessment_reports_destination = (Parsers::AssessmentReportsDestination.parse(map['defaultAssessmentReportsDestination']) unless map['defaultAssessmentReportsDestination'].nil?)
        data.default_process_owners = (Parsers::Roles.parse(map['defaultProcessOwners']) unless map['defaultProcessOwners'].nil?)
        data.kms_key = map['kmsKey']
        return data
      end
    end

    # Operation Parser for ListAssessmentControlInsightsByControlDomain
    class ListAssessmentControlInsightsByControlDomain
      def self.parse(http_resp)
        data = Types::ListAssessmentControlInsightsByControlDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_insights_by_assessment = (Parsers::ControlInsightsMetadataByAssessment.parse(map['controlInsightsByAssessment']) unless map['controlInsightsByAssessment'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ControlInsightsMetadataByAssessment
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlInsightsMetadataByAssessmentItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlInsightsMetadataByAssessmentItem
      def self.parse(map)
        data = Types::ControlInsightsMetadataByAssessmentItem.new
        data.name = map['name']
        data.id = map['id']
        data.evidence_insights = (Parsers::EvidenceInsights.parse(map['evidenceInsights']) unless map['evidenceInsights'].nil?)
        data.control_set_name = map['controlSetName']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    class EvidenceInsights
      def self.parse(map)
        data = Types::EvidenceInsights.new
        data.noncompliant_evidence_count = map['noncompliantEvidenceCount']
        data.compliant_evidence_count = map['compliantEvidenceCount']
        data.inconclusive_evidence_count = map['inconclusiveEvidenceCount']
        return data
      end
    end

    # Operation Parser for ListAssessmentFrameworkShareRequests
    class ListAssessmentFrameworkShareRequests
      def self.parse(http_resp)
        data = Types::ListAssessmentFrameworkShareRequestsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_framework_share_requests = (Parsers::AssessmentFrameworkShareRequestList.parse(map['assessmentFrameworkShareRequests']) unless map['assessmentFrameworkShareRequests'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssessmentFrameworkShareRequestList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentFrameworkShareRequest.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentFrameworkShareRequest
      def self.parse(map)
        data = Types::AssessmentFrameworkShareRequest.new
        data.id = map['id']
        data.framework_id = map['frameworkId']
        data.framework_name = map['frameworkName']
        data.framework_description = map['frameworkDescription']
        data.status = map['status']
        data.source_account = map['sourceAccount']
        data.destination_account = map['destinationAccount']
        data.destination_region = map['destinationRegion']
        data.expiration_time = Time.at(map['expirationTime'].to_i) if map['expirationTime']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.comment = map['comment']
        data.standard_controls_count = map['standardControlsCount']
        data.custom_controls_count = map['customControlsCount']
        data.compliance_type = map['complianceType']
        return data
      end
    end

    # Operation Parser for ListAssessmentFrameworks
    class ListAssessmentFrameworks
      def self.parse(http_resp)
        data = Types::ListAssessmentFrameworksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework_metadata_list = (Parsers::FrameworkMetadataList.parse(map['frameworkMetadataList']) unless map['frameworkMetadataList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FrameworkMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentFrameworkMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentFrameworkMetadata
      def self.parse(map)
        data = Types::AssessmentFrameworkMetadata.new
        data.arn = map['arn']
        data.id = map['id']
        data.type = map['type']
        data.name = map['name']
        data.description = map['description']
        data.logo = map['logo']
        data.compliance_type = map['complianceType']
        data.controls_count = map['controlsCount']
        data.control_sets_count = map['controlSetsCount']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListAssessmentReports
    class ListAssessmentReports
      def self.parse(http_resp)
        data = Types::ListAssessmentReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_reports = (Parsers::AssessmentReportsMetadata.parse(map['assessmentReports']) unless map['assessmentReports'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssessmentReportsMetadata
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentReportMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentReportMetadata
      def self.parse(map)
        data = Types::AssessmentReportMetadata.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.assessment_id = map['assessmentId']
        data.assessment_name = map['assessmentName']
        data.author = map['author']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    # Operation Parser for ListAssessments
    class ListAssessments
      def self.parse(http_resp)
        data = Types::ListAssessmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_metadata = (Parsers::ListAssessmentMetadata.parse(map['assessmentMetadata']) unless map['assessmentMetadata'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListAssessmentMetadata
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssessmentMetadataItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssessmentMetadataItem
      def self.parse(map)
        data = Types::AssessmentMetadataItem.new
        data.name = map['name']
        data.id = map['id']
        data.compliance_type = map['complianceType']
        data.status = map['status']
        data.roles = (Parsers::Roles.parse(map['roles']) unless map['roles'].nil?)
        data.delegations = (Parsers::Delegations.parse(map['delegations']) unless map['delegations'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    # Operation Parser for ListControlDomainInsights
    class ListControlDomainInsights
      def self.parse(http_resp)
        data = Types::ListControlDomainInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_domain_insights = (Parsers::ControlDomainInsightsList.parse(map['controlDomainInsights']) unless map['controlDomainInsights'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ControlDomainInsightsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlDomainInsights.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlDomainInsights
      def self.parse(map)
        data = Types::ControlDomainInsights.new
        data.name = map['name']
        data.id = map['id']
        data.controls_count_by_noncompliant_evidence = map['controlsCountByNoncompliantEvidence']
        data.total_controls_count = map['totalControlsCount']
        data.evidence_insights = (Parsers::EvidenceInsights.parse(map['evidenceInsights']) unless map['evidenceInsights'].nil?)
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    # Operation Parser for ListControlDomainInsightsByAssessment
    class ListControlDomainInsightsByAssessment
      def self.parse(http_resp)
        data = Types::ListControlDomainInsightsByAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_domain_insights = (Parsers::ControlDomainInsightsList.parse(map['controlDomainInsights']) unless map['controlDomainInsights'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListControlInsightsByControlDomain
    class ListControlInsightsByControlDomain
      def self.parse(http_resp)
        data = Types::ListControlInsightsByControlDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_insights_metadata = (Parsers::ControlInsightsMetadata.parse(map['controlInsightsMetadata']) unless map['controlInsightsMetadata'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ControlInsightsMetadata
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlInsightsMetadataItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlInsightsMetadataItem
      def self.parse(map)
        data = Types::ControlInsightsMetadataItem.new
        data.name = map['name']
        data.id = map['id']
        data.evidence_insights = (Parsers::EvidenceInsights.parse(map['evidenceInsights']) unless map['evidenceInsights'].nil?)
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        return data
      end
    end

    # Operation Parser for ListControls
    class ListControls
      def self.parse(http_resp)
        data = Types::ListControlsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_metadata_list = (Parsers::ControlMetadataList.parse(map['controlMetadataList']) unless map['controlMetadataList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ControlMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlMetadata
      def self.parse(map)
        data = Types::ControlMetadata.new
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.control_sources = map['controlSources']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListKeywordsForDataSource
    class ListKeywordsForDataSource
      def self.parse(http_resp)
        data = Types::ListKeywordsForDataSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.keywords = (Parsers::Keywords.parse(map['keywords']) unless map['keywords'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Keywords
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListNotifications
    class ListNotifications
      def self.parse(http_resp)
        data = Types::ListNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notifications = (Parsers::Notifications.parse(map['notifications']) unless map['notifications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Notifications
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Notification.parse(value) unless value.nil?
        end
        data
      end
    end

    class Notification
      def self.parse(map)
        data = Types::Notification.new
        data.id = map['id']
        data.assessment_id = map['assessmentId']
        data.assessment_name = map['assessmentName']
        data.control_set_id = map['controlSetId']
        data.control_set_name = map['controlSetName']
        data.description = map['description']
        data.event_time = Time.at(map['eventTime'].to_i) if map['eventTime']
        data.source = map['source']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RegisterAccount
    class RegisterAccount
      def self.parse(http_resp)
        data = Types::RegisterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for RegisterOrganizationAdminAccount
    class RegisterOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::RegisterOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.admin_account_id = map['adminAccountId']
        data.organization_id = map['organizationId']
        data
      end
    end

    # Operation Parser for StartAssessmentFrameworkShare
    class StartAssessmentFrameworkShare
      def self.parse(http_resp)
        data = Types::StartAssessmentFrameworkShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_framework_share_request = (Parsers::AssessmentFrameworkShareRequest.parse(map['assessmentFrameworkShareRequest']) unless map['assessmentFrameworkShareRequest'].nil?)
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

    # Operation Parser for UpdateAssessment
    class UpdateAssessment
      def self.parse(http_resp)
        data = Types::UpdateAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (Parsers::Assessment.parse(map['assessment']) unless map['assessment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssessmentControl
    class UpdateAssessmentControl
      def self.parse(http_resp)
        data = Types::UpdateAssessmentControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control = (Parsers::AssessmentControl.parse(map['control']) unless map['control'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssessmentControlSetStatus
    class UpdateAssessmentControlSetStatus
      def self.parse(http_resp)
        data = Types::UpdateAssessmentControlSetStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_set = (Parsers::AssessmentControlSet.parse(map['controlSet']) unless map['controlSet'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssessmentFramework
    class UpdateAssessmentFramework
      def self.parse(http_resp)
        data = Types::UpdateAssessmentFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework = (Parsers::Framework.parse(map['framework']) unless map['framework'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssessmentFrameworkShare
    class UpdateAssessmentFrameworkShare
      def self.parse(http_resp)
        data = Types::UpdateAssessmentFrameworkShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_framework_share_request = (Parsers::AssessmentFrameworkShareRequest.parse(map['assessmentFrameworkShareRequest']) unless map['assessmentFrameworkShareRequest'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssessmentStatus
    class UpdateAssessmentStatus
      def self.parse(http_resp)
        data = Types::UpdateAssessmentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (Parsers::Assessment.parse(map['assessment']) unless map['assessment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateControl
    class UpdateControl
      def self.parse(http_resp)
        data = Types::UpdateControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control = (Parsers::Control.parse(map['control']) unless map['control'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSettings
    class UpdateSettings
      def self.parse(http_resp)
        data = Types::UpdateSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.settings = (Parsers::Settings.parse(map['settings']) unless map['settings'].nil?)
        data
      end
    end

    # Operation Parser for ValidateAssessmentReportIntegrity
    class ValidateAssessmentReportIntegrity
      def self.parse(http_resp)
        data = Types::ValidateAssessmentReportIntegrityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.signature_valid = map['signatureValid']
        data.signature_algorithm = map['signatureAlgorithm']
        data.signature_date_time = map['signatureDateTime']
        data.signature_key_id = map['signatureKeyId']
        data.validation_errors = (Parsers::ValidationErrors.parse(map['validationErrors']) unless map['validationErrors'].nil?)
        data
      end
    end

    class ValidationErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end
  end
end
