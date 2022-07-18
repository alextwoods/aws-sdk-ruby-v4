# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Account
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AlternateContact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlternateContact, context: context)
        type = Types::AlternateContact.new
        type.name = params[:name]
        type.title = params[:title]
        type.email_address = params[:email_address]
        type.phone_number = params[:phone_number]
        type.alternate_contact_type = params[:alternate_contact_type]
        type
      end
    end

    module DeleteAlternateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlternateContactInput, context: context)
        type = Types::DeleteAlternateContactInput.new
        type.alternate_contact_type = params[:alternate_contact_type]
        type.account_id = params[:account_id]
        type
      end
    end

    module DeleteAlternateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlternateContactOutput, context: context)
        type = Types::DeleteAlternateContactOutput.new
        type
      end
    end

    module GetAlternateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAlternateContactInput, context: context)
        type = Types::GetAlternateContactInput.new
        type.alternate_contact_type = params[:alternate_contact_type]
        type.account_id = params[:account_id]
        type
      end
    end

    module GetAlternateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAlternateContactOutput, context: context)
        type = Types::GetAlternateContactOutput.new
        type.alternate_contact = AlternateContact.build(params[:alternate_contact], context: "#{context}[:alternate_contact]") unless params[:alternate_contact].nil?
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

    module PutAlternateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlternateContactInput, context: context)
        type = Types::PutAlternateContactInput.new
        type.name = params[:name]
        type.title = params[:title]
        type.email_address = params[:email_address]
        type.phone_number = params[:phone_number]
        type.alternate_contact_type = params[:alternate_contact_type]
        type.account_id = params[:account_id]
        type
      end
    end

    module PutAlternateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlternateContactOutput, context: context)
        type = Types::PutAlternateContactOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
