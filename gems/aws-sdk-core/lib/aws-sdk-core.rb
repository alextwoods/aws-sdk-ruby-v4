# frozen_string_literal: true

require_relative 'aws/sdk/core/shared_config'

module AWS
  module SDK
    module Core
      GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

      def self.shared_config
        @shared_config ||= SharedConfig.load
      end
    end
  end
end
