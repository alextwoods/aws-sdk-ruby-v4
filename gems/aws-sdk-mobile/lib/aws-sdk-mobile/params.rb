# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Mobile
  module Params

    module AccountActionRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountActionRequiredException, context: context)
        type = Types::AccountActionRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BundleDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BundleDetails, context: context)
        type = Types::BundleDetails.new
        type.bundle_id = params[:bundle_id]
        type.title = params[:title]
        type.version = params[:version]
        type.description = params[:description]
        type.icon_url = params[:icon_url]
        type.available_platforms = Platforms.build(params[:available_platforms], context: "#{context}[:available_platforms]") unless params[:available_platforms].nil?
        type
      end
    end

    module BundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BundleDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.name = params[:name]
        type.region = params[:region]
        type.contents = params[:contents]
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.details = ProjectDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_id = params[:project_id]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type.deleted_resources = Resources.build(params[:deleted_resources], context: "#{context}[:deleted_resources]") unless params[:deleted_resources].nil?
        type.orphaned_resources = Resources.build(params[:orphaned_resources], context: "#{context}[:orphaned_resources]") unless params[:orphaned_resources].nil?
        type
      end
    end

    module DescribeBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBundleInput, context: context)
        type = Types::DescribeBundleInput.new
        type.bundle_id = params[:bundle_id]
        type
      end
    end

    module DescribeBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBundleOutput, context: context)
        type = Types::DescribeBundleOutput.new
        type.details = BundleDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.project_id = params[:project_id]
        type.sync_from_resources = params[:sync_from_resources]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.details = ProjectDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ExportBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportBundleInput, context: context)
        type = Types::ExportBundleInput.new
        type.bundle_id = params[:bundle_id]
        type.project_id = params[:project_id]
        type.platform = params[:platform]
        type
      end
    end

    module ExportBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportBundleOutput, context: context)
        type = Types::ExportBundleOutput.new
        type.download_url = params[:download_url]
        type
      end
    end

    module ExportProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportProjectInput, context: context)
        type = Types::ExportProjectInput.new
        type.project_id = params[:project_id]
        type
      end
    end

    module ExportProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportProjectOutput, context: context)
        type = Types::ExportProjectOutput.new
        type.download_url = params[:download_url]
        type.share_url = params[:share_url]
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module ListBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBundlesInput, context: context)
        type = Types::ListBundlesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBundlesOutput, context: context)
        type = Types::ListBundlesOutput.new
        type.bundle_list = BundleList.build(params[:bundle_list], context: "#{context}[:bundle_list]") unless params[:bundle_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectSummaries.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Platforms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDetails, context: context)
        type = Types::ProjectDetails.new
        type.name = params[:name]
        type.project_id = params[:project_id]
        type.region = params[:region]
        type.state = params[:state]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.console_url = params[:console_url]
        type.resources = Resources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module ProjectSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.name = params[:name]
        type.project_id = params[:project_id]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.type = params[:type]
        type.name = params[:name]
        type.arn = params[:arn]
        type.feature = params[:feature]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.contents = params[:contents]
        type.project_id = params[:project_id]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.details = ProjectDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

  end
end
