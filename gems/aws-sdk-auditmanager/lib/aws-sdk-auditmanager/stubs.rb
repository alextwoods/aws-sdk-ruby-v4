# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AuditManager
  module Stubs

    # Operation Stubber for AssociateAssessmentReportEvidenceFolder
    class AssociateAssessmentReportEvidenceFolder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchAssociateAssessmentReportEvidence
    class BatchAssociateAssessmentReportEvidence
      def self.default(visited=[])
        {
          evidence_ids: EvidenceIds.default(visited),
          errors: AssessmentReportEvidenceErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidenceIds'] = EvidenceIds.stub(stub[:evidence_ids]) unless stub[:evidence_ids].nil?
        data['errors'] = AssessmentReportEvidenceErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssessmentReportEvidenceErrors
    class AssessmentReportEvidenceErrors
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReportEvidenceErrors')
        visited = visited + ['AssessmentReportEvidenceErrors']
        [
          AssessmentReportEvidenceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentReportEvidenceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentReportEvidenceError
    class AssessmentReportEvidenceError
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReportEvidenceError')
        visited = visited + ['AssessmentReportEvidenceError']
        {
          evidence_id: 'evidence_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentReportEvidenceError.new
        data = {}
        data['evidenceId'] = stub[:evidence_id] unless stub[:evidence_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for EvidenceIds
    class EvidenceIds
      def self.default(visited=[])
        return nil if visited.include?('EvidenceIds')
        visited = visited + ['EvidenceIds']
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

    # Operation Stubber for BatchCreateDelegationByAssessment
    class BatchCreateDelegationByAssessment
      def self.default(visited=[])
        {
          delegations: Delegations.default(visited),
          errors: BatchCreateDelegationByAssessmentErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegations'] = Delegations.stub(stub[:delegations]) unless stub[:delegations].nil?
        data['errors'] = BatchCreateDelegationByAssessmentErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchCreateDelegationByAssessmentErrors
    class BatchCreateDelegationByAssessmentErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateDelegationByAssessmentErrors')
        visited = visited + ['BatchCreateDelegationByAssessmentErrors']
        [
          BatchCreateDelegationByAssessmentError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchCreateDelegationByAssessmentError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchCreateDelegationByAssessmentError
    class BatchCreateDelegationByAssessmentError
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateDelegationByAssessmentError')
        visited = visited + ['BatchCreateDelegationByAssessmentError']
        {
          create_delegation_request: CreateDelegationRequest.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchCreateDelegationByAssessmentError.new
        data = {}
        data['createDelegationRequest'] = CreateDelegationRequest.stub(stub[:create_delegation_request]) unless stub[:create_delegation_request].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for CreateDelegationRequest
    class CreateDelegationRequest
      def self.default(visited=[])
        return nil if visited.include?('CreateDelegationRequest')
        visited = visited + ['CreateDelegationRequest']
        {
          comment: 'comment',
          control_set_id: 'control_set_id',
          role_arn: 'role_arn',
          role_type: 'role_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateDelegationRequest.new
        data = {}
        data['comment'] = stub[:comment] unless stub[:comment].nil?
        data['controlSetId'] = stub[:control_set_id] unless stub[:control_set_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['roleType'] = stub[:role_type] unless stub[:role_type].nil?
        data
      end
    end

    # List Stubber for Delegations
    class Delegations
      def self.default(visited=[])
        return nil if visited.include?('Delegations')
        visited = visited + ['Delegations']
        [
          Delegation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Delegation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Delegation
    class Delegation
      def self.default(visited=[])
        return nil if visited.include?('Delegation')
        visited = visited + ['Delegation']
        {
          id: 'id',
          assessment_name: 'assessment_name',
          assessment_id: 'assessment_id',
          status: 'status',
          role_arn: 'role_arn',
          role_type: 'role_type',
          creation_time: Time.now,
          last_updated: Time.now,
          control_set_id: 'control_set_id',
          comment: 'comment',
          created_by: 'created_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::Delegation.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['roleType'] = stub[:role_type] unless stub[:role_type].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['controlSetId'] = stub[:control_set_id] unless stub[:control_set_id].nil?
        data['comment'] = stub[:comment] unless stub[:comment].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data
      end
    end

    # Operation Stubber for BatchDeleteDelegationByAssessment
    class BatchDeleteDelegationByAssessment
      def self.default(visited=[])
        {
          errors: BatchDeleteDelegationByAssessmentErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errors'] = BatchDeleteDelegationByAssessmentErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteDelegationByAssessmentErrors
    class BatchDeleteDelegationByAssessmentErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDelegationByAssessmentErrors')
        visited = visited + ['BatchDeleteDelegationByAssessmentErrors']
        [
          BatchDeleteDelegationByAssessmentError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDeleteDelegationByAssessmentError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteDelegationByAssessmentError
    class BatchDeleteDelegationByAssessmentError
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDelegationByAssessmentError')
        visited = visited + ['BatchDeleteDelegationByAssessmentError']
        {
          delegation_id: 'delegation_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteDelegationByAssessmentError.new
        data = {}
        data['delegationId'] = stub[:delegation_id] unless stub[:delegation_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateAssessmentReportEvidence
    class BatchDisassociateAssessmentReportEvidence
      def self.default(visited=[])
        {
          evidence_ids: EvidenceIds.default(visited),
          errors: AssessmentReportEvidenceErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidenceIds'] = EvidenceIds.stub(stub[:evidence_ids]) unless stub[:evidence_ids].nil?
        data['errors'] = AssessmentReportEvidenceErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchImportEvidenceToAssessmentControl
    class BatchImportEvidenceToAssessmentControl
      def self.default(visited=[])
        {
          errors: BatchImportEvidenceToAssessmentControlErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errors'] = BatchImportEvidenceToAssessmentControlErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchImportEvidenceToAssessmentControlErrors
    class BatchImportEvidenceToAssessmentControlErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchImportEvidenceToAssessmentControlErrors')
        visited = visited + ['BatchImportEvidenceToAssessmentControlErrors']
        [
          BatchImportEvidenceToAssessmentControlError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchImportEvidenceToAssessmentControlError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchImportEvidenceToAssessmentControlError
    class BatchImportEvidenceToAssessmentControlError
      def self.default(visited=[])
        return nil if visited.include?('BatchImportEvidenceToAssessmentControlError')
        visited = visited + ['BatchImportEvidenceToAssessmentControlError']
        {
          manual_evidence: ManualEvidence.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchImportEvidenceToAssessmentControlError.new
        data = {}
        data['manualEvidence'] = ManualEvidence.stub(stub[:manual_evidence]) unless stub[:manual_evidence].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for ManualEvidence
    class ManualEvidence
      def self.default(visited=[])
        return nil if visited.include?('ManualEvidence')
        visited = visited + ['ManualEvidence']
        {
          s3_resource_path: 's3_resource_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManualEvidence.new
        data = {}
        data['s3ResourcePath'] = stub[:s3_resource_path] unless stub[:s3_resource_path].nil?
        data
      end
    end

    # Operation Stubber for CreateAssessment
    class CreateAssessment
      def self.default(visited=[])
        {
          assessment: Assessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Assessment.stub(stub[:assessment]) unless stub[:assessment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Assessment
    class Assessment
      def self.default(visited=[])
        return nil if visited.include?('Assessment')
        visited = visited + ['Assessment']
        {
          arn: 'arn',
          aws_account: AWSAccount.default(visited),
          metadata: AssessmentMetadata.default(visited),
          framework: AssessmentFramework.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Assessment.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['awsAccount'] = AWSAccount.stub(stub[:aws_account]) unless stub[:aws_account].nil?
        data['metadata'] = AssessmentMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['framework'] = AssessmentFramework.stub(stub[:framework]) unless stub[:framework].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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

    # Structure Stubber for AssessmentFramework
    class AssessmentFramework
      def self.default(visited=[])
        return nil if visited.include?('AssessmentFramework')
        visited = visited + ['AssessmentFramework']
        {
          id: 'id',
          arn: 'arn',
          metadata: FrameworkMetadata.default(visited),
          control_sets: AssessmentControlSets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentFramework.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['metadata'] = FrameworkMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['controlSets'] = AssessmentControlSets.stub(stub[:control_sets]) unless stub[:control_sets].nil?
        data
      end
    end

    # List Stubber for AssessmentControlSets
    class AssessmentControlSets
      def self.default(visited=[])
        return nil if visited.include?('AssessmentControlSets')
        visited = visited + ['AssessmentControlSets']
        [
          AssessmentControlSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentControlSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentControlSet
    class AssessmentControlSet
      def self.default(visited=[])
        return nil if visited.include?('AssessmentControlSet')
        visited = visited + ['AssessmentControlSet']
        {
          id: 'id',
          description: 'description',
          status: 'status',
          roles: Roles.default(visited),
          controls: AssessmentControls.default(visited),
          delegations: Delegations.default(visited),
          system_evidence_count: 1,
          manual_evidence_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentControlSet.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['roles'] = Roles.stub(stub[:roles]) unless stub[:roles].nil?
        data['controls'] = AssessmentControls.stub(stub[:controls]) unless stub[:controls].nil?
        data['delegations'] = Delegations.stub(stub[:delegations]) unless stub[:delegations].nil?
        data['systemEvidenceCount'] = stub[:system_evidence_count] unless stub[:system_evidence_count].nil?
        data['manualEvidenceCount'] = stub[:manual_evidence_count] unless stub[:manual_evidence_count].nil?
        data
      end
    end

    # List Stubber for AssessmentControls
    class AssessmentControls
      def self.default(visited=[])
        return nil if visited.include?('AssessmentControls')
        visited = visited + ['AssessmentControls']
        [
          AssessmentControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentControl
    class AssessmentControl
      def self.default(visited=[])
        return nil if visited.include?('AssessmentControl')
        visited = visited + ['AssessmentControl']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          status: 'status',
          response: 'response',
          comments: ControlComments.default(visited),
          evidence_sources: EvidenceSources.default(visited),
          evidence_count: 1,
          assessment_report_evidence_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentControl.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['response'] = stub[:response] unless stub[:response].nil?
        data['comments'] = ControlComments.stub(stub[:comments]) unless stub[:comments].nil?
        data['evidenceSources'] = EvidenceSources.stub(stub[:evidence_sources]) unless stub[:evidence_sources].nil?
        data['evidenceCount'] = stub[:evidence_count] unless stub[:evidence_count].nil?
        data['assessmentReportEvidenceCount'] = stub[:assessment_report_evidence_count] unless stub[:assessment_report_evidence_count].nil?
        data
      end
    end

    # List Stubber for EvidenceSources
    class EvidenceSources
      def self.default(visited=[])
        return nil if visited.include?('EvidenceSources')
        visited = visited + ['EvidenceSources']
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

    # List Stubber for ControlComments
    class ControlComments
      def self.default(visited=[])
        return nil if visited.include?('ControlComments')
        visited = visited + ['ControlComments']
        [
          ControlComment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlComment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlComment
    class ControlComment
      def self.default(visited=[])
        return nil if visited.include?('ControlComment')
        visited = visited + ['ControlComment']
        {
          author_name: 'author_name',
          comment_body: 'comment_body',
          posted_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlComment.new
        data = {}
        data['authorName'] = stub[:author_name] unless stub[:author_name].nil?
        data['commentBody'] = stub[:comment_body] unless stub[:comment_body].nil?
        data['postedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:posted_date]).to_i unless stub[:posted_date].nil?
        data
      end
    end

    # List Stubber for Roles
    class Roles
      def self.default(visited=[])
        return nil if visited.include?('Roles')
        visited = visited + ['Roles']
        [
          Role.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Role.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Role
    class Role
      def self.default(visited=[])
        return nil if visited.include?('Role')
        visited = visited + ['Role']
        {
          role_type: 'role_type',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Role.new
        data = {}
        data['roleType'] = stub[:role_type] unless stub[:role_type].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for FrameworkMetadata
    class FrameworkMetadata
      def self.default(visited=[])
        return nil if visited.include?('FrameworkMetadata')
        visited = visited + ['FrameworkMetadata']
        {
          name: 'name',
          description: 'description',
          logo: 'logo',
          compliance_type: 'compliance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameworkMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['logo'] = stub[:logo] unless stub[:logo].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data
      end
    end

    # Structure Stubber for AssessmentMetadata
    class AssessmentMetadata
      def self.default(visited=[])
        return nil if visited.include?('AssessmentMetadata')
        visited = visited + ['AssessmentMetadata']
        {
          name: 'name',
          id: 'id',
          description: 'description',
          compliance_type: 'compliance_type',
          status: 'status',
          assessment_reports_destination: AssessmentReportsDestination.default(visited),
          scope: Scope.default(visited),
          roles: Roles.default(visited),
          delegations: Delegations.default(visited),
          creation_time: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['assessmentReportsDestination'] = AssessmentReportsDestination.stub(stub[:assessment_reports_destination]) unless stub[:assessment_reports_destination].nil?
        data['scope'] = Scope.stub(stub[:scope]) unless stub[:scope].nil?
        data['roles'] = Roles.stub(stub[:roles]) unless stub[:roles].nil?
        data['delegations'] = Delegations.stub(stub[:delegations]) unless stub[:delegations].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Structure Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        {
          aws_accounts: AWSAccounts.default(visited),
          aws_services: AWSServices.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Scope.new
        data = {}
        data['awsAccounts'] = AWSAccounts.stub(stub[:aws_accounts]) unless stub[:aws_accounts].nil?
        data['awsServices'] = AWSServices.stub(stub[:aws_services]) unless stub[:aws_services].nil?
        data
      end
    end

    # List Stubber for AWSServices
    class AWSServices
      def self.default(visited=[])
        return nil if visited.include?('AWSServices')
        visited = visited + ['AWSServices']
        [
          AWSService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AWSService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AWSService
    class AWSService
      def self.default(visited=[])
        return nil if visited.include?('AWSService')
        visited = visited + ['AWSService']
        {
          service_name: 'service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AWSService.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data
      end
    end

    # List Stubber for AWSAccounts
    class AWSAccounts
      def self.default(visited=[])
        return nil if visited.include?('AWSAccounts')
        visited = visited + ['AWSAccounts']
        [
          AWSAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AWSAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AWSAccount
    class AWSAccount
      def self.default(visited=[])
        return nil if visited.include?('AWSAccount')
        visited = visited + ['AWSAccount']
        {
          id: 'id',
          email_address: 'email_address',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AWSAccount.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for AssessmentReportsDestination
    class AssessmentReportsDestination
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReportsDestination')
        visited = visited + ['AssessmentReportsDestination']
        {
          destination_type: 'destination_type',
          destination: 'destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentReportsDestination.new
        data = {}
        data['destinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # Operation Stubber for CreateAssessmentFramework
    class CreateAssessmentFramework
      def self.default(visited=[])
        {
          framework: Framework.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['framework'] = Framework.stub(stub[:framework]) unless stub[:framework].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Framework
    class Framework
      def self.default(visited=[])
        return nil if visited.include?('Framework')
        visited = visited + ['Framework']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          type: 'type',
          compliance_type: 'compliance_type',
          description: 'description',
          logo: 'logo',
          control_sources: 'control_sources',
          control_sets: ControlSets.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          created_by: 'created_by',
          last_updated_by: 'last_updated_by',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Framework.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['logo'] = stub[:logo] unless stub[:logo].nil?
        data['controlSources'] = stub[:control_sources] unless stub[:control_sources].nil?
        data['controlSets'] = ControlSets.stub(stub[:control_sets]) unless stub[:control_sets].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['lastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ControlSets
    class ControlSets
      def self.default(visited=[])
        return nil if visited.include?('ControlSets')
        visited = visited + ['ControlSets']
        [
          ControlSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlSet
    class ControlSet
      def self.default(visited=[])
        return nil if visited.include?('ControlSet')
        visited = visited + ['ControlSet']
        {
          id: 'id',
          name: 'name',
          controls: Controls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlSet.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['controls'] = Controls.stub(stub[:controls]) unless stub[:controls].nil?
        data
      end
    end

    # List Stubber for Controls
    class Controls
      def self.default(visited=[])
        return nil if visited.include?('Controls')
        visited = visited + ['Controls']
        [
          Control.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Control.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Control
    class Control
      def self.default(visited=[])
        return nil if visited.include?('Control')
        visited = visited + ['Control']
        {
          arn: 'arn',
          id: 'id',
          type: 'type',
          name: 'name',
          description: 'description',
          testing_information: 'testing_information',
          action_plan_title: 'action_plan_title',
          action_plan_instructions: 'action_plan_instructions',
          control_sources: 'control_sources',
          control_mapping_sources: ControlMappingSources.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          created_by: 'created_by',
          last_updated_by: 'last_updated_by',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Control.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['testingInformation'] = stub[:testing_information] unless stub[:testing_information].nil?
        data['actionPlanTitle'] = stub[:action_plan_title] unless stub[:action_plan_title].nil?
        data['actionPlanInstructions'] = stub[:action_plan_instructions] unless stub[:action_plan_instructions].nil?
        data['controlSources'] = stub[:control_sources] unless stub[:control_sources].nil?
        data['controlMappingSources'] = ControlMappingSources.stub(stub[:control_mapping_sources]) unless stub[:control_mapping_sources].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['lastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ControlMappingSources
    class ControlMappingSources
      def self.default(visited=[])
        return nil if visited.include?('ControlMappingSources')
        visited = visited + ['ControlMappingSources']
        [
          ControlMappingSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlMappingSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlMappingSource
    class ControlMappingSource
      def self.default(visited=[])
        return nil if visited.include?('ControlMappingSource')
        visited = visited + ['ControlMappingSource']
        {
          source_id: 'source_id',
          source_name: 'source_name',
          source_description: 'source_description',
          source_set_up_option: 'source_set_up_option',
          source_type: 'source_type',
          source_keyword: SourceKeyword.default(visited),
          source_frequency: 'source_frequency',
          troubleshooting_text: 'troubleshooting_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlMappingSource.new
        data = {}
        data['sourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['sourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['sourceDescription'] = stub[:source_description] unless stub[:source_description].nil?
        data['sourceSetUpOption'] = stub[:source_set_up_option] unless stub[:source_set_up_option].nil?
        data['sourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['sourceKeyword'] = SourceKeyword.stub(stub[:source_keyword]) unless stub[:source_keyword].nil?
        data['sourceFrequency'] = stub[:source_frequency] unless stub[:source_frequency].nil?
        data['troubleshootingText'] = stub[:troubleshooting_text] unless stub[:troubleshooting_text].nil?
        data
      end
    end

    # Structure Stubber for SourceKeyword
    class SourceKeyword
      def self.default(visited=[])
        return nil if visited.include?('SourceKeyword')
        visited = visited + ['SourceKeyword']
        {
          keyword_input_type: 'keyword_input_type',
          keyword_value: 'keyword_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceKeyword.new
        data = {}
        data['keywordInputType'] = stub[:keyword_input_type] unless stub[:keyword_input_type].nil?
        data['keywordValue'] = stub[:keyword_value] unless stub[:keyword_value].nil?
        data
      end
    end

    # Operation Stubber for CreateAssessmentReport
    class CreateAssessmentReport
      def self.default(visited=[])
        {
          assessment_report: AssessmentReport.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentReport'] = AssessmentReport.stub(stub[:assessment_report]) unless stub[:assessment_report].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssessmentReport
    class AssessmentReport
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReport')
        visited = visited + ['AssessmentReport']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          aws_account_id: 'aws_account_id',
          assessment_id: 'assessment_id',
          assessment_name: 'assessment_name',
          author: 'author',
          status: 'status',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentReport.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for CreateControl
    class CreateControl
      def self.default(visited=[])
        {
          control: Control.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['control'] = Control.stub(stub[:control]) unless stub[:control].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAssessment
    class DeleteAssessment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentFramework
    class DeleteAssessmentFramework
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentFrameworkShare
    class DeleteAssessmentFrameworkShare
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentReport
    class DeleteAssessmentReport
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteControl
    class DeleteControl
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterAccount
    class DeregisterAccount
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeregisterOrganizationAdminAccount
    class DeregisterOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateAssessmentReportEvidenceFolder
    class DisassociateAssessmentReportEvidenceFolder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccountStatus
    class GetAccountStatus
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssessment
    class GetAssessment
      def self.default(visited=[])
        {
          assessment: Assessment.default(visited),
          user_role: Role.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Assessment.stub(stub[:assessment]) unless stub[:assessment].nil?
        data['userRole'] = Role.stub(stub[:user_role]) unless stub[:user_role].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssessmentFramework
    class GetAssessmentFramework
      def self.default(visited=[])
        {
          framework: Framework.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['framework'] = Framework.stub(stub[:framework]) unless stub[:framework].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssessmentReportUrl
    class GetAssessmentReportUrl
      def self.default(visited=[])
        {
          pre_signed_url: URL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['preSignedUrl'] = URL.stub(stub[:pre_signed_url]) unless stub[:pre_signed_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for URL
    class URL
      def self.default(visited=[])
        return nil if visited.include?('URL')
        visited = visited + ['URL']
        {
          hyperlink_name: 'hyperlink_name',
          link: 'link',
        }
      end

      def self.stub(stub)
        stub ||= Types::URL.new
        data = {}
        data['hyperlinkName'] = stub[:hyperlink_name] unless stub[:hyperlink_name].nil?
        data['link'] = stub[:link] unless stub[:link].nil?
        data
      end
    end

    # Operation Stubber for GetChangeLogs
    class GetChangeLogs
      def self.default(visited=[])
        {
          change_logs: ChangeLogs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['changeLogs'] = ChangeLogs.stub(stub[:change_logs]) unless stub[:change_logs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChangeLogs
    class ChangeLogs
      def self.default(visited=[])
        return nil if visited.include?('ChangeLogs')
        visited = visited + ['ChangeLogs']
        [
          ChangeLog.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChangeLog.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangeLog
    class ChangeLog
      def self.default(visited=[])
        return nil if visited.include?('ChangeLog')
        visited = visited + ['ChangeLog']
        {
          object_type: 'object_type',
          object_name: 'object_name',
          action: 'action',
          created_at: Time.now,
          created_by: 'created_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeLog.new
        data = {}
        data['objectType'] = stub[:object_type] unless stub[:object_type].nil?
        data['objectName'] = stub[:object_name] unless stub[:object_name].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data
      end
    end

    # Operation Stubber for GetControl
    class GetControl
      def self.default(visited=[])
        {
          control: Control.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['control'] = Control.stub(stub[:control]) unless stub[:control].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDelegations
    class GetDelegations
      def self.default(visited=[])
        {
          delegations: DelegationMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['delegations'] = DelegationMetadataList.stub(stub[:delegations]) unless stub[:delegations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DelegationMetadataList
    class DelegationMetadataList
      def self.default(visited=[])
        return nil if visited.include?('DelegationMetadataList')
        visited = visited + ['DelegationMetadataList']
        [
          DelegationMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DelegationMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DelegationMetadata
    class DelegationMetadata
      def self.default(visited=[])
        return nil if visited.include?('DelegationMetadata')
        visited = visited + ['DelegationMetadata']
        {
          id: 'id',
          assessment_name: 'assessment_name',
          assessment_id: 'assessment_id',
          status: 'status',
          role_arn: 'role_arn',
          creation_time: Time.now,
          control_set_name: 'control_set_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DelegationMetadata.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['controlSetName'] = stub[:control_set_name] unless stub[:control_set_name].nil?
        data
      end
    end

    # Operation Stubber for GetEvidence
    class GetEvidence
      def self.default(visited=[])
        {
          evidence: Evidence.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidence'] = Evidence.stub(stub[:evidence]) unless stub[:evidence].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Evidence
    class Evidence
      def self.default(visited=[])
        return nil if visited.include?('Evidence')
        visited = visited + ['Evidence']
        {
          data_source: 'data_source',
          evidence_aws_account_id: 'evidence_aws_account_id',
          time: Time.now,
          event_source: 'event_source',
          event_name: 'event_name',
          evidence_by_type: 'evidence_by_type',
          resources_included: Resources.default(visited),
          attributes: EvidenceAttributes.default(visited),
          iam_id: 'iam_id',
          compliance_check: 'compliance_check',
          aws_organization: 'aws_organization',
          aws_account_id: 'aws_account_id',
          evidence_folder_id: 'evidence_folder_id',
          id: 'id',
          assessment_report_selection: 'assessment_report_selection',
        }
      end

      def self.stub(stub)
        stub ||= Types::Evidence.new
        data = {}
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['evidenceAwsAccountId'] = stub[:evidence_aws_account_id] unless stub[:evidence_aws_account_id].nil?
        data['time'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time]).to_i unless stub[:time].nil?
        data['eventSource'] = stub[:event_source] unless stub[:event_source].nil?
        data['eventName'] = stub[:event_name] unless stub[:event_name].nil?
        data['evidenceByType'] = stub[:evidence_by_type] unless stub[:evidence_by_type].nil?
        data['resourcesIncluded'] = Resources.stub(stub[:resources_included]) unless stub[:resources_included].nil?
        data['attributes'] = EvidenceAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['iamId'] = stub[:iam_id] unless stub[:iam_id].nil?
        data['complianceCheck'] = stub[:compliance_check] unless stub[:compliance_check].nil?
        data['awsOrganization'] = stub[:aws_organization] unless stub[:aws_organization].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['evidenceFolderId'] = stub[:evidence_folder_id] unless stub[:evidence_folder_id].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['assessmentReportSelection'] = stub[:assessment_report_selection] unless stub[:assessment_report_selection].nil?
        data
      end
    end

    # Map Stubber for EvidenceAttributes
    class EvidenceAttributes
      def self.default(visited=[])
        return nil if visited.include?('EvidenceAttributes')
        visited = visited + ['EvidenceAttributes']
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

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
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
          arn: 'arn',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetEvidenceByEvidenceFolder
    class GetEvidenceByEvidenceFolder
      def self.default(visited=[])
        {
          evidence: EvidenceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidence'] = EvidenceList.stub(stub[:evidence]) unless stub[:evidence].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EvidenceList
    class EvidenceList
      def self.default(visited=[])
        return nil if visited.include?('EvidenceList')
        visited = visited + ['EvidenceList']
        [
          Evidence.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Evidence.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEvidenceFolder
    class GetEvidenceFolder
      def self.default(visited=[])
        {
          evidence_folder: AssessmentEvidenceFolder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidenceFolder'] = AssessmentEvidenceFolder.stub(stub[:evidence_folder]) unless stub[:evidence_folder].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssessmentEvidenceFolder
    class AssessmentEvidenceFolder
      def self.default(visited=[])
        return nil if visited.include?('AssessmentEvidenceFolder')
        visited = visited + ['AssessmentEvidenceFolder']
        {
          name: 'name',
          date: Time.now,
          assessment_id: 'assessment_id',
          control_set_id: 'control_set_id',
          control_id: 'control_id',
          id: 'id',
          data_source: 'data_source',
          author: 'author',
          total_evidence: 1,
          assessment_report_selection_count: 1,
          control_name: 'control_name',
          evidence_resources_included_count: 1,
          evidence_by_type_configuration_data_count: 1,
          evidence_by_type_manual_count: 1,
          evidence_by_type_compliance_check_count: 1,
          evidence_by_type_compliance_check_issues_count: 1,
          evidence_by_type_user_activity_count: 1,
          evidence_aws_service_source_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentEvidenceFolder.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['controlSetId'] = stub[:control_set_id] unless stub[:control_set_id].nil?
        data['controlId'] = stub[:control_id] unless stub[:control_id].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['totalEvidence'] = stub[:total_evidence] unless stub[:total_evidence].nil?
        data['assessmentReportSelectionCount'] = stub[:assessment_report_selection_count] unless stub[:assessment_report_selection_count].nil?
        data['controlName'] = stub[:control_name] unless stub[:control_name].nil?
        data['evidenceResourcesIncludedCount'] = stub[:evidence_resources_included_count] unless stub[:evidence_resources_included_count].nil?
        data['evidenceByTypeConfigurationDataCount'] = stub[:evidence_by_type_configuration_data_count] unless stub[:evidence_by_type_configuration_data_count].nil?
        data['evidenceByTypeManualCount'] = stub[:evidence_by_type_manual_count] unless stub[:evidence_by_type_manual_count].nil?
        data['evidenceByTypeComplianceCheckCount'] = stub[:evidence_by_type_compliance_check_count] unless stub[:evidence_by_type_compliance_check_count].nil?
        data['evidenceByTypeComplianceCheckIssuesCount'] = stub[:evidence_by_type_compliance_check_issues_count] unless stub[:evidence_by_type_compliance_check_issues_count].nil?
        data['evidenceByTypeUserActivityCount'] = stub[:evidence_by_type_user_activity_count] unless stub[:evidence_by_type_user_activity_count].nil?
        data['evidenceAwsServiceSourceCount'] = stub[:evidence_aws_service_source_count] unless stub[:evidence_aws_service_source_count].nil?
        data
      end
    end

    # Operation Stubber for GetEvidenceFoldersByAssessment
    class GetEvidenceFoldersByAssessment
      def self.default(visited=[])
        {
          evidence_folders: AssessmentEvidenceFolders.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidenceFolders'] = AssessmentEvidenceFolders.stub(stub[:evidence_folders]) unless stub[:evidence_folders].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssessmentEvidenceFolders
    class AssessmentEvidenceFolders
      def self.default(visited=[])
        return nil if visited.include?('AssessmentEvidenceFolders')
        visited = visited + ['AssessmentEvidenceFolders']
        [
          AssessmentEvidenceFolder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentEvidenceFolder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetEvidenceFoldersByAssessmentControl
    class GetEvidenceFoldersByAssessmentControl
      def self.default(visited=[])
        {
          evidence_folders: AssessmentEvidenceFolders.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['evidenceFolders'] = AssessmentEvidenceFolders.stub(stub[:evidence_folders]) unless stub[:evidence_folders].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetInsights
    class GetInsights
      def self.default(visited=[])
        {
          insights: Insights.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['insights'] = Insights.stub(stub[:insights]) unless stub[:insights].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Insights
    class Insights
      def self.default(visited=[])
        return nil if visited.include?('Insights')
        visited = visited + ['Insights']
        {
          active_assessments_count: 1,
          noncompliant_evidence_count: 1,
          compliant_evidence_count: 1,
          inconclusive_evidence_count: 1,
          assessment_controls_count_by_noncompliant_evidence: 1,
          total_assessment_controls_count: 1,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Insights.new
        data = {}
        data['activeAssessmentsCount'] = stub[:active_assessments_count] unless stub[:active_assessments_count].nil?
        data['noncompliantEvidenceCount'] = stub[:noncompliant_evidence_count] unless stub[:noncompliant_evidence_count].nil?
        data['compliantEvidenceCount'] = stub[:compliant_evidence_count] unless stub[:compliant_evidence_count].nil?
        data['inconclusiveEvidenceCount'] = stub[:inconclusive_evidence_count] unless stub[:inconclusive_evidence_count].nil?
        data['assessmentControlsCountByNoncompliantEvidence'] = stub[:assessment_controls_count_by_noncompliant_evidence] unless stub[:assessment_controls_count_by_noncompliant_evidence].nil?
        data['totalAssessmentControlsCount'] = stub[:total_assessment_controls_count] unless stub[:total_assessment_controls_count].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for GetInsightsByAssessment
    class GetInsightsByAssessment
      def self.default(visited=[])
        {
          insights: InsightsByAssessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['insights'] = InsightsByAssessment.stub(stub[:insights]) unless stub[:insights].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InsightsByAssessment
    class InsightsByAssessment
      def self.default(visited=[])
        return nil if visited.include?('InsightsByAssessment')
        visited = visited + ['InsightsByAssessment']
        {
          noncompliant_evidence_count: 1,
          compliant_evidence_count: 1,
          inconclusive_evidence_count: 1,
          assessment_controls_count_by_noncompliant_evidence: 1,
          total_assessment_controls_count: 1,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightsByAssessment.new
        data = {}
        data['noncompliantEvidenceCount'] = stub[:noncompliant_evidence_count] unless stub[:noncompliant_evidence_count].nil?
        data['compliantEvidenceCount'] = stub[:compliant_evidence_count] unless stub[:compliant_evidence_count].nil?
        data['inconclusiveEvidenceCount'] = stub[:inconclusive_evidence_count] unless stub[:inconclusive_evidence_count].nil?
        data['assessmentControlsCountByNoncompliantEvidence'] = stub[:assessment_controls_count_by_noncompliant_evidence] unless stub[:assessment_controls_count_by_noncompliant_evidence].nil?
        data['totalAssessmentControlsCount'] = stub[:total_assessment_controls_count] unless stub[:total_assessment_controls_count].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for GetOrganizationAdminAccount
    class GetOrganizationAdminAccount
      def self.default(visited=[])
        {
          admin_account_id: 'admin_account_id',
          organization_id: 'organization_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['adminAccountId'] = stub[:admin_account_id] unless stub[:admin_account_id].nil?
        data['organizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetServicesInScope
    class GetServicesInScope
      def self.default(visited=[])
        {
          service_metadata: ServiceMetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['serviceMetadata'] = ServiceMetadataList.stub(stub[:service_metadata]) unless stub[:service_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServiceMetadataList
    class ServiceMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ServiceMetadataList')
        visited = visited + ['ServiceMetadataList']
        [
          ServiceMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceMetadata
    class ServiceMetadata
      def self.default(visited=[])
        return nil if visited.include?('ServiceMetadata')
        visited = visited + ['ServiceMetadata']
        {
          name: 'name',
          display_name: 'display_name',
          description: 'description',
          category: 'category',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data
      end
    end

    # Operation Stubber for GetSettings
    class GetSettings
      def self.default(visited=[])
        {
          settings: Settings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['settings'] = Settings.stub(stub[:settings]) unless stub[:settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Settings
    class Settings
      def self.default(visited=[])
        return nil if visited.include?('Settings')
        visited = visited + ['Settings']
        {
          is_aws_org_enabled: false,
          sns_topic: 'sns_topic',
          default_assessment_reports_destination: AssessmentReportsDestination.default(visited),
          default_process_owners: Roles.default(visited),
          kms_key: 'kms_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::Settings.new
        data = {}
        data['isAwsOrgEnabled'] = stub[:is_aws_org_enabled] unless stub[:is_aws_org_enabled].nil?
        data['snsTopic'] = stub[:sns_topic] unless stub[:sns_topic].nil?
        data['defaultAssessmentReportsDestination'] = AssessmentReportsDestination.stub(stub[:default_assessment_reports_destination]) unless stub[:default_assessment_reports_destination].nil?
        data['defaultProcessOwners'] = Roles.stub(stub[:default_process_owners]) unless stub[:default_process_owners].nil?
        data['kmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentControlInsightsByControlDomain
    class ListAssessmentControlInsightsByControlDomain
      def self.default(visited=[])
        {
          control_insights_by_assessment: ControlInsightsMetadataByAssessment.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlInsightsByAssessment'] = ControlInsightsMetadataByAssessment.stub(stub[:control_insights_by_assessment]) unless stub[:control_insights_by_assessment].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ControlInsightsMetadataByAssessment
    class ControlInsightsMetadataByAssessment
      def self.default(visited=[])
        return nil if visited.include?('ControlInsightsMetadataByAssessment')
        visited = visited + ['ControlInsightsMetadataByAssessment']
        [
          ControlInsightsMetadataByAssessmentItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlInsightsMetadataByAssessmentItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlInsightsMetadataByAssessmentItem
    class ControlInsightsMetadataByAssessmentItem
      def self.default(visited=[])
        return nil if visited.include?('ControlInsightsMetadataByAssessmentItem')
        visited = visited + ['ControlInsightsMetadataByAssessmentItem']
        {
          name: 'name',
          id: 'id',
          evidence_insights: EvidenceInsights.default(visited),
          control_set_name: 'control_set_name',
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlInsightsMetadataByAssessmentItem.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['evidenceInsights'] = EvidenceInsights.stub(stub[:evidence_insights]) unless stub[:evidence_insights].nil?
        data['controlSetName'] = stub[:control_set_name] unless stub[:control_set_name].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Structure Stubber for EvidenceInsights
    class EvidenceInsights
      def self.default(visited=[])
        return nil if visited.include?('EvidenceInsights')
        visited = visited + ['EvidenceInsights']
        {
          noncompliant_evidence_count: 1,
          compliant_evidence_count: 1,
          inconclusive_evidence_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EvidenceInsights.new
        data = {}
        data['noncompliantEvidenceCount'] = stub[:noncompliant_evidence_count] unless stub[:noncompliant_evidence_count].nil?
        data['compliantEvidenceCount'] = stub[:compliant_evidence_count] unless stub[:compliant_evidence_count].nil?
        data['inconclusiveEvidenceCount'] = stub[:inconclusive_evidence_count] unless stub[:inconclusive_evidence_count].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentFrameworkShareRequests
    class ListAssessmentFrameworkShareRequests
      def self.default(visited=[])
        {
          assessment_framework_share_requests: AssessmentFrameworkShareRequestList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentFrameworkShareRequests'] = AssessmentFrameworkShareRequestList.stub(stub[:assessment_framework_share_requests]) unless stub[:assessment_framework_share_requests].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssessmentFrameworkShareRequestList
    class AssessmentFrameworkShareRequestList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentFrameworkShareRequestList')
        visited = visited + ['AssessmentFrameworkShareRequestList']
        [
          AssessmentFrameworkShareRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentFrameworkShareRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentFrameworkShareRequest
    class AssessmentFrameworkShareRequest
      def self.default(visited=[])
        return nil if visited.include?('AssessmentFrameworkShareRequest')
        visited = visited + ['AssessmentFrameworkShareRequest']
        {
          id: 'id',
          framework_id: 'framework_id',
          framework_name: 'framework_name',
          framework_description: 'framework_description',
          status: 'status',
          source_account: 'source_account',
          destination_account: 'destination_account',
          destination_region: 'destination_region',
          expiration_time: Time.now,
          creation_time: Time.now,
          last_updated: Time.now,
          comment: 'comment',
          standard_controls_count: 1,
          custom_controls_count: 1,
          compliance_type: 'compliance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentFrameworkShareRequest.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['frameworkId'] = stub[:framework_id] unless stub[:framework_id].nil?
        data['frameworkName'] = stub[:framework_name] unless stub[:framework_name].nil?
        data['frameworkDescription'] = stub[:framework_description] unless stub[:framework_description].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['sourceAccount'] = stub[:source_account] unless stub[:source_account].nil?
        data['destinationAccount'] = stub[:destination_account] unless stub[:destination_account].nil?
        data['destinationRegion'] = stub[:destination_region] unless stub[:destination_region].nil?
        data['expirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['comment'] = stub[:comment] unless stub[:comment].nil?
        data['standardControlsCount'] = stub[:standard_controls_count] unless stub[:standard_controls_count].nil?
        data['customControlsCount'] = stub[:custom_controls_count] unless stub[:custom_controls_count].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentFrameworks
    class ListAssessmentFrameworks
      def self.default(visited=[])
        {
          framework_metadata_list: FrameworkMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['frameworkMetadataList'] = FrameworkMetadataList.stub(stub[:framework_metadata_list]) unless stub[:framework_metadata_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FrameworkMetadataList
    class FrameworkMetadataList
      def self.default(visited=[])
        return nil if visited.include?('FrameworkMetadataList')
        visited = visited + ['FrameworkMetadataList']
        [
          AssessmentFrameworkMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentFrameworkMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentFrameworkMetadata
    class AssessmentFrameworkMetadata
      def self.default(visited=[])
        return nil if visited.include?('AssessmentFrameworkMetadata')
        visited = visited + ['AssessmentFrameworkMetadata']
        {
          arn: 'arn',
          id: 'id',
          type: 'type',
          name: 'name',
          description: 'description',
          logo: 'logo',
          compliance_type: 'compliance_type',
          controls_count: 1,
          control_sets_count: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentFrameworkMetadata.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['logo'] = stub[:logo] unless stub[:logo].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['controlsCount'] = stub[:controls_count] unless stub[:controls_count].nil?
        data['controlSetsCount'] = stub[:control_sets_count] unless stub[:control_sets_count].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentReports
    class ListAssessmentReports
      def self.default(visited=[])
        {
          assessment_reports: AssessmentReportsMetadata.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentReports'] = AssessmentReportsMetadata.stub(stub[:assessment_reports]) unless stub[:assessment_reports].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssessmentReportsMetadata
    class AssessmentReportsMetadata
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReportsMetadata')
        visited = visited + ['AssessmentReportsMetadata']
        [
          AssessmentReportMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentReportMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentReportMetadata
    class AssessmentReportMetadata
      def self.default(visited=[])
        return nil if visited.include?('AssessmentReportMetadata')
        visited = visited + ['AssessmentReportMetadata']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          assessment_id: 'assessment_id',
          assessment_name: 'assessment_name',
          author: 'author',
          status: 'status',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentReportMetadata.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListAssessments
    class ListAssessments
      def self.default(visited=[])
        {
          assessment_metadata: ListAssessmentMetadata.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentMetadata'] = ListAssessmentMetadata.stub(stub[:assessment_metadata]) unless stub[:assessment_metadata].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListAssessmentMetadata
    class ListAssessmentMetadata
      def self.default(visited=[])
        return nil if visited.include?('ListAssessmentMetadata')
        visited = visited + ['ListAssessmentMetadata']
        [
          AssessmentMetadataItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentMetadataItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentMetadataItem
    class AssessmentMetadataItem
      def self.default(visited=[])
        return nil if visited.include?('AssessmentMetadataItem')
        visited = visited + ['AssessmentMetadataItem']
        {
          name: 'name',
          id: 'id',
          compliance_type: 'compliance_type',
          status: 'status',
          roles: Roles.default(visited),
          delegations: Delegations.default(visited),
          creation_time: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentMetadataItem.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['complianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['roles'] = Roles.stub(stub[:roles]) unless stub[:roles].nil?
        data['delegations'] = Delegations.stub(stub[:delegations]) unless stub[:delegations].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for ListControlDomainInsights
    class ListControlDomainInsights
      def self.default(visited=[])
        {
          control_domain_insights: ControlDomainInsightsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlDomainInsights'] = ControlDomainInsightsList.stub(stub[:control_domain_insights]) unless stub[:control_domain_insights].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ControlDomainInsightsList
    class ControlDomainInsightsList
      def self.default(visited=[])
        return nil if visited.include?('ControlDomainInsightsList')
        visited = visited + ['ControlDomainInsightsList']
        [
          ControlDomainInsights.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlDomainInsights.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlDomainInsights
    class ControlDomainInsights
      def self.default(visited=[])
        return nil if visited.include?('ControlDomainInsights')
        visited = visited + ['ControlDomainInsights']
        {
          name: 'name',
          id: 'id',
          controls_count_by_noncompliant_evidence: 1,
          total_controls_count: 1,
          evidence_insights: EvidenceInsights.default(visited),
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlDomainInsights.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['controlsCountByNoncompliantEvidence'] = stub[:controls_count_by_noncompliant_evidence] unless stub[:controls_count_by_noncompliant_evidence].nil?
        data['totalControlsCount'] = stub[:total_controls_count] unless stub[:total_controls_count].nil?
        data['evidenceInsights'] = EvidenceInsights.stub(stub[:evidence_insights]) unless stub[:evidence_insights].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for ListControlDomainInsightsByAssessment
    class ListControlDomainInsightsByAssessment
      def self.default(visited=[])
        {
          control_domain_insights: ControlDomainInsightsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlDomainInsights'] = ControlDomainInsightsList.stub(stub[:control_domain_insights]) unless stub[:control_domain_insights].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListControlInsightsByControlDomain
    class ListControlInsightsByControlDomain
      def self.default(visited=[])
        {
          control_insights_metadata: ControlInsightsMetadata.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlInsightsMetadata'] = ControlInsightsMetadata.stub(stub[:control_insights_metadata]) unless stub[:control_insights_metadata].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ControlInsightsMetadata
    class ControlInsightsMetadata
      def self.default(visited=[])
        return nil if visited.include?('ControlInsightsMetadata')
        visited = visited + ['ControlInsightsMetadata']
        [
          ControlInsightsMetadataItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlInsightsMetadataItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlInsightsMetadataItem
    class ControlInsightsMetadataItem
      def self.default(visited=[])
        return nil if visited.include?('ControlInsightsMetadataItem')
        visited = visited + ['ControlInsightsMetadataItem']
        {
          name: 'name',
          id: 'id',
          evidence_insights: EvidenceInsights.default(visited),
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlInsightsMetadataItem.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['evidenceInsights'] = EvidenceInsights.stub(stub[:evidence_insights]) unless stub[:evidence_insights].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for ListControls
    class ListControls
      def self.default(visited=[])
        {
          control_metadata_list: ControlMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlMetadataList'] = ControlMetadataList.stub(stub[:control_metadata_list]) unless stub[:control_metadata_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ControlMetadataList
    class ControlMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ControlMetadataList')
        visited = visited + ['ControlMetadataList']
        [
          ControlMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ControlMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlMetadata
    class ControlMetadata
      def self.default(visited=[])
        return nil if visited.include?('ControlMetadata')
        visited = visited + ['ControlMetadata']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          control_sources: 'control_sources',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlMetadata.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['controlSources'] = stub[:control_sources] unless stub[:control_sources].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListKeywordsForDataSource
    class ListKeywordsForDataSource
      def self.default(visited=[])
        {
          keywords: Keywords.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keywords'] = Keywords.stub(stub[:keywords]) unless stub[:keywords].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Keywords
    class Keywords
      def self.default(visited=[])
        return nil if visited.include?('Keywords')
        visited = visited + ['Keywords']
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

    # Operation Stubber for ListNotifications
    class ListNotifications
      def self.default(visited=[])
        {
          notifications: Notifications.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['notifications'] = Notifications.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Notifications
    class Notifications
      def self.default(visited=[])
        return nil if visited.include?('Notifications')
        visited = visited + ['Notifications']
        [
          Notification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Notification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Notification
    class Notification
      def self.default(visited=[])
        return nil if visited.include?('Notification')
        visited = visited + ['Notification']
        {
          id: 'id',
          assessment_id: 'assessment_id',
          assessment_name: 'assessment_name',
          control_set_id: 'control_set_id',
          control_set_name: 'control_set_name',
          description: 'description',
          event_time: Time.now,
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::Notification.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['controlSetId'] = stub[:control_set_id] unless stub[:control_set_id].nil?
        data['controlSetName'] = stub[:control_set_name] unless stub[:control_set_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['eventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
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
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterAccount
    class RegisterAccount
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterOrganizationAdminAccount
    class RegisterOrganizationAdminAccount
      def self.default(visited=[])
        {
          admin_account_id: 'admin_account_id',
          organization_id: 'organization_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['adminAccountId'] = stub[:admin_account_id] unless stub[:admin_account_id].nil?
        data['organizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartAssessmentFrameworkShare
    class StartAssessmentFrameworkShare
      def self.default(visited=[])
        {
          assessment_framework_share_request: AssessmentFrameworkShareRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentFrameworkShareRequest'] = AssessmentFrameworkShareRequest.stub(stub[:assessment_framework_share_request]) unless stub[:assessment_framework_share_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateAssessment
    class UpdateAssessment
      def self.default(visited=[])
        {
          assessment: Assessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Assessment.stub(stub[:assessment]) unless stub[:assessment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssessmentControl
    class UpdateAssessmentControl
      def self.default(visited=[])
        {
          control: AssessmentControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['control'] = AssessmentControl.stub(stub[:control]) unless stub[:control].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssessmentControlSetStatus
    class UpdateAssessmentControlSetStatus
      def self.default(visited=[])
        {
          control_set: AssessmentControlSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['controlSet'] = AssessmentControlSet.stub(stub[:control_set]) unless stub[:control_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssessmentFramework
    class UpdateAssessmentFramework
      def self.default(visited=[])
        {
          framework: Framework.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['framework'] = Framework.stub(stub[:framework]) unless stub[:framework].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssessmentFrameworkShare
    class UpdateAssessmentFrameworkShare
      def self.default(visited=[])
        {
          assessment_framework_share_request: AssessmentFrameworkShareRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentFrameworkShareRequest'] = AssessmentFrameworkShareRequest.stub(stub[:assessment_framework_share_request]) unless stub[:assessment_framework_share_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssessmentStatus
    class UpdateAssessmentStatus
      def self.default(visited=[])
        {
          assessment: Assessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Assessment.stub(stub[:assessment]) unless stub[:assessment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateControl
    class UpdateControl
      def self.default(visited=[])
        {
          control: Control.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['control'] = Control.stub(stub[:control]) unless stub[:control].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSettings
    class UpdateSettings
      def self.default(visited=[])
        {
          settings: Settings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['settings'] = Settings.stub(stub[:settings]) unless stub[:settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ValidateAssessmentReportIntegrity
    class ValidateAssessmentReportIntegrity
      def self.default(visited=[])
        {
          signature_valid: false,
          signature_algorithm: 'signature_algorithm',
          signature_date_time: 'signature_date_time',
          signature_key_id: 'signature_key_id',
          validation_errors: ValidationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['signatureValid'] = stub[:signature_valid] unless stub[:signature_valid].nil?
        data['signatureAlgorithm'] = stub[:signature_algorithm] unless stub[:signature_algorithm].nil?
        data['signatureDateTime'] = stub[:signature_date_time] unless stub[:signature_date_time].nil?
        data['signatureKeyId'] = stub[:signature_key_id] unless stub[:signature_key_id].nil?
        data['validationErrors'] = ValidationErrors.stub(stub[:validation_errors]) unless stub[:validation_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ValidationErrors
    class ValidationErrors
      def self.default(visited=[])
        return nil if visited.include?('ValidationErrors')
        visited = visited + ['ValidationErrors']
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
  end
end
