# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-core'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'Contains shared functionality for AWS client gems.'
  spec.description   = 'This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.require_paths = ['lib']
  spec.files         = Dir['LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 3.0'
end
