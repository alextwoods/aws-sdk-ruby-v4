# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroups
  module Builders

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ResourceQuery'] = Builders::ResourceQuery.build(input[:resource_query]) unless input[:resource_query].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Configuration'] = Builders::GroupConfigurationList.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupConfigurationList
    class GroupConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GroupConfigurationItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GroupConfigurationItem
    class GroupConfigurationItem
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Parameters'] = Builders::GroupParameterList.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for GroupParameterList
    class GroupParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GroupConfigurationParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GroupConfigurationParameter
    class GroupConfigurationParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::GroupConfigurationParameterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for GroupConfigurationParameterValueList
    class GroupConfigurationParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceQuery
    class ResourceQuery
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Query'] = input[:query] unless input[:query].nil?
        data
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGroup
    class GetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/get-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGroupConfiguration
    class GetGroupConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/get-group-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Group'] = input[:group] unless input[:group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGroupQuery
    class GetGroupQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/get-group-query')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTags
    class GetTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<Arn>s/tags',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GroupResources
    class GroupResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/group-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Group'] = input[:group] unless input[:group].nil?
        data['ResourceArns'] = Builders::ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceArnList
    class ResourceArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListGroupResources
    class ListGroupResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-group-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        data['Filters'] = Builders::ResourceFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceFilterList
    class ResourceFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceFilter
    class ResourceFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::ResourceFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ResourceFilterValues
    class ResourceFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/groups-list')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::GroupFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupFilterList
    class GroupFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GroupFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GroupFilter
    class GroupFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::GroupFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for GroupFilterValues
    class GroupFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutGroupConfiguration
    class PutGroupConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/put-group-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Group'] = input[:group] unless input[:group].nil?
        data['Configuration'] = Builders::GroupConfigurationList.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchResources
    class SearchResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/resources/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceQuery'] = Builders::ResourceQuery.build(input[:resource_query]) unless input[:resource_query].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Tag
    class Tag
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<Arn>s/tags',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UngroupResources
    class UngroupResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ungroup-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Group'] = input[:group] unless input[:group].nil?
        data['ResourceArns'] = Builders::ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Untag
    class Untag
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<Arn>s/tags',
            Arn: Hearth::HTTP.uri_escape(input[:arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Keys'] = Builders::TagKeyList.build(input[:keys]) unless input[:keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGroupQuery
    class UpdateGroupQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-group-query')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        data['ResourceQuery'] = Builders::ResourceQuery.build(input[:resource_query]) unless input[:resource_query].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
