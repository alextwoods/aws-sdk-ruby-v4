# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Rbin
  module Stubs

    # Operation Stubber for CreateRule
    class CreateRule
      def self.default(visited=[])
        {
          identifier: 'identifier',
          retention_period: RetentionPeriod.default(visited),
          description: 'description',
          tags: TagList.default(visited),
          resource_type: 'resource_type',
          resource_tags: ResourceTags.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['RetentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceTags'] = ResourceTags.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceTags
    class ResourceTags
      def self.default(visited=[])
        return nil if visited.include?('ResourceTags')
        visited = visited + ['ResourceTags']
        [
          ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          resource_tag_key: 'resource_tag_key',
          resource_tag_value: 'resource_tag_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['ResourceTagKey'] = stub[:resource_tag_key] unless stub[:resource_tag_key].nil?
        data['ResourceTagValue'] = stub[:resource_tag_value] unless stub[:resource_tag_value].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for RetentionPeriod
    class RetentionPeriod
      def self.default(visited=[])
        return nil if visited.include?('RetentionPeriod')
        visited = visited + ['RetentionPeriod']
        {
          retention_period_value: 1,
          retention_period_unit: 'retention_period_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionPeriod.new
        data = {}
        data['RetentionPeriodValue'] = stub[:retention_period_value] unless stub[:retention_period_value].nil?
        data['RetentionPeriodUnit'] = stub[:retention_period_unit] unless stub[:retention_period_unit].nil?
        data
      end
    end

    # Operation Stubber for DeleteRule
    class DeleteRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetRule
    class GetRule
      def self.default(visited=[])
        {
          identifier: 'identifier',
          description: 'description',
          resource_type: 'resource_type',
          retention_period: RetentionPeriod.default(visited),
          resource_tags: ResourceTags.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['RetentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['ResourceTags'] = ResourceTags.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListRules
    class ListRules
      def self.default(visited=[])
        {
          rules: RuleSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Rules'] = RuleSummaryList.stub(stub[:rules]) unless stub[:rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RuleSummaryList
    class RuleSummaryList
      def self.default(visited=[])
        return nil if visited.include?('RuleSummaryList')
        visited = visited + ['RuleSummaryList']
        [
          RuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleSummary
    class RuleSummary
      def self.default(visited=[])
        return nil if visited.include?('RuleSummary')
        visited = visited + ['RuleSummary']
        {
          identifier: 'identifier',
          description: 'description',
          retention_period: RetentionPeriod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleSummary.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RetentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateRule
    class UpdateRule
      def self.default(visited=[])
        {
          identifier: 'identifier',
          retention_period: RetentionPeriod.default(visited),
          description: 'description',
          resource_type: 'resource_type',
          resource_tags: ResourceTags.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['RetentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceTags'] = ResourceTags.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
