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
