# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApiGatewayManagementApi
  module Types

    # @!attribute connection_id
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller is not authorized to invoke this operation.</p>
    #
    ForbiddenException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #
    #   @return [String]
    #
    GetConnectionInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connected_at
    #   <p>The time in ISO 8601 format for when the connection was established.</p>
    #
    #   @return [Time]
    #
    # @!attribute identity
    #
    #   @return [Identity]
    #
    # @!attribute last_active_at
    #   <p>The time in ISO 8601 format for when the connection was last active.</p>
    #
    #   @return [Time]
    #
    GetConnectionOutput = ::Struct.new(
      :connected_at,
      :identity,
      :last_active_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The connection with the provided id no longer exists.</p>
    #
    GoneException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_ip
    #   <p>The source IP address of the TCP connection making the request to API Gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute user_agent
    #   <p>The User Agent of the API caller.</p>
    #
    #   @return [String]
    #
    Identity = ::Struct.new(
      :source_ip,
      :user_agent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>
    #
    LimitExceededException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data has exceeded the maximum size allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PayloadTooLargeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data
    #   <p>The data to be sent to the client specified by its connection id.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The identifier of the connection that a specific client is using.</p>
    #
    #   @return [String]
    #
    PostToConnectionInput = ::Struct.new(
      :data,
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PostToConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
