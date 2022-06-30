# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KinesisVideoArchivedMedia
  module Parsers

    # Operation Parser for GetClip
    class GetClip
      def self.parse(http_resp)
        data = Types::GetClipOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.payload = http_resp.body
        data
      end
    end

    # Error Parser for ClientLimitExceededException
    class ClientLimitExceededException
      def self.parse(http_resp)
        data = Types::ClientLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCodecPrivateDataException
    class InvalidCodecPrivateDataException
      def self.parse(http_resp)
        data = Types::InvalidCodecPrivateDataException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidMediaFrameException
    class InvalidMediaFrameException
      def self.parse(http_resp)
        data = Types::InvalidMediaFrameException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MissingCodecPrivateDataException
    class MissingCodecPrivateDataException
      def self.parse(http_resp)
        data = Types::MissingCodecPrivateDataException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NoDataRetentionException
    class NoDataRetentionException
      def self.parse(http_resp)
        data = Types::NoDataRetentionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
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

    # Error Parser for UnsupportedStreamMediaTypeException
    class UnsupportedStreamMediaTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedStreamMediaTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetDASHStreamingSessionURL
    class GetDASHStreamingSessionURL
      def self.parse(http_resp)
        data = Types::GetDASHStreamingSessionURLOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dash_streaming_session_url = map['DASHStreamingSessionURL']
        data
      end
    end

    # Operation Parser for GetHLSStreamingSessionURL
    class GetHLSStreamingSessionURL
      def self.parse(http_resp)
        data = Types::GetHLSStreamingSessionURLOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hls_streaming_session_url = map['HLSStreamingSessionURL']
        data
      end
    end

    # Operation Parser for GetImages
    class GetImages
      def self.parse(http_resp)
        data = Types::GetImagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.images = (Parsers::Images.parse(map['Images']) unless map['Images'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Images
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Image.parse(value) unless value.nil?
        end
        data
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        data.time_stamp = Time.at(map['TimeStamp'].to_i) if map['TimeStamp']
        data.error = map['Error']
        data.image_content = map['ImageContent']
        return data
      end
    end

    # Operation Parser for GetMediaForFragmentList
    class GetMediaForFragmentList
      def self.parse(http_resp)
        data = Types::GetMediaForFragmentListOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.payload = http_resp.body
        data
      end
    end

    # Operation Parser for ListFragments
    class ListFragments
      def self.parse(http_resp)
        data = Types::ListFragmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fragments = (Parsers::FragmentList.parse(map['Fragments']) unless map['Fragments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FragmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Fragment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Fragment
      def self.parse(map)
        data = Types::Fragment.new
        data.fragment_number = map['FragmentNumber']
        data.fragment_size_in_bytes = map['FragmentSizeInBytes']
        data.producer_timestamp = Time.at(map['ProducerTimestamp'].to_i) if map['ProducerTimestamp']
        data.server_timestamp = Time.at(map['ServerTimestamp'].to_i) if map['ServerTimestamp']
        data.fragment_length_in_milliseconds = map['FragmentLengthInMilliseconds']
        return data
      end
    end
  end
end
