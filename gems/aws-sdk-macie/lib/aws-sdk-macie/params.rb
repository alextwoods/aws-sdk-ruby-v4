# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Macie
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module AssociateMemberAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberAccountInput, context: context)
        type = Types::AssociateMemberAccountInput.new
        type.member_account_id = params[:member_account_id]
        type
      end
    end

    module AssociateMemberAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMemberAccountOutput, context: context)
        type = Types::AssociateMemberAccountOutput.new
        type
      end
    end

    module AssociateS3ResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateS3ResourcesInput, context: context)
        type = Types::AssociateS3ResourcesInput.new
        type.member_account_id = params[:member_account_id]
        type.s3_resources = S3ResourcesClassification.build(params[:s3_resources], context: "#{context}[:s3_resources]") unless params[:s3_resources].nil?
        type
      end
    end

    module AssociateS3ResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateS3ResourcesOutput, context: context)
        type = Types::AssociateS3ResourcesOutput.new
        type.failed_s3_resources = FailedS3Resources.build(params[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless params[:failed_s3_resources].nil?
        type
      end
    end

    module ClassificationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationType, context: context)
        type = Types::ClassificationType.new
        type.one_time = params[:one_time]
        type.continuous = params[:continuous]
        type
      end
    end

    module ClassificationTypeUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationTypeUpdate, context: context)
        type = Types::ClassificationTypeUpdate.new
        type.one_time = params[:one_time]
        type.continuous = params[:continuous]
        type
      end
    end

    module DisassociateMemberAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberAccountInput, context: context)
        type = Types::DisassociateMemberAccountInput.new
        type.member_account_id = params[:member_account_id]
        type
      end
    end

    module DisassociateMemberAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberAccountOutput, context: context)
        type = Types::DisassociateMemberAccountOutput.new
        type
      end
    end

    module DisassociateS3ResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateS3ResourcesInput, context: context)
        type = Types::DisassociateS3ResourcesInput.new
        type.member_account_id = params[:member_account_id]
        type.associated_s3_resources = S3Resources.build(params[:associated_s3_resources], context: "#{context}[:associated_s3_resources]") unless params[:associated_s3_resources].nil?
        type
      end
    end

    module DisassociateS3ResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateS3ResourcesOutput, context: context)
        type = Types::DisassociateS3ResourcesOutput.new
        type.failed_s3_resources = FailedS3Resources.build(params[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless params[:failed_s3_resources].nil?
        type
      end
    end

    module FailedS3Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedS3Resource, context: context)
        type = Types::FailedS3Resource.new
        type.failed_item = S3Resource.build(params[:failed_item], context: "#{context}[:failed_item]") unless params[:failed_item].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedS3Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedS3Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type.field_name = params[:field_name]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListMemberAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMemberAccountsInput, context: context)
        type = Types::ListMemberAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMemberAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMemberAccountsOutput, context: context)
        type = Types::ListMemberAccountsOutput.new
        type.member_accounts = MemberAccounts.build(params[:member_accounts], context: "#{context}[:member_accounts]") unless params[:member_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListS3ResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListS3ResourcesInput, context: context)
        type = Types::ListS3ResourcesInput.new
        type.member_account_id = params[:member_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListS3ResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListS3ResourcesOutput, context: context)
        type = Types::ListS3ResourcesOutput.new
        type.s3_resources = S3ResourcesClassification.build(params[:s3_resources], context: "#{context}[:s3_resources]") unless params[:s3_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MemberAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberAccount, context: context)
        type = Types::MemberAccount.new
        type.account_id = params[:account_id]
        type
      end
    end

    module MemberAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Resource, context: context)
        type = Types::S3Resource.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3ResourceClassification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ResourceClassification, context: context)
        type = Types::S3ResourceClassification.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type.classification_type = ClassificationType.build(params[:classification_type], context: "#{context}[:classification_type]") unless params[:classification_type].nil?
        type
      end
    end

    module S3ResourceClassificationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ResourceClassificationUpdate, context: context)
        type = Types::S3ResourceClassificationUpdate.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type.classification_type_update = ClassificationTypeUpdate.build(params[:classification_type_update], context: "#{context}[:classification_type_update]") unless params[:classification_type_update].nil?
        type
      end
    end

    module S3Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3ResourcesClassification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3ResourceClassification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3ResourcesClassificationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3ResourceClassificationUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateS3ResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateS3ResourcesInput, context: context)
        type = Types::UpdateS3ResourcesInput.new
        type.member_account_id = params[:member_account_id]
        type.s3_resources_update = S3ResourcesClassificationUpdate.build(params[:s3_resources_update], context: "#{context}[:s3_resources_update]") unless params[:s3_resources_update].nil?
        type
      end
    end

    module UpdateS3ResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateS3ResourcesOutput, context: context)
        type = Types::UpdateS3ResourcesOutput.new
        type.failed_s3_resources = FailedS3Resources.build(params[:failed_s3_resources], context: "#{context}[:failed_s3_resources]") unless params[:failed_s3_resources].nil?
        type
      end
    end

  end
end
