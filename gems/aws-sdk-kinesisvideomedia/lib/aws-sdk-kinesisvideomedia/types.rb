# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoMedia
  module Types

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #       allowed client calls. Try making the call later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClientLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #       allowed client connections.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConnectionLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_name
    #   <p>The Kinesis video stream name from where you want to get the media content. If you
    #         don't specify the <code>streamName</code>, you must specify the
    #         <code>streamARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The ARN of the stream from where you want to get the media content. If you don't
    #         specify the <code>streamARN</code>, you must specify the <code>streamName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute start_selector
    #   <p>Identifies the starting chunk to get from the specified stream. </p>
    #
    #   @return [StartSelector]
    #
    GetMediaInput = ::Struct.new(
      :stream_name,
      :stream_arn,
      :start_selector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_type
    #   <p>The content type of the requested media.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p> The payload Kinesis Video Streams returns is a sequence of chunks from the specified
    #         stream. For information about the chunks, see . The
    #         chunks that Kinesis Video Streams returns in the <code>GetMedia</code> call also include the
    #         following additional Matroska (MKV) tags: </p>
    #            <ul>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your
    #               <code>GetMedia</code> call terminates, you can use this continuation token in your next
    #             request to get the next chunk where the last request terminated.</p>
    #               </li>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications can use
    #             this tag value to determine how far behind the chunk returned in the response is from the
    #             latest chunk on the stream. </p>
    #               </li>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.</p>
    #               </li>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server timestamp of the fragment.</p>
    #               </li>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer timestamp of the fragment.</p>
    #               </li>
    #            </ul>
    #            <p>The following tags will be present if an error occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_ERROR_CODE - String description of an error that caused GetMedia
    #             to stop.</p>
    #               </li>
    #               <li>
    #                  <p>AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.</p>
    #               </li>
    #            </ul>
    #            <p>The error codes are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>3002 - Error writing to the stream</p>
    #               </li>
    #               <li>
    #                  <p>4000 - Requested fragment is not found</p>
    #               </li>
    #               <li>
    #                  <p>4500 - Access denied for the stream's KMS key</p>
    #               </li>
    #               <li>
    #                  <p>4501 - Stream's KMS key is disabled</p>
    #               </li>
    #               <li>
    #                  <p>4502 - Validation error on the stream's KMS key</p>
    #               </li>
    #               <li>
    #                  <p>4503 - KMS key specified in the stream is unavailable</p>
    #               </li>
    #               <li>
    #                  <p>4504 - Invalid usage of the KMS key specified in the stream</p>
    #               </li>
    #               <li>
    #                  <p>4505 - Invalid state of the KMS key specified in the stream</p>
    #               </li>
    #               <li>
    #                  <p>4506 - Unable to find the KMS key specified in the stream</p>
    #               </li>
    #               <li>
    #                  <p>5000 - Internal error</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    GetMediaOutput = ::Struct.new(
      :content_type,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value for this input parameter is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving
    #       such an exception, the user must call <code>GetDataEndpoint</code> with
    #         <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next
    #         <code>GetMedia</code> call. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidEndpointException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status Code: 403, The caller is not authorized to perform an operation on the given
    #       stream, or the token has expired.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotAuthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status Code: 404, The stream with the given name does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the chunk on the Kinesis video stream where you want the
    #         <code>GetMedia</code> API to start returning media data. You have the following options to
    #       identify the starting chunk: </p>
    #          <ul>
    #             <li>
    #                <p>Choose the latest (or oldest) chunk.</p>
    #             </li>
    #             <li>
    #                <p>Identify a specific chunk. You can identify a specific chunk either by providing a
    #           fragment number or timestamp (server or producer). </p>
    #             </li>
    #             <li>
    #                <p>Each chunk's metadata includes a continuation token as a Matroska (MKV) tag
    #             (<code>AWS_KINESISVIDEO_CONTINUATION_TOKEN</code>). If your previous
    #             <code>GetMedia</code> request terminated, you can use this tag value in your next
    #             <code>GetMedia</code> request. The API then starts returning chunks starting where the
    #           last API ended.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute start_selector_type
    #   <p>Identifies the fragment on the Kinesis video stream where you want to start getting the
    #         data from.</p>
    #            <ul>
    #               <li>
    #                  <p>NOW - Start with the latest chunk on the stream.</p>
    #               </li>
    #               <li>
    #                  <p>EARLIEST - Start with earliest available chunk on the stream.</p>
    #               </li>
    #               <li>
    #                  <p>FRAGMENT_NUMBER - Start with the chunk after a specific fragment. You must also
    #             specify the <code>AfterFragmentNumber</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk containing a fragment
    #             with the specified producer or server timestamp. You specify the timestamp by adding
    #               <code>StartTimestamp</code>.</p>
    #               </li>
    #               <li>
    #                  <p> CONTINUATION_TOKEN - Read using the specified continuation token. </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the
    #             <code>startSelectorType</code>, you don't provide any additional information in the
    #             <code>startSelector</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["FRAGMENT_NUMBER", "SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP", "NOW", "EARLIEST", "CONTINUATION_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute after_fragment_number
    #   <p>Specifies the fragment number from where you want the <code>GetMedia</code> API to
    #         start returning the fragments. </p>
    #
    #   @return [String]
    #
    # @!attribute start_timestamp
    #   <p>A timestamp value. This value is required if you choose the PRODUCER_TIMESTAMP or the
    #         SERVER_TIMESTAMP as the <code>startSelectorType</code>. The <code>GetMedia</code> API then
    #         starts with the chunk containing the fragment that has the specified timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute continuation_token
    #   <p>Continuation token that Kinesis Video Streams returned in the previous
    #           <code>GetMedia</code> response. The <code>GetMedia</code> API then starts with the chunk
    #         identified by the continuation token.</p>
    #
    #   @return [String]
    #
    StartSelector = ::Struct.new(
      :start_selector_type,
      :after_fragment_number,
      :start_timestamp,
      :continuation_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StartSelectorType
    #
    module StartSelectorType
      # No documentation available.
      #
      FRAGMENT_NUMBER = "FRAGMENT_NUMBER"

      # No documentation available.
      #
      SERVER_TIMESTAMP = "SERVER_TIMESTAMP"

      # No documentation available.
      #
      PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP"

      # No documentation available.
      #
      NOW = "NOW"

      # No documentation available.
      #
      EARLIEST = "EARLIEST"

      # No documentation available.
      #
      CONTINUATION_TOKEN = "CONTINUATION_TOKEN"
    end

  end
end