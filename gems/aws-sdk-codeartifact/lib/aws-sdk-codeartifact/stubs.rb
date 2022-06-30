# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Codeartifact
  module Stubs

    # Operation Stubber for AssociateExternalConnection
    class AssociateExternalConnection
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RepositoryDescription
    class RepositoryDescription
      def self.default(visited=[])
        return nil if visited.include?('RepositoryDescription')
        visited = visited + ['RepositoryDescription']
        {
          name: 'name',
          administrator_account: 'administrator_account',
          domain_name: 'domain_name',
          domain_owner: 'domain_owner',
          arn: 'arn',
          description: 'description',
          upstreams: Stubs::UpstreamRepositoryInfoList.default(visited),
          external_connections: Stubs::RepositoryExternalConnectionInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryDescription.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['administratorAccount'] = stub[:administrator_account] unless stub[:administrator_account].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainOwner'] = stub[:domain_owner] unless stub[:domain_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['upstreams'] = Stubs::UpstreamRepositoryInfoList.stub(stub[:upstreams]) unless stub[:upstreams].nil?
        data['externalConnections'] = Stubs::RepositoryExternalConnectionInfoList.stub(stub[:external_connections]) unless stub[:external_connections].nil?
        data
      end
    end

    # List Stubber for RepositoryExternalConnectionInfoList
    class RepositoryExternalConnectionInfoList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryExternalConnectionInfoList')
        visited = visited + ['RepositoryExternalConnectionInfoList']
        [
          Stubs::RepositoryExternalConnectionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositoryExternalConnectionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryExternalConnectionInfo
    class RepositoryExternalConnectionInfo
      def self.default(visited=[])
        return nil if visited.include?('RepositoryExternalConnectionInfo')
        visited = visited + ['RepositoryExternalConnectionInfo']
        {
          external_connection_name: 'external_connection_name',
          package_format: 'package_format',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryExternalConnectionInfo.new
        data = {}
        data['externalConnectionName'] = stub[:external_connection_name] unless stub[:external_connection_name].nil?
        data['packageFormat'] = stub[:package_format] unless stub[:package_format].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for UpstreamRepositoryInfoList
    class UpstreamRepositoryInfoList
      def self.default(visited=[])
        return nil if visited.include?('UpstreamRepositoryInfoList')
        visited = visited + ['UpstreamRepositoryInfoList']
        [
          Stubs::UpstreamRepositoryInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UpstreamRepositoryInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpstreamRepositoryInfo
    class UpstreamRepositoryInfo
      def self.default(visited=[])
        return nil if visited.include?('UpstreamRepositoryInfo')
        visited = visited + ['UpstreamRepositoryInfo']
        {
          repository_name: 'repository_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpstreamRepositoryInfo.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data
      end
    end

    # Operation Stubber for CopyPackageVersions
    class CopyPackageVersions
      def self.default(visited=[])
        {
          successful_versions: Stubs::SuccessfulPackageVersionInfoMap.default(visited),
          failed_versions: Stubs::PackageVersionErrorMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['successfulVersions'] = Stubs::SuccessfulPackageVersionInfoMap.stub(stub[:successful_versions]) unless stub[:successful_versions].nil?
        data['failedVersions'] = Stubs::PackageVersionErrorMap.stub(stub[:failed_versions]) unless stub[:failed_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for PackageVersionErrorMap
    class PackageVersionErrorMap
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionErrorMap')
        visited = visited + ['PackageVersionErrorMap']
        {
          test_key: Stubs::PackageVersionError.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PackageVersionError.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageVersionError
    class PackageVersionError
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionError')
        visited = visited + ['PackageVersionError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionError.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Map Stubber for SuccessfulPackageVersionInfoMap
    class SuccessfulPackageVersionInfoMap
      def self.default(visited=[])
        return nil if visited.include?('SuccessfulPackageVersionInfoMap')
        visited = visited + ['SuccessfulPackageVersionInfoMap']
        {
          test_key: Stubs::SuccessfulPackageVersionInfo.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::SuccessfulPackageVersionInfo.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for SuccessfulPackageVersionInfo
    class SuccessfulPackageVersionInfo
      def self.default(visited=[])
        return nil if visited.include?('SuccessfulPackageVersionInfo')
        visited = visited + ['SuccessfulPackageVersionInfo']
        {
          revision: 'revision',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuccessfulPackageVersionInfo.new
        data = {}
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain: Stubs::DomainDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domain'] = Stubs::DomainDescription.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainDescription
    class DomainDescription
      def self.default(visited=[])
        return nil if visited.include?('DomainDescription')
        visited = visited + ['DomainDescription']
        {
          name: 'name',
          owner: 'owner',
          arn: 'arn',
          status: 'status',
          created_time: Time.now,
          encryption_key: 'encryption_key',
          repository_count: 1,
          asset_size_bytes: 1,
          s3_bucket_arn: 's3_bucket_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDescription.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['repositoryCount'] = stub[:repository_count] unless stub[:repository_count].nil?
        data['assetSizeBytes'] = stub[:asset_size_bytes] unless stub[:asset_size_bytes].nil?
        data['s3BucketArn'] = stub[:s3_bucket_arn] unless stub[:s3_bucket_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateRepository
    class CreateRepository
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          domain: Stubs::DomainDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domain'] = Stubs::DomainDescription.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDomainPermissionsPolicy
    class DeleteDomainPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourcePolicy
    class ResourcePolicy
      def self.default(visited=[])
        return nil if visited.include?('ResourcePolicy')
        visited = visited + ['ResourcePolicy']
        {
          resource_arn: 'resource_arn',
          revision: 'revision',
          document: 'document',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePolicy.new
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['document'] = stub[:document] unless stub[:document].nil?
        data
      end
    end

    # Operation Stubber for DeletePackageVersions
    class DeletePackageVersions
      def self.default(visited=[])
        {
          successful_versions: Stubs::SuccessfulPackageVersionInfoMap.default(visited),
          failed_versions: Stubs::PackageVersionErrorMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['successfulVersions'] = Stubs::SuccessfulPackageVersionInfoMap.stub(stub[:successful_versions]) unless stub[:successful_versions].nil?
        data['failedVersions'] = Stubs::PackageVersionErrorMap.stub(stub[:failed_versions]) unless stub[:failed_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRepository
    class DeleteRepository
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRepositoryPermissionsPolicy
    class DeleteRepositoryPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain: Stubs::DomainDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domain'] = Stubs::DomainDescription.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribePackageVersion
    class DescribePackageVersion
      def self.default(visited=[])
        {
          package_version: Stubs::PackageVersionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['packageVersion'] = Stubs::PackageVersionDescription.stub(stub[:package_version]) unless stub[:package_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PackageVersionDescription
    class PackageVersionDescription
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionDescription')
        visited = visited + ['PackageVersionDescription']
        {
          format: 'format',
          namespace: 'namespace',
          package_name: 'package_name',
          display_name: 'display_name',
          version: 'version',
          summary: 'summary',
          home_page: 'home_page',
          source_code_repository: 'source_code_repository',
          published_time: Time.now,
          licenses: Stubs::LicenseInfoList.default(visited),
          revision: 'revision',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionDescription.new
        data = {}
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['packageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['summary'] = stub[:summary] unless stub[:summary].nil?
        data['homePage'] = stub[:home_page] unless stub[:home_page].nil?
        data['sourceCodeRepository'] = stub[:source_code_repository] unless stub[:source_code_repository].nil?
        data['publishedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:published_time]).to_i unless stub[:published_time].nil?
        data['licenses'] = Stubs::LicenseInfoList.stub(stub[:licenses]) unless stub[:licenses].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for LicenseInfoList
    class LicenseInfoList
      def self.default(visited=[])
        return nil if visited.include?('LicenseInfoList')
        visited = visited + ['LicenseInfoList']
        [
          Stubs::LicenseInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LicenseInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LicenseInfo
    class LicenseInfo
      def self.default(visited=[])
        return nil if visited.include?('LicenseInfo')
        visited = visited + ['LicenseInfo']
        {
          name: 'name',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for DescribeRepository
    class DescribeRepository
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateExternalConnection
    class DisassociateExternalConnection
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisposePackageVersions
    class DisposePackageVersions
      def self.default(visited=[])
        {
          successful_versions: Stubs::SuccessfulPackageVersionInfoMap.default(visited),
          failed_versions: Stubs::PackageVersionErrorMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['successfulVersions'] = Stubs::SuccessfulPackageVersionInfoMap.stub(stub[:successful_versions]) unless stub[:successful_versions].nil?
        data['failedVersions'] = Stubs::PackageVersionErrorMap.stub(stub[:failed_versions]) unless stub[:failed_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAuthorizationToken
    class GetAuthorizationToken
      def self.default(visited=[])
        {
          authorization_token: 'authorization_token',
          expiration: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizationToken'] = stub[:authorization_token] unless stub[:authorization_token].nil?
        data['expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomainPermissionsPolicy
    class GetDomainPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPackageVersionAsset
    class GetPackageVersionAsset
      def self.default(visited=[])
        {
          asset: 'asset',
          asset_name: 'asset_name',
          package_version: 'package_version',
          package_version_revision: 'package_version_revision',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['X-AssetName'] = stub[:asset_name] unless stub[:asset_name].nil? || stub[:asset_name].empty?
        http_resp.headers['X-PackageVersion'] = stub[:package_version] unless stub[:package_version].nil? || stub[:package_version].empty?
        http_resp.headers['X-PackageVersionRevision'] = stub[:package_version_revision] unless stub[:package_version_revision].nil? || stub[:package_version_revision].empty?
        IO.copy_stream(stub[:asset], http_resp.body)
      end
    end

    # Operation Stubber for GetPackageVersionReadme
    class GetPackageVersionReadme
      def self.default(visited=[])
        {
          format: 'format',
          namespace: 'namespace',
          package: 'package',
          version: 'version',
          version_revision: 'version_revision',
          readme: 'readme',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['versionRevision'] = stub[:version_revision] unless stub[:version_revision].nil?
        data['readme'] = stub[:readme] unless stub[:readme].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRepositoryEndpoint
    class GetRepositoryEndpoint
      def self.default(visited=[])
        {
          repository_endpoint: 'repository_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repositoryEndpoint'] = stub[:repository_endpoint] unless stub[:repository_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRepositoryPermissionsPolicy
    class GetRepositoryPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domains: Stubs::DomainSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domains'] = Stubs::DomainSummaryList.stub(stub[:domains]) unless stub[:domains].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainSummaryList
    class DomainSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DomainSummaryList')
        visited = visited + ['DomainSummaryList']
        [
          Stubs::DomainSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainSummary
    class DomainSummary
      def self.default(visited=[])
        return nil if visited.include?('DomainSummary')
        visited = visited + ['DomainSummary']
        {
          name: 'name',
          owner: 'owner',
          arn: 'arn',
          status: 'status',
          created_time: Time.now,
          encryption_key: 'encryption_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data
      end
    end

    # Operation Stubber for ListPackageVersionAssets
    class ListPackageVersionAssets
      def self.default(visited=[])
        {
          format: 'format',
          namespace: 'namespace',
          package: 'package',
          version: 'version',
          version_revision: 'version_revision',
          next_token: 'next_token',
          assets: Stubs::AssetSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['versionRevision'] = stub[:version_revision] unless stub[:version_revision].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['assets'] = Stubs::AssetSummaryList.stub(stub[:assets]) unless stub[:assets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetSummaryList
    class AssetSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AssetSummaryList')
        visited = visited + ['AssetSummaryList']
        [
          Stubs::AssetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetSummary
    class AssetSummary
      def self.default(visited=[])
        return nil if visited.include?('AssetSummary')
        visited = visited + ['AssetSummary']
        {
          name: 'name',
          size: 1,
          hashes: Stubs::AssetHashes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['size'] = stub[:size] unless stub[:size].nil?
        data['hashes'] = Stubs::AssetHashes.stub(stub[:hashes]) unless stub[:hashes].nil?
        data
      end
    end

    # Map Stubber for AssetHashes
    class AssetHashes
      def self.default(visited=[])
        return nil if visited.include?('AssetHashes')
        visited = visited + ['AssetHashes']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPackageVersionDependencies
    class ListPackageVersionDependencies
      def self.default(visited=[])
        {
          format: 'format',
          namespace: 'namespace',
          package: 'package',
          version: 'version',
          version_revision: 'version_revision',
          next_token: 'next_token',
          dependencies: Stubs::PackageDependencyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['versionRevision'] = stub[:version_revision] unless stub[:version_revision].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['dependencies'] = Stubs::PackageDependencyList.stub(stub[:dependencies]) unless stub[:dependencies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageDependencyList
    class PackageDependencyList
      def self.default(visited=[])
        return nil if visited.include?('PackageDependencyList')
        visited = visited + ['PackageDependencyList']
        [
          Stubs::PackageDependency.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageDependency.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageDependency
    class PackageDependency
      def self.default(visited=[])
        return nil if visited.include?('PackageDependency')
        visited = visited + ['PackageDependency']
        {
          namespace: 'namespace',
          package: 'package',
          dependency_type: 'dependency_type',
          version_requirement: 'version_requirement',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageDependency.new
        data = {}
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data['dependencyType'] = stub[:dependency_type] unless stub[:dependency_type].nil?
        data['versionRequirement'] = stub[:version_requirement] unless stub[:version_requirement].nil?
        data
      end
    end

    # Operation Stubber for ListPackageVersions
    class ListPackageVersions
      def self.default(visited=[])
        {
          default_display_version: 'default_display_version',
          format: 'format',
          namespace: 'namespace',
          package: 'package',
          versions: Stubs::PackageVersionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['defaultDisplayVersion'] = stub[:default_display_version] unless stub[:default_display_version].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data['versions'] = Stubs::PackageVersionSummaryList.stub(stub[:versions]) unless stub[:versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageVersionSummaryList
    class PackageVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionSummaryList')
        visited = visited + ['PackageVersionSummaryList']
        [
          Stubs::PackageVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageVersionSummary
    class PackageVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionSummary')
        visited = visited + ['PackageVersionSummary']
        {
          version: 'version',
          revision: 'revision',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionSummary.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListPackages
    class ListPackages
      def self.default(visited=[])
        {
          packages: Stubs::PackageSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['packages'] = Stubs::PackageSummaryList.stub(stub[:packages]) unless stub[:packages].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageSummaryList
    class PackageSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PackageSummaryList')
        visited = visited + ['PackageSummaryList']
        [
          Stubs::PackageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageSummary
    class PackageSummary
      def self.default(visited=[])
        return nil if visited.include?('PackageSummary')
        visited = visited + ['PackageSummary']
        {
          format: 'format',
          namespace: 'namespace',
          package: 'package',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageSummary.new
        data = {}
        data['format'] = stub[:format] unless stub[:format].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['package'] = stub[:package] unless stub[:package].nil?
        data
      end
    end

    # Operation Stubber for ListRepositories
    class ListRepositories
      def self.default(visited=[])
        {
          repositories: Stubs::RepositorySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repositories'] = Stubs::RepositorySummaryList.stub(stub[:repositories]) unless stub[:repositories].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RepositorySummaryList
    class RepositorySummaryList
      def self.default(visited=[])
        return nil if visited.include?('RepositorySummaryList')
        visited = visited + ['RepositorySummaryList']
        [
          Stubs::RepositorySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositorySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositorySummary
    class RepositorySummary
      def self.default(visited=[])
        return nil if visited.include?('RepositorySummary')
        visited = visited + ['RepositorySummary']
        {
          name: 'name',
          administrator_account: 'administrator_account',
          domain_name: 'domain_name',
          domain_owner: 'domain_owner',
          arn: 'arn',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositorySummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['administratorAccount'] = stub[:administrator_account] unless stub[:administrator_account].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainOwner'] = stub[:domain_owner] unless stub[:domain_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListRepositoriesInDomain
    class ListRepositoriesInDomain
      def self.default(visited=[])
        {
          repositories: Stubs::RepositorySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repositories'] = Stubs::RepositorySummaryList.stub(stub[:repositories]) unless stub[:repositories].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutDomainPermissionsPolicy
    class PutDomainPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRepositoryPermissionsPolicy
    class PutRepositoryPermissionsPolicy
      def self.default(visited=[])
        {
          policy: Stubs::ResourcePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResourcePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePackageVersionsStatus
    class UpdatePackageVersionsStatus
      def self.default(visited=[])
        {
          successful_versions: Stubs::SuccessfulPackageVersionInfoMap.default(visited),
          failed_versions: Stubs::PackageVersionErrorMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['successfulVersions'] = Stubs::SuccessfulPackageVersionInfoMap.stub(stub[:successful_versions]) unless stub[:successful_versions].nil?
        data['failedVersions'] = Stubs::PackageVersionErrorMap.stub(stub[:failed_versions]) unless stub[:failed_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRepository
    class UpdateRepository
      def self.default(visited=[])
        {
          repository: Stubs::RepositoryDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['repository'] = Stubs::RepositoryDescription.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
