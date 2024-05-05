# frozen_string_literal: true

$aws_protocol_test_codegen_dir = 'codegen/aws-protocol-test-codegen/build/smithyprojections/aws-protocol-test-codegen'

Dir.glob("tasks/**/*.rake").each do |task_file|
  load(task_file)
end

desc 'Run all checks and verifications for all sub projects'
task :default => %w[
  check:core
  check:codegen
]
