# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sigv4'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.summary       = 'AWS Signature Version 4 library.'
  spec.description   = 'Amazon Web Services Signature Version 4 signing ' \
                       'library. Generates a SigV4 signature for HTTP requests.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir[
    'LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb'
  ]

  # For signing event stream events
  # spec.add_dependency('aws-eventstream', '~> 1', '>= 1.0.2')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-4/gems/aws-sigv4',
    'changelog_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-4/gems/aws-sigv4/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 3.0'
end
