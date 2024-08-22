# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-sts'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.author        = 'Amazon Web Services'
  spec.summary       = 'Official AWS Ruby gem for AWS Security Token Service. This gem is part of the AWS SDK for Ruby.'
  spec.files         = Dir['lib/**/*.rb', 'VERSION']
  spec.license       = 'Apache-2.0'

  spec.required_ruby_version = '>= 3.0'
  spec.add_runtime_dependency 'aws-sdk-core', '~> 4.0.0.pre1'
end
