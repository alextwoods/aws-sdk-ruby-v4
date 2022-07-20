# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Account
  module Parsers

    # Operation Parser for DeleteAlternateContact
    class DeleteAlternateContact
      def self.parse(http_resp)
        data = Types::DeleteAlternateContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetAlternateContact
    class GetAlternateContact
      def self.parse(http_resp)
        data = Types::GetAlternateContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alternate_contact = (AlternateContact.parse(map['AlternateContact']) unless map['AlternateContact'].nil?)
        data
      end
    end

    class AlternateContact
      def self.parse(map)
        data = Types::AlternateContact.new
        data.name = map['Name']
        data.title = map['Title']
        data.email_address = map['EmailAddress']
        data.phone_number = map['PhoneNumber']
        data.alternate_contact_type = map['AlternateContactType']
        return data
      end
    end

    # Operation Parser for PutAlternateContact
    class PutAlternateContact
      def self.parse(http_resp)
        data = Types::PutAlternateContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
