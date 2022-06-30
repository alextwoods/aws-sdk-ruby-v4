# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Codeartifact
  module Parsers

    # Operation Parser for AssociateExternalConnection
    class AssociateExternalConnection
      def self.parse(http_resp)
        data = Types::AssociateExternalConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    class RepositoryDescription
      def self.parse(map)
        data = Types::RepositoryDescription.new
        data.name = map['name']
        data.administrator_account = map['administratorAccount']
        data.domain_name = map['domainName']
        data.domain_owner = map['domainOwner']
        data.arn = map['arn']
        data.description = map['description']
        data.upstreams = (Parsers::UpstreamRepositoryInfoList.parse(map['upstreams']) unless map['upstreams'].nil?)
        data.external_connections = (Parsers::RepositoryExternalConnectionInfoList.parse(map['externalConnections']) unless map['externalConnections'].nil?)
        return data
      end
    end

    class RepositoryExternalConnectionInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RepositoryExternalConnectionInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class RepositoryExternalConnectionInfo
      def self.parse(map)
        data = Types::RepositoryExternalConnectionInfo.new
        data.external_connection_name = map['externalConnectionName']
        data.package_format = map['packageFormat']
        data.status = map['status']
        return data
      end
    end

    class UpstreamRepositoryInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpstreamRepositoryInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpstreamRepositoryInfo
      def self.parse(map)
        data = Types::UpstreamRepositoryInfo.new
        data.repository_name = map['repositoryName']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CopyPackageVersions
    class CopyPackageVersions
      def self.parse(http_resp)
        data = Types::CopyPackageVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successful_versions = (Parsers::SuccessfulPackageVersionInfoMap.parse(map['successfulVersions']) unless map['successfulVersions'].nil?)
        data.failed_versions = (Parsers::PackageVersionErrorMap.parse(map['failedVersions']) unless map['failedVersions'].nil?)
        data
      end
    end

    class PackageVersionErrorMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PackageVersionError.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageVersionError
      def self.parse(map)
        data = Types::PackageVersionError.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class SuccessfulPackageVersionInfoMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::SuccessfulPackageVersionInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class SuccessfulPackageVersionInfo
      def self.parse(map)
        data = Types::SuccessfulPackageVersionInfo.new
        data.revision = map['revision']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain = (Parsers::DomainDescription.parse(map['domain']) unless map['domain'].nil?)
        data
      end
    end

    class DomainDescription
      def self.parse(map)
        data = Types::DomainDescription.new
        data.name = map['name']
        data.owner = map['owner']
        data.arn = map['arn']
        data.status = map['status']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.encryption_key = map['encryptionKey']
        data.repository_count = map['repositoryCount']
        data.asset_size_bytes = map['assetSizeBytes']
        data.s3_bucket_arn = map['s3BucketArn']
        return data
      end
    end

    # Operation Parser for CreateRepository
    class CreateRepository
      def self.parse(http_resp)
        data = Types::CreateRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain = (Parsers::DomainDescription.parse(map['domain']) unless map['domain'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDomainPermissionsPolicy
    class DeleteDomainPermissionsPolicy
      def self.parse(http_resp)
        data = Types::DeleteDomainPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    class ResourcePolicy
      def self.parse(map)
        data = Types::ResourcePolicy.new
        data.resource_arn = map['resourceArn']
        data.revision = map['revision']
        data.document = map['document']
        return data
      end
    end

    # Operation Parser for DeletePackageVersions
    class DeletePackageVersions
      def self.parse(http_resp)
        data = Types::DeletePackageVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successful_versions = (Parsers::SuccessfulPackageVersionInfoMap.parse(map['successfulVersions']) unless map['successfulVersions'].nil?)
        data.failed_versions = (Parsers::PackageVersionErrorMap.parse(map['failedVersions']) unless map['failedVersions'].nil?)
        data
      end
    end

    # Operation Parser for DeleteRepository
    class DeleteRepository
      def self.parse(http_resp)
        data = Types::DeleteRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for DeleteRepositoryPermissionsPolicy
    class DeleteRepositoryPermissionsPolicy
      def self.parse(http_resp)
        data = Types::DeleteRepositoryPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain = (Parsers::DomainDescription.parse(map['domain']) unless map['domain'].nil?)
        data
      end
    end

    # Operation Parser for DescribePackageVersion
    class DescribePackageVersion
      def self.parse(http_resp)
        data = Types::DescribePackageVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_version = (Parsers::PackageVersionDescription.parse(map['packageVersion']) unless map['packageVersion'].nil?)
        data
      end
    end

    class PackageVersionDescription
      def self.parse(map)
        data = Types::PackageVersionDescription.new
        data.format = map['format']
        data.namespace = map['namespace']
        data.package_name = map['packageName']
        data.display_name = map['displayName']
        data.version = map['version']
        data.summary = map['summary']
        data.home_page = map['homePage']
        data.source_code_repository = map['sourceCodeRepository']
        data.published_time = Time.at(map['publishedTime'].to_i) if map['publishedTime']
        data.licenses = (Parsers::LicenseInfoList.parse(map['licenses']) unless map['licenses'].nil?)
        data.revision = map['revision']
        data.status = map['status']
        return data
      end
    end

    class LicenseInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LicenseInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class LicenseInfo
      def self.parse(map)
        data = Types::LicenseInfo.new
        data.name = map['name']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for DescribeRepository
    class DescribeRepository
      def self.parse(http_resp)
        data = Types::DescribeRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateExternalConnection
    class DisassociateExternalConnection
      def self.parse(http_resp)
        data = Types::DisassociateExternalConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for DisposePackageVersions
    class DisposePackageVersions
      def self.parse(http_resp)
        data = Types::DisposePackageVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successful_versions = (Parsers::SuccessfulPackageVersionInfoMap.parse(map['successfulVersions']) unless map['successfulVersions'].nil?)
        data.failed_versions = (Parsers::PackageVersionErrorMap.parse(map['failedVersions']) unless map['failedVersions'].nil?)
        data
      end
    end

    # Operation Parser for GetAuthorizationToken
    class GetAuthorizationToken
      def self.parse(http_resp)
        data = Types::GetAuthorizationTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorization_token = map['authorizationToken']
        data.expiration = Time.at(map['expiration'].to_i) if map['expiration']
        data
      end
    end

    # Operation Parser for GetDomainPermissionsPolicy
    class GetDomainPermissionsPolicy
      def self.parse(http_resp)
        data = Types::GetDomainPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for GetPackageVersionAsset
    class GetPackageVersionAsset
      def self.parse(http_resp)
        data = Types::GetPackageVersionAssetOutput.new
        data.asset_name = http_resp.headers['X-AssetName']
        data.package_version = http_resp.headers['X-PackageVersion']
        data.package_version_revision = http_resp.headers['X-PackageVersionRevision']
        data.asset = http_resp.body
        data
      end
    end

    # Operation Parser for GetPackageVersionReadme
    class GetPackageVersionReadme
      def self.parse(http_resp)
        data = Types::GetPackageVersionReadmeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.format = map['format']
        data.namespace = map['namespace']
        data.package = map['package']
        data.version = map['version']
        data.version_revision = map['versionRevision']
        data.readme = map['readme']
        data
      end
    end

    # Operation Parser for GetRepositoryEndpoint
    class GetRepositoryEndpoint
      def self.parse(http_resp)
        data = Types::GetRepositoryEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository_endpoint = map['repositoryEndpoint']
        data
      end
    end

    # Operation Parser for GetRepositoryPermissionsPolicy
    class GetRepositoryPermissionsPolicy
      def self.parse(http_resp)
        data = Types::GetRepositoryPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domains = (Parsers::DomainSummaryList.parse(map['domains']) unless map['domains'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DomainSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainSummary
      def self.parse(map)
        data = Types::DomainSummary.new
        data.name = map['name']
        data.owner = map['owner']
        data.arn = map['arn']
        data.status = map['status']
        data.created_time = Time.at(map['createdTime'].to_i) if map['createdTime']
        data.encryption_key = map['encryptionKey']
        return data
      end
    end

    # Operation Parser for ListPackageVersionAssets
    class ListPackageVersionAssets
      def self.parse(http_resp)
        data = Types::ListPackageVersionAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.format = map['format']
        data.namespace = map['namespace']
        data.package = map['package']
        data.version = map['version']
        data.version_revision = map['versionRevision']
        data.next_token = map['nextToken']
        data.assets = (Parsers::AssetSummaryList.parse(map['assets']) unless map['assets'].nil?)
        data
      end
    end

    class AssetSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetSummary
      def self.parse(map)
        data = Types::AssetSummary.new
        data.name = map['name']
        data.size = map['size']
        data.hashes = (Parsers::AssetHashes.parse(map['hashes']) unless map['hashes'].nil?)
        return data
      end
    end

    class AssetHashes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPackageVersionDependencies
    class ListPackageVersionDependencies
      def self.parse(http_resp)
        data = Types::ListPackageVersionDependenciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.format = map['format']
        data.namespace = map['namespace']
        data.package = map['package']
        data.version = map['version']
        data.version_revision = map['versionRevision']
        data.next_token = map['nextToken']
        data.dependencies = (Parsers::PackageDependencyList.parse(map['dependencies']) unless map['dependencies'].nil?)
        data
      end
    end

    class PackageDependencyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PackageDependency.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageDependency
      def self.parse(map)
        data = Types::PackageDependency.new
        data.namespace = map['namespace']
        data.package = map['package']
        data.dependency_type = map['dependencyType']
        data.version_requirement = map['versionRequirement']
        return data
      end
    end

    # Operation Parser for ListPackageVersions
    class ListPackageVersions
      def self.parse(http_resp)
        data = Types::ListPackageVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.default_display_version = map['defaultDisplayVersion']
        data.format = map['format']
        data.namespace = map['namespace']
        data.package = map['package']
        data.versions = (Parsers::PackageVersionSummaryList.parse(map['versions']) unless map['versions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PackageVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PackageVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageVersionSummary
      def self.parse(map)
        data = Types::PackageVersionSummary.new
        data.version = map['version']
        data.revision = map['revision']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListPackages
    class ListPackages
      def self.parse(http_resp)
        data = Types::ListPackagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.packages = (Parsers::PackageSummaryList.parse(map['packages']) unless map['packages'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PackageSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PackageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageSummary
      def self.parse(map)
        data = Types::PackageSummary.new
        data.format = map['format']
        data.namespace = map['namespace']
        data.package = map['package']
        return data
      end
    end

    # Operation Parser for ListRepositories
    class ListRepositories
      def self.parse(http_resp)
        data = Types::ListRepositoriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repositories = (Parsers::RepositorySummaryList.parse(map['repositories']) unless map['repositories'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RepositorySummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RepositorySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RepositorySummary
      def self.parse(map)
        data = Types::RepositorySummary.new
        data.name = map['name']
        data.administrator_account = map['administratorAccount']
        data.domain_name = map['domainName']
        data.domain_owner = map['domainOwner']
        data.arn = map['arn']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListRepositoriesInDomain
    class ListRepositoriesInDomain
      def self.parse(http_resp)
        data = Types::ListRepositoriesInDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repositories = (Parsers::RepositorySummaryList.parse(map['repositories']) unless map['repositories'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for PutDomainPermissionsPolicy
    class PutDomainPermissionsPolicy
      def self.parse(http_resp)
        data = Types::PutDomainPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for PutRepositoryPermissionsPolicy
    class PutRepositoryPermissionsPolicy
      def self.parse(http_resp)
        data = Types::PutRepositoryPermissionsPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::ResourcePolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePackageVersionsStatus
    class UpdatePackageVersionsStatus
      def self.parse(http_resp)
        data = Types::UpdatePackageVersionsStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successful_versions = (Parsers::SuccessfulPackageVersionInfoMap.parse(map['successfulVersions']) unless map['successfulVersions'].nil?)
        data.failed_versions = (Parsers::PackageVersionErrorMap.parse(map['failedVersions']) unless map['failedVersions'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRepository
    class UpdateRepository
      def self.parse(http_resp)
        data = Types::UpdateRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository = (Parsers::RepositoryDescription.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end
  end
end
