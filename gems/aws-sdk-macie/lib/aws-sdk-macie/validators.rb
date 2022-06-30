# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class AssociateMemberAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberAccountInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
      end
    end

    class AssociateMemberAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMemberAccountOutput, context: context)
      end
    end

    class AssociateS3ResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateS3ResourcesInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
        Validators::S3ResourcesClassification.validate!(input[:s3_resources], context: "#{context}[:s3_resources]") unless input[:s3_resources].nil?
      end
    end

    class AssociateS3ResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateS3ResourcesOutput, context: context)
        Validators::FailedS3Resources.validate!(input[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless input[:failed_s3_resources].nil?
      end
    end

    class ClassificationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationType, context: context)
        Hearth::Validator.validate!(input[:one_time], ::String, context: "#{context}[:one_time]")
        Hearth::Validator.validate!(input[:continuous], ::String, context: "#{context}[:continuous]")
      end
    end

    class ClassificationTypeUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationTypeUpdate, context: context)
        Hearth::Validator.validate!(input[:one_time], ::String, context: "#{context}[:one_time]")
        Hearth::Validator.validate!(input[:continuous], ::String, context: "#{context}[:continuous]")
      end
    end

    class DisassociateMemberAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberAccountInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
      end
    end

    class DisassociateMemberAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberAccountOutput, context: context)
      end
    end

    class DisassociateS3ResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateS3ResourcesInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
        Validators::S3Resources.validate!(input[:associated_s3_resources], context: "#{context}[:associated_s3_resources]") unless input[:associated_s3_resources].nil?
      end
    end

    class DisassociateS3ResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateS3ResourcesOutput, context: context)
        Validators::FailedS3Resources.validate!(input[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless input[:failed_s3_resources].nil?
      end
    end

    class FailedS3Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedS3Resource, context: context)
        Validators::S3Resource.validate!(input[:failed_item], context: "#{context}[:failed_item]") unless input[:failed_item].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedS3Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedS3Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListMemberAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMemberAccountsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMemberAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMemberAccountsOutput, context: context)
        Validators::MemberAccounts.validate!(input[:member_accounts], context: "#{context}[:member_accounts]") unless input[:member_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListS3ResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListS3ResourcesInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListS3ResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListS3ResourcesOutput, context: context)
        Validators::S3ResourcesClassification.validate!(input[:s3_resources], context: "#{context}[:s3_resources]") unless input[:s3_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MemberAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class MemberAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MemberAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Resource, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3ResourceClassification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ResourceClassification, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Validators::ClassificationType.validate!(input[:classification_type], context: "#{context}[:classification_type]") unless input[:classification_type].nil?
      end
    end

    class S3ResourceClassificationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ResourceClassificationUpdate, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Validators::ClassificationTypeUpdate.validate!(input[:classification_type_update], context: "#{context}[:classification_type_update]") unless input[:classification_type_update].nil?
      end
    end

    class S3Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3ResourcesClassification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3ResourceClassification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3ResourcesClassificationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3ResourceClassificationUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateS3ResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateS3ResourcesInput, context: context)
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
        Validators::S3ResourcesClassificationUpdate.validate!(input[:s3_resources_update], context: "#{context}[:s3_resources_update]") unless input[:s3_resources_update].nil?
      end
    end

    class UpdateS3ResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateS3ResourcesOutput, context: context)
        Validators::FailedS3Resources.validate!(input[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless input[:failed_s3_resources].nil?
      end
    end

  end
end
