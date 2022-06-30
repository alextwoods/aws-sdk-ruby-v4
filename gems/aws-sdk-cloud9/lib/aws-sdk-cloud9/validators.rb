# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Cloud9
  module Validators

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class BoundedEnvironmentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConcurrentAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class CreateEnvironmentEC2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentEC2Input, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:automatic_stop_time_minutes], ::Integer, context: "#{context}[:automatic_stop_time_minutes]")
        Hearth::Validator.validate!(input[:owner_arn], ::String, context: "#{context}[:owner_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateEnvironmentEC2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentEC2Output, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class CreateEnvironmentMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentMembershipInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:permissions], ::String, context: "#{context}[:permissions]")
      end
    end

    class CreateEnvironmentMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentMembershipOutput, context: context)
        Validators::EnvironmentMember.validate!(input[:membership], context: "#{context}[:membership]") unless input[:membership].nil?
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DeleteEnvironmentMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentMembershipInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DeleteEnvironmentMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentMembershipOutput, context: context)
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
      end
    end

    class DescribeEnvironmentMembershipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentMembershipsInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Validators::PermissionsList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEnvironmentMembershipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentMembershipsOutput, context: context)
        Validators::EnvironmentMembersList.validate!(input[:memberships], context: "#{context}[:memberships]") unless input[:memberships].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEnvironmentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentStatusInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DescribeEnvironmentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentsInput, context: context)
        Validators::BoundedEnvironmentIdList.validate!(input[:environment_ids], context: "#{context}[:environment_ids]") unless input[:environment_ids].nil?
      end
    end

    class DescribeEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentsOutput, context: context)
        Validators::EnvironmentList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_arn], ::String, context: "#{context}[:owner_arn]")
        Validators::EnvironmentLifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Hearth::Validator.validate!(input[:managed_credentials_status], ::String, context: "#{context}[:managed_credentials_status]")
      end
    end

    class EnvironmentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentLifecycle, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:failure_resource], ::String, context: "#{context}[:failure_resource]")
      end
    end

    class EnvironmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Environment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentMember, context: context)
        Hearth::Validator.validate!(input[:permissions], ::String, context: "#{context}[:permissions]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:last_access], ::Time, context: "#{context}[:last_access]")
      end
    end

    class EnvironmentMembersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnvironmentMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::EnvironmentIdList.validate!(input[:environment_ids], context: "#{context}[:environment_ids]") unless input[:environment_ids].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class PermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:managed_credentials_action], ::String, context: "#{context}[:managed_credentials_action]")
      end
    end

    class UpdateEnvironmentMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentMembershipInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:permissions], ::String, context: "#{context}[:permissions]")
      end
    end

    class UpdateEnvironmentMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentMembershipOutput, context: context)
        Validators::EnvironmentMember.validate!(input[:membership], context: "#{context}[:membership]") unless input[:membership].nil?
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
      end
    end

  end
end
