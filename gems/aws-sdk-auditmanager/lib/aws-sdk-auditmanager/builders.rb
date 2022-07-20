# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AuditManager
  module Builders

    # Operation Builder for AssociateAssessmentReportEvidenceFolder
    class AssociateAssessmentReportEvidenceFolder
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/associateToAssessmentReport',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['evidenceFolderId'] = input[:evidence_folder_id] unless input[:evidence_folder_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateAssessmentReportEvidence
    class BatchAssociateAssessmentReportEvidence
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/batchAssociateToAssessmentReport',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['evidenceFolderId'] = input[:evidence_folder_id] unless input[:evidence_folder_id].nil?
        data['evidenceIds'] = EvidenceIds.build(input[:evidence_ids]) unless input[:evidence_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EvidenceIds
    class EvidenceIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchCreateDelegationByAssessment
    class BatchCreateDelegationByAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/delegations',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['createDelegationRequests'] = CreateDelegationRequests.build(input[:create_delegation_requests]) unless input[:create_delegation_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateDelegationRequests
    class CreateDelegationRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateDelegationRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateDelegationRequest
    class CreateDelegationRequest
      def self.build(input)
        data = {}
        data['comment'] = input[:comment] unless input[:comment].nil?
        data['controlSetId'] = input[:control_set_id] unless input[:control_set_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['roleType'] = input[:role_type] unless input[:role_type].nil?
        data
      end
    end

    # Operation Builder for BatchDeleteDelegationByAssessment
    class BatchDeleteDelegationByAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/delegations',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['delegationIds'] = DelegationIds.build(input[:delegation_ids]) unless input[:delegation_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DelegationIds
    class DelegationIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDisassociateAssessmentReportEvidence
    class BatchDisassociateAssessmentReportEvidence
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/batchDisassociateFromAssessmentReport',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['evidenceFolderId'] = input[:evidence_folder_id] unless input[:evidence_folder_id].nil?
        data['evidenceIds'] = EvidenceIds.build(input[:evidence_ids]) unless input[:evidence_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchImportEvidenceToAssessmentControl
    class BatchImportEvidenceToAssessmentControl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/controls/%<controlId>s/evidence',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['manualEvidence'] = ManualEvidenceList.build(input[:manual_evidence]) unless input[:manual_evidence].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ManualEvidenceList
    class ManualEvidenceList
      def self.build(input)
        data = []
        input.each do |element|
          data << ManualEvidence.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ManualEvidence
    class ManualEvidence
      def self.build(input)
        data = {}
        data['s3ResourcePath'] = input[:s3_resource_path] unless input[:s3_resource_path].nil?
        data
      end
    end

    # Operation Builder for CreateAssessment
    class CreateAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assessments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['assessmentReportsDestination'] = AssessmentReportsDestination.build(input[:assessment_reports_destination]) unless input[:assessment_reports_destination].nil?
        data['scope'] = Scope.build(input[:scope]) unless input[:scope].nil?
        data['roles'] = Roles.build(input[:roles]) unless input[:roles].nil?
        data['frameworkId'] = input[:framework_id] unless input[:framework_id].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for Roles
    class Roles
      def self.build(input)
        data = []
        input.each do |element|
          data << Role.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Role
    class Role
      def self.build(input)
        data = {}
        data['roleType'] = input[:role_type] unless input[:role_type].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for Scope
    class Scope
      def self.build(input)
        data = {}
        data['awsAccounts'] = AWSAccounts.build(input[:aws_accounts]) unless input[:aws_accounts].nil?
        data['awsServices'] = AWSServices.build(input[:aws_services]) unless input[:aws_services].nil?
        data
      end
    end

    # List Builder for AWSServices
    class AWSServices
      def self.build(input)
        data = []
        input.each do |element|
          data << AWSService.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AWSService
    class AWSService
      def self.build(input)
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data
      end
    end

    # List Builder for AWSAccounts
    class AWSAccounts
      def self.build(input)
        data = []
        input.each do |element|
          data << AWSAccount.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AWSAccount
    class AWSAccount
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['emailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for AssessmentReportsDestination
    class AssessmentReportsDestination
      def self.build(input)
        data = {}
        data['destinationType'] = input[:destination_type] unless input[:destination_type].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data
      end
    end

    # Operation Builder for CreateAssessmentFramework
    class CreateAssessmentFramework
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assessmentFrameworks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['complianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['controlSets'] = CreateAssessmentFrameworkControlSets.build(input[:control_sets]) unless input[:control_sets].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateAssessmentFrameworkControlSets
    class CreateAssessmentFrameworkControlSets
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateAssessmentFrameworkControlSet.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateAssessmentFrameworkControlSet
    class CreateAssessmentFrameworkControlSet
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['controls'] = CreateAssessmentFrameworkControls.build(input[:controls]) unless input[:controls].nil?
        data
      end
    end

    # List Builder for CreateAssessmentFrameworkControls
    class CreateAssessmentFrameworkControls
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateAssessmentFrameworkControl.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateAssessmentFrameworkControl
    class CreateAssessmentFrameworkControl
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Operation Builder for CreateAssessmentReport
    class CreateAssessmentReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/reports',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateControl
    class CreateControl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/controls')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['testingInformation'] = input[:testing_information] unless input[:testing_information].nil?
        data['actionPlanTitle'] = input[:action_plan_title] unless input[:action_plan_title].nil?
        data['actionPlanInstructions'] = input[:action_plan_instructions] unless input[:action_plan_instructions].nil?
        data['controlMappingSources'] = CreateControlMappingSources.build(input[:control_mapping_sources]) unless input[:control_mapping_sources].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateControlMappingSources
    class CreateControlMappingSources
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateControlMappingSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateControlMappingSource
    class CreateControlMappingSource
      def self.build(input)
        data = {}
        data['sourceName'] = input[:source_name] unless input[:source_name].nil?
        data['sourceDescription'] = input[:source_description] unless input[:source_description].nil?
        data['sourceSetUpOption'] = input[:source_set_up_option] unless input[:source_set_up_option].nil?
        data['sourceType'] = input[:source_type] unless input[:source_type].nil?
        data['sourceKeyword'] = SourceKeyword.build(input[:source_keyword]) unless input[:source_keyword].nil?
        data['sourceFrequency'] = input[:source_frequency] unless input[:source_frequency].nil?
        data['troubleshootingText'] = input[:troubleshooting_text] unless input[:troubleshooting_text].nil?
        data
      end
    end

    # Structure Builder for SourceKeyword
    class SourceKeyword
      def self.build(input)
        data = {}
        data['keywordInputType'] = input[:keyword_input_type] unless input[:keyword_input_type].nil?
        data['keywordValue'] = input[:keyword_value] unless input[:keyword_value].nil?
        data
      end
    end

    # Operation Builder for DeleteAssessment
    class DeleteAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAssessmentFramework
    class DeleteAssessmentFramework
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:framework_id].to_s.empty?
          raise ArgumentError, "HTTP label :framework_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworks/%<frameworkId>s',
            frameworkId: Hearth::HTTP.uri_escape(input[:framework_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAssessmentFrameworkShare
    class DeleteAssessmentFrameworkShare
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:request_id].to_s.empty?
          raise ArgumentError, "HTTP label :request_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworkShareRequests/%<requestId>s',
            requestId: Hearth::HTTP.uri_escape(input[:request_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['requestType'] = input[:request_type].to_s unless input[:request_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAssessmentReport
    class DeleteAssessmentReport
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:assessment_report_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_report_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/reports/%<assessmentReportId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            assessmentReportId: Hearth::HTTP.uri_escape(input[:assessment_report_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteControl
    class DeleteControl
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controls/%<controlId>s',
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterAccount
    class DeregisterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/account/deregisterAccount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterOrganizationAdminAccount
    class DeregisterOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/account/deregisterOrganizationAdminAccount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateAssessmentReportEvidenceFolder
    class DisassociateAssessmentReportEvidenceFolder
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/disassociateFromAssessmentReport',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['evidenceFolderId'] = input[:evidence_folder_id] unless input[:evidence_folder_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccountStatus
    class GetAccountStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/account/status')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssessment
    class GetAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssessmentFramework
    class GetAssessmentFramework
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:framework_id].to_s.empty?
          raise ArgumentError, "HTTP label :framework_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworks/%<frameworkId>s',
            frameworkId: Hearth::HTTP.uri_escape(input[:framework_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssessmentReportUrl
    class GetAssessmentReportUrl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_report_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_report_id cannot be nil or empty."
        end
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/reports/%<assessmentReportId>s/url',
            assessmentReportId: Hearth::HTTP.uri_escape(input[:assessment_report_id].to_s),
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetChangeLogs
    class GetChangeLogs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/changelogs',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['controlSetId'] = input[:control_set_id].to_s unless input[:control_set_id].nil?
        params['controlId'] = input[:control_id].to_s unless input[:control_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetControl
    class GetControl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controls/%<controlId>s',
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDelegations
    class GetDelegations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/delegations')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEvidence
    class GetEvidence
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:evidence_folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :evidence_folder_id cannot be nil or empty."
        end
        if input[:evidence_id].to_s.empty?
          raise ArgumentError, "HTTP label :evidence_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/evidenceFolders/%<evidenceFolderId>s/evidence/%<evidenceId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            evidenceFolderId: Hearth::HTTP.uri_escape(input[:evidence_folder_id].to_s),
            evidenceId: Hearth::HTTP.uri_escape(input[:evidence_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEvidenceByEvidenceFolder
    class GetEvidenceByEvidenceFolder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:evidence_folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :evidence_folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/evidenceFolders/%<evidenceFolderId>s/evidence',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            evidenceFolderId: Hearth::HTTP.uri_escape(input[:evidence_folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEvidenceFolder
    class GetEvidenceFolder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:evidence_folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :evidence_folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/evidenceFolders/%<evidenceFolderId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            evidenceFolderId: Hearth::HTTP.uri_escape(input[:evidence_folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEvidenceFoldersByAssessment
    class GetEvidenceFoldersByAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/evidenceFolders',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEvidenceFoldersByAssessmentControl
    class GetEvidenceFoldersByAssessmentControl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/evidenceFolders-by-assessment-control/%<controlSetId>s/%<controlId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInsights
    class GetInsights
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/insights')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInsightsByAssessment
    class GetInsightsByAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/assessments/%<assessmentId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetOrganizationAdminAccount
    class GetOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/account/organizationAdminAccount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServicesInScope
    class GetServicesInScope
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/services')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSettings
    class GetSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:attribute].to_s.empty?
          raise ArgumentError, "HTTP label :attribute cannot be nil or empty."
        end
        http_req.append_path(format(
            '/settings/%<attribute>s',
            attribute: Hearth::HTTP.uri_escape(input[:attribute].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssessmentControlInsightsByControlDomain
    class ListAssessmentControlInsightsByControlDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/insights/controls-by-assessment')
        params = Hearth::Query::ParamList.new
        params['controlDomainId'] = input[:control_domain_id].to_s unless input[:control_domain_id].nil?
        params['assessmentId'] = input[:assessment_id].to_s unless input[:assessment_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssessmentFrameworkShareRequests
    class ListAssessmentFrameworkShareRequests
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assessmentFrameworkShareRequests')
        params = Hearth::Query::ParamList.new
        params['requestType'] = input[:request_type].to_s unless input[:request_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssessmentFrameworks
    class ListAssessmentFrameworks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assessmentFrameworks')
        params = Hearth::Query::ParamList.new
        params['frameworkType'] = input[:framework_type].to_s unless input[:framework_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssessmentReports
    class ListAssessmentReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assessmentReports')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssessments
    class ListAssessments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assessments')
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListControlDomainInsights
    class ListControlDomainInsights
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/insights/control-domains')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListControlDomainInsightsByAssessment
    class ListControlDomainInsightsByAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/insights/control-domains-by-assessment')
        params = Hearth::Query::ParamList.new
        params['assessmentId'] = input[:assessment_id].to_s unless input[:assessment_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListControlInsightsByControlDomain
    class ListControlInsightsByControlDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/insights/controls')
        params = Hearth::Query::ParamList.new
        params['controlDomainId'] = input[:control_domain_id].to_s unless input[:control_domain_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListControls
    class ListControls
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/controls')
        params = Hearth::Query::ParamList.new
        params['controlType'] = input[:control_type].to_s unless input[:control_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListKeywordsForDataSource
    class ListKeywordsForDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/dataSourceKeywords')
        params = Hearth::Query::ParamList.new
        params['source'] = input[:source].to_s unless input[:source].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNotifications
    class ListNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/notifications')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterAccount
    class RegisterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/account/registerAccount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['kmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['delegatedAdminAccount'] = input[:delegated_admin_account] unless input[:delegated_admin_account].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterOrganizationAdminAccount
    class RegisterOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/account/registerOrganizationAdminAccount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartAssessmentFrameworkShare
    class StartAssessmentFrameworkShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:framework_id].to_s.empty?
          raise ArgumentError, "HTTP label :framework_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworks/%<frameworkId>s/shareRequests',
            frameworkId: Hearth::HTTP.uri_escape(input[:framework_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinationAccount'] = input[:destination_account] unless input[:destination_account].nil?
        data['destinationRegion'] = input[:destination_region] unless input[:destination_region].nil?
        data['comment'] = input[:comment] unless input[:comment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAssessment
    class UpdateAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentName'] = input[:assessment_name] unless input[:assessment_name].nil?
        data['assessmentDescription'] = input[:assessment_description] unless input[:assessment_description].nil?
        data['scope'] = Scope.build(input[:scope]) unless input[:scope].nil?
        data['assessmentReportsDestination'] = AssessmentReportsDestination.build(input[:assessment_reports_destination]) unless input[:assessment_reports_destination].nil?
        data['roles'] = Roles.build(input[:roles]) unless input[:roles].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssessmentControl
    class UpdateAssessmentControl
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/controls/%<controlId>s',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s),
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['controlStatus'] = input[:control_status] unless input[:control_status].nil?
        data['commentBody'] = input[:comment_body] unless input[:comment_body].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssessmentControlSetStatus
    class UpdateAssessmentControlSetStatus
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        if input[:control_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/controlSets/%<controlSetId>s/status',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s),
            controlSetId: Hearth::HTTP.uri_escape(input[:control_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['comment'] = input[:comment] unless input[:comment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssessmentFramework
    class UpdateAssessmentFramework
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:framework_id].to_s.empty?
          raise ArgumentError, "HTTP label :framework_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworks/%<frameworkId>s',
            frameworkId: Hearth::HTTP.uri_escape(input[:framework_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['complianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['controlSets'] = UpdateAssessmentFrameworkControlSets.build(input[:control_sets]) unless input[:control_sets].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateAssessmentFrameworkControlSets
    class UpdateAssessmentFrameworkControlSets
      def self.build(input)
        data = []
        input.each do |element|
          data << UpdateAssessmentFrameworkControlSet.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateAssessmentFrameworkControlSet
    class UpdateAssessmentFrameworkControlSet
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['controls'] = CreateAssessmentFrameworkControls.build(input[:controls]) unless input[:controls].nil?
        data
      end
    end

    # Operation Builder for UpdateAssessmentFrameworkShare
    class UpdateAssessmentFrameworkShare
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:request_id].to_s.empty?
          raise ArgumentError, "HTTP label :request_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessmentFrameworkShareRequests/%<requestId>s',
            requestId: Hearth::HTTP.uri_escape(input[:request_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['requestType'] = input[:request_type] unless input[:request_type].nil?
        data['action'] = input[:action] unless input[:action].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssessmentStatus
    class UpdateAssessmentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:assessment_id].to_s.empty?
          raise ArgumentError, "HTTP label :assessment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assessments/%<assessmentId>s/status',
            assessmentId: Hearth::HTTP.uri_escape(input[:assessment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateControl
    class UpdateControl
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:control_id].to_s.empty?
          raise ArgumentError, "HTTP label :control_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controls/%<controlId>s',
            controlId: Hearth::HTTP.uri_escape(input[:control_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['testingInformation'] = input[:testing_information] unless input[:testing_information].nil?
        data['actionPlanTitle'] = input[:action_plan_title] unless input[:action_plan_title].nil?
        data['actionPlanInstructions'] = input[:action_plan_instructions] unless input[:action_plan_instructions].nil?
        data['controlMappingSources'] = ControlMappingSources.build(input[:control_mapping_sources]) unless input[:control_mapping_sources].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ControlMappingSources
    class ControlMappingSources
      def self.build(input)
        data = []
        input.each do |element|
          data << ControlMappingSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ControlMappingSource
    class ControlMappingSource
      def self.build(input)
        data = {}
        data['sourceId'] = input[:source_id] unless input[:source_id].nil?
        data['sourceName'] = input[:source_name] unless input[:source_name].nil?
        data['sourceDescription'] = input[:source_description] unless input[:source_description].nil?
        data['sourceSetUpOption'] = input[:source_set_up_option] unless input[:source_set_up_option].nil?
        data['sourceType'] = input[:source_type] unless input[:source_type].nil?
        data['sourceKeyword'] = SourceKeyword.build(input[:source_keyword]) unless input[:source_keyword].nil?
        data['sourceFrequency'] = input[:source_frequency] unless input[:source_frequency].nil?
        data['troubleshootingText'] = input[:troubleshooting_text] unless input[:troubleshooting_text].nil?
        data
      end
    end

    # Operation Builder for UpdateSettings
    class UpdateSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['snsTopic'] = input[:sns_topic] unless input[:sns_topic].nil?
        data['defaultAssessmentReportsDestination'] = AssessmentReportsDestination.build(input[:default_assessment_reports_destination]) unless input[:default_assessment_reports_destination].nil?
        data['defaultProcessOwners'] = Roles.build(input[:default_process_owners]) unless input[:default_process_owners].nil?
        data['kmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidateAssessmentReportIntegrity
    class ValidateAssessmentReportIntegrity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assessmentReports/integrity')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['s3RelativePath'] = input[:s3_relative_path] unless input[:s3_relative_path].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
