# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoSignaling
  module Types

    # <p>Your request was throttled because you have exceeded the limit of allowed client
    #             calls. Try making the call later.</p>
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

    # @!attribute channel_arn
    #   <p>The ARN of the signaling channel to be used for the peer-to-peer connection between
    #               configured peers. </p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>Unique identifier for the viewer. Must be unique within the signaling channel.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>Specifies the desired service. Currently, <code>TURN</code> is the only valid
    #               value.</p>
    #
    #   Enum, one of: ["TURN"]
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>An optional user ID to be associated with the credentials.</p>
    #
    #   @return [String]
    #
    GetIceServerConfigInput = ::Struct.new(
      :channel_arn,
      :client_id,
      :service,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ice_server_list
    #   <p>The list of ICE server information objects.</p>
    #
    #   @return [Array<IceServer>]
    #
    GetIceServerConfigOutput = ::Struct.new(
      :ice_server_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the ICE server connection data.</p>
    #
    # @!attribute uris
    #   <p>An array of URIs, in the form specified in the <a href="https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03">I-D.petithuguenin-behave-turn-uris</a> spec. These URIs provide the different
    #               addresses and/or protocols that can be used to reach the TURN server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute username
    #   <p>A username to login to the ICE server.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>A password to login to the ICE server.</p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p>The period of time, in seconds, during which the username and password are
    #               valid.</p>
    #
    #   @return [Integer]
    #
    IceServer = ::Struct.new(
      :uris,
      :username,
      :password,
      :ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ttl ||= 0
      end

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

    # <p>The specified client is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller is not authorized to perform this operation.</p>
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

    # <p>The specified resource is not found.</p>
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

    # @!attribute channel_arn
    #   <p>The ARN of the signaling channel by which Alexa and the master peer
    #               communicate.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_client_id
    #   <p>The unique identifier for the sender client.</p>
    #
    #   @return [String]
    #
    # @!attribute message_payload
    #   <p>The base64-encoded SDP offer content.</p>
    #
    #   @return [String]
    #
    SendAlexaOfferToMasterInput = ::Struct.new(
      :channel_arn,
      :sender_client_id,
      :message_payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute answer
    #   <p>The base64-encoded SDP answer content.</p>
    #
    #   @return [String]
    #
    SendAlexaOfferToMasterOutput = ::Struct.new(
      :answer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Service
    #
    module Service
      # No documentation available.
      #
      TURN = "TURN"
    end

    # <p>If the client session is expired. Once the client is connected, the session is valid
    #             for 45 minutes. Client should reconnect to the channel to continue sending/receiving
    #             messages.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SessionExpiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
