# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mobile
  module Validators

    class AccountActionRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountActionRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BundleDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BundleDetails, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:icon_url], ::String, context: "#{context}[:icon_url]")
        Validators::Platforms.validate!(input[:available_platforms], context: "#{context}[:available_platforms]") unless input[:available_platforms].nil?
      end
    end

    class BundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BundleDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:contents], ::String, context: "#{context}[:contents]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Validators::ProjectDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
        Validators::Resources.validate!(input[:deleted_resources], context: "#{context}[:deleted_resources]") unless input[:deleted_resources].nil?
        Validators::Resources.validate!(input[:orphaned_resources], context: "#{context}[:orphaned_resources]") unless input[:orphaned_resources].nil?
      end
    end

    class DescribeBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBundleInput, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
      end
    end

    class DescribeBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBundleOutput, context: context)
        Validators::BundleDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:sync_from_resources], ::TrueClass, ::FalseClass, context: "#{context}[:sync_from_resources]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        Validators::ProjectDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ExportBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportBundleInput, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class ExportBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportBundleOutput, context: context)
        Hearth::Validator.validate!(input[:download_url], ::String, context: "#{context}[:download_url]")
      end
    end

    class ExportProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class ExportProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportProjectOutput, context: context)
        Hearth::Validator.validate!(input[:download_url], ::String, context: "#{context}[:download_url]")
        Hearth::Validator.validate!(input[:share_url], ::String, context: "#{context}[:share_url]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBundlesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBundlesOutput, context: context)
        Validators::BundleList.validate!(input[:bundle_list], context: "#{context}[:bundle_list]") unless input[:bundle_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Validators::ProjectSummaries.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Platforms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:console_url], ::String, context: "#{context}[:console_url]")
        Validators::Resources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class ProjectSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:contents], ::String, context: "#{context}[:contents]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Validators::ProjectDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

  end
end
