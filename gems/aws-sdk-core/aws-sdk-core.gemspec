# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-core'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.summary       = 'Contains shared functionality for AWS client gems.'
  spec.description   = 'This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.require_paths = ['lib']
  spec.files         = Dir[
    'LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb'
  ]

  spec.add_dependency('aws-sigv4', '~> 2.0.0.pre1')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-4/gems/aws-sdk-core',
    'changelog_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-4/gems/aws-sdk-core/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 2.5'
end
