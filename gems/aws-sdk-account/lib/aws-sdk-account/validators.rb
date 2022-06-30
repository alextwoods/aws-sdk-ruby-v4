# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Account
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlternateContact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlternateContact, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:alternate_contact_type], ::String, context: "#{context}[:alternate_contact_type]")
      end
    end

    class DeleteAlternateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlternateContactInput, context: context)
        Hearth::Validator.validate!(input[:alternate_contact_type], ::String, context: "#{context}[:alternate_contact_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DeleteAlternateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlternateContactOutput, context: context)
      end
    end

    class GetAlternateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAlternateContactInput, context: context)
        Hearth::Validator.validate!(input[:alternate_contact_type], ::String, context: "#{context}[:alternate_contact_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetAlternateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAlternateContactOutput, context: context)
        Validators::AlternateContact.validate!(input[:alternate_contact], context: "#{context}[:alternate_contact]") unless input[:alternate_contact].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutAlternateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlternateContactInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:alternate_contact_type], ::String, context: "#{context}[:alternate_contact_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class PutAlternateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlternateContactOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
