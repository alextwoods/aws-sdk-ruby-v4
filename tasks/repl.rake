# frozen_string_literal: true

desc 'Start an interactive REPL session with the SDK loaded'
task :repl do
  # Modify load path to include all sdk gems
  Dir.glob('gems/*/lib') do |gem_path|
    $LOAD_PATH.unshift(File.expand_path(gem_path))
  end
  require 'irb'
  require 'aws-sdk-core'

  binding.irb
end
