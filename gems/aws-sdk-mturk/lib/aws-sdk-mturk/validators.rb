# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MTurk
  module Validators

    class AcceptQualificationRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptQualificationRequestInput, context: context)
        Hearth::Validator.validate!(input[:qualification_request_id], ::String, context: "#{context}[:qualification_request_id]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
      end
    end

    class AcceptQualificationRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptQualificationRequestOutput, context: context)
      end
    end

    class ApproveAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApproveAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:requester_feedback], ::String, context: "#{context}[:requester_feedback]")
        Hearth::Validator.validate!(input[:override_rejection], ::TrueClass, ::FalseClass, context: "#{context}[:override_rejection]")
      end
    end

    class ApproveAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApproveAssignmentOutput, context: context)
      end
    end

    class Assignment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Assignment, context: context)
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:auto_approval_time], ::Time, context: "#{context}[:auto_approval_time]")
        Hearth::Validator.validate!(input[:accept_time], ::Time, context: "#{context}[:accept_time]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:approval_time], ::Time, context: "#{context}[:approval_time]")
        Hearth::Validator.validate!(input[:rejection_time], ::Time, context: "#{context}[:rejection_time]")
        Hearth::Validator.validate!(input[:deadline], ::Time, context: "#{context}[:deadline]")
        Hearth::Validator.validate!(input[:answer], ::String, context: "#{context}[:answer]")
        Hearth::Validator.validate!(input[:requester_feedback], ::String, context: "#{context}[:requester_feedback]")
      end
    end

    class AssignmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Assignment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssignmentStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateQualificationWithWorkerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateQualificationWithWorkerInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
        Hearth::Validator.validate!(input[:send_notification], ::TrueClass, ::FalseClass, context: "#{context}[:send_notification]")
      end
    end

    class AssociateQualificationWithWorkerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateQualificationWithWorkerOutput, context: context)
      end
    end

    class BonusPayment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BonusPayment, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:bonus_amount], ::String, context: "#{context}[:bonus_amount]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:grant_time], ::Time, context: "#{context}[:grant_time]")
      end
    end

    class BonusPaymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BonusPayment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAdditionalAssignmentsForHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAdditionalAssignmentsForHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:number_of_additional_assignments], ::Integer, context: "#{context}[:number_of_additional_assignments]")
        Hearth::Validator.validate!(input[:unique_request_token], ::String, context: "#{context}[:unique_request_token]")
      end
    end

    class CreateAdditionalAssignmentsForHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAdditionalAssignmentsForHITOutput, context: context)
      end
    end

    class CreateHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITInput, context: context)
        Hearth::Validator.validate!(input[:max_assignments], ::Integer, context: "#{context}[:max_assignments]")
        Hearth::Validator.validate!(input[:auto_approval_delay_in_seconds], ::Integer, context: "#{context}[:auto_approval_delay_in_seconds]")
        Hearth::Validator.validate!(input[:lifetime_in_seconds], ::Integer, context: "#{context}[:lifetime_in_seconds]")
        Hearth::Validator.validate!(input[:assignment_duration_in_seconds], ::Integer, context: "#{context}[:assignment_duration_in_seconds]")
        Hearth::Validator.validate!(input[:reward], ::String, context: "#{context}[:reward]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:question], ::String, context: "#{context}[:question]")
        Hearth::Validator.validate!(input[:requester_annotation], ::String, context: "#{context}[:requester_annotation]")
        QualificationRequirementList.validate!(input[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless input[:qualification_requirements].nil?
        Hearth::Validator.validate!(input[:unique_request_token], ::String, context: "#{context}[:unique_request_token]")
        ReviewPolicy.validate!(input[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless input[:assignment_review_policy].nil?
        ReviewPolicy.validate!(input[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless input[:hit_review_policy].nil?
        Hearth::Validator.validate!(input[:hit_layout_id], ::String, context: "#{context}[:hit_layout_id]")
        HITLayoutParameterList.validate!(input[:hit_layout_parameters], context: "#{context}[:hit_layout_parameters]") unless input[:hit_layout_parameters].nil?
      end
    end

    class CreateHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITOutput, context: context)
        HIT.validate!(input[:hit], context: "#{context}[:hit]") unless input[:hit].nil?
      end
    end

    class CreateHITTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITTypeInput, context: context)
        Hearth::Validator.validate!(input[:auto_approval_delay_in_seconds], ::Integer, context: "#{context}[:auto_approval_delay_in_seconds]")
        Hearth::Validator.validate!(input[:assignment_duration_in_seconds], ::Integer, context: "#{context}[:assignment_duration_in_seconds]")
        Hearth::Validator.validate!(input[:reward], ::String, context: "#{context}[:reward]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QualificationRequirementList.validate!(input[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless input[:qualification_requirements].nil?
      end
    end

    class CreateHITTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITTypeOutput, context: context)
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
      end
    end

    class CreateHITWithHITTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITWithHITTypeInput, context: context)
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
        Hearth::Validator.validate!(input[:max_assignments], ::Integer, context: "#{context}[:max_assignments]")
        Hearth::Validator.validate!(input[:lifetime_in_seconds], ::Integer, context: "#{context}[:lifetime_in_seconds]")
        Hearth::Validator.validate!(input[:question], ::String, context: "#{context}[:question]")
        Hearth::Validator.validate!(input[:requester_annotation], ::String, context: "#{context}[:requester_annotation]")
        Hearth::Validator.validate!(input[:unique_request_token], ::String, context: "#{context}[:unique_request_token]")
        ReviewPolicy.validate!(input[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless input[:assignment_review_policy].nil?
        ReviewPolicy.validate!(input[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless input[:hit_review_policy].nil?
        Hearth::Validator.validate!(input[:hit_layout_id], ::String, context: "#{context}[:hit_layout_id]")
        HITLayoutParameterList.validate!(input[:hit_layout_parameters], context: "#{context}[:hit_layout_parameters]") unless input[:hit_layout_parameters].nil?
      end
    end

    class CreateHITWithHITTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHITWithHITTypeOutput, context: context)
        HIT.validate!(input[:hit], context: "#{context}[:hit]") unless input[:hit].nil?
      end
    end

    class CreateQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:qualification_type_status], ::String, context: "#{context}[:qualification_type_status]")
        Hearth::Validator.validate!(input[:retry_delay_in_seconds], ::Integer, context: "#{context}[:retry_delay_in_seconds]")
        Hearth::Validator.validate!(input[:test], ::String, context: "#{context}[:test]")
        Hearth::Validator.validate!(input[:answer_key], ::String, context: "#{context}[:answer_key]")
        Hearth::Validator.validate!(input[:test_duration_in_seconds], ::Integer, context: "#{context}[:test_duration_in_seconds]")
        Hearth::Validator.validate!(input[:auto_granted], ::TrueClass, ::FalseClass, context: "#{context}[:auto_granted]")
        Hearth::Validator.validate!(input[:auto_granted_value], ::Integer, context: "#{context}[:auto_granted_value]")
      end
    end

    class CreateQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQualificationTypeOutput, context: context)
        QualificationType.validate!(input[:qualification_type], context: "#{context}[:qualification_type]") unless input[:qualification_type].nil?
      end
    end

    class CreateWorkerBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkerBlockInput, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CreateWorkerBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkerBlockOutput, context: context)
      end
    end

    class CustomerIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
      end
    end

    class DeleteHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHITOutput, context: context)
      end
    end

    class DeleteQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
      end
    end

    class DeleteQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQualificationTypeOutput, context: context)
      end
    end

    class DeleteWorkerBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkerBlockInput, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DeleteWorkerBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkerBlockOutput, context: context)
      end
    end

    class DisassociateQualificationFromWorkerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateQualificationFromWorkerInput, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DisassociateQualificationFromWorkerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateQualificationFromWorkerOutput, context: context)
      end
    end

    class EventTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAccountBalanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountBalanceInput, context: context)
      end
    end

    class GetAccountBalanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountBalanceOutput, context: context)
        Hearth::Validator.validate!(input[:available_balance], ::String, context: "#{context}[:available_balance]")
        Hearth::Validator.validate!(input[:on_hold_balance], ::String, context: "#{context}[:on_hold_balance]")
      end
    end

    class GetAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
      end
    end

    class GetAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssignmentOutput, context: context)
        Assignment.validate!(input[:assignment], context: "#{context}[:assignment]") unless input[:assignment].nil?
        HIT.validate!(input[:hit], context: "#{context}[:hit]") unless input[:hit].nil?
      end
    end

    class GetFileUploadURLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFileUploadURLInput, context: context)
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:question_identifier], ::String, context: "#{context}[:question_identifier]")
      end
    end

    class GetFileUploadURLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFileUploadURLOutput, context: context)
        Hearth::Validator.validate!(input[:file_upload_url], ::String, context: "#{context}[:file_upload_url]")
      end
    end

    class GetHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
      end
    end

    class GetHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHITOutput, context: context)
        HIT.validate!(input[:hit], context: "#{context}[:hit]") unless input[:hit].nil?
      end
    end

    class GetQualificationScoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQualificationScoreInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
      end
    end

    class GetQualificationScoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQualificationScoreOutput, context: context)
        Qualification.validate!(input[:qualification], context: "#{context}[:qualification]") unless input[:qualification].nil?
      end
    end

    class GetQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
      end
    end

    class GetQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQualificationTypeOutput, context: context)
        QualificationType.validate!(input[:qualification_type], context: "#{context}[:qualification_type]") unless input[:qualification_type].nil?
      end
    end

    class HIT
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HIT, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
        Hearth::Validator.validate!(input[:hit_group_id], ::String, context: "#{context}[:hit_group_id]")
        Hearth::Validator.validate!(input[:hit_layout_id], ::String, context: "#{context}[:hit_layout_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:question], ::String, context: "#{context}[:question]")
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:hit_status], ::String, context: "#{context}[:hit_status]")
        Hearth::Validator.validate!(input[:max_assignments], ::Integer, context: "#{context}[:max_assignments]")
        Hearth::Validator.validate!(input[:reward], ::String, context: "#{context}[:reward]")
        Hearth::Validator.validate!(input[:auto_approval_delay_in_seconds], ::Integer, context: "#{context}[:auto_approval_delay_in_seconds]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:assignment_duration_in_seconds], ::Integer, context: "#{context}[:assignment_duration_in_seconds]")
        Hearth::Validator.validate!(input[:requester_annotation], ::String, context: "#{context}[:requester_annotation]")
        QualificationRequirementList.validate!(input[:qualification_requirements], context: "#{context}[:qualification_requirements]") unless input[:qualification_requirements].nil?
        Hearth::Validator.validate!(input[:hit_review_status], ::String, context: "#{context}[:hit_review_status]")
        Hearth::Validator.validate!(input[:number_of_assignments_pending], ::Integer, context: "#{context}[:number_of_assignments_pending]")
        Hearth::Validator.validate!(input[:number_of_assignments_available], ::Integer, context: "#{context}[:number_of_assignments_available]")
        Hearth::Validator.validate!(input[:number_of_assignments_completed], ::Integer, context: "#{context}[:number_of_assignments_completed]")
      end
    end

    class HITLayoutParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HITLayoutParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class HITLayoutParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HITLayoutParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HITList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HIT.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntegerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class ListAssignmentsForHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssignmentsForHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        AssignmentStatusList.validate!(input[:assignment_statuses], context: "#{context}[:assignment_statuses]") unless input[:assignment_statuses].nil?
      end
    end

    class ListAssignmentsForHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssignmentsForHITOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        AssignmentList.validate!(input[:assignments], context: "#{context}[:assignments]") unless input[:assignments].nil?
      end
    end

    class ListBonusPaymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBonusPaymentsInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBonusPaymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBonusPaymentsOutput, context: context)
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BonusPaymentList.validate!(input[:bonus_payments], context: "#{context}[:bonus_payments]") unless input[:bonus_payments].nil?
      end
    end

    class ListHITsForQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHITsForQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHITsForQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHITsForQualificationTypeOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        HITList.validate!(input[:hi_ts], context: "#{context}[:hi_ts]") unless input[:hi_ts].nil?
      end
    end

    class ListHITsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHITsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHITsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHITsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        HITList.validate!(input[:hi_ts], context: "#{context}[:hi_ts]") unless input[:hi_ts].nil?
      end
    end

    class ListQualificationRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQualificationRequestsInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQualificationRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQualificationRequestsOutput, context: context)
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QualificationRequestList.validate!(input[:qualification_requests], context: "#{context}[:qualification_requests]") unless input[:qualification_requests].nil?
      end
    end

    class ListQualificationTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQualificationTypesInput, context: context)
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:must_be_requestable], ::TrueClass, ::FalseClass, context: "#{context}[:must_be_requestable]")
        Hearth::Validator.validate!(input[:must_be_owned_by_caller], ::TrueClass, ::FalseClass, context: "#{context}[:must_be_owned_by_caller]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQualificationTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQualificationTypesOutput, context: context)
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QualificationTypeList.validate!(input[:qualification_types], context: "#{context}[:qualification_types]") unless input[:qualification_types].nil?
      end
    end

    class ListReviewPolicyResultsForHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReviewPolicyResultsForHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        ReviewPolicyLevelList.validate!(input[:policy_levels], context: "#{context}[:policy_levels]") unless input[:policy_levels].nil?
        Hearth::Validator.validate!(input[:retrieve_actions], ::TrueClass, ::FalseClass, context: "#{context}[:retrieve_actions]")
        Hearth::Validator.validate!(input[:retrieve_results], ::TrueClass, ::FalseClass, context: "#{context}[:retrieve_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReviewPolicyResultsForHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReviewPolicyResultsForHITOutput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        ReviewPolicy.validate!(input[:assignment_review_policy], context: "#{context}[:assignment_review_policy]") unless input[:assignment_review_policy].nil?
        ReviewPolicy.validate!(input[:hit_review_policy], context: "#{context}[:hit_review_policy]") unless input[:hit_review_policy].nil?
        ReviewReport.validate!(input[:assignment_review_report], context: "#{context}[:assignment_review_report]") unless input[:assignment_review_report].nil?
        ReviewReport.validate!(input[:hit_review_report], context: "#{context}[:hit_review_report]") unless input[:hit_review_report].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReviewableHITsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReviewableHITsInput, context: context)
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReviewableHITsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReviewableHITsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        HITList.validate!(input[:hi_ts], context: "#{context}[:hi_ts]") unless input[:hi_ts].nil?
      end
    end

    class ListWorkerBlocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkerBlocksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkerBlocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkerBlocksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        WorkerBlockList.validate!(input[:worker_blocks], context: "#{context}[:worker_blocks]") unless input[:worker_blocks].nil?
      end
    end

    class ListWorkersWithQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkersWithQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkersWithQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkersWithQualificationTypeOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        QualificationList.validate!(input[:qualifications], context: "#{context}[:qualifications]") unless input[:qualifications].nil?
      end
    end

    class Locale
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Locale, context: context)
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:subdivision], ::String, context: "#{context}[:subdivision]")
      end
    end

    class LocaleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Locale.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationSpecification, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:transport], ::String, context: "#{context}[:transport]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        EventTypeList.validate!(input[:event_types], context: "#{context}[:event_types]") unless input[:event_types].nil?
      end
    end

    class NotifyWorkersFailureStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyWorkersFailureStatus, context: context)
        Hearth::Validator.validate!(input[:notify_workers_failure_code], ::String, context: "#{context}[:notify_workers_failure_code]")
        Hearth::Validator.validate!(input[:notify_workers_failure_message], ::String, context: "#{context}[:notify_workers_failure_message]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
      end
    end

    class NotifyWorkersFailureStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotifyWorkersFailureStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotifyWorkersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyWorkersInput, context: context)
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:message_text], ::String, context: "#{context}[:message_text]")
        CustomerIdList.validate!(input[:worker_ids], context: "#{context}[:worker_ids]") unless input[:worker_ids].nil?
      end
    end

    class NotifyWorkersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyWorkersOutput, context: context)
        NotifyWorkersFailureStatusList.validate!(input[:notify_workers_failure_statuses], context: "#{context}[:notify_workers_failure_statuses]") unless input[:notify_workers_failure_statuses].nil?
      end
    end

    class ParameterMapEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterMapEntry, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        StringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ParameterMapEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterMapEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        StringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        ParameterMapEntryList.validate!(input[:map_entries], context: "#{context}[:map_entries]") unless input[:map_entries].nil?
      end
    end

    class PolicyParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Qualification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Qualification, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:grant_time], ::Time, context: "#{context}[:grant_time]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
        Locale.validate!(input[:locale_value], context: "#{context}[:locale_value]") unless input[:locale_value].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class QualificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Qualification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QualificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QualificationRequest, context: context)
        Hearth::Validator.validate!(input[:qualification_request_id], ::String, context: "#{context}[:qualification_request_id]")
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:test], ::String, context: "#{context}[:test]")
        Hearth::Validator.validate!(input[:answer], ::String, context: "#{context}[:answer]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
      end
    end

    class QualificationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QualificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QualificationRequirement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QualificationRequirement, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        IntegerList.validate!(input[:integer_values], context: "#{context}[:integer_values]") unless input[:integer_values].nil?
        LocaleList.validate!(input[:locale_values], context: "#{context}[:locale_values]") unless input[:locale_values].nil?
        Hearth::Validator.validate!(input[:required_to_preview], ::TrueClass, ::FalseClass, context: "#{context}[:required_to_preview]")
        Hearth::Validator.validate!(input[:actions_guarded], ::String, context: "#{context}[:actions_guarded]")
      end
    end

    class QualificationRequirementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QualificationRequirement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QualificationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QualificationType, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:keywords], ::String, context: "#{context}[:keywords]")
        Hearth::Validator.validate!(input[:qualification_type_status], ::String, context: "#{context}[:qualification_type_status]")
        Hearth::Validator.validate!(input[:test], ::String, context: "#{context}[:test]")
        Hearth::Validator.validate!(input[:test_duration_in_seconds], ::Integer, context: "#{context}[:test_duration_in_seconds]")
        Hearth::Validator.validate!(input[:answer_key], ::String, context: "#{context}[:answer_key]")
        Hearth::Validator.validate!(input[:retry_delay_in_seconds], ::Integer, context: "#{context}[:retry_delay_in_seconds]")
        Hearth::Validator.validate!(input[:is_requestable], ::TrueClass, ::FalseClass, context: "#{context}[:is_requestable]")
        Hearth::Validator.validate!(input[:auto_granted], ::TrueClass, ::FalseClass, context: "#{context}[:auto_granted]")
        Hearth::Validator.validate!(input[:auto_granted_value], ::Integer, context: "#{context}[:auto_granted_value]")
      end
    end

    class QualificationTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QualificationType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:requester_feedback], ::String, context: "#{context}[:requester_feedback]")
      end
    end

    class RejectAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectAssignmentOutput, context: context)
      end
    end

    class RejectQualificationRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectQualificationRequestInput, context: context)
        Hearth::Validator.validate!(input[:qualification_request_id], ::String, context: "#{context}[:qualification_request_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class RejectQualificationRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectQualificationRequestOutput, context: context)
      end
    end

    class RequestError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:turk_error_code], ::String, context: "#{context}[:turk_error_code]")
      end
    end

    class ReviewActionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewActionDetail, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:complete_time], ::Time, context: "#{context}[:complete_time]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class ReviewActionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReviewActionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReviewPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        PolicyParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ReviewPolicyLevelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReviewReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewReport, context: context)
        ReviewResultDetailList.validate!(input[:review_results], context: "#{context}[:review_results]") unless input[:review_results].nil?
        ReviewActionDetailList.validate!(input[:review_actions], context: "#{context}[:review_actions]") unless input[:review_actions].nil?
      end
    end

    class ReviewResultDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewResultDetail, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:subject_id], ::String, context: "#{context}[:subject_id]")
        Hearth::Validator.validate!(input[:subject_type], ::String, context: "#{context}[:subject_type]")
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ReviewResultDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReviewResultDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendBonusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBonusInput, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:bonus_amount], ::String, context: "#{context}[:bonus_amount]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:unique_request_token], ::String, context: "#{context}[:unique_request_token]")
      end
    end

    class SendBonusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBonusOutput, context: context)
      end
    end

    class SendTestEventNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTestEventNotificationInput, context: context)
        NotificationSpecification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:test_event_type], ::String, context: "#{context}[:test_event_type]")
      end
    end

    class SendTestEventNotificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTestEventNotificationOutput, context: context)
      end
    end

    class ServiceFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:turk_error_code], ::String, context: "#{context}[:turk_error_code]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateExpirationForHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExpirationForHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:expire_at], ::Time, context: "#{context}[:expire_at]")
      end
    end

    class UpdateExpirationForHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExpirationForHITOutput, context: context)
      end
    end

    class UpdateHITReviewStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHITReviewStatusInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:revert], ::TrueClass, ::FalseClass, context: "#{context}[:revert]")
      end
    end

    class UpdateHITReviewStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHITReviewStatusOutput, context: context)
      end
    end

    class UpdateHITTypeOfHITInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHITTypeOfHITInput, context: context)
        Hearth::Validator.validate!(input[:hit_id], ::String, context: "#{context}[:hit_id]")
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
      end
    end

    class UpdateHITTypeOfHITOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHITTypeOfHITOutput, context: context)
      end
    end

    class UpdateNotificationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:hit_type_id], ::String, context: "#{context}[:hit_type_id]")
        NotificationSpecification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class UpdateNotificationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationSettingsOutput, context: context)
      end
    end

    class UpdateQualificationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQualificationTypeInput, context: context)
        Hearth::Validator.validate!(input[:qualification_type_id], ::String, context: "#{context}[:qualification_type_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:qualification_type_status], ::String, context: "#{context}[:qualification_type_status]")
        Hearth::Validator.validate!(input[:test], ::String, context: "#{context}[:test]")
        Hearth::Validator.validate!(input[:answer_key], ::String, context: "#{context}[:answer_key]")
        Hearth::Validator.validate!(input[:test_duration_in_seconds], ::Integer, context: "#{context}[:test_duration_in_seconds]")
        Hearth::Validator.validate!(input[:retry_delay_in_seconds], ::Integer, context: "#{context}[:retry_delay_in_seconds]")
        Hearth::Validator.validate!(input[:auto_granted], ::TrueClass, ::FalseClass, context: "#{context}[:auto_granted]")
        Hearth::Validator.validate!(input[:auto_granted_value], ::Integer, context: "#{context}[:auto_granted_value]")
      end
    end

    class UpdateQualificationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQualificationTypeOutput, context: context)
        QualificationType.validate!(input[:qualification_type], context: "#{context}[:qualification_type]") unless input[:qualification_type].nil?
      end
    end

    class WorkerBlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerBlock, context: context)
        Hearth::Validator.validate!(input[:worker_id], ::String, context: "#{context}[:worker_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class WorkerBlockList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkerBlock.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
