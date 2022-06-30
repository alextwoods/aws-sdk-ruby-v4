# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MTurk
  module Params

    module AcceptQualificationRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptQualificationRequestInput, context: context)
        type = Types::AcceptQualificationRequestInput.new
        type.qualification_request_id = params[:qualification_request_id]
        type.integer_value = params[:integer_value]
        type
      end
    end

    module AcceptQualificationRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptQualificationRequestOutput, context: context)
        type = Types::AcceptQualificationRequestOutput.new
        type
      end
    end

    module ApproveAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApproveAssignmentInput, context: context)
        type = Types::ApproveAssignmentInput.new
        type.assignment_id = params[:assignment_id]
        type.requester_feedback = params[:requester_feedback]
        type.override_rejection = params[:override_rejection]
        type
      end
    end

    module ApproveAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApproveAssignmentOutput, context: context)
        type = Types::ApproveAssignmentOutput.new
        type
      end
    end

    module Assignment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Assignment, context: context)
        type = Types::Assignment.new
        type.assignment_id = params[:assignment_id]
        type.worker_id = params[:worker_id]
        type.hit_id = params[:hit_id]
        type.assignment_status = params[:assignment_status]
        type.auto_approval_time = params[:auto_approval_time]
        type.accept_time = params[:accept_time]
        type.submit_time = params[:submit_time]
        type.approval_time = params[:approval_time]
        type.rejection_time = params[:rejection_time]
        type.deadline = params[:deadline]
        type.answer = params[:answer]
        type.requester_feedback = params[:requester_feedback]
        type
      end
    end

    module AssignmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Assignment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssignmentStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateQualificationWithWorkerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateQualificationWithWorkerInput, context: context)
        type = Types::AssociateQualificationWithWorkerInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.worker_id = params[:worker_id]
        type.integer_value = params[:integer_value]
        type.send_notification = params[:send_notification]
        type
      end
    end

    module AssociateQualificationWithWorkerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateQualificationWithWorkerOutput, context: context)
        type = Types::AssociateQualificationWithWorkerOutput.new
        type
      end
    end

    module BonusPayment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BonusPayment, context: context)
        type = Types::BonusPayment.new
        type.worker_id = params[:worker_id]
        type.bonus_amount = params[:bonus_amount]
        type.assignment_id = params[:assignment_id]
        type.reason = params[:reason]
        type.grant_time = params[:grant_time]
        type
      end
    end

    module BonusPaymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BonusPayment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAdditionalAssignmentsForHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAdditionalAssignmentsForHITInput, context: context)
        type = Types::CreateAdditionalAssignmentsForHITInput.new
        type.hit_id = params[:hit_id]
        type.number_of_additional_assignments = params[:number_of_additional_assignments]
        type.unique_request_token = params[:unique_request_token]
        type
      end
    end

    module CreateAdditionalAssignmentsForHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAdditionalAssignmentsForHITOutput, context: context)
        type = Types::CreateAdditionalAssignmentsForHITOutput.new
        type
      end
    end

    module CreateHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITInput, context: context)
        type = Types::CreateHITInput.new
        type.max_assignments = params[:max_assignments]
        type.auto_approval_delay_in_seconds = params[:auto_approval_delay_in_seconds]
        type.lifetime_in_seconds = params[:lifetime_in_seconds]
        type.assignment_duration_in_seconds = params[:assignment_duration_in_seconds]
        type.reward = params[:reward]
        type.title = params[:title]
        type.keywords = params[:keywords]
        type.description = params[:description]
        type.question = params[:question]
        type.requester_annotation = params[:requester_annotation]
        type.qualification_requirements = QualificationRequirementList.build(params[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless params[:qualification_requirements].nil?
        type.unique_request_token = params[:unique_request_token]
        type.assignment_review_policy = ReviewPolicy.build(params[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless params[:assignment_review_policy].nil?
        type.hit_review_policy = ReviewPolicy.build(params[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless params[:hit_review_policy].nil?
        type.hit_layout_id = params[:hit_layout_id]
        type.hit_layout_parameters = HITLayoutParameterList.build(params[:hit_layout_parameters], context: "#{context}[:hit_layout_parameters]") unless params[:hit_layout_parameters].nil?
        type
      end
    end

    module CreateHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITOutput, context: context)
        type = Types::CreateHITOutput.new
        type.hit = HIT.build(params[:hit], context: "#{context}[:hit]") unless params[:hit].nil?
        type
      end
    end

    module CreateHITTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITTypeInput, context: context)
        type = Types::CreateHITTypeInput.new
        type.auto_approval_delay_in_seconds = params[:auto_approval_delay_in_seconds]
        type.assignment_duration_in_seconds = params[:assignment_duration_in_seconds]
        type.reward = params[:reward]
        type.title = params[:title]
        type.keywords = params[:keywords]
        type.description = params[:description]
        type.qualification_requirements = QualificationRequirementList.build(params[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless params[:qualification_requirements].nil?
        type
      end
    end

    module CreateHITTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITTypeOutput, context: context)
        type = Types::CreateHITTypeOutput.new
        type.hit_type_id = params[:hit_type_id]
        type
      end
    end

    module CreateHITWithHITTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITWithHITTypeInput, context: context)
        type = Types::CreateHITWithHITTypeInput.new
        type.hit_type_id = params[:hit_type_id]
        type.max_assignments = params[:max_assignments]
        type.lifetime_in_seconds = params[:lifetime_in_seconds]
        type.question = params[:question]
        type.requester_annotation = params[:requester_annotation]
        type.unique_request_token = params[:unique_request_token]
        type.assignment_review_policy = ReviewPolicy.build(params[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless params[:assignment_review_policy].nil?
        type.hit_review_policy = ReviewPolicy.build(params[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless params[:hit_review_policy].nil?
        type.hit_layout_id = params[:hit_layout_id]
        type.hit_layout_parameters = HITLayoutParameterList.build(params[:hit_layout_parameters], context: "#{context}[:hit_layout_parameters]") unless params[:hit_layout_parameters].nil?
        type
      end
    end

    module CreateHITWithHITTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHITWithHITTypeOutput, context: context)
        type = Types::CreateHITWithHITTypeOutput.new
        type.hit = HIT.build(params[:hit], context: "#{context}[:hit]") unless params[:hit].nil?
        type
      end
    end

    module CreateQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQualificationTypeInput, context: context)
        type = Types::CreateQualificationTypeInput.new
        type.name = params[:name]
        type.keywords = params[:keywords]
        type.description = params[:description]
        type.qualification_type_status = params[:qualification_type_status]
        type.retry_delay_in_seconds = params[:retry_delay_in_seconds]
        type.test = params[:test]
        type.answer_key = params[:answer_key]
        type.test_duration_in_seconds = params[:test_duration_in_seconds]
        type.auto_granted = params[:auto_granted]
        type.auto_granted_value = params[:auto_granted_value]
        type
      end
    end

    module CreateQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQualificationTypeOutput, context: context)
        type = Types::CreateQualificationTypeOutput.new
        type.qualification_type = QualificationType.build(params[:qualification_type], context: "#{context}[:qualification_type]") unless params[:qualification_type].nil?
        type
      end
    end

    module CreateWorkerBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkerBlockInput, context: context)
        type = Types::CreateWorkerBlockInput.new
        type.worker_id = params[:worker_id]
        type.reason = params[:reason]
        type
      end
    end

    module CreateWorkerBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkerBlockOutput, context: context)
        type = Types::CreateWorkerBlockOutput.new
        type
      end
    end

    module CustomerIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHITInput, context: context)
        type = Types::DeleteHITInput.new
        type.hit_id = params[:hit_id]
        type
      end
    end

    module DeleteHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHITOutput, context: context)
        type = Types::DeleteHITOutput.new
        type
      end
    end

    module DeleteQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQualificationTypeInput, context: context)
        type = Types::DeleteQualificationTypeInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type
      end
    end

    module DeleteQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQualificationTypeOutput, context: context)
        type = Types::DeleteQualificationTypeOutput.new
        type
      end
    end

    module DeleteWorkerBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkerBlockInput, context: context)
        type = Types::DeleteWorkerBlockInput.new
        type.worker_id = params[:worker_id]
        type.reason = params[:reason]
        type
      end
    end

    module DeleteWorkerBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkerBlockOutput, context: context)
        type = Types::DeleteWorkerBlockOutput.new
        type
      end
    end

    module DisassociateQualificationFromWorkerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateQualificationFromWorkerInput, context: context)
        type = Types::DisassociateQualificationFromWorkerInput.new
        type.worker_id = params[:worker_id]
        type.qualification_type_id = params[:qualification_type_id]
        type.reason = params[:reason]
        type
      end
    end

    module DisassociateQualificationFromWorkerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateQualificationFromWorkerOutput, context: context)
        type = Types::DisassociateQualificationFromWorkerOutput.new
        type
      end
    end

    module EventTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAccountBalanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountBalanceInput, context: context)
        type = Types::GetAccountBalanceInput.new
        type
      end
    end

    module GetAccountBalanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountBalanceOutput, context: context)
        type = Types::GetAccountBalanceOutput.new
        type.available_balance = params[:available_balance]
        type.on_hold_balance = params[:on_hold_balance]
        type
      end
    end

    module GetAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssignmentInput, context: context)
        type = Types::GetAssignmentInput.new
        type.assignment_id = params[:assignment_id]
        type
      end
    end

    module GetAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssignmentOutput, context: context)
        type = Types::GetAssignmentOutput.new
        type.assignment = Assignment.build(params[:assignment], context: "#{context}[:assignment]") unless params[:assignment].nil?
        type.hit = HIT.build(params[:hit], context: "#{context}[:hit]") unless params[:hit].nil?
        type
      end
    end

    module GetFileUploadURLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFileUploadURLInput, context: context)
        type = Types::GetFileUploadURLInput.new
        type.assignment_id = params[:assignment_id]
        type.question_identifier = params[:question_identifier]
        type
      end
    end

    module GetFileUploadURLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFileUploadURLOutput, context: context)
        type = Types::GetFileUploadURLOutput.new
        type.file_upload_url = params[:file_upload_url]
        type
      end
    end

    module GetHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHITInput, context: context)
        type = Types::GetHITInput.new
        type.hit_id = params[:hit_id]
        type
      end
    end

    module GetHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHITOutput, context: context)
        type = Types::GetHITOutput.new
        type.hit = HIT.build(params[:hit], context: "#{context}[:hit]") unless params[:hit].nil?
        type
      end
    end

    module GetQualificationScoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQualificationScoreInput, context: context)
        type = Types::GetQualificationScoreInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.worker_id = params[:worker_id]
        type
      end
    end

    module GetQualificationScoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQualificationScoreOutput, context: context)
        type = Types::GetQualificationScoreOutput.new
        type.qualification = Qualification.build(params[:qualification], context: "#{context}[:qualification]") unless params[:qualification].nil?
        type
      end
    end

    module GetQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQualificationTypeInput, context: context)
        type = Types::GetQualificationTypeInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type
      end
    end

    module GetQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQualificationTypeOutput, context: context)
        type = Types::GetQualificationTypeOutput.new
        type.qualification_type = QualificationType.build(params[:qualification_type], context: "#{context}[:qualification_type]") unless params[:qualification_type].nil?
        type
      end
    end

    module HIT
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HIT, context: context)
        type = Types::HIT.new
        type.hit_id = params[:hit_id]
        type.hit_type_id = params[:hit_type_id]
        type.hit_group_id = params[:hit_group_id]
        type.hit_layout_id = params[:hit_layout_id]
        type.creation_time = params[:creation_time]
        type.title = params[:title]
        type.description = params[:description]
        type.question = params[:question]
        type.keywords = params[:keywords]
        type.hit_status = params[:hit_status]
        type.max_assignments = params[:max_assignments]
        type.reward = params[:reward]
        type.auto_approval_delay_in_seconds = params[:auto_approval_delay_in_seconds]
        type.expiration = params[:expiration]
        type.assignment_duration_in_seconds = params[:assignment_duration_in_seconds]
        type.requester_annotation = params[:requester_annotation]
        type.qualification_requirements = QualificationRequirementList.build(params[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless params[:qualification_requirements].nil?
        type.hit_review_status = params[:hit_review_status]
        type.number_of_assignments_pending = params[:number_of_assignments_pending]
        type.number_of_assignments_available = params[:number_of_assignments_available]
        type.number_of_assignments_completed = params[:number_of_assignments_completed]
        type
      end
    end

    module HITLayoutParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HITLayoutParameter, context: context)
        type = Types::HITLayoutParameter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module HITLayoutParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HITLayoutParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HITList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HIT.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntegerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListAssignmentsForHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssignmentsForHITInput, context: context)
        type = Types::ListAssignmentsForHITInput.new
        type.hit_id = params[:hit_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assignment_statuses = AssignmentStatusList.build(params[:assignment_statuses], context: "#{context}[:assignment_statuses]") unless params[:assignment_statuses].nil?
        type
      end
    end

    module ListAssignmentsForHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssignmentsForHITOutput, context: context)
        type = Types::ListAssignmentsForHITOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.assignments = AssignmentList.build(params[:assignments], context: "#{context}[:assignments]") unless params[:assignments].nil?
        type
      end
    end

    module ListBonusPaymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBonusPaymentsInput, context: context)
        type = Types::ListBonusPaymentsInput.new
        type.hit_id = params[:hit_id]
        type.assignment_id = params[:assignment_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBonusPaymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBonusPaymentsOutput, context: context)
        type = Types::ListBonusPaymentsOutput.new
        type.num_results = params[:num_results]
        type.next_token = params[:next_token]
        type.bonus_payments = BonusPaymentList.build(params[:bonus_payments], context: "#{context}[:bonus_payments]") unless params[:bonus_payments].nil?
        type
      end
    end

    module ListHITsForQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHITsForQualificationTypeInput, context: context)
        type = Types::ListHITsForQualificationTypeInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHITsForQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHITsForQualificationTypeOutput, context: context)
        type = Types::ListHITsForQualificationTypeOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.hi_ts = HITList.build(params[:hi_ts], context: "#{context}[:hi_ts]") unless params[:hi_ts].nil?
        type
      end
    end

    module ListHITsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHITsInput, context: context)
        type = Types::ListHITsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHITsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHITsOutput, context: context)
        type = Types::ListHITsOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.hi_ts = HITList.build(params[:hi_ts], context: "#{context}[:hi_ts]") unless params[:hi_ts].nil?
        type
      end
    end

    module ListQualificationRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQualificationRequestsInput, context: context)
        type = Types::ListQualificationRequestsInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQualificationRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQualificationRequestsOutput, context: context)
        type = Types::ListQualificationRequestsOutput.new
        type.num_results = params[:num_results]
        type.next_token = params[:next_token]
        type.qualification_requests = QualificationRequestList.build(params[:qualification_requests], context: "#{context}[:qualification_requests]") unless params[:qualification_requests].nil?
        type
      end
    end

    module ListQualificationTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQualificationTypesInput, context: context)
        type = Types::ListQualificationTypesInput.new
        type.query = params[:query]
        type.must_be_requestable = params[:must_be_requestable]
        type.must_be_owned_by_caller = params[:must_be_owned_by_caller]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQualificationTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQualificationTypesOutput, context: context)
        type = Types::ListQualificationTypesOutput.new
        type.num_results = params[:num_results]
        type.next_token = params[:next_token]
        type.qualification_types = QualificationTypeList.build(params[:qualification_types], context: "#{context}[:qualification_types]") unless params[:qualification_types].nil?
        type
      end
    end

    module ListReviewPolicyResultsForHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReviewPolicyResultsForHITInput, context: context)
        type = Types::ListReviewPolicyResultsForHITInput.new
        type.hit_id = params[:hit_id]
        type.policy_levels = ReviewPolicyLevelList.build(params[:policy_levels], context: "#{context}[:policy_levels]") unless params[:policy_levels].nil?
        type.retrieve_actions = params[:retrieve_actions]
        type.retrieve_results = params[:retrieve_results]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReviewPolicyResultsForHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReviewPolicyResultsForHITOutput, context: context)
        type = Types::ListReviewPolicyResultsForHITOutput.new
        type.hit_id = params[:hit_id]
        type.assignment_review_policy = ReviewPolicy.build(params[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless params[:assignment_review_policy].nil?
        type.hit_review_policy = ReviewPolicy.build(params[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless params[:hit_review_policy].nil?
        type.assignment_review_report = ReviewReport.build(params[:assignment_review_report], context: "#{context}[:assignment_review_report]") unless params[:assignment_review_report].nil?
        type.hit_review_report = ReviewReport.build(params[:hit_review_report], context: "#{context}[:hit_review_report]") unless params[:hit_review_report].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReviewableHITsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReviewableHITsInput, context: context)
        type = Types::ListReviewableHITsInput.new
        type.hit_type_id = params[:hit_type_id]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReviewableHITsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReviewableHITsOutput, context: context)
        type = Types::ListReviewableHITsOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.hi_ts = HITList.build(params[:hi_ts], context: "#{context}[:hi_ts]") unless params[:hi_ts].nil?
        type
      end
    end

    module ListWorkerBlocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkerBlocksInput, context: context)
        type = Types::ListWorkerBlocksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkerBlocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkerBlocksOutput, context: context)
        type = Types::ListWorkerBlocksOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.worker_blocks = WorkerBlockList.build(params[:worker_blocks], context: "#{context}[:worker_blocks]") unless params[:worker_blocks].nil?
        type
      end
    end

    module ListWorkersWithQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkersWithQualificationTypeInput, context: context)
        type = Types::ListWorkersWithQualificationTypeInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkersWithQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkersWithQualificationTypeOutput, context: context)
        type = Types::ListWorkersWithQualificationTypeOutput.new
        type.next_token = params[:next_token]
        type.num_results = params[:num_results]
        type.qualifications = QualificationList.build(params[:qualifications], context: "#{context}[:qualifications]") unless params[:qualifications].nil?
        type
      end
    end

    module Locale
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Locale, context: context)
        type = Types::Locale.new
        type.country = params[:country]
        type.subdivision = params[:subdivision]
        type
      end
    end

    module LocaleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Locale.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationSpecification, context: context)
        type = Types::NotificationSpecification.new
        type.destination = params[:destination]
        type.transport = params[:transport]
        type.version = params[:version]
        type.event_types = EventTypeList.build(params[:event_types], context: "#{context}[:event_types]") unless params[:event_types].nil?
        type
      end
    end

    module NotifyWorkersFailureStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyWorkersFailureStatus, context: context)
        type = Types::NotifyWorkersFailureStatus.new
        type.notify_workers_failure_code = params[:notify_workers_failure_code]
        type.notify_workers_failure_message = params[:notify_workers_failure_message]
        type.worker_id = params[:worker_id]
        type
      end
    end

    module NotifyWorkersFailureStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotifyWorkersFailureStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotifyWorkersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyWorkersInput, context: context)
        type = Types::NotifyWorkersInput.new
        type.subject = params[:subject]
        type.message_text = params[:message_text]
        type.worker_ids = CustomerIdList.build(params[:worker_ids], context: "#{context}[:worker_ids]") unless params[:worker_ids].nil?
        type
      end
    end

    module NotifyWorkersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyWorkersOutput, context: context)
        type = Types::NotifyWorkersOutput.new
        type.notify_workers_failure_statuses = NotifyWorkersFailureStatusList.build(params[:notify_workers_failure_statuses], context: "#{context}[:notify_workers_failure_statuses]") unless params[:notify_workers_failure_statuses].nil?
        type
      end
    end

    module ParameterMapEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterMapEntry, context: context)
        type = Types::ParameterMapEntry.new
        type.key = params[:key]
        type.values = StringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ParameterMapEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterMapEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyParameter, context: context)
        type = Types::PolicyParameter.new
        type.key = params[:key]
        type.values = StringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.map_entries = ParameterMapEntryList.build(params[:map_entries], context: "#{context}[:map_entries]") unless params[:map_entries].nil?
        type
      end
    end

    module PolicyParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Qualification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Qualification, context: context)
        type = Types::Qualification.new
        type.qualification_type_id = params[:qualification_type_id]
        type.worker_id = params[:worker_id]
        type.grant_time = params[:grant_time]
        type.integer_value = params[:integer_value]
        type.locale_value = Locale.build(params[:locale_value], context: "#{context}[:locale_value]") unless params[:locale_value].nil?
        type.status = params[:status]
        type
      end
    end

    module QualificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Qualification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QualificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QualificationRequest, context: context)
        type = Types::QualificationRequest.new
        type.qualification_request_id = params[:qualification_request_id]
        type.qualification_type_id = params[:qualification_type_id]
        type.worker_id = params[:worker_id]
        type.test = params[:test]
        type.answer = params[:answer]
        type.submit_time = params[:submit_time]
        type
      end
    end

    module QualificationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QualificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QualificationRequirement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QualificationRequirement, context: context)
        type = Types::QualificationRequirement.new
        type.qualification_type_id = params[:qualification_type_id]
        type.comparator = params[:comparator]
        type.integer_values = IntegerList.build(params[:integer_values], context: "#{context}[:integer_values]") unless params[:integer_values].nil?
        type.locale_values = LocaleList.build(params[:locale_values], context: "#{context}[:locale_values]") unless params[:locale_values].nil?
        type.required_to_preview = params[:required_to_preview]
        type.actions_guarded = params[:actions_guarded]
        type
      end
    end

    module QualificationRequirementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QualificationRequirement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QualificationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QualificationType, context: context)
        type = Types::QualificationType.new
        type.qualification_type_id = params[:qualification_type_id]
        type.creation_time = params[:creation_time]
        type.name = params[:name]
        type.description = params[:description]
        type.keywords = params[:keywords]
        type.qualification_type_status = params[:qualification_type_status]
        type.test = params[:test]
        type.test_duration_in_seconds = params[:test_duration_in_seconds]
        type.answer_key = params[:answer_key]
        type.retry_delay_in_seconds = params[:retry_delay_in_seconds]
        type.is_requestable = params[:is_requestable]
        type.auto_granted = params[:auto_granted]
        type.auto_granted_value = params[:auto_granted_value]
        type
      end
    end

    module QualificationTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QualificationType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectAssignmentInput, context: context)
        type = Types::RejectAssignmentInput.new
        type.assignment_id = params[:assignment_id]
        type.requester_feedback = params[:requester_feedback]
        type
      end
    end

    module RejectAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectAssignmentOutput, context: context)
        type = Types::RejectAssignmentOutput.new
        type
      end
    end

    module RejectQualificationRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectQualificationRequestInput, context: context)
        type = Types::RejectQualificationRequestInput.new
        type.qualification_request_id = params[:qualification_request_id]
        type.reason = params[:reason]
        type
      end
    end

    module RejectQualificationRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectQualificationRequestOutput, context: context)
        type = Types::RejectQualificationRequestOutput.new
        type
      end
    end

    module RequestError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestError, context: context)
        type = Types::RequestError.new
        type.message = params[:message]
        type.turk_error_code = params[:turk_error_code]
        type
      end
    end

    module ReviewActionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewActionDetail, context: context)
        type = Types::ReviewActionDetail.new
        type.action_id = params[:action_id]
        type.action_name = params[:action_name]
        type.target_id = params[:target_id]
        type.target_type = params[:target_type]
        type.status = params[:status]
        type.complete_time = params[:complete_time]
        type.result = params[:result]
        type.error_code = params[:error_code]
        type
      end
    end

    module ReviewActionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReviewActionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReviewPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewPolicy, context: context)
        type = Types::ReviewPolicy.new
        type.policy_name = params[:policy_name]
        type.parameters = PolicyParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ReviewPolicyLevelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReviewReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewReport, context: context)
        type = Types::ReviewReport.new
        type.review_results = ReviewResultDetailList.build(params[:review_results], context: "#{context}[:review_results]") unless params[:review_results].nil?
        type.review_actions = ReviewActionDetailList.build(params[:review_actions], context: "#{context}[:review_actions]") unless params[:review_actions].nil?
        type
      end
    end

    module ReviewResultDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewResultDetail, context: context)
        type = Types::ReviewResultDetail.new
        type.action_id = params[:action_id]
        type.subject_id = params[:subject_id]
        type.subject_type = params[:subject_type]
        type.question_id = params[:question_id]
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ReviewResultDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReviewResultDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendBonusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBonusInput, context: context)
        type = Types::SendBonusInput.new
        type.worker_id = params[:worker_id]
        type.bonus_amount = params[:bonus_amount]
        type.assignment_id = params[:assignment_id]
        type.reason = params[:reason]
        type.unique_request_token = params[:unique_request_token]
        type
      end
    end

    module SendBonusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBonusOutput, context: context)
        type = Types::SendBonusOutput.new
        type
      end
    end

    module SendTestEventNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTestEventNotificationInput, context: context)
        type = Types::SendTestEventNotificationInput.new
        type.notification = NotificationSpecification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.test_event_type = params[:test_event_type]
        type
      end
    end

    module SendTestEventNotificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTestEventNotificationOutput, context: context)
        type = Types::SendTestEventNotificationOutput.new
        type
      end
    end

    module ServiceFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFault, context: context)
        type = Types::ServiceFault.new
        type.message = params[:message]
        type.turk_error_code = params[:turk_error_code]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateExpirationForHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExpirationForHITInput, context: context)
        type = Types::UpdateExpirationForHITInput.new
        type.hit_id = params[:hit_id]
        type.expire_at = params[:expire_at]
        type
      end
    end

    module UpdateExpirationForHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExpirationForHITOutput, context: context)
        type = Types::UpdateExpirationForHITOutput.new
        type
      end
    end

    module UpdateHITReviewStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHITReviewStatusInput, context: context)
        type = Types::UpdateHITReviewStatusInput.new
        type.hit_id = params[:hit_id]
        type.revert = params[:revert]
        type
      end
    end

    module UpdateHITReviewStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHITReviewStatusOutput, context: context)
        type = Types::UpdateHITReviewStatusOutput.new
        type
      end
    end

    module UpdateHITTypeOfHITInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHITTypeOfHITInput, context: context)
        type = Types::UpdateHITTypeOfHITInput.new
        type.hit_id = params[:hit_id]
        type.hit_type_id = params[:hit_type_id]
        type
      end
    end

    module UpdateHITTypeOfHITOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHITTypeOfHITOutput, context: context)
        type = Types::UpdateHITTypeOfHITOutput.new
        type
      end
    end

    module UpdateNotificationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationSettingsInput, context: context)
        type = Types::UpdateNotificationSettingsInput.new
        type.hit_type_id = params[:hit_type_id]
        type.notification = NotificationSpecification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.active = params[:active]
        type
      end
    end

    module UpdateNotificationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationSettingsOutput, context: context)
        type = Types::UpdateNotificationSettingsOutput.new
        type
      end
    end

    module UpdateQualificationTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQualificationTypeInput, context: context)
        type = Types::UpdateQualificationTypeInput.new
        type.qualification_type_id = params[:qualification_type_id]
        type.description = params[:description]
        type.qualification_type_status = params[:qualification_type_status]
        type.test = params[:test]
        type.answer_key = params[:answer_key]
        type.test_duration_in_seconds = params[:test_duration_in_seconds]
        type.retry_delay_in_seconds = params[:retry_delay_in_seconds]
        type.auto_granted = params[:auto_granted]
        type.auto_granted_value = params[:auto_granted_value]
        type
      end
    end

    module UpdateQualificationTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQualificationTypeOutput, context: context)
        type = Types::UpdateQualificationTypeOutput.new
        type.qualification_type = QualificationType.build(params[:qualification_type], context: "#{context}[:qualification_type]") unless params[:qualification_type].nil?
        type
      end
    end

    module WorkerBlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerBlock, context: context)
        type = Types::WorkerBlock.new
        type.worker_id = params[:worker_id]
        type.reason = params[:reason]
        type
      end
    end

    module WorkerBlockList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkerBlock.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
