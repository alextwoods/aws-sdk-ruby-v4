# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Plugins
    # Telemetry Plugin used for inserting aws-specific
    # span attributes.
    class Telemetry
      def call(config)
        config.interceptors << Hearth::Interceptor.new(
          read_before_execution: proc do |context|
            span = context.tracer.current_span
            span.set_attribute('rpc.system', 'aws-api')
          end
        )
      end
    end
  end

end
