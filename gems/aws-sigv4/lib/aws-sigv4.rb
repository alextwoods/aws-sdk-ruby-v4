# frozen_string_literal: true

module AWS
  module SigV4
    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
  end
end

require_relative 'aws-sigv4/asymmetric_credentials'
require_relative 'aws-sigv4/credentials'
require_relative 'aws-sigv4/header_value'
require_relative 'aws-sigv4/presigned_url'
require_relative 'aws-sigv4/signature'
require_relative 'aws-sigv4/signer'
