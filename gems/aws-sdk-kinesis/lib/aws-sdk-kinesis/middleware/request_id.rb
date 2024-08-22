# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Middleware
    # A middleware that extracts a request id from a response and sets it
    # on output's metadata.
    # @api private
    class RequestId
      def initialize(app, _ = {})
        @app = app
      end

      def call(input, context)
        output = @app.call(input, context)
        request_id = context.response.headers['x-amz-request-id']
        output.metadata[:request_id] = request_id
        current_span = context.config.telemetry_provider.context_manager.current_span
        current_span.set_attribute('aws.request_id', request_id) if request_id
        output
      end
    end
  end

end
