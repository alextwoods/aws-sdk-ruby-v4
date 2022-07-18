# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Identitystore
  module Builders

    # Operation Builder for DescribeGroup
    class DescribeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIdentityStore.DescribeGroup'
        data = {}
        data['IdentityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIdentityStore.DescribeUser'
        data = {}
        data['IdentityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIdentityStore.ListGroups'
        data = {}
        data['IdentityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['AttributePath'] = input[:attribute_path] unless input[:attribute_path].nil?
        data['AttributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        data
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIdentityStore.ListUsers'
        data = {}
        data['IdentityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
