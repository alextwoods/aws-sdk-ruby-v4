# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Cloud9
  module Parsers

    # Operation Parser for CreateEnvironmentEC2
    class CreateEnvironmentEC2
      def self.parse(http_resp)
        data = Types::CreateEnvironmentEC2Output.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_id = map['environmentId']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for CreateEnvironmentMembership
    class CreateEnvironmentMembership
      def self.parse(http_resp)
        data = Types::CreateEnvironmentMembershipOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.membership = (EnvironmentMember.parse(map['membership']) unless map['membership'].nil?)
        data
      end
    end

    class EnvironmentMember
      def self.parse(map)
        data = Types::EnvironmentMember.new
        data.permissions = map['permissions']
        data.user_id = map['userId']
        data.user_arn = map['userArn']
        data.environment_id = map['environmentId']
        data.last_access = Time.at(map['lastAccess'].to_i) if map['lastAccess']
        return data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEnvironmentMembership
    class DeleteEnvironmentMembership
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentMembershipOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeEnvironmentMemberships
    class DescribeEnvironmentMemberships
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentMembershipsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.memberships = (EnvironmentMembersList.parse(map['memberships']) unless map['memberships'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EnvironmentMembersList
      def self.parse(list)
        list.map do |value|
          EnvironmentMember.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEnvironmentStatus
    class DescribeEnvironmentStatus
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeEnvironments
    class DescribeEnvironments
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environments = (EnvironmentList.parse(map['environments']) unless map['environments'].nil?)
        data
      end
    end

    class EnvironmentList
      def self.parse(list)
        list.map do |value|
          Environment.parse(value) unless value.nil?
        end
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.connection_type = map['connectionType']
        data.arn = map['arn']
        data.owner_arn = map['ownerArn']
        data.lifecycle = (EnvironmentLifecycle.parse(map['lifecycle']) unless map['lifecycle'].nil?)
        data.managed_credentials_status = map['managedCredentialsStatus']
        return data
      end
    end

    class EnvironmentLifecycle
      def self.parse(map)
        data = Types::EnvironmentLifecycle.new
        data.status = map['status']
        data.reason = map['reason']
        data.failure_resource = map['failureResource']
        return data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.environment_ids = (EnvironmentIdList.parse(map['environmentIds']) unless map['environmentIds'].nil?)
        data
      end
    end

    class EnvironmentIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentAccessException
    class ConcurrentAccessException
      def self.parse(http_resp)
        data = Types::ConcurrentAccessException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.class_name = map['className']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEnvironmentMembership
    class UpdateEnvironmentMembership
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentMembershipOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.membership = (EnvironmentMember.parse(map['membership']) unless map['membership'].nil?)
        data
      end
    end
  end
end
