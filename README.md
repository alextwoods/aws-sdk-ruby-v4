# Demo project for AWS SDK Ruby V4
Setup basic codegen/gradle projects

run gradle build for either top level codegen or sdk-codegen project.  This will build for all models in the aws-models dir (Currently only lambda).

The generated lambda gem will be copied to the top level.  It currently depends on aws-sigv4. 
To test with a local seahorse:
```
irb -I '/Users/alexwoo/ruby/new-smith-ruby/smithy-ruby/seahorse/lib' -I 'lambda/lib'
```

And then:
```ruby
require 'lambda'

creds = Aws::Sigv4::Credentials.new(access_key_id: 'KEY', secret_access_key: 'SECRET_KEY')

client = Lambda::Client.new(endpoint: 'https://lambda.us-east-1.amazonaws.com', region: 'us-east-1', credentials: creds, http_wire_trace: true)

resp = client.list_functions
resp2 = client.get_function(function_name: 'test-state-change')
```
