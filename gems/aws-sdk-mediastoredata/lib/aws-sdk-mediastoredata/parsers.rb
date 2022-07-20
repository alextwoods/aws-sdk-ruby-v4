# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStoreData
  module Parsers

    # Operation Parser for DeleteObject
    class DeleteObject
      def self.parse(http_resp)
        data = Types::DeleteObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ObjectNotFoundException
    class ObjectNotFoundException
      def self.parse(http_resp)
        data = Types::ObjectNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ContainerNotFoundException
    class ContainerNotFoundException
      def self.parse(http_resp)
        data = Types::ContainerNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeObject
    class DescribeObject
      def self.parse(http_resp)
        data = Types::DescribeObjectOutput.new
        data.e_tag = http_resp.headers['ETag']
        data.content_type = http_resp.headers['Content-Type']
        data.content_length = http_resp.headers['Content-Length'].to_i unless http_resp.headers['Content-Length'].nil?
        data.cache_control = http_resp.headers['Cache-Control']
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetObject
    class GetObject
      def self.parse(http_resp)
        data = Types::GetObjectOutput.new
        data.cache_control = http_resp.headers['Cache-Control']
        data.content_range = http_resp.headers['Content-Range']
        data.content_length = http_resp.headers['Content-Length'].to_i unless http_resp.headers['Content-Length'].nil?
        data.content_type = http_resp.headers['Content-Type']
        data.e_tag = http_resp.headers['ETag']
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        data.status_code = http_resp.status
        data.body = http_resp.body
        data
      end
    end

    # Error Parser for RequestedRangeNotSatisfiableException
    class RequestedRangeNotSatisfiableException
      def self.parse(http_resp)
        data = Types::RequestedRangeNotSatisfiableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListItems
    class ListItems
      def self.parse(http_resp)
        data = Types::ListItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ItemList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Item.parse(value) unless value.nil?
        end
        data
      end
    end

    class Item
      def self.parse(map)
        data = Types::Item.new
        data.name = map['Name']
        data.type = map['Type']
        data.e_tag = map['ETag']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.content_type = map['ContentType']
        data.content_length = map['ContentLength']
        return data
      end
    end

    # Operation Parser for PutObject
    class PutObject
      def self.parse(http_resp)
        data = Types::PutObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_sha256 = map['ContentSHA256']
        data.e_tag = map['ETag']
        data.storage_class = map['StorageClass']
        data
      end
    end
  end
end
