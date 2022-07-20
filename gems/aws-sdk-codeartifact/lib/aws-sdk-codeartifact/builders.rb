# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Codeartifact
  module Builders

    # Operation Builder for AssociateExternalConnection
    class AssociateExternalConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/repository/external-connection')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['external-connection'] = input[:external_connection].to_s unless input[:external_connection].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CopyPackageVersions
    class CopyPackageVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/versions/copy')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['source-repository'] = input[:source_repository].to_s unless input[:source_repository].nil?
        params['destination-repository'] = input[:destination_repository].to_s unless input[:destination_repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versions'] = PackageVersionList.build(input[:versions]) unless input[:versions].nil?
        data['versionRevisions'] = PackageVersionRevisionMap.build(input[:version_revisions]) unless input[:version_revisions].nil?
        data['allowOverwrite'] = input[:allow_overwrite] unless input[:allow_overwrite].nil?
        data['includeFromUpstream'] = input[:include_from_upstream] unless input[:include_from_upstream].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for PackageVersionRevisionMap
    class PackageVersionRevisionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for PackageVersionList
    class PackageVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/domain')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateRepository
    class CreateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/repository')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['upstreams'] = UpstreamRepositoryList.build(input[:upstreams]) unless input[:upstreams].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpstreamRepositoryList
    class UpstreamRepositoryList
      def self.build(input)
        data = []
        input.each do |element|
          data << UpstreamRepository.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpstreamRepository
    class UpstreamRepository
      def self.build(input)
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/domain')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDomainPermissionsPolicy
    class DeleteDomainPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/domain/permissions/policy')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['policy-revision'] = input[:policy_revision].to_s unless input[:policy_revision].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePackageVersions
    class DeletePackageVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/versions/delete')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versions'] = PackageVersionList.build(input[:versions]) unless input[:versions].nil?
        data['expectedStatus'] = input[:expected_status] unless input[:expected_status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRepository
    class DeleteRepository
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/repository')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRepositoryPermissionsPolicy
    class DeleteRepositoryPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/repository/permissions/policies')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['policy-revision'] = input[:policy_revision].to_s unless input[:policy_revision].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/domain')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackageVersion
    class DescribePackageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/package/version')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['version'] = input[:package_version].to_s unless input[:package_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRepository
    class DescribeRepository
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/repository')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateExternalConnection
    class DisassociateExternalConnection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/repository/external-connection')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['external-connection'] = input[:external_connection].to_s unless input[:external_connection].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisposePackageVersions
    class DisposePackageVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/versions/dispose')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versions'] = PackageVersionList.build(input[:versions]) unless input[:versions].nil?
        data['versionRevisions'] = PackageVersionRevisionMap.build(input[:version_revisions]) unless input[:version_revisions].nil?
        data['expectedStatus'] = input[:expected_status] unless input[:expected_status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAuthorizationToken
    class GetAuthorizationToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/authorization-token')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['duration'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainPermissionsPolicy
    class GetDomainPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/domain/permissions/policy')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPackageVersionAsset
    class GetPackageVersionAsset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/package/version/asset')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['version'] = input[:package_version].to_s unless input[:package_version].nil?
        params['asset'] = input[:asset].to_s unless input[:asset].nil?
        params['revision'] = input[:package_version_revision].to_s unless input[:package_version_revision].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPackageVersionReadme
    class GetPackageVersionReadme
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/package/version/readme')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['version'] = input[:package_version].to_s unless input[:package_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRepositoryEndpoint
    class GetRepositoryEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/repository/endpoint')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRepositoryPermissionsPolicy
    class GetRepositoryPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/repository/permissions/policy')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/domains')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPackageVersionAssets
    class ListPackageVersionAssets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/version/assets')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['version'] = input[:package_version].to_s unless input[:package_version].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackageVersionDependencies
    class ListPackageVersionDependencies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/version/dependencies')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['version'] = input[:package_version].to_s unless input[:package_version].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackageVersions
    class ListPackageVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/versions')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['sortBy'] = input[:sort_by].to_s unless input[:sort_by].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackages
    class ListPackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/packages')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package-prefix'] = input[:package_prefix].to_s unless input[:package_prefix].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRepositories
    class ListRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/repositories')
        params = Hearth::Query::ParamList.new
        params['repository-prefix'] = input[:repository_prefix].to_s unless input[:repository_prefix].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRepositoriesInDomain
    class ListRepositoriesInDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/domain/repositories')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['administrator-account'] = input[:administrator_account].to_s unless input[:administrator_account].nil?
        params['repository-prefix'] = input[:repository_prefix].to_s unless input[:repository_prefix].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutDomainPermissionsPolicy
    class PutDomainPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/domain/permissions/policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['domainOwner'] = input[:domain_owner] unless input[:domain_owner].nil?
        data['policyRevision'] = input[:policy_revision] unless input[:policy_revision].nil?
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRepositoryPermissionsPolicy
    class PutRepositoryPermissionsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/repository/permissions/policy')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyRevision'] = input[:policy_revision] unless input[:policy_revision].nil?
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/tag')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/untag')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdatePackageVersionsStatus
    class UpdatePackageVersionsStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/package/versions/update_status')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['package'] = input[:package].to_s unless input[:package].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versions'] = PackageVersionList.build(input[:versions]) unless input[:versions].nil?
        data['versionRevisions'] = PackageVersionRevisionMap.build(input[:version_revisions]) unless input[:version_revisions].nil?
        data['expectedStatus'] = input[:expected_status] unless input[:expected_status].nil?
        data['targetStatus'] = input[:target_status] unless input[:target_status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRepository
    class UpdateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/repository')
        params = Hearth::Query::ParamList.new
        params['domain'] = input[:domain].to_s unless input[:domain].nil?
        params['domain-owner'] = input[:domain_owner].to_s unless input[:domain_owner].nil?
        params['repository'] = input[:repository].to_s unless input[:repository].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['upstreams'] = UpstreamRepositoryList.build(input[:upstreams]) unless input[:upstreams].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
