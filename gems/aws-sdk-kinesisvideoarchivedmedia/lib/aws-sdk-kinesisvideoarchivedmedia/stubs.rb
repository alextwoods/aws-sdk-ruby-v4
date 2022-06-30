# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoArchivedMedia
  module Stubs

    # Operation Stubber for GetClip
    class GetClip
      def self.default(visited=[])
        {
          content_type: 'content_type',
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        IO.copy_stream(stub[:payload], http_resp.body)
      end
    end

    # Operation Stubber for GetDASHStreamingSessionURL
    class GetDASHStreamingSessionURL
      def self.default(visited=[])
        {
          dash_streaming_session_url: 'dash_streaming_session_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DASHStreamingSessionURL'] = stub[:dash_streaming_session_url] unless stub[:dash_streaming_session_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetHLSStreamingSessionURL
    class GetHLSStreamingSessionURL
      def self.default(visited=[])
        {
          hls_streaming_session_url: 'hls_streaming_session_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HLSStreamingSessionURL'] = stub[:hls_streaming_session_url] unless stub[:hls_streaming_session_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImages
    class GetImages
      def self.default(visited=[])
        {
          images: Stubs::Images.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Images'] = Stubs::Images.stub(stub[:images]) unless stub[:images].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Images
    class Images
      def self.default(visited=[])
        return nil if visited.include?('Images')
        visited = visited + ['Images']
        [
          Stubs::Image.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Image.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Image
    class Image
      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          time_stamp: Time.now,
          error: 'error',
          image_content: 'image_content',
        }
      end

      def self.stub(stub)
        stub ||= Types::Image.new
        data = {}
        data['TimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_stamp]).to_i unless stub[:time_stamp].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['ImageContent'] = stub[:image_content] unless stub[:image_content].nil?
        data
      end
    end

    # Operation Stubber for GetMediaForFragmentList
    class GetMediaForFragmentList
      def self.default(visited=[])
        {
          content_type: 'content_type',
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        IO.copy_stream(stub[:payload], http_resp.body)
      end
    end

    # Operation Stubber for ListFragments
    class ListFragments
      def self.default(visited=[])
        {
          fragments: Stubs::FragmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Fragments'] = Stubs::FragmentList.stub(stub[:fragments]) unless stub[:fragments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FragmentList
    class FragmentList
      def self.default(visited=[])
        return nil if visited.include?('FragmentList')
        visited = visited + ['FragmentList']
        [
          Stubs::Fragment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Fragment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Fragment
    class Fragment
      def self.default(visited=[])
        return nil if visited.include?('Fragment')
        visited = visited + ['Fragment']
        {
          fragment_number: 'fragment_number',
          fragment_size_in_bytes: 1,
          producer_timestamp: Time.now,
          server_timestamp: Time.now,
          fragment_length_in_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Fragment.new
        data = {}
        data['FragmentNumber'] = stub[:fragment_number] unless stub[:fragment_number].nil?
        data['FragmentSizeInBytes'] = stub[:fragment_size_in_bytes] unless stub[:fragment_size_in_bytes].nil?
        data['ProducerTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:producer_timestamp]).to_i unless stub[:producer_timestamp].nil?
        data['ServerTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:server_timestamp]).to_i unless stub[:server_timestamp].nil?
        data['FragmentLengthInMilliseconds'] = stub[:fragment_length_in_milliseconds] unless stub[:fragment_length_in_milliseconds].nil?
        data
      end
    end
  end
end
