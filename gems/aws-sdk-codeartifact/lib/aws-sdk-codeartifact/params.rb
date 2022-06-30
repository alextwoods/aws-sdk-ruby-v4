# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Codeartifact
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AssetHashes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AssetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetSummary, context: context)
        type = Types::AssetSummary.new
        type.name = params[:name]
        type.size = params[:size]
        type.hashes = AssetHashes.build(params[:hashes], context: "#{context}[:hashes]") unless params[:hashes].nil?
        type
      end
    end

    module AssetSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateExternalConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateExternalConnectionInput, context: context)
        type = Types::AssociateExternalConnectionInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.external_connection = params[:external_connection]
        type
      end
    end

    module AssociateExternalConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateExternalConnectionOutput, context: context)
        type = Types::AssociateExternalConnectionOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CopyPackageVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyPackageVersionsInput, context: context)
        type = Types::CopyPackageVersionsInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.source_repository = params[:source_repository]
        type.destination_repository = params[:destination_repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.versions = PackageVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.version_revisions = PackageVersionRevisionMap.build(params[:version_revisions], context: "#{context}[:version_revisions]") unless params[:version_revisions].nil?
        type.allow_overwrite = params[:allow_overwrite]
        type.include_from_upstream = params[:include_from_upstream]
        type
      end
    end

    module CopyPackageVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyPackageVersionsOutput, context: context)
        type = Types::CopyPackageVersionsOutput.new
        type.successful_versions = SuccessfulPackageVersionInfoMap.build(params[:successful_versions], context: "#{context}[:successful_versions]") unless params[:successful_versions].nil?
        type.failed_versions = PackageVersionErrorMap.build(params[:failed_versions], context: "#{context}[:failed_versions]") unless params[:failed_versions].nil?
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.domain = params[:domain]
        type.encryption_key = params[:encryption_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.domain = DomainDescription.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module CreateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryInput, context: context)
        type = Types::CreateRepositoryInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.description = params[:description]
        type.upstreams = UpstreamRepositoryList.build(params[:upstreams], context: "#{context}[:upstreams]") unless params[:upstreams].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryOutput, context: context)
        type = Types::CreateRepositoryOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type.domain = DomainDescription.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module DeleteDomainPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainPermissionsPolicyInput, context: context)
        type = Types::DeleteDomainPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.policy_revision = params[:policy_revision]
        type
      end
    end

    module DeleteDomainPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainPermissionsPolicyOutput, context: context)
        type = Types::DeleteDomainPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DeletePackageVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageVersionsInput, context: context)
        type = Types::DeletePackageVersionsInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.versions = PackageVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.expected_status = params[:expected_status]
        type
      end
    end

    module DeletePackageVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageVersionsOutput, context: context)
        type = Types::DeletePackageVersionsOutput.new
        type.successful_versions = SuccessfulPackageVersionInfoMap.build(params[:successful_versions], context: "#{context}[:successful_versions]") unless params[:successful_versions].nil?
        type.failed_versions = PackageVersionErrorMap.build(params[:failed_versions], context: "#{context}[:failed_versions]") unless params[:failed_versions].nil?
        type
      end
    end

    module DeleteRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryInput, context: context)
        type = Types::DeleteRepositoryInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type
      end
    end

    module DeleteRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryOutput, context: context)
        type = Types::DeleteRepositoryOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DeleteRepositoryPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryPermissionsPolicyInput, context: context)
        type = Types::DeleteRepositoryPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.policy_revision = params[:policy_revision]
        type
      end
    end

    module DeleteRepositoryPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryPermissionsPolicyOutput, context: context)
        type = Types::DeleteRepositoryPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DescribeDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainInput, context: context)
        type = Types::DescribeDomainInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type
      end
    end

    module DescribeDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainOutput, context: context)
        type = Types::DescribeDomainOutput.new
        type.domain = DomainDescription.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module DescribePackageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageVersionInput, context: context)
        type = Types::DescribePackageVersionInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.package_version = params[:package_version]
        type
      end
    end

    module DescribePackageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageVersionOutput, context: context)
        type = Types::DescribePackageVersionOutput.new
        type.package_version = PackageVersionDescription.build(params[:package_version], context: "#{context}[:package_version]") unless params[:package_version].nil?
        type
      end
    end

    module DescribeRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoryInput, context: context)
        type = Types::DescribeRepositoryInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type
      end
    end

    module DescribeRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoryOutput, context: context)
        type = Types::DescribeRepositoryOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DisassociateExternalConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateExternalConnectionInput, context: context)
        type = Types::DisassociateExternalConnectionInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.external_connection = params[:external_connection]
        type
      end
    end

    module DisassociateExternalConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateExternalConnectionOutput, context: context)
        type = Types::DisassociateExternalConnectionOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DisposePackageVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisposePackageVersionsInput, context: context)
        type = Types::DisposePackageVersionsInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.versions = PackageVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.version_revisions = PackageVersionRevisionMap.build(params[:version_revisions], context: "#{context}[:version_revisions]") unless params[:version_revisions].nil?
        type.expected_status = params[:expected_status]
        type
      end
    end

    module DisposePackageVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisposePackageVersionsOutput, context: context)
        type = Types::DisposePackageVersionsOutput.new
        type.successful_versions = SuccessfulPackageVersionInfoMap.build(params[:successful_versions], context: "#{context}[:successful_versions]") unless params[:successful_versions].nil?
        type.failed_versions = PackageVersionErrorMap.build(params[:failed_versions], context: "#{context}[:failed_versions]") unless params[:failed_versions].nil?
        type
      end
    end

    module DomainDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDescription, context: context)
        type = Types::DomainDescription.new
        type.name = params[:name]
        type.owner = params[:owner]
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.encryption_key = params[:encryption_key]
        type.repository_count = params[:repository_count]
        type.asset_size_bytes = params[:asset_size_bytes]
        type.s3_bucket_arn = params[:s3_bucket_arn]
        type
      end
    end

    module DomainSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSummary, context: context)
        type = Types::DomainSummary.new
        type.name = params[:name]
        type.owner = params[:owner]
        type.arn = params[:arn]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.encryption_key = params[:encryption_key]
        type
      end
    end

    module DomainSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAuthorizationTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenInput, context: context)
        type = Types::GetAuthorizationTokenInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module GetAuthorizationTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenOutput, context: context)
        type = Types::GetAuthorizationTokenOutput.new
        type.authorization_token = params[:authorization_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module GetDomainPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainPermissionsPolicyInput, context: context)
        type = Types::GetDomainPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type
      end
    end

    module GetDomainPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainPermissionsPolicyOutput, context: context)
        type = Types::GetDomainPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetPackageVersionAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionAssetInput, context: context)
        type = Types::GetPackageVersionAssetInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.package_version = params[:package_version]
        type.asset = params[:asset]
        type.package_version_revision = params[:package_version_revision]
        type
      end
    end

    module GetPackageVersionAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionAssetOutput, context: context)
        type = Types::GetPackageVersionAssetOutput.new
        io = params[:asset] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.asset = io
        type.asset_name = params[:asset_name]
        type.package_version = params[:package_version]
        type.package_version_revision = params[:package_version_revision]
        type
      end
    end

    module GetPackageVersionReadmeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionReadmeInput, context: context)
        type = Types::GetPackageVersionReadmeInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.package_version = params[:package_version]
        type
      end
    end

    module GetPackageVersionReadmeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionReadmeOutput, context: context)
        type = Types::GetPackageVersionReadmeOutput.new
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.version = params[:version]
        type.version_revision = params[:version_revision]
        type.readme = params[:readme]
        type
      end
    end

    module GetRepositoryEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryEndpointInput, context: context)
        type = Types::GetRepositoryEndpointInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type
      end
    end

    module GetRepositoryEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryEndpointOutput, context: context)
        type = Types::GetRepositoryEndpointOutput.new
        type.repository_endpoint = params[:repository_endpoint]
        type
      end
    end

    module GetRepositoryPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryPermissionsPolicyInput, context: context)
        type = Types::GetRepositoryPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type
      end
    end

    module GetRepositoryPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryPermissionsPolicyOutput, context: context)
        type = Types::GetRepositoryPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module LicenseInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseInfo, context: context)
        type = Types::LicenseInfo.new
        type.name = params[:name]
        type.url = params[:url]
        type
      end
    end

    module LicenseInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domains = DomainSummaryList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackageVersionAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionAssetsInput, context: context)
        type = Types::ListPackageVersionAssetsInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.package_version = params[:package_version]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackageVersionAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionAssetsOutput, context: context)
        type = Types::ListPackageVersionAssetsOutput.new
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.version = params[:version]
        type.version_revision = params[:version_revision]
        type.next_token = params[:next_token]
        type.assets = AssetSummaryList.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type
      end
    end

    module ListPackageVersionDependenciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionDependenciesInput, context: context)
        type = Types::ListPackageVersionDependenciesInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.package_version = params[:package_version]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackageVersionDependenciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionDependenciesOutput, context: context)
        type = Types::ListPackageVersionDependenciesOutput.new
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.version = params[:version]
        type.version_revision = params[:version_revision]
        type.next_token = params[:next_token]
        type.dependencies = PackageDependencyList.build(params[:dependencies], context: "#{context}[:dependencies]") unless params[:dependencies].nil?
        type
      end
    end

    module ListPackageVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionsInput, context: context)
        type = Types::ListPackageVersionsInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.status = params[:status]
        type.sort_by = params[:sort_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackageVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageVersionsOutput, context: context)
        type = Types::ListPackageVersionsOutput.new
        type.default_display_version = params[:default_display_version]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.versions = PackageVersionSummaryList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesInput, context: context)
        type = Types::ListPackagesInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package_prefix = params[:package_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesOutput, context: context)
        type = Types::ListPackagesOutput.new
        type.packages = PackageSummaryList.build(params[:packages], context: "#{context}[:packages]") unless params[:packages].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesInDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesInDomainInput, context: context)
        type = Types::ListRepositoriesInDomainInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.administrator_account = params[:administrator_account]
        type.repository_prefix = params[:repository_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesInDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesInDomainOutput, context: context)
        type = Types::ListRepositoriesInDomainOutput.new
        type.repositories = RepositorySummaryList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesInput, context: context)
        type = Types::ListRepositoriesInput.new
        type.repository_prefix = params[:repository_prefix]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesOutput, context: context)
        type = Types::ListRepositoriesOutput.new
        type.repositories = RepositorySummaryList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.next_token = params[:next_token]
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

    module PackageDependency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageDependency, context: context)
        type = Types::PackageDependency.new
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.dependency_type = params[:dependency_type]
        type.version_requirement = params[:version_requirement]
        type
      end
    end

    module PackageDependencyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageDependency.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageSummary, context: context)
        type = Types::PackageSummary.new
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type
      end
    end

    module PackageSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageVersionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionDescription, context: context)
        type = Types::PackageVersionDescription.new
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package_name = params[:package_name]
        type.display_name = params[:display_name]
        type.version = params[:version]
        type.summary = params[:summary]
        type.home_page = params[:home_page]
        type.source_code_repository = params[:source_code_repository]
        type.published_time = params[:published_time]
        type.licenses = LicenseInfoList.build(params[:licenses], context: "#{context}[:licenses]") unless params[:licenses].nil?
        type.revision = params[:revision]
        type.status = params[:status]
        type
      end
    end

    module PackageVersionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionError, context: context)
        type = Types::PackageVersionError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PackageVersionErrorMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PackageVersionError.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PackageVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PackageVersionRevisionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PackageVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionSummary, context: context)
        type = Types::PackageVersionSummary.new
        type.version = params[:version]
        type.revision = params[:revision]
        type.status = params[:status]
        type
      end
    end

    module PackageVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutDomainPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDomainPermissionsPolicyInput, context: context)
        type = Types::PutDomainPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.policy_revision = params[:policy_revision]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutDomainPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDomainPermissionsPolicyOutput, context: context)
        type = Types::PutDomainPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module PutRepositoryPermissionsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryPermissionsPolicyInput, context: context)
        type = Types::PutRepositoryPermissionsPolicyInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.policy_revision = params[:policy_revision]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutRepositoryPermissionsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryPermissionsPolicyOutput, context: context)
        type = Types::PutRepositoryPermissionsPolicyOutput.new
        type.policy = ResourcePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module RepositoryDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryDescription, context: context)
        type = Types::RepositoryDescription.new
        type.name = params[:name]
        type.administrator_account = params[:administrator_account]
        type.domain_name = params[:domain_name]
        type.domain_owner = params[:domain_owner]
        type.arn = params[:arn]
        type.description = params[:description]
        type.upstreams = UpstreamRepositoryInfoList.build(params[:upstreams], context: "#{context}[:upstreams]") unless params[:upstreams].nil?
        type.external_connections = RepositoryExternalConnectionInfoList.build(params[:external_connections], context: "#{context}[:external_connections]") unless params[:external_connections].nil?
        type
      end
    end

    module RepositoryExternalConnectionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryExternalConnectionInfo, context: context)
        type = Types::RepositoryExternalConnectionInfo.new
        type.external_connection_name = params[:external_connection_name]
        type.package_format = params[:package_format]
        type.status = params[:status]
        type
      end
    end

    module RepositoryExternalConnectionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryExternalConnectionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositorySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositorySummary, context: context)
        type = Types::RepositorySummary.new
        type.name = params[:name]
        type.administrator_account = params[:administrator_account]
        type.domain_name = params[:domain_name]
        type.domain_owner = params[:domain_owner]
        type.arn = params[:arn]
        type.description = params[:description]
        type
      end
    end

    module RepositorySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositorySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourcePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePolicy, context: context)
        type = Types::ResourcePolicy.new
        type.resource_arn = params[:resource_arn]
        type.revision = params[:revision]
        type.document = params[:document]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SuccessfulPackageVersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuccessfulPackageVersionInfo, context: context)
        type = Types::SuccessfulPackageVersionInfo.new
        type.revision = params[:revision]
        type.status = params[:status]
        type
      end
    end

    module SuccessfulPackageVersionInfoMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SuccessfulPackageVersionInfo.build(value, context: "#{context}[:#{key}]") unless value.nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
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

    module UpdatePackageVersionsStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackageVersionsStatusInput, context: context)
        type = Types::UpdatePackageVersionsStatusInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.format = params[:format]
        type.namespace = params[:namespace]
        type.package = params[:package]
        type.versions = PackageVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.version_revisions = PackageVersionRevisionMap.build(params[:version_revisions], context: "#{context}[:version_revisions]") unless params[:version_revisions].nil?
        type.expected_status = params[:expected_status]
        type.target_status = params[:target_status]
        type
      end
    end

    module UpdatePackageVersionsStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackageVersionsStatusOutput, context: context)
        type = Types::UpdatePackageVersionsStatusOutput.new
        type.successful_versions = SuccessfulPackageVersionInfoMap.build(params[:successful_versions], context: "#{context}[:successful_versions]") unless params[:successful_versions].nil?
        type.failed_versions = PackageVersionErrorMap.build(params[:failed_versions], context: "#{context}[:failed_versions]") unless params[:failed_versions].nil?
        type
      end
    end

    module UpdateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryInput, context: context)
        type = Types::UpdateRepositoryInput.new
        type.domain = params[:domain]
        type.domain_owner = params[:domain_owner]
        type.repository = params[:repository]
        type.description = params[:description]
        type.upstreams = UpstreamRepositoryList.build(params[:upstreams], context: "#{context}[:upstreams]") unless params[:upstreams].nil?
        type
      end
    end

    module UpdateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryOutput, context: context)
        type = Types::UpdateRepositoryOutput.new
        type.repository = RepositoryDescription.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module UpstreamRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpstreamRepository, context: context)
        type = Types::UpstreamRepository.new
        type.repository_name = params[:repository_name]
        type
      end
    end

    module UpstreamRepositoryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpstreamRepositoryInfo, context: context)
        type = Types::UpstreamRepositoryInfo.new
        type.repository_name = params[:repository_name]
        type
      end
    end

    module UpstreamRepositoryInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpstreamRepositoryInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpstreamRepositoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpstreamRepository.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

  end
end
