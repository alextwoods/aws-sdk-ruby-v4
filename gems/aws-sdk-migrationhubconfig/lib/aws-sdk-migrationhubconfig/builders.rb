# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubConfig
  module Builders

    # Operation Builder for CreateHomeRegionControl
    class CreateHomeRegionControl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHubMultiAccountService.CreateHomeRegionControl'
        data = {}
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['Target'] = Builders::Target.build(input[:target]) unless input[:target].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Operation Builder for DescribeHomeRegionControls
    class DescribeHomeRegionControls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHubMultiAccountService.DescribeHomeRegionControls'
        data = {}
        data['ControlId'] = input[:control_id] unless input[:control_id].nil?
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['Target'] = Builders::Target.build(input[:target]) unless input[:target].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetHomeRegion
    class GetHomeRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMigrationHubMultiAccountService.GetHomeRegion'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
