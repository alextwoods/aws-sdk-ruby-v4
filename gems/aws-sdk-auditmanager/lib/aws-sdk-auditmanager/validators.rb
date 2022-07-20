# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AuditManager
  module Validators

    class AWSAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSAccount, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AWSAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AWSAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AWSService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSService, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class AWSServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AWSService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Assessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Assessment, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        AWSAccount.validate!(input[:aws_account], context: "#{context}[:aws_account]") unless input[:aws_account].nil?
        AssessmentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        AssessmentFramework.validate!(input[:framework], context: "#{context}[:framework]") unless input[:framework].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AssessmentControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentControl, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:response], ::String, context: "#{context}[:response]")
        ControlComments.validate!(input[:comments], context: "#{context}[:comments]") unless input[:comments].nil?
        EvidenceSources.validate!(input[:evidence_sources], context: "#{context}[:evidence_sources]") unless input[:evidence_sources].nil?
        Hearth::Validator.validate!(input[:evidence_count], ::Integer, context: "#{context}[:evidence_count]")
        Hearth::Validator.validate!(input[:assessment_report_evidence_count], ::Integer, context: "#{context}[:assessment_report_evidence_count]")
      end
    end

    class AssessmentControlSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentControlSet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        AssessmentControls.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
        Delegations.validate!(input[:delegations], context: "#{context}[:delegations]") unless input[:delegations].nil?
        Hearth::Validator.validate!(input[:system_evidence_count], ::Integer, context: "#{context}[:system_evidence_count]")
        Hearth::Validator.validate!(input[:manual_evidence_count], ::Integer, context: "#{context}[:manual_evidence_count]")
      end
    end

    class AssessmentControlSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentControlSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentEvidenceFolder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentEvidenceFolder, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:total_evidence], ::Integer, context: "#{context}[:total_evidence]")
        Hearth::Validator.validate!(input[:assessment_report_selection_count], ::Integer, context: "#{context}[:assessment_report_selection_count]")
        Hearth::Validator.validate!(input[:control_name], ::String, context: "#{context}[:control_name]")
        Hearth::Validator.validate!(input[:evidence_resources_included_count], ::Integer, context: "#{context}[:evidence_resources_included_count]")
        Hearth::Validator.validate!(input[:evidence_by_type_configuration_data_count], ::Integer, context: "#{context}[:evidence_by_type_configuration_data_count]")
        Hearth::Validator.validate!(input[:evidence_by_type_manual_count], ::Integer, context: "#{context}[:evidence_by_type_manual_count]")
        Hearth::Validator.validate!(input[:evidence_by_type_compliance_check_count], ::Integer, context: "#{context}[:evidence_by_type_compliance_check_count]")
        Hearth::Validator.validate!(input[:evidence_by_type_compliance_check_issues_count], ::Integer, context: "#{context}[:evidence_by_type_compliance_check_issues_count]")
        Hearth::Validator.validate!(input[:evidence_by_type_user_activity_count], ::Integer, context: "#{context}[:evidence_by_type_user_activity_count]")
        Hearth::Validator.validate!(input[:evidence_aws_service_source_count], ::Integer, context: "#{context}[:evidence_aws_service_source_count]")
      end
    end

    class AssessmentEvidenceFolders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentEvidenceFolder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentFramework
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentFramework, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        FrameworkMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        AssessmentControlSets.validate!(input[:control_sets], context: "#{context}[:control_sets]") unless input[:control_sets].nil?
      end
    end

    class AssessmentFrameworkMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentFrameworkMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:logo], ::String, context: "#{context}[:logo]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:controls_count], ::Integer, context: "#{context}[:controls_count]")
        Hearth::Validator.validate!(input[:control_sets_count], ::Integer, context: "#{context}[:control_sets_count]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class AssessmentFrameworkShareRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentFrameworkShareRequest, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_description], ::String, context: "#{context}[:framework_description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:source_account], ::String, context: "#{context}[:source_account]")
        Hearth::Validator.validate!(input[:destination_account], ::String, context: "#{context}[:destination_account]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:standard_controls_count], ::Integer, context: "#{context}[:standard_controls_count]")
        Hearth::Validator.validate!(input[:custom_controls_count], ::Integer, context: "#{context}[:custom_controls_count]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
      end
    end

    class AssessmentFrameworkShareRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentFrameworkShareRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AssessmentReportsDestination.validate!(input[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless input[:assessment_reports_destination].nil?
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Delegations.validate!(input[:delegations], context: "#{context}[:delegations]") unless input[:delegations].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class AssessmentMetadataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentMetadataItem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Delegations.validate!(input[:delegations], context: "#{context}[:delegations]") unless input[:delegations].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class AssessmentReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentReport, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class AssessmentReportEvidenceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentReportEvidenceError, context: context)
        Hearth::Validator.validate!(input[:evidence_id], ::String, context: "#{context}[:evidence_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class AssessmentReportEvidenceErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentReportEvidenceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentReportMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentReportMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class AssessmentReportsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentReportsDestination, context: context)
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class AssessmentReportsMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentReportMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateAssessmentReportEvidenceFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAssessmentReportEvidenceFolderInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
      end
    end

    class AssociateAssessmentReportEvidenceFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAssessmentReportEvidenceFolderOutput, context: context)
      end
    end

    class BatchAssociateAssessmentReportEvidenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateAssessmentReportEvidenceInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
        EvidenceIds.validate!(input[:evidence_ids], context: "#{context}[:evidence_ids]") unless input[:evidence_ids].nil?
      end
    end

    class BatchAssociateAssessmentReportEvidenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateAssessmentReportEvidenceOutput, context: context)
        EvidenceIds.validate!(input[:evidence_ids], context: "#{context}[:evidence_ids]") unless input[:evidence_ids].nil?
        AssessmentReportEvidenceErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchCreateDelegationByAssessmentError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateDelegationByAssessmentError, context: context)
        CreateDelegationRequest.validate!(input[:create_delegation_request], context: "#{context}[:create_delegation_request]") unless input[:create_delegation_request].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchCreateDelegationByAssessmentErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchCreateDelegationByAssessmentError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchCreateDelegationByAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateDelegationByAssessmentInput, context: context)
        CreateDelegationRequests.validate!(input[:create_delegation_requests], context: "#{context}[:create_delegation_requests]") unless input[:create_delegation_requests].nil?
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class BatchCreateDelegationByAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateDelegationByAssessmentOutput, context: context)
        Delegations.validate!(input[:delegations], context: "#{context}[:delegations]") unless input[:delegations].nil?
        BatchCreateDelegationByAssessmentErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeleteDelegationByAssessmentError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDelegationByAssessmentError, context: context)
        Hearth::Validator.validate!(input[:delegation_id], ::String, context: "#{context}[:delegation_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchDeleteDelegationByAssessmentErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDeleteDelegationByAssessmentError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteDelegationByAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDelegationByAssessmentInput, context: context)
        DelegationIds.validate!(input[:delegation_ids], context: "#{context}[:delegation_ids]") unless input[:delegation_ids].nil?
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class BatchDeleteDelegationByAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDelegationByAssessmentOutput, context: context)
        BatchDeleteDelegationByAssessmentErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDisassociateAssessmentReportEvidenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateAssessmentReportEvidenceInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
        EvidenceIds.validate!(input[:evidence_ids], context: "#{context}[:evidence_ids]") unless input[:evidence_ids].nil?
      end
    end

    class BatchDisassociateAssessmentReportEvidenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateAssessmentReportEvidenceOutput, context: context)
        EvidenceIds.validate!(input[:evidence_ids], context: "#{context}[:evidence_ids]") unless input[:evidence_ids].nil?
        AssessmentReportEvidenceErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchImportEvidenceToAssessmentControlError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImportEvidenceToAssessmentControlError, context: context)
        ManualEvidence.validate!(input[:manual_evidence], context: "#{context}[:manual_evidence]") unless input[:manual_evidence].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchImportEvidenceToAssessmentControlErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchImportEvidenceToAssessmentControlError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchImportEvidenceToAssessmentControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImportEvidenceToAssessmentControlInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        ManualEvidenceList.validate!(input[:manual_evidence], context: "#{context}[:manual_evidence]") unless input[:manual_evidence].nil?
      end
    end

    class BatchImportEvidenceToAssessmentControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImportEvidenceToAssessmentControlOutput, context: context)
        BatchImportEvidenceToAssessmentControlErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class ChangeLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeLog, context: context)
        Hearth::Validator.validate!(input[:object_type], ::String, context: "#{context}[:object_type]")
        Hearth::Validator.validate!(input[:object_name], ::String, context: "#{context}[:object_name]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class ChangeLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeLog.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Control
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Control, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:testing_information], ::String, context: "#{context}[:testing_information]")
        Hearth::Validator.validate!(input[:action_plan_title], ::String, context: "#{context}[:action_plan_title]")
        Hearth::Validator.validate!(input[:action_plan_instructions], ::String, context: "#{context}[:action_plan_instructions]")
        Hearth::Validator.validate!(input[:control_sources], ::String, context: "#{context}[:control_sources]")
        ControlMappingSources.validate!(input[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless input[:control_mapping_sources].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ControlComment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlComment, context: context)
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:comment_body], ::String, context: "#{context}[:comment_body]")
        Hearth::Validator.validate!(input[:posted_date], ::Time, context: "#{context}[:posted_date]")
      end
    end

    class ControlComments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlComment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlDomainInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlDomainInsights, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:controls_count_by_noncompliant_evidence], ::Integer, context: "#{context}[:controls_count_by_noncompliant_evidence]")
        Hearth::Validator.validate!(input[:total_controls_count], ::Integer, context: "#{context}[:total_controls_count]")
        EvidenceInsights.validate!(input[:evidence_insights], context: "#{context}[:evidence_insights]") unless input[:evidence_insights].nil?
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class ControlDomainInsightsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlDomainInsights.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlInsightsMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlInsightsMetadataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlInsightsMetadataByAssessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlInsightsMetadataByAssessmentItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlInsightsMetadataByAssessmentItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlInsightsMetadataByAssessmentItem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        EvidenceInsights.validate!(input[:evidence_insights], context: "#{context}[:evidence_insights]") unless input[:evidence_insights].nil?
        Hearth::Validator.validate!(input[:control_set_name], ::String, context: "#{context}[:control_set_name]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class ControlInsightsMetadataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlInsightsMetadataItem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        EvidenceInsights.validate!(input[:evidence_insights], context: "#{context}[:evidence_insights]") unless input[:evidence_insights].nil?
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class ControlMappingSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlMappingSource, context: context)
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_description], ::String, context: "#{context}[:source_description]")
        Hearth::Validator.validate!(input[:source_set_up_option], ::String, context: "#{context}[:source_set_up_option]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        SourceKeyword.validate!(input[:source_keyword], context: "#{context}[:source_keyword]") unless input[:source_keyword].nil?
        Hearth::Validator.validate!(input[:source_frequency], ::String, context: "#{context}[:source_frequency]")
        Hearth::Validator.validate!(input[:troubleshooting_text], ::String, context: "#{context}[:troubleshooting_text]")
      end
    end

    class ControlMappingSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlMappingSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:control_sources], ::String, context: "#{context}[:control_sources]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class ControlMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlSet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Controls.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
      end
    end

    class ControlSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Controls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Control.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAssessmentFrameworkControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentFrameworkControl, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateAssessmentFrameworkControlSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentFrameworkControlSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CreateAssessmentFrameworkControls.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
      end
    end

    class CreateAssessmentFrameworkControlSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAssessmentFrameworkControlSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAssessmentFrameworkControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAssessmentFrameworkControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAssessmentFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        CreateAssessmentFrameworkControlSets.validate!(input[:control_sets], context: "#{context}[:control_sets]") unless input[:control_sets].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssessmentFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentFrameworkOutput, context: context)
        Framework.validate!(input[:framework], context: "#{context}[:framework]") unless input[:framework].nil?
      end
    end

    class CreateAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        AssessmentReportsDestination.validate!(input[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless input[:assessment_reports_destination].nil?
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentOutput, context: context)
        Assessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
      end
    end

    class CreateAssessmentReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentReportInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class CreateAssessmentReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentReportOutput, context: context)
        AssessmentReport.validate!(input[:assessment_report], context: "#{context}[:assessment_report]") unless input[:assessment_report].nil?
      end
    end

    class CreateControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateControlInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:testing_information], ::String, context: "#{context}[:testing_information]")
        Hearth::Validator.validate!(input[:action_plan_title], ::String, context: "#{context}[:action_plan_title]")
        Hearth::Validator.validate!(input[:action_plan_instructions], ::String, context: "#{context}[:action_plan_instructions]")
        CreateControlMappingSources.validate!(input[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless input[:control_mapping_sources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateControlMappingSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateControlMappingSource, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_description], ::String, context: "#{context}[:source_description]")
        Hearth::Validator.validate!(input[:source_set_up_option], ::String, context: "#{context}[:source_set_up_option]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        SourceKeyword.validate!(input[:source_keyword], context: "#{context}[:source_keyword]") unless input[:source_keyword].nil?
        Hearth::Validator.validate!(input[:source_frequency], ::String, context: "#{context}[:source_frequency]")
        Hearth::Validator.validate!(input[:troubleshooting_text], ::String, context: "#{context}[:troubleshooting_text]")
      end
    end

    class CreateControlMappingSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateControlMappingSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateControlOutput, context: context)
        Control.validate!(input[:control], context: "#{context}[:control]") unless input[:control].nil?
      end
    end

    class CreateDelegationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDelegationRequest, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:role_type], ::String, context: "#{context}[:role_type]")
      end
    end

    class CreateDelegationRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateDelegationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Delegation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Delegation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:role_type], ::String, context: "#{context}[:role_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class DelegationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DelegationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:control_set_name], ::String, context: "#{context}[:control_set_name]")
      end
    end

    class DelegationMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DelegationMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Delegations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Delegation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAssessmentFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
      end
    end

    class DeleteAssessmentFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentFrameworkOutput, context: context)
      end
    end

    class DeleteAssessmentFrameworkShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentFrameworkShareInput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:request_type], ::String, context: "#{context}[:request_type]")
      end
    end

    class DeleteAssessmentFrameworkShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentFrameworkShareOutput, context: context)
      end
    end

    class DeleteAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class DeleteAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentOutput, context: context)
      end
    end

    class DeleteAssessmentReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentReportInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:assessment_report_id], ::String, context: "#{context}[:assessment_report_id]")
      end
    end

    class DeleteAssessmentReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentReportOutput, context: context)
      end
    end

    class DeleteControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteControlInput, context: context)
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
      end
    end

    class DeleteControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteControlOutput, context: context)
      end
    end

    class DeregisterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterAccountInput, context: context)
      end
    end

    class DeregisterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterAccountOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeregisterOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class DeregisterOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterOrganizationAdminAccountOutput, context: context)
      end
    end

    class DisassociateAssessmentReportEvidenceFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAssessmentReportEvidenceFolderInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
      end
    end

    class DisassociateAssessmentReportEvidenceFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAssessmentReportEvidenceFolderOutput, context: context)
      end
    end

    class Evidence
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Evidence, context: context)
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:evidence_aws_account_id], ::String, context: "#{context}[:evidence_aws_account_id]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate!(input[:evidence_by_type], ::String, context: "#{context}[:evidence_by_type]")
        Resources.validate!(input[:resources_included], context: "#{context}[:resources_included]") unless input[:resources_included].nil?
        EvidenceAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:iam_id], ::String, context: "#{context}[:iam_id]")
        Hearth::Validator.validate!(input[:compliance_check], ::String, context: "#{context}[:compliance_check]")
        Hearth::Validator.validate!(input[:aws_organization], ::String, context: "#{context}[:aws_organization]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:assessment_report_selection], ::String, context: "#{context}[:assessment_report_selection]")
      end
    end

    class EvidenceAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EvidenceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EvidenceInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvidenceInsights, context: context)
        Hearth::Validator.validate!(input[:noncompliant_evidence_count], ::Integer, context: "#{context}[:noncompliant_evidence_count]")
        Hearth::Validator.validate!(input[:compliant_evidence_count], ::Integer, context: "#{context}[:compliant_evidence_count]")
        Hearth::Validator.validate!(input[:inconclusive_evidence_count], ::Integer, context: "#{context}[:inconclusive_evidence_count]")
      end
    end

    class EvidenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Evidence.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvidenceSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Framework
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Framework, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:logo], ::String, context: "#{context}[:logo]")
        Hearth::Validator.validate!(input[:control_sources], ::String, context: "#{context}[:control_sources]")
        ControlSets.validate!(input[:control_sets], context: "#{context}[:control_sets]") unless input[:control_sets].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FrameworkMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameworkMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:logo], ::String, context: "#{context}[:logo]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
      end
    end

    class FrameworkMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentFrameworkMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccountStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountStatusInput, context: context)
      end
    end

    class GetAccountStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetAssessmentFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
      end
    end

    class GetAssessmentFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentFrameworkOutput, context: context)
        Framework.validate!(input[:framework], context: "#{context}[:framework]") unless input[:framework].nil?
      end
    end

    class GetAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class GetAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentOutput, context: context)
        Assessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
        Role.validate!(input[:user_role], context: "#{context}[:user_role]") unless input[:user_role].nil?
      end
    end

    class GetAssessmentReportUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentReportUrlInput, context: context)
        Hearth::Validator.validate!(input[:assessment_report_id], ::String, context: "#{context}[:assessment_report_id]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class GetAssessmentReportUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentReportUrlOutput, context: context)
        URL.validate!(input[:pre_signed_url], context: "#{context}[:pre_signed_url]") unless input[:pre_signed_url].nil?
      end
    end

    class GetChangeLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeLogsInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetChangeLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeLogsOutput, context: context)
        ChangeLogs.validate!(input[:change_logs], context: "#{context}[:change_logs]") unless input[:change_logs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetControlInput, context: context)
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
      end
    end

    class GetControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetControlOutput, context: context)
        Control.validate!(input[:control], context: "#{context}[:control]") unless input[:control].nil?
      end
    end

    class GetDelegationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDelegationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetDelegationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDelegationsOutput, context: context)
        DelegationMetadataList.validate!(input[:delegations], context: "#{context}[:delegations]") unless input[:delegations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEvidenceByEvidenceFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceByEvidenceFolderInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEvidenceByEvidenceFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceByEvidenceFolderOutput, context: context)
        EvidenceList.validate!(input[:evidence], context: "#{context}[:evidence]") unless input[:evidence].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEvidenceFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFolderInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
      end
    end

    class GetEvidenceFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFolderOutput, context: context)
        AssessmentEvidenceFolder.validate!(input[:evidence_folder], context: "#{context}[:evidence_folder]") unless input[:evidence_folder].nil?
      end
    end

    class GetEvidenceFoldersByAssessmentControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFoldersByAssessmentControlInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEvidenceFoldersByAssessmentControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFoldersByAssessmentControlOutput, context: context)
        AssessmentEvidenceFolders.validate!(input[:evidence_folders], context: "#{context}[:evidence_folders]") unless input[:evidence_folders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEvidenceFoldersByAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFoldersByAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEvidenceFoldersByAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceFoldersByAssessmentOutput, context: context)
        AssessmentEvidenceFolders.validate!(input[:evidence_folders], context: "#{context}[:evidence_folders]") unless input[:evidence_folders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEvidenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:evidence_folder_id], ::String, context: "#{context}[:evidence_folder_id]")
        Hearth::Validator.validate!(input[:evidence_id], ::String, context: "#{context}[:evidence_id]")
      end
    end

    class GetEvidenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvidenceOutput, context: context)
        Evidence.validate!(input[:evidence], context: "#{context}[:evidence]") unless input[:evidence].nil?
      end
    end

    class GetInsightsByAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsByAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class GetInsightsByAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsByAssessmentOutput, context: context)
        InsightsByAssessment.validate!(input[:insights], context: "#{context}[:insights]") unless input[:insights].nil?
      end
    end

    class GetInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsInput, context: context)
      end
    end

    class GetInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsOutput, context: context)
        Insights.validate!(input[:insights], context: "#{context}[:insights]") unless input[:insights].nil?
      end
    end

    class GetOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationAdminAccountInput, context: context)
      end
    end

    class GetOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationAdminAccountOutput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class GetServicesInScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServicesInScopeInput, context: context)
      end
    end

    class GetServicesInScopeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServicesInScopeOutput, context: context)
        ServiceMetadataList.validate!(input[:service_metadata], context: "#{context}[:service_metadata]") unless input[:service_metadata].nil?
      end
    end

    class GetSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSettingsInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
      end
    end

    class GetSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSettingsOutput, context: context)
        Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class Insights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Insights, context: context)
        Hearth::Validator.validate!(input[:active_assessments_count], ::Integer, context: "#{context}[:active_assessments_count]")
        Hearth::Validator.validate!(input[:noncompliant_evidence_count], ::Integer, context: "#{context}[:noncompliant_evidence_count]")
        Hearth::Validator.validate!(input[:compliant_evidence_count], ::Integer, context: "#{context}[:compliant_evidence_count]")
        Hearth::Validator.validate!(input[:inconclusive_evidence_count], ::Integer, context: "#{context}[:inconclusive_evidence_count]")
        Hearth::Validator.validate!(input[:assessment_controls_count_by_noncompliant_evidence], ::Integer, context: "#{context}[:assessment_controls_count_by_noncompliant_evidence]")
        Hearth::Validator.validate!(input[:total_assessment_controls_count], ::Integer, context: "#{context}[:total_assessment_controls_count]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class InsightsByAssessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightsByAssessment, context: context)
        Hearth::Validator.validate!(input[:noncompliant_evidence_count], ::Integer, context: "#{context}[:noncompliant_evidence_count]")
        Hearth::Validator.validate!(input[:compliant_evidence_count], ::Integer, context: "#{context}[:compliant_evidence_count]")
        Hearth::Validator.validate!(input[:inconclusive_evidence_count], ::Integer, context: "#{context}[:inconclusive_evidence_count]")
        Hearth::Validator.validate!(input[:assessment_controls_count_by_noncompliant_evidence], ::Integer, context: "#{context}[:assessment_controls_count_by_noncompliant_evidence]")
        Hearth::Validator.validate!(input[:total_assessment_controls_count], ::Integer, context: "#{context}[:total_assessment_controls_count]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Keywords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListAssessmentControlInsightsByControlDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentControlInsightsByControlDomainInput, context: context)
        Hearth::Validator.validate!(input[:control_domain_id], ::String, context: "#{context}[:control_domain_id]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentControlInsightsByControlDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentControlInsightsByControlDomainOutput, context: context)
        ControlInsightsMetadataByAssessment.validate!(input[:control_insights_by_assessment], context: "#{context}[:control_insights_by_assessment]") unless input[:control_insights_by_assessment].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentFrameworkShareRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentFrameworkShareRequestsInput, context: context)
        Hearth::Validator.validate!(input[:request_type], ::String, context: "#{context}[:request_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentFrameworkShareRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentFrameworkShareRequestsOutput, context: context)
        AssessmentFrameworkShareRequestList.validate!(input[:assessment_framework_share_requests], context: "#{context}[:assessment_framework_share_requests]") unless input[:assessment_framework_share_requests].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentFrameworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentFrameworksInput, context: context)
        Hearth::Validator.validate!(input[:framework_type], ::String, context: "#{context}[:framework_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentFrameworksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentFrameworksOutput, context: context)
        FrameworkMetadataList.validate!(input[:framework_metadata_list], context: "#{context}[:framework_metadata_list]") unless input[:framework_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentMetadataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAssessmentReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentReportsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentReportsOutput, context: context)
        AssessmentReportsMetadata.validate!(input[:assessment_reports], context: "#{context}[:assessment_reports]") unless input[:assessment_reports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentsOutput, context: context)
        ListAssessmentMetadata.validate!(input[:assessment_metadata], context: "#{context}[:assessment_metadata]") unless input[:assessment_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlDomainInsightsByAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlDomainInsightsByAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListControlDomainInsightsByAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlDomainInsightsByAssessmentOutput, context: context)
        ControlDomainInsightsList.validate!(input[:control_domain_insights], context: "#{context}[:control_domain_insights]") unless input[:control_domain_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlDomainInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlDomainInsightsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListControlDomainInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlDomainInsightsOutput, context: context)
        ControlDomainInsightsList.validate!(input[:control_domain_insights], context: "#{context}[:control_domain_insights]") unless input[:control_domain_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlInsightsByControlDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlInsightsByControlDomainInput, context: context)
        Hearth::Validator.validate!(input[:control_domain_id], ::String, context: "#{context}[:control_domain_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListControlInsightsByControlDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlInsightsByControlDomainOutput, context: context)
        ControlInsightsMetadata.validate!(input[:control_insights_metadata], context: "#{context}[:control_insights_metadata]") unless input[:control_insights_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlsInput, context: context)
        Hearth::Validator.validate!(input[:control_type], ::String, context: "#{context}[:control_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlsOutput, context: context)
        ControlMetadataList.validate!(input[:control_metadata_list], context: "#{context}[:control_metadata_list]") unless input[:control_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListKeywordsForDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeywordsForDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListKeywordsForDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeywordsForDataSourceOutput, context: context)
        Keywords.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationsOutput, context: context)
        Notifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ManualEvidence
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManualEvidence, context: context)
        Hearth::Validator.validate!(input[:s3_resource_path], ::String, context: "#{context}[:s3_resource_path]")
      end
    end

    class ManualEvidenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManualEvidence.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Notification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Notification, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_set_name], ::String, context: "#{context}[:control_set_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class Notifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Notification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAccountInput, context: context)
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:delegated_admin_account], ::String, context: "#{context}[:delegated_admin_account]")
      end
    end

    class RegisterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAccountOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RegisterOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class RegisterOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterOrganizationAdminAccountOutput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Role
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Role, context: context)
        Hearth::Validator.validate!(input[:role_type], ::String, context: "#{context}[:role_type]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class Roles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Role.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scope, context: context)
        AWSAccounts.validate!(input[:aws_accounts], context: "#{context}[:aws_accounts]") unless input[:aws_accounts].nil?
        AWSServices.validate!(input[:aws_services], context: "#{context}[:aws_services]") unless input[:aws_services].nil?
      end
    end

    class ServiceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
      end
    end

    class ServiceMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Settings, context: context)
        Hearth::Validator.validate!(input[:is_aws_org_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_aws_org_enabled]")
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        AssessmentReportsDestination.validate!(input[:default_assessment_reports_destination], context: "#{context}[:default_assessment_reports_destination]") unless input[:default_assessment_reports_destination].nil?
        Roles.validate!(input[:default_process_owners], context: "#{context}[:default_process_owners]") unless input[:default_process_owners].nil?
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class SourceKeyword
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceKeyword, context: context)
        Hearth::Validator.validate!(input[:keyword_input_type], ::String, context: "#{context}[:keyword_input_type]")
        Hearth::Validator.validate!(input[:keyword_value], ::String, context: "#{context}[:keyword_value]")
      end
    end

    class StartAssessmentFrameworkShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentFrameworkShareInput, context: context)
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
        Hearth::Validator.validate!(input[:destination_account], ::String, context: "#{context}[:destination_account]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class StartAssessmentFrameworkShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentFrameworkShareOutput, context: context)
        AssessmentFrameworkShareRequest.validate!(input[:assessment_framework_share_request], context: "#{context}[:assessment_framework_share_request]") unless input[:assessment_framework_share_request].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class URL
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::URL, context: context)
        Hearth::Validator.validate!(input[:hyperlink_name], ::String, context: "#{context}[:hyperlink_name]")
        Hearth::Validator.validate!(input[:link], ::String, context: "#{context}[:link]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAssessmentControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentControlInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:control_status], ::String, context: "#{context}[:control_status]")
        Hearth::Validator.validate!(input[:comment_body], ::String, context: "#{context}[:comment_body]")
      end
    end

    class UpdateAssessmentControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentControlOutput, context: context)
        AssessmentControl.validate!(input[:control], context: "#{context}[:control]") unless input[:control].nil?
      end
    end

    class UpdateAssessmentControlSetStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentControlSetStatusInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:control_set_id], ::String, context: "#{context}[:control_set_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class UpdateAssessmentControlSetStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentControlSetStatusOutput, context: context)
        AssessmentControlSet.validate!(input[:control_set], context: "#{context}[:control_set]") unless input[:control_set].nil?
      end
    end

    class UpdateAssessmentFrameworkControlSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentFrameworkControlSet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CreateAssessmentFrameworkControls.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
      end
    end

    class UpdateAssessmentFrameworkControlSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateAssessmentFrameworkControlSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateAssessmentFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_id], ::String, context: "#{context}[:framework_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        UpdateAssessmentFrameworkControlSets.validate!(input[:control_sets], context: "#{context}[:control_sets]") unless input[:control_sets].nil?
      end
    end

    class UpdateAssessmentFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentFrameworkOutput, context: context)
        Framework.validate!(input[:framework], context: "#{context}[:framework]") unless input[:framework].nil?
      end
    end

    class UpdateAssessmentFrameworkShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentFrameworkShareInput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:request_type], ::String, context: "#{context}[:request_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class UpdateAssessmentFrameworkShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentFrameworkShareOutput, context: context)
        AssessmentFrameworkShareRequest.validate!(input[:assessment_framework_share_request], context: "#{context}[:assessment_framework_share_request]") unless input[:assessment_framework_share_request].nil?
      end
    end

    class UpdateAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:assessment_description], ::String, context: "#{context}[:assessment_description]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        AssessmentReportsDestination.validate!(input[:assessment_reports_destination], context: "#{context}[:assessment_reports_destination]") unless input[:assessment_reports_destination].nil?
        Roles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
      end
    end

    class UpdateAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentOutput, context: context)
        Assessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
      end
    end

    class UpdateAssessmentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentStatusInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateAssessmentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentStatusOutput, context: context)
        Assessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
      end
    end

    class UpdateControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateControlInput, context: context)
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:testing_information], ::String, context: "#{context}[:testing_information]")
        Hearth::Validator.validate!(input[:action_plan_title], ::String, context: "#{context}[:action_plan_title]")
        Hearth::Validator.validate!(input[:action_plan_instructions], ::String, context: "#{context}[:action_plan_instructions]")
        ControlMappingSources.validate!(input[:control_mapping_sources], context: "#{context}[:control_mapping_sources]") unless input[:control_mapping_sources].nil?
      end
    end

    class UpdateControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateControlOutput, context: context)
        Control.validate!(input[:control], context: "#{context}[:control]") unless input[:control].nil?
      end
    end

    class UpdateSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSettingsInput, context: context)
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
        AssessmentReportsDestination.validate!(input[:default_assessment_reports_destination], context: "#{context}[:default_assessment_reports_destination]") unless input[:default_assessment_reports_destination].nil?
        Roles.validate!(input[:default_process_owners], context: "#{context}[:default_process_owners]") unless input[:default_process_owners].nil?
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class UpdateSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSettingsOutput, context: context)
        Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class ValidateAssessmentReportIntegrityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateAssessmentReportIntegrityInput, context: context)
        Hearth::Validator.validate!(input[:s3_relative_path], ::String, context: "#{context}[:s3_relative_path]")
      end
    end

    class ValidateAssessmentReportIntegrityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateAssessmentReportIntegrityOutput, context: context)
        Hearth::Validator.validate!(input[:signature_valid], ::TrueClass, ::FalseClass, context: "#{context}[:signature_valid]")
        Hearth::Validator.validate!(input[:signature_algorithm], ::String, context: "#{context}[:signature_algorithm]")
        Hearth::Validator.validate!(input[:signature_date_time], ::String, context: "#{context}[:signature_date_time]")
        Hearth::Validator.validate!(input[:signature_key_id], ::String, context: "#{context}[:signature_key_id]")
        ValidationErrors.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
      end
    end

    class ValidationErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
