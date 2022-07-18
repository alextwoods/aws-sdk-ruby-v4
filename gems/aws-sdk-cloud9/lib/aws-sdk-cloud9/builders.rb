# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Cloud9
  module Builders

    # Operation Builder for CreateEnvironmentEC2
    class CreateEnvironmentEC2
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.CreateEnvironmentEC2'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['subnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['imageId'] = input[:image_id] unless input[:image_id].nil?
        data['automaticStopTimeMinutes'] = input[:automatic_stop_time_minutes] unless input[:automatic_stop_time_minutes].nil?
        data['ownerArn'] = input[:owner_arn] unless input[:owner_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['connectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['dryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateEnvironmentMembership
    class CreateEnvironmentMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.CreateEnvironmentMembership'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['permissions'] = input[:permissions] unless input[:permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.DeleteEnvironment'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironmentMembership
    class DeleteEnvironmentMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.DeleteEnvironmentMembership'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEnvironmentMemberships
    class DescribeEnvironmentMemberships
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.DescribeEnvironmentMemberships'
        data = {}
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['permissions'] = Builders::PermissionsList.build(input[:permissions]) unless input[:permissions].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionsList
    class PermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEnvironmentStatus
    class DescribeEnvironmentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.DescribeEnvironmentStatus'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEnvironments
    class DescribeEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.DescribeEnvironments'
        data = {}
        data['environmentIds'] = Builders::BoundedEnvironmentIdList.build(input[:environment_ids]) unless input[:environment_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BoundedEnvironmentIdList
    class BoundedEnvironmentIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.ListEnvironments'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.UpdateEnvironment'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['managedCredentialsAction'] = input[:managed_credentials_action] unless input[:managed_credentials_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironmentMembership
    class UpdateEnvironmentMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCloud9WorkspaceManagementService.UpdateEnvironmentMembership'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['permissions'] = input[:permissions] unless input[:permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
