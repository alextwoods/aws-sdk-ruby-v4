# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mobile
  module Parsers

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.details = (ProjectDetails.parse(map['details']) unless map['details'].nil?)
        data
      end
    end

    class ProjectDetails
      def self.parse(map)
        data = Types::ProjectDetails.new
        data.name = map['name']
        data.project_id = map['projectId']
        data.region = map['region']
        data.state = map['state']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.console_url = map['consoleUrl']
        data.resources = (Resources.parse(map['resources']) unless map['resources'].nil?)
        return data
      end
    end

    class Resources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.type = map['type']
        data.name = map['name']
        data.arn = map['arn']
        data.feature = map['feature']
        data.attributes = (Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deleted_resources = (Resources.parse(map['deletedResources']) unless map['deletedResources'].nil?)
        data.orphaned_resources = (Resources.parse(map['orphanedResources']) unless map['orphanedResources'].nil?)
        data
      end
    end

    # Operation Parser for DescribeBundle
    class DescribeBundle
      def self.parse(http_resp)
        data = Types::DescribeBundleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.details = (BundleDetails.parse(map['details']) unless map['details'].nil?)
        data
      end
    end

    class BundleDetails
      def self.parse(map)
        data = Types::BundleDetails.new
        data.bundle_id = map['bundleId']
        data.title = map['title']
        data.version = map['version']
        data.description = map['description']
        data.icon_url = map['iconUrl']
        data.available_platforms = (Platforms.parse(map['availablePlatforms']) unless map['availablePlatforms'].nil?)
        return data
      end
    end

    class Platforms
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.details = (ProjectDetails.parse(map['details']) unless map['details'].nil?)
        data
      end
    end

    # Operation Parser for ExportBundle
    class ExportBundle
      def self.parse(http_resp)
        data = Types::ExportBundleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.download_url = map['downloadUrl']
        data
      end
    end

    # Operation Parser for ExportProject
    class ExportProject
      def self.parse(http_resp)
        data = Types::ExportProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.download_url = map['downloadUrl']
        data.share_url = map['shareUrl']
        data.snapshot_id = map['snapshotId']
        data
      end
    end

    # Operation Parser for ListBundles
    class ListBundles
      def self.parse(http_resp)
        data = Types::ListBundlesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bundle_list = (BundleList.parse(map['bundleList']) unless map['bundleList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BundleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BundleDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.projects = (ProjectSummaries.parse(map['projects']) unless map['projects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProjectSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProjectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.name = map['name']
        data.project_id = map['projectId']
        return data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.details = (ProjectDetails.parse(map['details']) unless map['details'].nil?)
        data
      end
    end

    # Error Parser for AccountActionRequiredException
    class AccountActionRequiredException
      def self.parse(http_resp)
        data = Types::AccountActionRequiredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
