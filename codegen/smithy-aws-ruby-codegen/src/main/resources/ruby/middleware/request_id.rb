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
      current_span = context.tracer.current_span
      current_span.set_attribute('aws.request_id', request_id) if request_id
      output
    end
  end
end
