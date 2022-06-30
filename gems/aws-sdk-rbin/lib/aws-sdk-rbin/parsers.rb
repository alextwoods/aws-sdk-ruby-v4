# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Rbin
  module Parsers

    # Operation Parser for CreateRule
    class CreateRule
      def self.parse(http_resp)
        data = Types::CreateRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identifier = map['Identifier']
        data.retention_period = (Parsers::RetentionPeriod.parse(map['RetentionPeriod']) unless map['RetentionPeriod'].nil?)
        data.description = map['Description']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.resource_type = map['ResourceType']
        data.resource_tags = (Parsers::ResourceTags.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.status = map['Status']
        data
      end
    end

    class ResourceTags
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceTag.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.resource_tag_key = map['ResourceTagKey']
        data.resource_tag_value = map['ResourceTagValue']
        return data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class RetentionPeriod
      def self.parse(map)
        data = Types::RetentionPeriod.new
        data.retention_period_value = map['RetentionPeriodValue']
        data.retention_period_unit = map['RetentionPeriodUnit']
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Operation Parser for DeleteRule
    class DeleteRule
      def self.parse(http_resp)
        data = Types::DeleteRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Operation Parser for GetRule
    class GetRule
      def self.parse(http_resp)
        data = Types::GetRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identifier = map['Identifier']
        data.description = map['Description']
        data.resource_type = map['ResourceType']
        data.retention_period = (Parsers::RetentionPeriod.parse(map['RetentionPeriod']) unless map['RetentionPeriod'].nil?)
        data.resource_tags = (Parsers::ResourceTags.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for ListRules
    class ListRules
      def self.parse(http_resp)
        data = Types::ListRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rules = (Parsers::RuleSummaryList.parse(map['Rules']) unless map['Rules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RuleSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleSummary
      def self.parse(map)
        data = Types::RuleSummary.new
        data.identifier = map['Identifier']
        data.description = map['Description']
        data.retention_period = (Parsers::RetentionPeriod.parse(map['RetentionPeriod']) unless map['RetentionPeriod'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRule
    class UpdateRule
      def self.parse(http_resp)
        data = Types::UpdateRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identifier = map['Identifier']
        data.retention_period = (Parsers::RetentionPeriod.parse(map['RetentionPeriod']) unless map['RetentionPeriod'].nil?)
        data.description = map['Description']
        data.resource_type = map['ResourceType']
        data.resource_tags = (Parsers::ResourceTags.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.status = map['Status']
        data
      end
    end
  end
end
