# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Identitystore
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupInput, context: context)
        type = Types::DescribeGroupInput.new
        type.identity_store_id = params[:identity_store_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module DescribeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupOutput, context: context)
        type = Types::DescribeGroupOutput.new
        type.group_id = params[:group_id]
        type.display_name = params[:display_name]
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.identity_store_id = params[:identity_store_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.user_name = params[:user_name]
        type.user_id = params[:user_id]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.attribute_path = params[:attribute_path]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.group_id = params[:group_id]
        type.display_name = params[:display_name]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.identity_store_id = params[:identity_store_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.identity_store_id = params[:identity_store_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = Users.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.user_name = params[:user_name]
        type.user_id = params[:user_id]
        type
      end
    end

    module Users
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

  end
end
