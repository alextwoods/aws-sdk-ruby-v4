# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Cloud9
  module Params

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module BoundedEnvironmentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConcurrentAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentAccessException, context: context)
        type = Types::ConcurrentAccessException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module CreateEnvironmentEC2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentEC2Input, context: context)
        type = Types::CreateEnvironmentEC2Input.new
        type.name = params[:name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token]
        type.instance_type = params[:instance_type]
        type.subnet_id = params[:subnet_id]
        type.image_id = params[:image_id]
        type.automatic_stop_time_minutes = params[:automatic_stop_time_minutes]
        type.owner_arn = params[:owner_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.connection_type = params[:connection_type]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateEnvironmentEC2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentEC2Output, context: context)
        type = Types::CreateEnvironmentEC2Output.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module CreateEnvironmentMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentMembershipInput, context: context)
        type = Types::CreateEnvironmentMembershipInput.new
        type.environment_id = params[:environment_id]
        type.user_arn = params[:user_arn]
        type.permissions = params[:permissions]
        type
      end
    end

    module CreateEnvironmentMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentMembershipOutput, context: context)
        type = Types::CreateEnvironmentMembershipOutput.new
        type.membership = EnvironmentMember.build(params[:membership], context: "#{context}[:membership]") unless params[:membership].nil?
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DeleteEnvironmentMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentMembershipInput, context: context)
        type = Types::DeleteEnvironmentMembershipInput.new
        type.environment_id = params[:environment_id]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DeleteEnvironmentMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentMembershipOutput, context: context)
        type = Types::DeleteEnvironmentMembershipOutput.new
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type
      end
    end

    module DescribeEnvironmentMembershipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentMembershipsInput, context: context)
        type = Types::DescribeEnvironmentMembershipsInput.new
        type.user_arn = params[:user_arn]
        type.environment_id = params[:environment_id]
        type.permissions = PermissionsList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEnvironmentMembershipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentMembershipsOutput, context: context)
        type = Types::DescribeEnvironmentMembershipsOutput.new
        type.memberships = EnvironmentMembersList.build(params[:memberships], context: "#{context}[:memberships]") unless params[:memberships].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEnvironmentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentStatusInput, context: context)
        type = Types::DescribeEnvironmentStatusInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DescribeEnvironmentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentStatusOutput, context: context)
        type = Types::DescribeEnvironmentStatusOutput.new
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module DescribeEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentsInput, context: context)
        type = Types::DescribeEnvironmentsInput.new
        type.environment_ids = BoundedEnvironmentIdList.build(params[:environment_ids], context: "#{context}[:environment_ids]") unless params[:environment_ids].nil?
        type
      end
    end

    module DescribeEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentsOutput, context: context)
        type = Types::DescribeEnvironmentsOutput.new
        type.environments = EnvironmentList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.connection_type = params[:connection_type]
        type.arn = params[:arn]
        type.owner_arn = params[:owner_arn]
        type.lifecycle = EnvironmentLifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.managed_credentials_status = params[:managed_credentials_status]
        type
      end
    end

    module EnvironmentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentLifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentLifecycle, context: context)
        type = Types::EnvironmentLifecycle.new
        type.status = params[:status]
        type.reason = params[:reason]
        type.failure_resource = params[:failure_resource]
        type
      end
    end

    module EnvironmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Environment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentMember, context: context)
        type = Types::EnvironmentMember.new
        type.permissions = params[:permissions]
        type.user_id = params[:user_id]
        type.user_arn = params[:user_arn]
        type.environment_id = params[:environment_id]
        type.last_access = params[:last_access]
        type
      end
    end

    module EnvironmentMembersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.next_token = params[:next_token]
        type.environment_ids = EnvironmentIdList.build(params[:environment_ids], context: "#{context}[:environment_ids]") unless params[:environment_ids].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module PermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type.class_name = params[:class_name]
        type.code = params[:code]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type.name = params[:name]
        type.description = params[:description]
        type.managed_credentials_action = params[:managed_credentials_action]
        type
      end
    end

    module UpdateEnvironmentMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentMembershipInput, context: context)
        type = Types::UpdateEnvironmentMembershipInput.new
        type.environment_id = params[:environment_id]
        type.user_arn = params[:user_arn]
        type.permissions = params[:permissions]
        type
      end
    end

    module UpdateEnvironmentMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentMembershipOutput, context: context)
        type = Types::UpdateEnvironmentMembershipOutput.new
        type.membership = EnvironmentMember.build(params[:membership], context: "#{context}[:membership]") unless params[:membership].nil?
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type
      end
    end

  end
end
