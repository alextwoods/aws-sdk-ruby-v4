# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MediaStoreData
  module Stubs

    # Operation Stubber for DeleteObject
    class DeleteObject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeObject
    class DescribeObject
      def self.default(visited=[])
        {
          e_tag: 'e_tag',
          content_type: 'content_type',
          content_length: 1,
          cache_control: 'cache_control',
          last_modified: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Length'] = stub[:content_length].to_s unless stub[:content_length].nil?
        http_resp.headers['Cache-Control'] = stub[:cache_control] unless stub[:cache_control].nil? || stub[:cache_control].empty?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
      end
    end

    # Operation Stubber for GetObject
    class GetObject
      def self.default(visited=[])
        {
          body: 'body',
          cache_control: 'cache_control',
          content_range: 'content_range',
          content_length: 1,
          content_type: 'content_type',
          e_tag: 'e_tag',
          last_modified: Time.now,
          status_code: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Cache-Control'] = stub[:cache_control] unless stub[:cache_control].nil? || stub[:cache_control].empty?
        http_resp.headers['Content-Range'] = stub[:content_range] unless stub[:content_range].nil? || stub[:content_range].empty?
        http_resp.headers['Content-Length'] = stub[:content_length].to_s unless stub[:content_length].nil?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        http_resp.status = stub[:status_code]
        IO.copy_stream(stub[:body], http_resp.body)
      end
    end

    # Operation Stubber for ListItems
    class ListItems
      def self.default(visited=[])
        {
          items: ItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = ItemList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ItemList
    class ItemList
      def self.default(visited=[])
        return nil if visited.include?('ItemList')
        visited = visited + ['ItemList']
        [
          Item.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Item.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Item
    class Item
      def self.default(visited=[])
        return nil if visited.include?('Item')
        visited = visited + ['Item']
        {
          name: 'name',
          type: 'type',
          e_tag: 'e_tag',
          last_modified: Time.now,
          content_type: 'content_type',
          content_length: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Item.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ETag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['LastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['ContentLength'] = stub[:content_length] unless stub[:content_length].nil?
        data
      end
    end

    # Operation Stubber for PutObject
    class PutObject
      def self.default(visited=[])
        {
          content_sha256: 'content_sha256',
          e_tag: 'e_tag',
          storage_class: 'storage_class',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContentSHA256'] = stub[:content_sha256] unless stub[:content_sha256].nil?
        data['ETag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
