# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MTurk
  module Builders

    # Operation Builder for AcceptQualificationRequest
    class AcceptQualificationRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.AcceptQualificationRequest'
        data = {}
        data['QualificationRequestId'] = input[:qualification_request_id] unless input[:qualification_request_id].nil?
        data['IntegerValue'] = input[:integer_value] unless input[:integer_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ApproveAssignment
    class ApproveAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ApproveAssignment'
        data = {}
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        data['RequesterFeedback'] = input[:requester_feedback] unless input[:requester_feedback].nil?
        data['OverrideRejection'] = input[:override_rejection] unless input[:override_rejection].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateQualificationWithWorker
    class AssociateQualificationWithWorker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.AssociateQualificationWithWorker'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        data['IntegerValue'] = input[:integer_value] unless input[:integer_value].nil?
        data['SendNotification'] = input[:send_notification] unless input[:send_notification].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAdditionalAssignmentsForHIT
    class CreateAdditionalAssignmentsForHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateAdditionalAssignmentsForHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['NumberOfAdditionalAssignments'] = input[:number_of_additional_assignments] unless input[:number_of_additional_assignments].nil?
        data['UniqueRequestToken'] = input[:unique_request_token] unless input[:unique_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateHIT
    class CreateHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateHIT'
        data = {}
        data['MaxAssignments'] = input[:max_assignments] unless input[:max_assignments].nil?
        data['AutoApprovalDelayInSeconds'] = input[:auto_approval_delay_in_seconds] unless input[:auto_approval_delay_in_seconds].nil?
        data['LifetimeInSeconds'] = input[:lifetime_in_seconds] unless input[:lifetime_in_seconds].nil?
        data['AssignmentDurationInSeconds'] = input[:assignment_duration_in_seconds] unless input[:assignment_duration_in_seconds].nil?
        data['Reward'] = input[:reward] unless input[:reward].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Keywords'] = input[:keywords] unless input[:keywords].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Question'] = input[:question] unless input[:question].nil?
        data['RequesterAnnotation'] = input[:requester_annotation] unless input[:requester_annotation].nil?
        data['QualificationRequirements'] = QualificationRequirementList.build(input[:qualification_requirements]) unless input[:qualification_requirements].nil?
        data['UniqueRequestToken'] = input[:unique_request_token] unless input[:unique_request_token].nil?
        data['AssignmentReviewPolicy'] = ReviewPolicy.build(input[:assignment_review_policy]) unless input[:assignment_review_policy].nil?
        data['HITReviewPolicy'] = ReviewPolicy.build(input[:hit_review_policy]) unless input[:hit_review_policy].nil?
        data['HITLayoutId'] = input[:hit_layout_id] unless input[:hit_layout_id].nil?
        data['HITLayoutParameters'] = HITLayoutParameterList.build(input[:hit_layout_parameters]) unless input[:hit_layout_parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for HITLayoutParameterList
    class HITLayoutParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << HITLayoutParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HITLayoutParameter
    class HITLayoutParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ReviewPolicy
    class ReviewPolicy
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['Parameters'] = PolicyParameterList.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for PolicyParameterList
    class PolicyParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << PolicyParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PolicyParameter
    class PolicyParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = StringList.build(input[:values]) unless input[:values].nil?
        data['MapEntries'] = ParameterMapEntryList.build(input[:map_entries]) unless input[:map_entries].nil?
        data
      end
    end

    # List Builder for ParameterMapEntryList
    class ParameterMapEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << ParameterMapEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterMapEntry
    class ParameterMapEntry
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = StringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for QualificationRequirementList
    class QualificationRequirementList
      def self.build(input)
        data = []
        input.each do |element|
          data << QualificationRequirement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for QualificationRequirement
    class QualificationRequirement
      def self.build(input)
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['Comparator'] = input[:comparator] unless input[:comparator].nil?
        data['IntegerValues'] = IntegerList.build(input[:integer_values]) unless input[:integer_values].nil?
        data['LocaleValues'] = LocaleList.build(input[:locale_values]) unless input[:locale_values].nil?
        data['RequiredToPreview'] = input[:required_to_preview] unless input[:required_to_preview].nil?
        data['ActionsGuarded'] = input[:actions_guarded] unless input[:actions_guarded].nil?
        data
      end
    end

    # List Builder for LocaleList
    class LocaleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Locale.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Locale
    class Locale
      def self.build(input)
        data = {}
        data['Country'] = input[:country] unless input[:country].nil?
        data['Subdivision'] = input[:subdivision] unless input[:subdivision].nil?
        data
      end
    end

    # List Builder for IntegerList
    class IntegerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateHITType
    class CreateHITType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateHITType'
        data = {}
        data['AutoApprovalDelayInSeconds'] = input[:auto_approval_delay_in_seconds] unless input[:auto_approval_delay_in_seconds].nil?
        data['AssignmentDurationInSeconds'] = input[:assignment_duration_in_seconds] unless input[:assignment_duration_in_seconds].nil?
        data['Reward'] = input[:reward] unless input[:reward].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Keywords'] = input[:keywords] unless input[:keywords].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['QualificationRequirements'] = QualificationRequirementList.build(input[:qualification_requirements]) unless input[:qualification_requirements].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateHITWithHITType
    class CreateHITWithHITType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateHITWithHITType'
        data = {}
        data['HITTypeId'] = input[:hit_type_id] unless input[:hit_type_id].nil?
        data['MaxAssignments'] = input[:max_assignments] unless input[:max_assignments].nil?
        data['LifetimeInSeconds'] = input[:lifetime_in_seconds] unless input[:lifetime_in_seconds].nil?
        data['Question'] = input[:question] unless input[:question].nil?
        data['RequesterAnnotation'] = input[:requester_annotation] unless input[:requester_annotation].nil?
        data['UniqueRequestToken'] = input[:unique_request_token] unless input[:unique_request_token].nil?
        data['AssignmentReviewPolicy'] = ReviewPolicy.build(input[:assignment_review_policy]) unless input[:assignment_review_policy].nil?
        data['HITReviewPolicy'] = ReviewPolicy.build(input[:hit_review_policy]) unless input[:hit_review_policy].nil?
        data['HITLayoutId'] = input[:hit_layout_id] unless input[:hit_layout_id].nil?
        data['HITLayoutParameters'] = HITLayoutParameterList.build(input[:hit_layout_parameters]) unless input[:hit_layout_parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateQualificationType
    class CreateQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateQualificationType'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Keywords'] = input[:keywords] unless input[:keywords].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['QualificationTypeStatus'] = input[:qualification_type_status] unless input[:qualification_type_status].nil?
        data['RetryDelayInSeconds'] = input[:retry_delay_in_seconds] unless input[:retry_delay_in_seconds].nil?
        data['Test'] = input[:test] unless input[:test].nil?
        data['AnswerKey'] = input[:answer_key] unless input[:answer_key].nil?
        data['TestDurationInSeconds'] = input[:test_duration_in_seconds] unless input[:test_duration_in_seconds].nil?
        data['AutoGranted'] = input[:auto_granted] unless input[:auto_granted].nil?
        data['AutoGrantedValue'] = input[:auto_granted_value] unless input[:auto_granted_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkerBlock
    class CreateWorkerBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.CreateWorkerBlock'
        data = {}
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteHIT
    class DeleteHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.DeleteHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteQualificationType
    class DeleteQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.DeleteQualificationType'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkerBlock
    class DeleteWorkerBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.DeleteWorkerBlock'
        data = {}
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateQualificationFromWorker
    class DisassociateQualificationFromWorker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.DisassociateQualificationFromWorker'
        data = {}
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccountBalance
    class GetAccountBalance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetAccountBalance'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAssignment
    class GetAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetAssignment'
        data = {}
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFileUploadURL
    class GetFileUploadURL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetFileUploadURL'
        data = {}
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        data['QuestionIdentifier'] = input[:question_identifier] unless input[:question_identifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetHIT
    class GetHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQualificationScore
    class GetQualificationScore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetQualificationScore'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQualificationType
    class GetQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.GetQualificationType'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssignmentsForHIT
    class ListAssignmentsForHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListAssignmentsForHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['AssignmentStatuses'] = AssignmentStatusList.build(input[:assignment_statuses]) unless input[:assignment_statuses].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssignmentStatusList
    class AssignmentStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListBonusPayments
    class ListBonusPayments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListBonusPayments'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHITs
    class ListHITs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListHITs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHITsForQualificationType
    class ListHITsForQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListHITsForQualificationType'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListQualificationRequests
    class ListQualificationRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListQualificationRequests'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListQualificationTypes
    class ListQualificationTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListQualificationTypes'
        data = {}
        data['Query'] = input[:query] unless input[:query].nil?
        data['MustBeRequestable'] = input[:must_be_requestable] unless input[:must_be_requestable].nil?
        data['MustBeOwnedByCaller'] = input[:must_be_owned_by_caller] unless input[:must_be_owned_by_caller].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReviewPolicyResultsForHIT
    class ListReviewPolicyResultsForHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListReviewPolicyResultsForHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['PolicyLevels'] = ReviewPolicyLevelList.build(input[:policy_levels]) unless input[:policy_levels].nil?
        data['RetrieveActions'] = input[:retrieve_actions] unless input[:retrieve_actions].nil?
        data['RetrieveResults'] = input[:retrieve_results] unless input[:retrieve_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReviewPolicyLevelList
    class ReviewPolicyLevelList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListReviewableHITs
    class ListReviewableHITs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListReviewableHITs'
        data = {}
        data['HITTypeId'] = input[:hit_type_id] unless input[:hit_type_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkerBlocks
    class ListWorkerBlocks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListWorkerBlocks'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkersWithQualificationType
    class ListWorkersWithQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.ListWorkersWithQualificationType'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for NotifyWorkers
    class NotifyWorkers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.NotifyWorkers'
        data = {}
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['MessageText'] = input[:message_text] unless input[:message_text].nil?
        data['WorkerIds'] = CustomerIdList.build(input[:worker_ids]) unless input[:worker_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomerIdList
    class CustomerIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RejectAssignment
    class RejectAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.RejectAssignment'
        data = {}
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        data['RequesterFeedback'] = input[:requester_feedback] unless input[:requester_feedback].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectQualificationRequest
    class RejectQualificationRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.RejectQualificationRequest'
        data = {}
        data['QualificationRequestId'] = input[:qualification_request_id] unless input[:qualification_request_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendBonus
    class SendBonus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.SendBonus'
        data = {}
        data['WorkerId'] = input[:worker_id] unless input[:worker_id].nil?
        data['BonusAmount'] = input[:bonus_amount] unless input[:bonus_amount].nil?
        data['AssignmentId'] = input[:assignment_id] unless input[:assignment_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data['UniqueRequestToken'] = input[:unique_request_token] unless input[:unique_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendTestEventNotification
    class SendTestEventNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.SendTestEventNotification'
        data = {}
        data['Notification'] = NotificationSpecification.build(input[:notification]) unless input[:notification].nil?
        data['TestEventType'] = input[:test_event_type] unless input[:test_event_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationSpecification
    class NotificationSpecification
      def self.build(input)
        data = {}
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data['Transport'] = input[:transport] unless input[:transport].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['EventTypes'] = EventTypeList.build(input[:event_types]) unless input[:event_types].nil?
        data
      end
    end

    # List Builder for EventTypeList
    class EventTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateExpirationForHIT
    class UpdateExpirationForHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.UpdateExpirationForHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['ExpireAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:expire_at]).to_i unless input[:expire_at].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateHITReviewStatus
    class UpdateHITReviewStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.UpdateHITReviewStatus'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['Revert'] = input[:revert] unless input[:revert].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateHITTypeOfHIT
    class UpdateHITTypeOfHIT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.UpdateHITTypeOfHIT'
        data = {}
        data['HITId'] = input[:hit_id] unless input[:hit_id].nil?
        data['HITTypeId'] = input[:hit_type_id] unless input[:hit_type_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNotificationSettings
    class UpdateNotificationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.UpdateNotificationSettings'
        data = {}
        data['HITTypeId'] = input[:hit_type_id] unless input[:hit_type_id].nil?
        data['Notification'] = NotificationSpecification.build(input[:notification]) unless input[:notification].nil?
        data['Active'] = input[:active] unless input[:active].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQualificationType
    class UpdateQualificationType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MTurkRequesterServiceV20170117.UpdateQualificationType'
        data = {}
        data['QualificationTypeId'] = input[:qualification_type_id] unless input[:qualification_type_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['QualificationTypeStatus'] = input[:qualification_type_status] unless input[:qualification_type_status].nil?
        data['Test'] = input[:test] unless input[:test].nil?
        data['AnswerKey'] = input[:answer_key] unless input[:answer_key].nil?
        data['TestDurationInSeconds'] = input[:test_duration_in_seconds] unless input[:test_duration_in_seconds].nil?
        data['RetryDelayInSeconds'] = input[:retry_delay_in_seconds] unless input[:retry_delay_in_seconds].nil?
        data['AutoGranted'] = input[:auto_granted] unless input[:auto_granted].nil?
        data['AutoGrantedValue'] = input[:auto_granted_value] unless input[:auto_granted_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
