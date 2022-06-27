desc 'Execute spec tests'
task 'test:spec' do
  Dir.glob('gems/**/spec').tap do |spec_file_list|
    spec_file_list.delete_if { |string| string.include?('aws-sdk-core-old') }

    sh("rspec -I gems/aws-sdk-core/lib -I gems/aws-sigv4/lib #{spec_file_list.join(' ')}")
  end
end
