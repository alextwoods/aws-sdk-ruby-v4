# frozen_string_literal: true

require 'fileutils'

ROOT = File.dirname(__FILE__)
GEMS_DIR = "#{ROOT}/gems"

Dir.glob("tasks/**/*.rake").each do |task_file|
  load(task_file)
end

desc 'Run all checks and verifications for all sub projects'
task :default => %w[
  check:core
  check:codegen
]
