# frozen_string_literal: true

require 'hearth'
require 'aws-sigv4'

# Namespace for AWS Ruby products
module AWS
  # Namespace for AWS SDK gems
  module SDK
    # Namespace for AWS::SDK Core components
    module Core
      class << self
        ## Utility methods for checking if certain gems are available

        # @api private
        # TODO: we should major version bump this
        def crt_loaded?
          if @use_crt.nil?
            @use_crt =
              begin
                require 'aws-crt'
                true
              rescue LoadError
                false
              end
          end
          @use_crt
        end

        private

        def gem_loaded?(gem_name)
          name = :"@use_#{gem_name.split('-').last}"
          is_loaded = instance_variable_get(name)
          return is_loaded unless is_loaded.nil?

          is_loaded =
            begin
              require gem_name
              true
            rescue LoadError, NameError
              false
            end
          instance_variable_set(name, is_loaded)
        end
      end
    end
  end
end

# SigV4
require_relative 'aws-sdk-core/auth_schemes/sigv4'
require_relative 'aws-sdk-core/identities/credentials'
require_relative 'aws-sdk-core/signers/sigv4'

# Identity Providers
require_relative 'aws-sdk-core/credentials_provider_chain'
require_relative 'aws-sdk-core/http_bearer_provider_chain'
require_relative 'aws-sdk-core/instance_credentials_provider'
require_relative 'aws-sdk-core/container_credentials_provider'
require_relative 'aws-sdk-core/process_credentials_provider'
require_relative 'aws-sdk-core/static_credentials_provider'

# Shared Config
require_relative 'aws-sdk-core/config_file'
require_relative 'aws-sdk-core/config_file_factory'
require_relative 'aws-sdk-core/config_file_parser'
require_relative 'aws-sdk-core/config_file_section'
require_relative 'aws-sdk-core/config_file_standardizer'
require_relative 'aws-sdk-core/config_file_utils'
require_relative 'aws-sdk-core/shared_config'
require_relative 'aws-sdk-core/shared_config_provider'

# Utilities
require_relative 'aws-sdk-core/arn'
require_relative 'aws-sdk-core/arn_parser'
require_relative 'aws-sdk-core/checksums'
require_relative 'aws-sdk-core/ec2_metadata'

# Middleware / Runtime
require_relative 'aws-sdk-core/middleware'
require_relative 'aws-sdk-core/endpoint_rules'

# Namespace for AWS::SDK Core components
module AWS::SDK::Core
  GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

  def self.shared_config
    @shared_config ||= SharedConfig.load
  end
end
