# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MTurk
  module Parsers

    # Operation Parser for AcceptQualificationRequest
    class AcceptQualificationRequest
      def self.parse(http_resp)
        data = Types::AcceptQualificationRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for RequestError
    class RequestError
      def self.parse(http_resp)
        data = Types::RequestError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.turk_error_code = map['TurkErrorCode']
        data
      end
    end

    # Error Parser for ServiceFault
    class ServiceFault
      def self.parse(http_resp)
        data = Types::ServiceFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.turk_error_code = map['TurkErrorCode']
        data
      end
    end

    # Operation Parser for ApproveAssignment
    class ApproveAssignment
      def self.parse(http_resp)
        data = Types::ApproveAssignmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateQualificationWithWorker
    class AssociateQualificationWithWorker
      def self.parse(http_resp)
        data = Types::AssociateQualificationWithWorkerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAdditionalAssignmentsForHIT
    class CreateAdditionalAssignmentsForHIT
      def self.parse(http_resp)
        data = Types::CreateAdditionalAssignmentsForHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateHIT
    class CreateHIT
      def self.parse(http_resp)
        data = Types::CreateHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hit = (Parsers::HIT.parse(map['HIT']) unless map['HIT'].nil?)
        data
      end
    end

    class HIT
      def self.parse(map)
        data = Types::HIT.new
        data.hit_id = map['HITId']
        data.hit_type_id = map['HITTypeId']
        data.hit_group_id = map['HITGroupId']
        data.hit_layout_id = map['HITLayoutId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.title = map['Title']
        data.description = map['Description']
        data.question = map['Question']
        data.keywords = map['Keywords']
        data.hit_status = map['HITStatus']
        data.max_assignments = map['MaxAssignments']
        data.reward = map['Reward']
        data.auto_approval_delay_in_seconds = map['AutoApprovalDelayInSeconds']
        data.expiration = Time.at(map['Expiration'].to_i) if map['Expiration']
        data.assignment_duration_in_seconds = map['AssignmentDurationInSeconds']
        data.requester_annotation = map['RequesterAnnotation']
        data.qualification_requirements = (Parsers::QualificationRequirementList.parse(map['QualificationRequirements']) unless map['QualificationRequirements'].nil?)
        data.hit_review_status = map['HITReviewStatus']
        data.number_of_assignments_pending = map['NumberOfAssignmentsPending']
        data.number_of_assignments_available = map['NumberOfAssignmentsAvailable']
        data.number_of_assignments_completed = map['NumberOfAssignmentsCompleted']
        return data
      end
    end

    class QualificationRequirementList
      def self.parse(list)
        list.map do |value|
          Parsers::QualificationRequirement.parse(value) unless value.nil?
        end
      end
    end

    class QualificationRequirement
      def self.parse(map)
        data = Types::QualificationRequirement.new
        data.qualification_type_id = map['QualificationTypeId']
        data.comparator = map['Comparator']
        data.integer_values = (Parsers::IntegerList.parse(map['IntegerValues']) unless map['IntegerValues'].nil?)
        data.locale_values = (Parsers::LocaleList.parse(map['LocaleValues']) unless map['LocaleValues'].nil?)
        data.required_to_preview = map['RequiredToPreview']
        data.actions_guarded = map['ActionsGuarded']
        return data
      end
    end

    class LocaleList
      def self.parse(list)
        list.map do |value|
          Parsers::Locale.parse(value) unless value.nil?
        end
      end
    end

    class Locale
      def self.parse(map)
        data = Types::Locale.new
        data.country = map['Country']
        data.subdivision = map['Subdivision']
        return data
      end
    end

    class IntegerList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateHITType
    class CreateHITType
      def self.parse(http_resp)
        data = Types::CreateHITTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hit_type_id = map['HITTypeId']
        data
      end
    end

    # Operation Parser for CreateHITWithHITType
    class CreateHITWithHITType
      def self.parse(http_resp)
        data = Types::CreateHITWithHITTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hit = (Parsers::HIT.parse(map['HIT']) unless map['HIT'].nil?)
        data
      end
    end

    # Operation Parser for CreateQualificationType
    class CreateQualificationType
      def self.parse(http_resp)
        data = Types::CreateQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.qualification_type = (Parsers::QualificationType.parse(map['QualificationType']) unless map['QualificationType'].nil?)
        data
      end
    end

    class QualificationType
      def self.parse(map)
        data = Types::QualificationType.new
        data.qualification_type_id = map['QualificationTypeId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.name = map['Name']
        data.description = map['Description']
        data.keywords = map['Keywords']
        data.qualification_type_status = map['QualificationTypeStatus']
        data.test = map['Test']
        data.test_duration_in_seconds = map['TestDurationInSeconds']
        data.answer_key = map['AnswerKey']
        data.retry_delay_in_seconds = map['RetryDelayInSeconds']
        data.is_requestable = map['IsRequestable']
        data.auto_granted = map['AutoGranted']
        data.auto_granted_value = map['AutoGrantedValue']
        return data
      end
    end

    # Operation Parser for CreateWorkerBlock
    class CreateWorkerBlock
      def self.parse(http_resp)
        data = Types::CreateWorkerBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteHIT
    class DeleteHIT
      def self.parse(http_resp)
        data = Types::DeleteHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteQualificationType
    class DeleteQualificationType
      def self.parse(http_resp)
        data = Types::DeleteQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkerBlock
    class DeleteWorkerBlock
      def self.parse(http_resp)
        data = Types::DeleteWorkerBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateQualificationFromWorker
    class DisassociateQualificationFromWorker
      def self.parse(http_resp)
        data = Types::DisassociateQualificationFromWorkerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetAccountBalance
    class GetAccountBalance
      def self.parse(http_resp)
        data = Types::GetAccountBalanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.available_balance = map['AvailableBalance']
        data.on_hold_balance = map['OnHoldBalance']
        data
      end
    end

    # Operation Parser for GetAssignment
    class GetAssignment
      def self.parse(http_resp)
        data = Types::GetAssignmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assignment = (Parsers::Assignment.parse(map['Assignment']) unless map['Assignment'].nil?)
        data.hit = (Parsers::HIT.parse(map['HIT']) unless map['HIT'].nil?)
        data
      end
    end

    class Assignment
      def self.parse(map)
        data = Types::Assignment.new
        data.assignment_id = map['AssignmentId']
        data.worker_id = map['WorkerId']
        data.hit_id = map['HITId']
        data.assignment_status = map['AssignmentStatus']
        data.auto_approval_time = Time.at(map['AutoApprovalTime'].to_i) if map['AutoApprovalTime']
        data.accept_time = Time.at(map['AcceptTime'].to_i) if map['AcceptTime']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.approval_time = Time.at(map['ApprovalTime'].to_i) if map['ApprovalTime']
        data.rejection_time = Time.at(map['RejectionTime'].to_i) if map['RejectionTime']
        data.deadline = Time.at(map['Deadline'].to_i) if map['Deadline']
        data.answer = map['Answer']
        data.requester_feedback = map['RequesterFeedback']
        return data
      end
    end

    # Operation Parser for GetFileUploadURL
    class GetFileUploadURL
      def self.parse(http_resp)
        data = Types::GetFileUploadURLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_upload_url = map['FileUploadURL']
        data
      end
    end

    # Operation Parser for GetHIT
    class GetHIT
      def self.parse(http_resp)
        data = Types::GetHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hit = (Parsers::HIT.parse(map['HIT']) unless map['HIT'].nil?)
        data
      end
    end

    # Operation Parser for GetQualificationScore
    class GetQualificationScore
      def self.parse(http_resp)
        data = Types::GetQualificationScoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.qualification = (Parsers::Qualification.parse(map['Qualification']) unless map['Qualification'].nil?)
        data
      end
    end

    class Qualification
      def self.parse(map)
        data = Types::Qualification.new
        data.qualification_type_id = map['QualificationTypeId']
        data.worker_id = map['WorkerId']
        data.grant_time = Time.at(map['GrantTime'].to_i) if map['GrantTime']
        data.integer_value = map['IntegerValue']
        data.locale_value = (Parsers::Locale.parse(map['LocaleValue']) unless map['LocaleValue'].nil?)
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for GetQualificationType
    class GetQualificationType
      def self.parse(http_resp)
        data = Types::GetQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.qualification_type = (Parsers::QualificationType.parse(map['QualificationType']) unless map['QualificationType'].nil?)
        data
      end
    end

    # Operation Parser for ListAssignmentsForHIT
    class ListAssignmentsForHIT
      def self.parse(http_resp)
        data = Types::ListAssignmentsForHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.assignments = (Parsers::AssignmentList.parse(map['Assignments']) unless map['Assignments'].nil?)
        data
      end
    end

    class AssignmentList
      def self.parse(list)
        list.map do |value|
          Parsers::Assignment.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListBonusPayments
    class ListBonusPayments
      def self.parse(http_resp)
        data = Types::ListBonusPaymentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.num_results = map['NumResults']
        data.next_token = map['NextToken']
        data.bonus_payments = (Parsers::BonusPaymentList.parse(map['BonusPayments']) unless map['BonusPayments'].nil?)
        data
      end
    end

    class BonusPaymentList
      def self.parse(list)
        list.map do |value|
          Parsers::BonusPayment.parse(value) unless value.nil?
        end
      end
    end

    class BonusPayment
      def self.parse(map)
        data = Types::BonusPayment.new
        data.worker_id = map['WorkerId']
        data.bonus_amount = map['BonusAmount']
        data.assignment_id = map['AssignmentId']
        data.reason = map['Reason']
        data.grant_time = Time.at(map['GrantTime'].to_i) if map['GrantTime']
        return data
      end
    end

    # Operation Parser for ListHITs
    class ListHITs
      def self.parse(http_resp)
        data = Types::ListHITsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.hi_ts = (Parsers::HITList.parse(map['HITs']) unless map['HITs'].nil?)
        data
      end
    end

    class HITList
      def self.parse(list)
        list.map do |value|
          Parsers::HIT.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListHITsForQualificationType
    class ListHITsForQualificationType
      def self.parse(http_resp)
        data = Types::ListHITsForQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.hi_ts = (Parsers::HITList.parse(map['HITs']) unless map['HITs'].nil?)
        data
      end
    end

    # Operation Parser for ListQualificationRequests
    class ListQualificationRequests
      def self.parse(http_resp)
        data = Types::ListQualificationRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.num_results = map['NumResults']
        data.next_token = map['NextToken']
        data.qualification_requests = (Parsers::QualificationRequestList.parse(map['QualificationRequests']) unless map['QualificationRequests'].nil?)
        data
      end
    end

    class QualificationRequestList
      def self.parse(list)
        list.map do |value|
          Parsers::QualificationRequest.parse(value) unless value.nil?
        end
      end
    end

    class QualificationRequest
      def self.parse(map)
        data = Types::QualificationRequest.new
        data.qualification_request_id = map['QualificationRequestId']
        data.qualification_type_id = map['QualificationTypeId']
        data.worker_id = map['WorkerId']
        data.test = map['Test']
        data.answer = map['Answer']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        return data
      end
    end

    # Operation Parser for ListQualificationTypes
    class ListQualificationTypes
      def self.parse(http_resp)
        data = Types::ListQualificationTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.num_results = map['NumResults']
        data.next_token = map['NextToken']
        data.qualification_types = (Parsers::QualificationTypeList.parse(map['QualificationTypes']) unless map['QualificationTypes'].nil?)
        data
      end
    end

    class QualificationTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::QualificationType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListReviewPolicyResultsForHIT
    class ListReviewPolicyResultsForHIT
      def self.parse(http_resp)
        data = Types::ListReviewPolicyResultsForHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hit_id = map['HITId']
        data.assignment_review_policy = (Parsers::ReviewPolicy.parse(map['AssignmentReviewPolicy']) unless map['AssignmentReviewPolicy'].nil?)
        data.hit_review_policy = (Parsers::ReviewPolicy.parse(map['HITReviewPolicy']) unless map['HITReviewPolicy'].nil?)
        data.assignment_review_report = (Parsers::ReviewReport.parse(map['AssignmentReviewReport']) unless map['AssignmentReviewReport'].nil?)
        data.hit_review_report = (Parsers::ReviewReport.parse(map['HITReviewReport']) unless map['HITReviewReport'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReviewReport
      def self.parse(map)
        data = Types::ReviewReport.new
        data.review_results = (Parsers::ReviewResultDetailList.parse(map['ReviewResults']) unless map['ReviewResults'].nil?)
        data.review_actions = (Parsers::ReviewActionDetailList.parse(map['ReviewActions']) unless map['ReviewActions'].nil?)
        return data
      end
    end

    class ReviewActionDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ReviewActionDetail.parse(value) unless value.nil?
        end
      end
    end

    class ReviewActionDetail
      def self.parse(map)
        data = Types::ReviewActionDetail.new
        data.action_id = map['ActionId']
        data.action_name = map['ActionName']
        data.target_id = map['TargetId']
        data.target_type = map['TargetType']
        data.status = map['Status']
        data.complete_time = Time.at(map['CompleteTime'].to_i) if map['CompleteTime']
        data.result = map['Result']
        data.error_code = map['ErrorCode']
        return data
      end
    end

    class ReviewResultDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ReviewResultDetail.parse(value) unless value.nil?
        end
      end
    end

    class ReviewResultDetail
      def self.parse(map)
        data = Types::ReviewResultDetail.new
        data.action_id = map['ActionId']
        data.subject_id = map['SubjectId']
        data.subject_type = map['SubjectType']
        data.question_id = map['QuestionId']
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class ReviewPolicy
      def self.parse(map)
        data = Types::ReviewPolicy.new
        data.policy_name = map['PolicyName']
        data.parameters = (Parsers::PolicyParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class PolicyParameterList
      def self.parse(list)
        list.map do |value|
          Parsers::PolicyParameter.parse(value) unless value.nil?
        end
      end
    end

    class PolicyParameter
      def self.parse(map)
        data = Types::PolicyParameter.new
        data.key = map['Key']
        data.values = (Parsers::StringList.parse(map['Values']) unless map['Values'].nil?)
        data.map_entries = (Parsers::ParameterMapEntryList.parse(map['MapEntries']) unless map['MapEntries'].nil?)
        return data
      end
    end

    class ParameterMapEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterMapEntry.parse(value) unless value.nil?
        end
      end
    end

    class ParameterMapEntry
      def self.parse(map)
        data = Types::ParameterMapEntry.new
        data.key = map['Key']
        data.values = (Parsers::StringList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListReviewableHITs
    class ListReviewableHITs
      def self.parse(http_resp)
        data = Types::ListReviewableHITsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.hi_ts = (Parsers::HITList.parse(map['HITs']) unless map['HITs'].nil?)
        data
      end
    end

    # Operation Parser for ListWorkerBlocks
    class ListWorkerBlocks
      def self.parse(http_resp)
        data = Types::ListWorkerBlocksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.worker_blocks = (Parsers::WorkerBlockList.parse(map['WorkerBlocks']) unless map['WorkerBlocks'].nil?)
        data
      end
    end

    class WorkerBlockList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkerBlock.parse(value) unless value.nil?
        end
      end
    end

    class WorkerBlock
      def self.parse(map)
        data = Types::WorkerBlock.new
        data.worker_id = map['WorkerId']
        data.reason = map['Reason']
        return data
      end
    end

    # Operation Parser for ListWorkersWithQualificationType
    class ListWorkersWithQualificationType
      def self.parse(http_resp)
        data = Types::ListWorkersWithQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.num_results = map['NumResults']
        data.qualifications = (Parsers::QualificationList.parse(map['Qualifications']) unless map['Qualifications'].nil?)
        data
      end
    end

    class QualificationList
      def self.parse(list)
        list.map do |value|
          Parsers::Qualification.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for NotifyWorkers
    class NotifyWorkers
      def self.parse(http_resp)
        data = Types::NotifyWorkersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notify_workers_failure_statuses = (Parsers::NotifyWorkersFailureStatusList.parse(map['NotifyWorkersFailureStatuses']) unless map['NotifyWorkersFailureStatuses'].nil?)
        data
      end
    end

    class NotifyWorkersFailureStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::NotifyWorkersFailureStatus.parse(value) unless value.nil?
        end
      end
    end

    class NotifyWorkersFailureStatus
      def self.parse(map)
        data = Types::NotifyWorkersFailureStatus.new
        data.notify_workers_failure_code = map['NotifyWorkersFailureCode']
        data.notify_workers_failure_message = map['NotifyWorkersFailureMessage']
        data.worker_id = map['WorkerId']
        return data
      end
    end

    # Operation Parser for RejectAssignment
    class RejectAssignment
      def self.parse(http_resp)
        data = Types::RejectAssignmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RejectQualificationRequest
    class RejectQualificationRequest
      def self.parse(http_resp)
        data = Types::RejectQualificationRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SendBonus
    class SendBonus
      def self.parse(http_resp)
        data = Types::SendBonusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SendTestEventNotification
    class SendTestEventNotification
      def self.parse(http_resp)
        data = Types::SendTestEventNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateExpirationForHIT
    class UpdateExpirationForHIT
      def self.parse(http_resp)
        data = Types::UpdateExpirationForHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateHITReviewStatus
    class UpdateHITReviewStatus
      def self.parse(http_resp)
        data = Types::UpdateHITReviewStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateHITTypeOfHIT
    class UpdateHITTypeOfHIT
      def self.parse(http_resp)
        data = Types::UpdateHITTypeOfHITOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateNotificationSettings
    class UpdateNotificationSettings
      def self.parse(http_resp)
        data = Types::UpdateNotificationSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateQualificationType
    class UpdateQualificationType
      def self.parse(http_resp)
        data = Types::UpdateQualificationTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.qualification_type = (Parsers::QualificationType.parse(map['QualificationType']) unless map['QualificationType'].nil?)
        data
      end
    end
  end
end
