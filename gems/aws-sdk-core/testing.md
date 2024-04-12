These are TEMPORARY testing instructions (as of April 6 2023, v4 codegen is broken, but hearth clients are fine).

The idea here is to run w/ some whitelabel clients from the codegen package + aws core library.
Lets us add in some middleware like Checksums to just debug / test with.

Run from the aws-sdk-core directory:

irb -I /Users/alexwoo/ruby/new-smith-ruby/smithy-ruby/hearth/lib -I lib -r aws-sdk-core
irb -I /Users/alexwoo/ruby/new-smith-ruby/smithy-ruby/hearth/lib -I lib -I ../aws-sdk-core/lib -I /Users/alexwoo/ruby/new-smith-ruby/smithy-ruby/codegen/projections/high_score_service/lib -r high_score_service -r aws-sdk-core

```ruby
config = HighScoreService::Config.new(stub_responses: true)
client = HighScoreService::Client.new(config)
resp = client.create_high_score(high_score: {})
```


Running all core specs
```bash
rspec -I /Users/alexwoo/ruby/new-smith-ruby/smithy-ruby/hearth/lib -I lib
```

```ruby
gems = Dir.glob("gems/aws-sdk-*")
gems.each do |gem|
  unless gem.include?('core')
    `git rm -rf #{gem}`
    `rm -rf #{gem}`
  end
end
```