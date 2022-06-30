# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MarketplaceCatalog
  module Parsers

    # Operation Parser for CancelChangeSet
    class CancelChangeSet
      def self.parse(http_resp)
        data = Types::CancelChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_set_id = map['ChangeSetId']
        data.change_set_arn = map['ChangeSetArn']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeChangeSet
    class DescribeChangeSet
      def self.parse(http_resp)
        data = Types::DescribeChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_set_id = map['ChangeSetId']
        data.change_set_arn = map['ChangeSetArn']
        data.change_set_name = map['ChangeSetName']
        data.start_time = map['StartTime']
        data.end_time = map['EndTime']
        data.status = map['Status']
        data.failure_code = map['FailureCode']
        data.failure_description = map['FailureDescription']
        data.change_set = (Parsers::ChangeSetDescription.parse(map['ChangeSet']) unless map['ChangeSet'].nil?)
        data
      end
    end

    class ChangeSetDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChangeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangeSummary
      def self.parse(map)
        data = Types::ChangeSummary.new
        data.change_type = map['ChangeType']
        data.entity = (Parsers::Entity.parse(map['Entity']) unless map['Entity'].nil?)
        data.details = map['Details']
        data.error_detail_list = (Parsers::ErrorDetailList.parse(map['ErrorDetailList']) unless map['ErrorDetailList'].nil?)
        data.change_name = map['ChangeName']
        return data
      end
    end

    class ErrorDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorDetail
      def self.parse(map)
        data = Types::ErrorDetail.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class Entity
      def self.parse(map)
        data = Types::Entity.new
        data.type = map['Type']
        data.identifier = map['Identifier']
        return data
      end
    end

    # Operation Parser for DescribeEntity
    class DescribeEntity
      def self.parse(http_resp)
        data = Types::DescribeEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entity_type = map['EntityType']
        data.entity_identifier = map['EntityIdentifier']
        data.entity_arn = map['EntityArn']
        data.last_modified_date = map['LastModifiedDate']
        data.details = map['Details']
        data
      end
    end

    # Error Parser for ResourceNotSupportedException
    class ResourceNotSupportedException
      def self.parse(http_resp)
        data = Types::ResourceNotSupportedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListChangeSets
    class ListChangeSets
      def self.parse(http_resp)
        data = Types::ListChangeSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_set_summary_list = (Parsers::ChangeSetSummaryList.parse(map['ChangeSetSummaryList']) unless map['ChangeSetSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChangeSetSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChangeSetSummaryListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangeSetSummaryListItem
      def self.parse(map)
        data = Types::ChangeSetSummaryListItem.new
        data.change_set_id = map['ChangeSetId']
        data.change_set_arn = map['ChangeSetArn']
        data.change_set_name = map['ChangeSetName']
        data.start_time = map['StartTime']
        data.end_time = map['EndTime']
        data.status = map['Status']
        data.entity_id_list = (Parsers::ResourceIdList.parse(map['EntityIdList']) unless map['EntityIdList'].nil?)
        data.failure_code = map['FailureCode']
        return data
      end
    end

    class ResourceIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEntities
    class ListEntities
      def self.parse(http_resp)
        data = Types::ListEntitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entity_summary_list = (Parsers::EntitySummaryList.parse(map['EntitySummaryList']) unless map['EntitySummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntitySummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EntitySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EntitySummary
      def self.parse(map)
        data = Types::EntitySummary.new
        data.name = map['Name']
        data.entity_type = map['EntityType']
        data.entity_id = map['EntityId']
        data.entity_arn = map['EntityArn']
        data.last_modified_date = map['LastModifiedDate']
        data.visibility = map['Visibility']
        return data
      end
    end

    # Operation Parser for StartChangeSet
    class StartChangeSet
      def self.parse(http_resp)
        data = Types::StartChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_set_id = map['ChangeSetId']
        data.change_set_arn = map['ChangeSetArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end
  end
end
