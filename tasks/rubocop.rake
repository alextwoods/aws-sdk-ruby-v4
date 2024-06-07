# frozen_string_literal: true

namespace :rubocop do
  desc 'Run rubocop for one gem by name'
  rule(/^rubocop:.+/) do |task|
    gem = task.name.split(':').last
    sh("bundle exec rubocop -E -S gems/#{gem}")
  end

  desc 'Runs rubocop on the hand-coded ruby files in codegen'
  task 'codegen' do
    sh('bundle exec rubocop -E -S codegen')
  end
end
