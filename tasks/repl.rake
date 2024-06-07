# frozen_string_literal: true

desc 'Start an interactive REPL session with the SDK loaded'
task :repl do
  sh('bundle exec ./aws-v4.rb')
end
