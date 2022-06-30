# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Macie
  module Parsers

    # Operation Parser for AssociateMemberAccount
    class AssociateMemberAccount
      def self.parse(http_resp)
        data = Types::AssociateMemberAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['errorCode']
        data.message = map['message']
        data.field_name = map['fieldName']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['errorCode']
        data.message = map['message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['errorCode']
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AssociateS3Resources
    class AssociateS3Resources
      def self.parse(http_resp)
        data = Types::AssociateS3ResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_s3_resources = (Parsers::FailedS3Resources.parse(map['failedS3Resources']) unless map['failedS3Resources'].nil?)
        data
      end
    end

    class FailedS3Resources
      def self.parse(list)
        list.map do |value|
          Parsers::FailedS3Resource.parse(value) unless value.nil?
        end
      end
    end

    class FailedS3Resource
      def self.parse(map)
        data = Types::FailedS3Resource.new
        data.failed_item = (Parsers::S3Resource.parse(map['failedItem']) unless map['failedItem'].nil?)
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class S3Resource
      def self.parse(map)
        data = Types::S3Resource.new
        data.bucket_name = map['bucketName']
        data.prefix = map['prefix']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for DisassociateMemberAccount
    class DisassociateMemberAccount
      def self.parse(http_resp)
        data = Types::DisassociateMemberAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateS3Resources
    class DisassociateS3Resources
      def self.parse(http_resp)
        data = Types::DisassociateS3ResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_s3_resources = (Parsers::FailedS3Resources.parse(map['failedS3Resources']) unless map['failedS3Resources'].nil?)
        data
      end
    end

    # Operation Parser for ListMemberAccounts
    class ListMemberAccounts
      def self.parse(http_resp)
        data = Types::ListMemberAccountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.member_accounts = (Parsers::MemberAccounts.parse(map['memberAccounts']) unless map['memberAccounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MemberAccounts
      def self.parse(list)
        list.map do |value|
          Parsers::MemberAccount.parse(value) unless value.nil?
        end
      end
    end

    class MemberAccount
      def self.parse(map)
        data = Types::MemberAccount.new
        data.account_id = map['accountId']
        return data
      end
    end

    # Operation Parser for ListS3Resources
    class ListS3Resources
      def self.parse(http_resp)
        data = Types::ListS3ResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_resources = (Parsers::S3ResourcesClassification.parse(map['s3Resources']) unless map['s3Resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class S3ResourcesClassification
      def self.parse(list)
        list.map do |value|
          Parsers::S3ResourceClassification.parse(value) unless value.nil?
        end
      end
    end

    class S3ResourceClassification
      def self.parse(map)
        data = Types::S3ResourceClassification.new
        data.bucket_name = map['bucketName']
        data.prefix = map['prefix']
        data.classification_type = (Parsers::ClassificationType.parse(map['classificationType']) unless map['classificationType'].nil?)
        return data
      end
    end

    class ClassificationType
      def self.parse(map)
        data = Types::ClassificationType.new
        data.one_time = map['oneTime']
        data.continuous = map['continuous']
        return data
      end
    end

    # Operation Parser for UpdateS3Resources
    class UpdateS3Resources
      def self.parse(http_resp)
        data = Types::UpdateS3ResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_s3_resources = (Parsers::FailedS3Resources.parse(map['failedS3Resources']) unless map['failedS3Resources'].nil?)
        data
      end
    end
  end
end
