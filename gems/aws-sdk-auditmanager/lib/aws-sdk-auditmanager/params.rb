# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AuditManager
  module Params

    module AWSAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSAccount, context: context)
        type = Types::AWSAccount.new
        type.id = params[:id]
        type.email_address = params[:email_address]
        type.name = params[:name]
        type
      end
    end

    module AWSAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AWSAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AWSService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSService, context: context)
        type = Types::AWSService.new
        type.service_name = params[:service_name]
        type
      end
    end

    module AWSServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AWSService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Assessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Assessment, context: context)
        type = Types::Assessment.new
        type.arn = params[:arn]
        type.aws_account = AWSAccount.build(params[:aws_account], context: "#{context}[:aws_account]") unless params[:aws_account].nil?
        type.metadata = AssessmentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.framework = AssessmentFramework.build(params[:framework], context: "#{context}[:framework]") unless params[:framework].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AssessmentControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentControl, context: context)
        type = Types::AssessmentControl.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.response = params[:response]
        type.comments = ControlComments.build(params[:comments], context: "#{context}[:comments]") unless params[:comments].nil?
        type.evidence_sources = EvidenceSources.build(params[:evidence_sources], context: "#{context}[:evidence_sources]") unless params[:evidence_sources].nil?
        type.evidence_count = params[:evidence_count]
        type.assessment_report_evidence_count = params[:assessment_report_evidence_count]
        type
      end
    end

    module AssessmentControlSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentControlSet, context: context)
        type = Types::AssessmentControlSet.new
        type.id = params[:id]
        type.description = params[:description]
        type.status = params[:status]
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.controls = AssessmentControls.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type.delegations = Delegations.build(params[:delegations], context: "#{context}[:delegations]") unless params[:delegations].nil?
        type.system_evidence_count = params[:system_evidence_count]
        type.manual_evidence_count = params[:manual_evidence_count]
        type
      end
    end

    module AssessmentControlSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentControlSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentEvidenceFolder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentEvidenceFolder, context: context)
        type = Types::AssessmentEvidenceFolder.new
        type.name = params[:name]
        type.date = params[:date]
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.control_id = params[:control_id]
        type.id = params[:id]
        type.data_source = params[:data_source]
        type.author = params[:author]
        type.total_evidence = params[:total_evidence]
        type.assessment_report_selection_count = params[:assessment_report_selection_count]
        type.control_name = params[:control_name]
        type.evidence_resources_included_count = params[:evidence_resources_included_count]
        type.evidence_by_type_configuration_data_count = params[:evidence_by_type_configuration_data_count]
        type.evidence_by_type_manual_count = params[:evidence_by_type_manual_count]
        type.evidence_by_type_compliance_check_count = params[:evidence_by_type_compliance_check_count]
        type.evidence_by_type_compliance_check_issues_count = params[:evidence_by_type_compliance_check_issues_count]
        type.evidence_by_type_user_activity_count = params[:evidence_by_type_user_activity_count]
        type.evidence_aws_service_source_count = params[:evidence_aws_service_source_count]
        type
      end
    end

    module AssessmentEvidenceFolders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentEvidenceFolder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentFramework
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentFramework, context: context)
        type = Types::AssessmentFramework.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.metadata = FrameworkMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.control_sets = AssessmentControlSets.build(params[:control_sets], context: "#{context}[:control_sets]") unless params[:control_sets].nil?
        type
      end
    end

    module AssessmentFrameworkMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentFrameworkMetadata, context: context)
        type = Types::AssessmentFrameworkMetadata.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.logo = params[:logo]
        type.compliance_type = params[:compliance_type]
        type.controls_count = params[:controls_count]
        type.control_sets_count = params[:control_sets_count]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module AssessmentFrameworkShareRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentFrameworkShareRequest, context: context)
        type = Types::AssessmentFrameworkShareRequest.new
        type.id = params[:id]
        type.framework_id = params[:framework_id]
        type.framework_name = params[:framework_name]
        type.framework_description = params[:framework_description]
        type.status = params[:status]
        type.source_account = params[:source_account]
        type.destination_account = params[:destination_account]
        type.destination_region = params[:destination_region]
        type.expiration_time = params[:expiration_time]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.comment = params[:comment]
        type.standard_controls_count = params[:standard_controls_count]
        type.custom_controls_count = params[:custom_controls_count]
        type.compliance_type = params[:compliance_type]
        type
      end
    end

    module AssessmentFrameworkShareRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentFrameworkShareRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentMetadata, context: context)
        type = Types::AssessmentMetadata.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.compliance_type = params[:compliance_type]
        type.status = params[:status]
        type.assessment_reports_destination = AssessmentReportsDestination.build(params[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless params[:assessment_reports_destination].nil?
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.delegations = Delegations.build(params[:delegations], context: "#{context}[:delegations]") unless params[:delegations].nil?
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module AssessmentMetadataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentMetadataItem, context: context)
        type = Types::AssessmentMetadataItem.new
        type.name = params[:name]
        type.id = params[:id]
        type.compliance_type = params[:compliance_type]
        type.status = params[:status]
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.delegations = Delegations.build(params[:delegations], context: "#{context}[:delegations]") unless params[:delegations].nil?
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module AssessmentReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentReport, context: context)
        type = Types::AssessmentReport.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.aws_account_id = params[:aws_account_id]
        type.assessment_id = params[:assessment_id]
        type.assessment_name = params[:assessment_name]
        type.author = params[:author]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module AssessmentReportEvidenceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentReportEvidenceError, context: context)
        type = Types::AssessmentReportEvidenceError.new
        type.evidence_id = params[:evidence_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module AssessmentReportEvidenceErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentReportEvidenceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentReportMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentReportMetadata, context: context)
        type = Types::AssessmentReportMetadata.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.assessment_id = params[:assessment_id]
        type.assessment_name = params[:assessment_name]
        type.author = params[:author]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module AssessmentReportsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentReportsDestination, context: context)
        type = Types::AssessmentReportsDestination.new
        type.destination_type = params[:destination_type]
        type.destination = params[:destination]
        type
      end
    end

    module AssessmentReportsMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentReportMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateAssessmentReportEvidenceFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAssessmentReportEvidenceFolderInput, context: context)
        type = Types::AssociateAssessmentReportEvidenceFolderInput.new
        type.assessment_id = params[:assessment_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type
      end
    end

    module AssociateAssessmentReportEvidenceFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAssessmentReportEvidenceFolderOutput, context: context)
        type = Types::AssociateAssessmentReportEvidenceFolderOutput.new
        type
      end
    end

    module BatchAssociateAssessmentReportEvidenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateAssessmentReportEvidenceInput, context: context)
        type = Types::BatchAssociateAssessmentReportEvidenceInput.new
        type.assessment_id = params[:assessment_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type.evidence_ids = EvidenceIds.build(params[:evidence_ids], context: "#{context}[:evidence_ids]") unless params[:evidence_ids].nil?
        type
      end
    end

    module BatchAssociateAssessmentReportEvidenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateAssessmentReportEvidenceOutput, context: context)
        type = Types::BatchAssociateAssessmentReportEvidenceOutput.new
        type.evidence_ids = EvidenceIds.build(params[:evidence_ids], context: "#{context}[:evidence_ids]") unless params[:evidence_ids].nil?
        type.errors = AssessmentReportEvidenceErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchCreateDelegationByAssessmentError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateDelegationByAssessmentError, context: context)
        type = Types::BatchCreateDelegationByAssessmentError.new
        type.create_delegation_request = CreateDelegationRequest.build(params[:create_delegation_request], context: "#{context}[:create_delegation_request]") unless params[:create_delegation_request].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchCreateDelegationByAssessmentErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchCreateDelegationByAssessmentError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchCreateDelegationByAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateDelegationByAssessmentInput, context: context)
        type = Types::BatchCreateDelegationByAssessmentInput.new
        type.create_delegation_requests = CreateDelegationRequests.build(params[:create_delegation_requests], context: "#{context}[:create_delegation_requests]") unless params[:create_delegation_requests].nil?
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module BatchCreateDelegationByAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateDelegationByAssessmentOutput, context: context)
        type = Types::BatchCreateDelegationByAssessmentOutput.new
        type.delegations = Delegations.build(params[:delegations], context: "#{context}[:delegations]") unless params[:delegations].nil?
        type.errors = BatchCreateDelegationByAssessmentErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeleteDelegationByAssessmentError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDelegationByAssessmentError, context: context)
        type = Types::BatchDeleteDelegationByAssessmentError.new
        type.delegation_id = params[:delegation_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchDeleteDelegationByAssessmentErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteDelegationByAssessmentError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteDelegationByAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDelegationByAssessmentInput, context: context)
        type = Types::BatchDeleteDelegationByAssessmentInput.new
        type.delegation_ids = DelegationIds.build(params[:delegation_ids], context: "#{context}[:delegation_ids]") unless params[:delegation_ids].nil?
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module BatchDeleteDelegationByAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDelegationByAssessmentOutput, context: context)
        type = Types::BatchDeleteDelegationByAssessmentOutput.new
        type.errors = BatchDeleteDelegationByAssessmentErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDisassociateAssessmentReportEvidenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateAssessmentReportEvidenceInput, context: context)
        type = Types::BatchDisassociateAssessmentReportEvidenceInput.new
        type.assessment_id = params[:assessment_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type.evidence_ids = EvidenceIds.build(params[:evidence_ids], context: "#{context}[:evidence_ids]") unless params[:evidence_ids].nil?
        type
      end
    end

    module BatchDisassociateAssessmentReportEvidenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateAssessmentReportEvidenceOutput, context: context)
        type = Types::BatchDisassociateAssessmentReportEvidenceOutput.new
        type.evidence_ids = EvidenceIds.build(params[:evidence_ids], context: "#{context}[:evidence_ids]") unless params[:evidence_ids].nil?
        type.errors = AssessmentReportEvidenceErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchImportEvidenceToAssessmentControlError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImportEvidenceToAssessmentControlError, context: context)
        type = Types::BatchImportEvidenceToAssessmentControlError.new
        type.manual_evidence = ManualEvidence.build(params[:manual_evidence], context: "#{context}[:manual_evidence]") unless params[:manual_evidence].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchImportEvidenceToAssessmentControlErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchImportEvidenceToAssessmentControlError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchImportEvidenceToAssessmentControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImportEvidenceToAssessmentControlInput, context: context)
        type = Types::BatchImportEvidenceToAssessmentControlInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.control_id = params[:control_id]
        type.manual_evidence = ManualEvidenceList.build(params[:manual_evidence], context: "#{context}[:manual_evidence]") unless params[:manual_evidence].nil?
        type
      end
    end

    module BatchImportEvidenceToAssessmentControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImportEvidenceToAssessmentControlOutput, context: context)
        type = Types::BatchImportEvidenceToAssessmentControlOutput.new
        type.errors = BatchImportEvidenceToAssessmentControlErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module ChangeLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeLog, context: context)
        type = Types::ChangeLog.new
        type.object_type = params[:object_type]
        type.object_name = params[:object_name]
        type.action = params[:action]
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type
      end
    end

    module ChangeLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeLog.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Control
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Control, context: context)
        type = Types::Control.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.testing_information = params[:testing_information]
        type.action_plan_title = params[:action_plan_title]
        type.action_plan_instructions = params[:action_plan_instructions]
        type.control_sources = params[:control_sources]
        type.control_mapping_sources = ControlMappingSources.build(params[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless params[:control_mapping_sources].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.created_by = params[:created_by]
        type.last_updated_by = params[:last_updated_by]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ControlComment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlComment, context: context)
        type = Types::ControlComment.new
        type.author_name = params[:author_name]
        type.comment_body = params[:comment_body]
        type.posted_date = params[:posted_date]
        type
      end
    end

    module ControlComments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlComment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlDomainInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlDomainInsights, context: context)
        type = Types::ControlDomainInsights.new
        type.name = params[:name]
        type.id = params[:id]
        type.controls_count_by_noncompliant_evidence = params[:controls_count_by_noncompliant_evidence]
        type.total_controls_count = params[:total_controls_count]
        type.evidence_insights = EvidenceInsights.build(params[:evidence_insights], context: "#{context}[:evidence_insights]") unless params[:evidence_insights].nil?
        type.last_updated = params[:last_updated]
        type
      end
    end

    module ControlDomainInsightsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlDomainInsights.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlInsightsMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlInsightsMetadataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlInsightsMetadataByAssessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlInsightsMetadataByAssessmentItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlInsightsMetadataByAssessmentItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlInsightsMetadataByAssessmentItem, context: context)
        type = Types::ControlInsightsMetadataByAssessmentItem.new
        type.name = params[:name]
        type.id = params[:id]
        type.evidence_insights = EvidenceInsights.build(params[:evidence_insights], context: "#{context}[:evidence_insights]") unless params[:evidence_insights].nil?
        type.control_set_name = params[:control_set_name]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module ControlInsightsMetadataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlInsightsMetadataItem, context: context)
        type = Types::ControlInsightsMetadataItem.new
        type.name = params[:name]
        type.id = params[:id]
        type.evidence_insights = EvidenceInsights.build(params[:evidence_insights], context: "#{context}[:evidence_insights]") unless params[:evidence_insights].nil?
        type.last_updated = params[:last_updated]
        type
      end
    end

    module ControlMappingSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlMappingSource, context: context)
        type = Types::ControlMappingSource.new
        type.source_id = params[:source_id]
        type.source_name = params[:source_name]
        type.source_description = params[:source_description]
        type.source_set_up_option = params[:source_set_up_option]
        type.source_type = params[:source_type]
        type.source_keyword = SourceKeyword.build(params[:source_keyword], context: "#{context}[:source_keyword]") unless params[:source_keyword].nil?
        type.source_frequency = params[:source_frequency]
        type.troubleshooting_text = params[:troubleshooting_text]
        type
      end
    end

    module ControlMappingSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlMappingSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlMetadata, context: context)
        type = Types::ControlMetadata.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.control_sources = params[:control_sources]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module ControlMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlSet, context: context)
        type = Types::ControlSet.new
        type.id = params[:id]
        type.name = params[:name]
        type.controls = Controls.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type
      end
    end

    module ControlSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Controls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Control.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAssessmentFrameworkControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentFrameworkControl, context: context)
        type = Types::CreateAssessmentFrameworkControl.new
        type.id = params[:id]
        type
      end
    end

    module CreateAssessmentFrameworkControlSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentFrameworkControlSet, context: context)
        type = Types::CreateAssessmentFrameworkControlSet.new
        type.name = params[:name]
        type.controls = CreateAssessmentFrameworkControls.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type
      end
    end

    module CreateAssessmentFrameworkControlSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAssessmentFrameworkControlSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAssessmentFrameworkControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAssessmentFrameworkControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAssessmentFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentFrameworkInput, context: context)
        type = Types::CreateAssessmentFrameworkInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.compliance_type = params[:compliance_type]
        type.control_sets = CreateAssessmentFrameworkControlSets.build(params[:control_sets], context: "#{context}[:control_sets]") unless params[:control_sets].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssessmentFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentFrameworkOutput, context: context)
        type = Types::CreateAssessmentFrameworkOutput.new
        type.framework = Framework.build(params[:framework], context: "#{context}[:framework]") unless params[:framework].nil?
        type
      end
    end

    module CreateAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentInput, context: context)
        type = Types::CreateAssessmentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.assessment_reports_destination = AssessmentReportsDestination.build(params[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless params[:assessment_reports_destination].nil?
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.framework_id = params[:framework_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentOutput, context: context)
        type = Types::CreateAssessmentOutput.new
        type.assessment = Assessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type
      end
    end

    module CreateAssessmentReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentReportInput, context: context)
        type = Types::CreateAssessmentReportInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module CreateAssessmentReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentReportOutput, context: context)
        type = Types::CreateAssessmentReportOutput.new
        type.assessment_report = AssessmentReport.build(params[:assessment_report], context: "#{context}[:assessment_report]") unless params[:assessment_report].nil?
        type
      end
    end

    module CreateControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateControlInput, context: context)
        type = Types::CreateControlInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.testing_information = params[:testing_information]
        type.action_plan_title = params[:action_plan_title]
        type.action_plan_instructions = params[:action_plan_instructions]
        type.control_mapping_sources = CreateControlMappingSources.build(params[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless params[:control_mapping_sources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateControlMappingSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateControlMappingSource, context: context)
        type = Types::CreateControlMappingSource.new
        type.source_name = params[:source_name]
        type.source_description = params[:source_description]
        type.source_set_up_option = params[:source_set_up_option]
        type.source_type = params[:source_type]
        type.source_keyword = SourceKeyword.build(params[:source_keyword], context: "#{context}[:source_keyword]") unless params[:source_keyword].nil?
        type.source_frequency = params[:source_frequency]
        type.troubleshooting_text = params[:troubleshooting_text]
        type
      end
    end

    module CreateControlMappingSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateControlMappingSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateControlOutput, context: context)
        type = Types::CreateControlOutput.new
        type.control = Control.build(params[:control], context: "#{context}[:control]") unless params[:control].nil?
        type
      end
    end

    module CreateDelegationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDelegationRequest, context: context)
        type = Types::CreateDelegationRequest.new
        type.comment = params[:comment]
        type.control_set_id = params[:control_set_id]
        type.role_arn = params[:role_arn]
        type.role_type = params[:role_type]
        type
      end
    end

    module CreateDelegationRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateDelegationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Delegation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Delegation, context: context)
        type = Types::Delegation.new
        type.id = params[:id]
        type.assessment_name = params[:assessment_name]
        type.assessment_id = params[:assessment_id]
        type.status = params[:status]
        type.role_arn = params[:role_arn]
        type.role_type = params[:role_type]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.control_set_id = params[:control_set_id]
        type.comment = params[:comment]
        type.created_by = params[:created_by]
        type
      end
    end

    module DelegationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DelegationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationMetadata, context: context)
        type = Types::DelegationMetadata.new
        type.id = params[:id]
        type.assessment_name = params[:assessment_name]
        type.assessment_id = params[:assessment_id]
        type.status = params[:status]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.control_set_name = params[:control_set_name]
        type
      end
    end

    module DelegationMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DelegationMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Delegations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Delegation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAssessmentFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentFrameworkInput, context: context)
        type = Types::DeleteAssessmentFrameworkInput.new
        type.framework_id = params[:framework_id]
        type
      end
    end

    module DeleteAssessmentFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentFrameworkOutput, context: context)
        type = Types::DeleteAssessmentFrameworkOutput.new
        type
      end
    end

    module DeleteAssessmentFrameworkShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentFrameworkShareInput, context: context)
        type = Types::DeleteAssessmentFrameworkShareInput.new
        type.request_id = params[:request_id]
        type.request_type = params[:request_type]
        type
      end
    end

    module DeleteAssessmentFrameworkShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentFrameworkShareOutput, context: context)
        type = Types::DeleteAssessmentFrameworkShareOutput.new
        type
      end
    end

    module DeleteAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentInput, context: context)
        type = Types::DeleteAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module DeleteAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentOutput, context: context)
        type = Types::DeleteAssessmentOutput.new
        type
      end
    end

    module DeleteAssessmentReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentReportInput, context: context)
        type = Types::DeleteAssessmentReportInput.new
        type.assessment_id = params[:assessment_id]
        type.assessment_report_id = params[:assessment_report_id]
        type
      end
    end

    module DeleteAssessmentReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentReportOutput, context: context)
        type = Types::DeleteAssessmentReportOutput.new
        type
      end
    end

    module DeleteControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteControlInput, context: context)
        type = Types::DeleteControlInput.new
        type.control_id = params[:control_id]
        type
      end
    end

    module DeleteControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteControlOutput, context: context)
        type = Types::DeleteControlOutput.new
        type
      end
    end

    module DeregisterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterAccountInput, context: context)
        type = Types::DeregisterAccountInput.new
        type
      end
    end

    module DeregisterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterAccountOutput, context: context)
        type = Types::DeregisterAccountOutput.new
        type.status = params[:status]
        type
      end
    end

    module DeregisterOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterOrganizationAdminAccountInput, context: context)
        type = Types::DeregisterOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module DeregisterOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterOrganizationAdminAccountOutput, context: context)
        type = Types::DeregisterOrganizationAdminAccountOutput.new
        type
      end
    end

    module DisassociateAssessmentReportEvidenceFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAssessmentReportEvidenceFolderInput, context: context)
        type = Types::DisassociateAssessmentReportEvidenceFolderInput.new
        type.assessment_id = params[:assessment_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type
      end
    end

    module DisassociateAssessmentReportEvidenceFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAssessmentReportEvidenceFolderOutput, context: context)
        type = Types::DisassociateAssessmentReportEvidenceFolderOutput.new
        type
      end
    end

    module Evidence
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Evidence, context: context)
        type = Types::Evidence.new
        type.data_source = params[:data_source]
        type.evidence_aws_account_id = params[:evidence_aws_account_id]
        type.time = params[:time]
        type.event_source = params[:event_source]
        type.event_name = params[:event_name]
        type.evidence_by_type = params[:evidence_by_type]
        type.resources_included = Resources.build(params[:resources_included], context: "#{context}[:resources_included]") unless params[:resources_included].nil?
        type.attributes = EvidenceAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.iam_id = params[:iam_id]
        type.compliance_check = params[:compliance_check]
        type.aws_organization = params[:aws_organization]
        type.aws_account_id = params[:aws_account_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type.id = params[:id]
        type.assessment_report_selection = params[:assessment_report_selection]
        type
      end
    end

    module EvidenceAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EvidenceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EvidenceInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvidenceInsights, context: context)
        type = Types::EvidenceInsights.new
        type.noncompliant_evidence_count = params[:noncompliant_evidence_count]
        type.compliant_evidence_count = params[:compliant_evidence_count]
        type.inconclusive_evidence_count = params[:inconclusive_evidence_count]
        type
      end
    end

    module EvidenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Evidence.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvidenceSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Framework
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Framework, context: context)
        type = Types::Framework.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.compliance_type = params[:compliance_type]
        type.description = params[:description]
        type.logo = params[:logo]
        type.control_sources = params[:control_sources]
        type.control_sets = ControlSets.build(params[:control_sets], context: "#{context}[:control_sets]") unless params[:control_sets].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.created_by = params[:created_by]
        type.last_updated_by = params[:last_updated_by]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FrameworkMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameworkMetadata, context: context)
        type = Types::FrameworkMetadata.new
        type.name = params[:name]
        type.description = params[:description]
        type.logo = params[:logo]
        type.compliance_type = params[:compliance_type]
        type
      end
    end

    module FrameworkMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentFrameworkMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccountStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountStatusInput, context: context)
        type = Types::GetAccountStatusInput.new
        type
      end
    end

    module GetAccountStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountStatusOutput, context: context)
        type = Types::GetAccountStatusOutput.new
        type.status = params[:status]
        type
      end
    end

    module GetAssessmentFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentFrameworkInput, context: context)
        type = Types::GetAssessmentFrameworkInput.new
        type.framework_id = params[:framework_id]
        type
      end
    end

    module GetAssessmentFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentFrameworkOutput, context: context)
        type = Types::GetAssessmentFrameworkOutput.new
        type.framework = Framework.build(params[:framework], context: "#{context}[:framework]") unless params[:framework].nil?
        type
      end
    end

    module GetAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentInput, context: context)
        type = Types::GetAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module GetAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentOutput, context: context)
        type = Types::GetAssessmentOutput.new
        type.assessment = Assessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type.user_role = Role.build(params[:user_role], context: "#{context}[:user_role]") unless params[:user_role].nil?
        type
      end
    end

    module GetAssessmentReportUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentReportUrlInput, context: context)
        type = Types::GetAssessmentReportUrlInput.new
        type.assessment_report_id = params[:assessment_report_id]
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module GetAssessmentReportUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentReportUrlOutput, context: context)
        type = Types::GetAssessmentReportUrlOutput.new
        type.pre_signed_url = URL.build(params[:pre_signed_url], context: "#{context}[:pre_signed_url]") unless params[:pre_signed_url].nil?
        type
      end
    end

    module GetChangeLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeLogsInput, context: context)
        type = Types::GetChangeLogsInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.control_id = params[:control_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetChangeLogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeLogsOutput, context: context)
        type = Types::GetChangeLogsOutput.new
        type.change_logs = ChangeLogs.build(params[:change_logs], context: "#{context}[:change_logs]") unless params[:change_logs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetControlInput, context: context)
        type = Types::GetControlInput.new
        type.control_id = params[:control_id]
        type
      end
    end

    module GetControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetControlOutput, context: context)
        type = Types::GetControlOutput.new
        type.control = Control.build(params[:control], context: "#{context}[:control]") unless params[:control].nil?
        type
      end
    end

    module GetDelegationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDelegationsInput, context: context)
        type = Types::GetDelegationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetDelegationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDelegationsOutput, context: context)
        type = Types::GetDelegationsOutput.new
        type.delegations = DelegationMetadataList.build(params[:delegations], context: "#{context}[:delegations]") unless params[:delegations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEvidenceByEvidenceFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceByEvidenceFolderInput, context: context)
        type = Types::GetEvidenceByEvidenceFolderInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEvidenceByEvidenceFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceByEvidenceFolderOutput, context: context)
        type = Types::GetEvidenceByEvidenceFolderOutput.new
        type.evidence = EvidenceList.build(params[:evidence], context: "#{context}[:evidence]") unless params[:evidence].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEvidenceFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFolderInput, context: context)
        type = Types::GetEvidenceFolderInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type
      end
    end

    module GetEvidenceFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFolderOutput, context: context)
        type = Types::GetEvidenceFolderOutput.new
        type.evidence_folder = AssessmentEvidenceFolder.build(params[:evidence_folder], context: "#{context}[:evidence_folder]") unless params[:evidence_folder].nil?
        type
      end
    end

    module GetEvidenceFoldersByAssessmentControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFoldersByAssessmentControlInput, context: context)
        type = Types::GetEvidenceFoldersByAssessmentControlInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.control_id = params[:control_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEvidenceFoldersByAssessmentControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFoldersByAssessmentControlOutput, context: context)
        type = Types::GetEvidenceFoldersByAssessmentControlOutput.new
        type.evidence_folders = AssessmentEvidenceFolders.build(params[:evidence_folders], context: "#{context}[:evidence_folders]") unless params[:evidence_folders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEvidenceFoldersByAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFoldersByAssessmentInput, context: context)
        type = Types::GetEvidenceFoldersByAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEvidenceFoldersByAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceFoldersByAssessmentOutput, context: context)
        type = Types::GetEvidenceFoldersByAssessmentOutput.new
        type.evidence_folders = AssessmentEvidenceFolders.build(params[:evidence_folders], context: "#{context}[:evidence_folders]") unless params[:evidence_folders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEvidenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceInput, context: context)
        type = Types::GetEvidenceInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.evidence_folder_id = params[:evidence_folder_id]
        type.evidence_id = params[:evidence_id]
        type
      end
    end

    module GetEvidenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvidenceOutput, context: context)
        type = Types::GetEvidenceOutput.new
        type.evidence = Evidence.build(params[:evidence], context: "#{context}[:evidence]") unless params[:evidence].nil?
        type
      end
    end

    module GetInsightsByAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsByAssessmentInput, context: context)
        type = Types::GetInsightsByAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module GetInsightsByAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsByAssessmentOutput, context: context)
        type = Types::GetInsightsByAssessmentOutput.new
        type.insights = InsightsByAssessment.build(params[:insights], context: "#{context}[:insights]") unless params[:insights].nil?
        type
      end
    end

    module GetInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsInput, context: context)
        type = Types::GetInsightsInput.new
        type
      end
    end

    module GetInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsOutput, context: context)
        type = Types::GetInsightsOutput.new
        type.insights = Insights.build(params[:insights], context: "#{context}[:insights]") unless params[:insights].nil?
        type
      end
    end

    module GetOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationAdminAccountInput, context: context)
        type = Types::GetOrganizationAdminAccountInput.new
        type
      end
    end

    module GetOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationAdminAccountOutput, context: context)
        type = Types::GetOrganizationAdminAccountOutput.new
        type.admin_account_id = params[:admin_account_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module GetServicesInScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServicesInScopeInput, context: context)
        type = Types::GetServicesInScopeInput.new
        type
      end
    end

    module GetServicesInScopeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServicesInScopeOutput, context: context)
        type = Types::GetServicesInScopeOutput.new
        type.service_metadata = ServiceMetadataList.build(params[:service_metadata], context: "#{context}[:service_metadata]") unless params[:service_metadata].nil?
        type
      end
    end

    module GetSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSettingsInput, context: context)
        type = Types::GetSettingsInput.new
        type.attribute = params[:attribute]
        type
      end
    end

    module GetSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSettingsOutput, context: context)
        type = Types::GetSettingsOutput.new
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module Insights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Insights, context: context)
        type = Types::Insights.new
        type.active_assessments_count = params[:active_assessments_count]
        type.noncompliant_evidence_count = params[:noncompliant_evidence_count]
        type.compliant_evidence_count = params[:compliant_evidence_count]
        type.inconclusive_evidence_count = params[:inconclusive_evidence_count]
        type.assessment_controls_count_by_noncompliant_evidence = params[:assessment_controls_count_by_noncompliant_evidence]
        type.total_assessment_controls_count = params[:total_assessment_controls_count]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module InsightsByAssessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightsByAssessment, context: context)
        type = Types::InsightsByAssessment.new
        type.noncompliant_evidence_count = params[:noncompliant_evidence_count]
        type.compliant_evidence_count = params[:compliant_evidence_count]
        type.inconclusive_evidence_count = params[:inconclusive_evidence_count]
        type.assessment_controls_count_by_noncompliant_evidence = params[:assessment_controls_count_by_noncompliant_evidence]
        type.total_assessment_controls_count = params[:total_assessment_controls_count]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Keywords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListAssessmentControlInsightsByControlDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentControlInsightsByControlDomainInput, context: context)
        type = Types::ListAssessmentControlInsightsByControlDomainInput.new
        type.control_domain_id = params[:control_domain_id]
        type.assessment_id = params[:assessment_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentControlInsightsByControlDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentControlInsightsByControlDomainOutput, context: context)
        type = Types::ListAssessmentControlInsightsByControlDomainOutput.new
        type.control_insights_by_assessment = ControlInsightsMetadataByAssessment.build(params[:control_insights_by_assessment], context: "#{context}[:control_insights_by_assessment]") unless params[:control_insights_by_assessment].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentFrameworkShareRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentFrameworkShareRequestsInput, context: context)
        type = Types::ListAssessmentFrameworkShareRequestsInput.new
        type.request_type = params[:request_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentFrameworkShareRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentFrameworkShareRequestsOutput, context: context)
        type = Types::ListAssessmentFrameworkShareRequestsOutput.new
        type.assessment_framework_share_requests = AssessmentFrameworkShareRequestList.build(params[:assessment_framework_share_requests], context: "#{context}[:assessment_framework_share_requests]") unless params[:assessment_framework_share_requests].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentFrameworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentFrameworksInput, context: context)
        type = Types::ListAssessmentFrameworksInput.new
        type.framework_type = params[:framework_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentFrameworksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentFrameworksOutput, context: context)
        type = Types::ListAssessmentFrameworksOutput.new
        type.framework_metadata_list = FrameworkMetadataList.build(params[:framework_metadata_list], context: "#{context}[:framework_metadata_list]") unless params[:framework_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentMetadataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAssessmentReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentReportsInput, context: context)
        type = Types::ListAssessmentReportsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentReportsOutput, context: context)
        type = Types::ListAssessmentReportsOutput.new
        type.assessment_reports = AssessmentReportsMetadata.build(params[:assessment_reports], context: "#{context}[:assessment_reports]") unless params[:assessment_reports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentsInput, context: context)
        type = Types::ListAssessmentsInput.new
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentsOutput, context: context)
        type = Types::ListAssessmentsOutput.new
        type.assessment_metadata = ListAssessmentMetadata.build(params[:assessment_metadata], context: "#{context}[:assessment_metadata]") unless params[:assessment_metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlDomainInsightsByAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlDomainInsightsByAssessmentInput, context: context)
        type = Types::ListControlDomainInsightsByAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListControlDomainInsightsByAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlDomainInsightsByAssessmentOutput, context: context)
        type = Types::ListControlDomainInsightsByAssessmentOutput.new
        type.control_domain_insights = ControlDomainInsightsList.build(params[:control_domain_insights], context: "#{context}[:control_domain_insights]") unless params[:control_domain_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlDomainInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlDomainInsightsInput, context: context)
        type = Types::ListControlDomainInsightsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListControlDomainInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlDomainInsightsOutput, context: context)
        type = Types::ListControlDomainInsightsOutput.new
        type.control_domain_insights = ControlDomainInsightsList.build(params[:control_domain_insights], context: "#{context}[:control_domain_insights]") unless params[:control_domain_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlInsightsByControlDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlInsightsByControlDomainInput, context: context)
        type = Types::ListControlInsightsByControlDomainInput.new
        type.control_domain_id = params[:control_domain_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListControlInsightsByControlDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlInsightsByControlDomainOutput, context: context)
        type = Types::ListControlInsightsByControlDomainOutput.new
        type.control_insights_metadata = ControlInsightsMetadata.build(params[:control_insights_metadata], context: "#{context}[:control_insights_metadata]") unless params[:control_insights_metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlsInput, context: context)
        type = Types::ListControlsInput.new
        type.control_type = params[:control_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListControlsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlsOutput, context: context)
        type = Types::ListControlsOutput.new
        type.control_metadata_list = ControlMetadataList.build(params[:control_metadata_list], context: "#{context}[:control_metadata_list]") unless params[:control_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListKeywordsForDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeywordsForDataSourceInput, context: context)
        type = Types::ListKeywordsForDataSourceInput.new
        type.source = params[:source]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListKeywordsForDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeywordsForDataSourceOutput, context: context)
        type = Types::ListKeywordsForDataSourceOutput.new
        type.keywords = Keywords.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationsInput, context: context)
        type = Types::ListNotificationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationsOutput, context: context)
        type = Types::ListNotificationsOutput.new
        type.notifications = Notifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ManualEvidence
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManualEvidence, context: context)
        type = Types::ManualEvidence.new
        type.s3_resource_path = params[:s3_resource_path]
        type
      end
    end

    module ManualEvidenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManualEvidence.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Notification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Notification, context: context)
        type = Types::Notification.new
        type.id = params[:id]
        type.assessment_id = params[:assessment_id]
        type.assessment_name = params[:assessment_name]
        type.control_set_id = params[:control_set_id]
        type.control_set_name = params[:control_set_name]
        type.description = params[:description]
        type.event_time = params[:event_time]
        type.source = params[:source]
        type
      end
    end

    module Notifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Notification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAccountInput, context: context)
        type = Types::RegisterAccountInput.new
        type.kms_key = params[:kms_key]
        type.delegated_admin_account = params[:delegated_admin_account]
        type
      end
    end

    module RegisterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAccountOutput, context: context)
        type = Types::RegisterAccountOutput.new
        type.status = params[:status]
        type
      end
    end

    module RegisterOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterOrganizationAdminAccountInput, context: context)
        type = Types::RegisterOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module RegisterOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterOrganizationAdminAccountOutput, context: context)
        type = Types::RegisterOrganizationAdminAccountOutput.new
        type.admin_account_id = params[:admin_account_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.arn = params[:arn]
        type.value = params[:value]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Role
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Role, context: context)
        type = Types::Role.new
        type.role_type = params[:role_type]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module Roles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Role.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scope, context: context)
        type = Types::Scope.new
        type.aws_accounts = AWSAccounts.build(params[:aws_accounts], context: "#{context}[:aws_accounts]") unless params[:aws_accounts].nil?
        type.aws_services = AWSServices.build(params[:aws_services], context: "#{context}[:aws_services]") unless params[:aws_services].nil?
        type
      end
    end

    module ServiceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceMetadata, context: context)
        type = Types::ServiceMetadata.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.category = params[:category]
        type
      end
    end

    module ServiceMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Settings, context: context)
        type = Types::Settings.new
        type.is_aws_org_enabled = params[:is_aws_org_enabled]
        type.sns_topic = params[:sns_topic]
        type.default_assessment_reports_destination = AssessmentReportsDestination.build(params[:default_assessment_reports_destination], context: "#{context}[:default_assessment_reports_destination]") unless params[:default_assessment_reports_destination].nil?
        type.default_process_owners = Roles.build(params[:default_process_owners], context: "#{context}[:default_process_owners]") unless params[:default_process_owners].nil?
        type.kms_key = params[:kms_key]
        type
      end
    end

    module SourceKeyword
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceKeyword, context: context)
        type = Types::SourceKeyword.new
        type.keyword_input_type = params[:keyword_input_type]
        type.keyword_value = params[:keyword_value]
        type
      end
    end

    module StartAssessmentFrameworkShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentFrameworkShareInput, context: context)
        type = Types::StartAssessmentFrameworkShareInput.new
        type.framework_id = params[:framework_id]
        type.destination_account = params[:destination_account]
        type.destination_region = params[:destination_region]
        type.comment = params[:comment]
        type
      end
    end

    module StartAssessmentFrameworkShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentFrameworkShareOutput, context: context)
        type = Types::StartAssessmentFrameworkShareOutput.new
        type.assessment_framework_share_request = AssessmentFrameworkShareRequest.build(params[:assessment_framework_share_request], context: "#{context}[:assessment_framework_share_request]") unless params[:assessment_framework_share_request].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module URL
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::URL, context: context)
        type = Types::URL.new
        type.hyperlink_name = params[:hyperlink_name]
        type.link = params[:link]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAssessmentControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentControlInput, context: context)
        type = Types::UpdateAssessmentControlInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.control_id = params[:control_id]
        type.control_status = params[:control_status]
        type.comment_body = params[:comment_body]
        type
      end
    end

    module UpdateAssessmentControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentControlOutput, context: context)
        type = Types::UpdateAssessmentControlOutput.new
        type.control = AssessmentControl.build(params[:control], context: "#{context}[:control]") unless params[:control].nil?
        type
      end
    end

    module UpdateAssessmentControlSetStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentControlSetStatusInput, context: context)
        type = Types::UpdateAssessmentControlSetStatusInput.new
        type.assessment_id = params[:assessment_id]
        type.control_set_id = params[:control_set_id]
        type.status = params[:status]
        type.comment = params[:comment]
        type
      end
    end

    module UpdateAssessmentControlSetStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentControlSetStatusOutput, context: context)
        type = Types::UpdateAssessmentControlSetStatusOutput.new
        type.control_set = AssessmentControlSet.build(params[:control_set], context: "#{context}[:control_set]") unless params[:control_set].nil?
        type
      end
    end

    module UpdateAssessmentFrameworkControlSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentFrameworkControlSet, context: context)
        type = Types::UpdateAssessmentFrameworkControlSet.new
        type.id = params[:id]
        type.name = params[:name]
        type.controls = CreateAssessmentFrameworkControls.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type
      end
    end

    module UpdateAssessmentFrameworkControlSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateAssessmentFrameworkControlSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateAssessmentFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentFrameworkInput, context: context)
        type = Types::UpdateAssessmentFrameworkInput.new
        type.framework_id = params[:framework_id]
        type.name = params[:name]
        type.description = params[:description]
        type.compliance_type = params[:compliance_type]
        type.control_sets = UpdateAssessmentFrameworkControlSets.build(params[:control_sets], context: "#{context}[:control_sets]") unless params[:control_sets].nil?
        type
      end
    end

    module UpdateAssessmentFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentFrameworkOutput, context: context)
        type = Types::UpdateAssessmentFrameworkOutput.new
        type.framework = Framework.build(params[:framework], context: "#{context}[:framework]") unless params[:framework].nil?
        type
      end
    end

    module UpdateAssessmentFrameworkShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentFrameworkShareInput, context: context)
        type = Types::UpdateAssessmentFrameworkShareInput.new
        type.request_id = params[:request_id]
        type.request_type = params[:request_type]
        type.action = params[:action]
        type
      end
    end

    module UpdateAssessmentFrameworkShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentFrameworkShareOutput, context: context)
        type = Types::UpdateAssessmentFrameworkShareOutput.new
        type.assessment_framework_share_request = AssessmentFrameworkShareRequest.build(params[:assessment_framework_share_request], context: "#{context}[:assessment_framework_share_request]") unless params[:assessment_framework_share_request].nil?
        type
      end
    end

    module UpdateAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentInput, context: context)
        type = Types::UpdateAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type.assessment_name = params[:assessment_name]
        type.assessment_description = params[:assessment_description]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.assessment_reports_destination = AssessmentReportsDestination.build(params[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless params[:assessment_reports_destination].nil?
        type.roles = Roles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type
      end
    end

    module UpdateAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentOutput, context: context)
        type = Types::UpdateAssessmentOutput.new
        type.assessment = Assessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type
      end
    end

    module UpdateAssessmentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentStatusInput, context: context)
        type = Types::UpdateAssessmentStatusInput.new
        type.assessment_id = params[:assessment_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateAssessmentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentStatusOutput, context: context)
        type = Types::UpdateAssessmentStatusOutput.new
        type.assessment = Assessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type
      end
    end

    module UpdateControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateControlInput, context: context)
        type = Types::UpdateControlInput.new
        type.control_id = params[:control_id]
        type.name = params[:name]
        type.description = params[:description]
        type.testing_information = params[:testing_information]
        type.action_plan_title = params[:action_plan_title]
        type.action_plan_instructions = params[:action_plan_instructions]
        type.control_mapping_sources = ControlMappingSources.build(params[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless params[:control_mapping_sources].nil?
        type
      end
    end

    module UpdateControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateControlOutput, context: context)
        type = Types::UpdateControlOutput.new
        type.control = Control.build(params[:control], context: "#{context}[:control]") unless params[:control].nil?
        type
      end
    end

    module UpdateSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSettingsInput, context: context)
        type = Types::UpdateSettingsInput.new
        type.sns_topic = params[:sns_topic]
        type.default_assessment_reports_destination = AssessmentReportsDestination.build(params[:default_assessment_reports_destination], context: "#{context}[:default_assessment_reports_destination]") unless params[:default_assessment_reports_destination].nil?
        type.default_process_owners = Roles.build(params[:default_process_owners], context: "#{context}[:default_process_owners]") unless params[:default_process_owners].nil?
        type.kms_key = params[:kms_key]
        type
      end
    end

    module UpdateSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSettingsOutput, context: context)
        type = Types::UpdateSettingsOutput.new
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module ValidateAssessmentReportIntegrityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateAssessmentReportIntegrityInput, context: context)
        type = Types::ValidateAssessmentReportIntegrityInput.new
        type.s3_relative_path = params[:s3_relative_path]
        type
      end
    end

    module ValidateAssessmentReportIntegrityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateAssessmentReportIntegrityOutput, context: context)
        type = Types::ValidateAssessmentReportIntegrityOutput.new
        type.signature_valid = params[:signature_valid]
        type.signature_algorithm = params[:signature_algorithm]
        type.signature_date_time = params[:signature_date_time]
        type.signature_key_id = params[:signature_key_id]
        type.validation_errors = ValidationErrors.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type
      end
    end

    module ValidationErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
