desc 'Execute spec tests'
task 'test:spec' do
  Dir.glob('**/spec').tap do |spec_file_list|
    spec_file_list.delete_if { |string| string.include?('aws-sdk-core-old') }

    sh("rspec #{spec_file_list.join(' ')}")
  end
end