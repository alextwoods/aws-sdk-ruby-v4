# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Rbin
  module Builders

    # Operation Builder for CreateRule
    class CreateRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RetentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceTags'] = ResourceTags.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTags
    class ResourceTags
      def self.build(input)
        data = []
        input.each do |element|
          data << ResourceTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceTag
    class ResourceTag
      def self.build(input)
        data = {}
        data['ResourceTagKey'] = input[:resource_tag_key] unless input[:resource_tag_key].nil?
        data['ResourceTagValue'] = input[:resource_tag_value] unless input[:resource_tag_value].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for RetentionPeriod
    class RetentionPeriod
      def self.build(input)
        data = {}
        data['RetentionPeriodValue'] = input[:retention_period_value] unless input[:retention_period_value].nil?
        data['RetentionPeriodUnit'] = input[:retention_period_unit] unless input[:retention_period_unit].nil?
        data
      end
    end

    # Operation Builder for DeleteRule
    class DeleteRule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRule
    class GetRule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRules
    class ListRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceTags'] = ResourceTags.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateRule
    class UpdateRule
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RetentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceTags'] = ResourceTags.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
