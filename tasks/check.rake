
namespace :check do
  desc 'Run all verification checks on hearth - run tests, rubocop and verify types'
  task :core => %w[
    test:core
    rubocop:core
  ]
  # TODO:
  # steep:core
  # rbs:core

  desc 'Run all code generation checks/verifications - build codegen, run all tests, rubocop and verify types'
  task :codegen => %w[
    codegen:clean
    codegen:build
    test:protocol-tests
    test:codegen-gems
    rubocop:codegen
  ]
  # TODO:
  # steep:codegen
  # rbs:codegen
end
