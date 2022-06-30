# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Codeartifact
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssetHashes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AssetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Validators::AssetHashes.validate!(input[:hashes], context: "#{context}[:hashes]") unless input[:hashes].nil?
      end
    end

    class AssetSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AssetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateExternalConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateExternalConnectionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:external_connection], ::String, context: "#{context}[:external_connection]")
      end
    end

    class AssociateExternalConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateExternalConnectionOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CopyPackageVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyPackageVersionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:source_repository], ::String, context: "#{context}[:source_repository]")
        Hearth::Validator.validate!(input[:destination_repository], ::String, context: "#{context}[:destination_repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Validators::PackageVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Validators::PackageVersionRevisionMap.validate!(input[:version_revisions], context: "#{context}[:version_revisions]") unless input[:version_revisions].nil?
        Hearth::Validator.validate!(input[:allow_overwrite], ::TrueClass, ::FalseClass, context: "#{context}[:allow_overwrite]")
        Hearth::Validator.validate!(input[:include_from_upstream], ::TrueClass, ::FalseClass, context: "#{context}[:include_from_upstream]")
      end
    end

    class CopyPackageVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyPackageVersionsOutput, context: context)
        Validators::SuccessfulPackageVersionInfoMap.validate!(input[:successful_versions], context: "#{context}[:successful_versions]") unless input[:successful_versions].nil?
        Validators::PackageVersionErrorMap.validate!(input[:failed_versions], context: "#{context}[:failed_versions]") unless input[:failed_versions].nil?
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        Validators::DomainDescription.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class CreateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::UpstreamRepositoryList.validate!(input[:upstreams], context: "#{context}[:upstreams]") unless input[:upstreams].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
        Validators::DomainDescription.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class DeleteDomainPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:policy_revision], ::String, context: "#{context}[:policy_revision]")
      end
    end

    class DeleteDomainPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DeletePackageVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageVersionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Validators::PackageVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:expected_status], ::String, context: "#{context}[:expected_status]")
      end
    end

    class DeletePackageVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageVersionsOutput, context: context)
        Validators::SuccessfulPackageVersionInfoMap.validate!(input[:successful_versions], context: "#{context}[:successful_versions]") unless input[:successful_versions].nil?
        Validators::PackageVersionErrorMap.validate!(input[:failed_versions], context: "#{context}[:failed_versions]") unless input[:failed_versions].nil?
      end
    end

    class DeleteRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
      end
    end

    class DeleteRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DeleteRepositoryPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:policy_revision], ::String, context: "#{context}[:policy_revision]")
      end
    end

    class DeleteRepositoryPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DescribeDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
      end
    end

    class DescribeDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainOutput, context: context)
        Validators::DomainDescription.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class DescribePackageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageVersionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
      end
    end

    class DescribePackageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageVersionOutput, context: context)
        Validators::PackageVersionDescription.validate!(input[:package_version], context: "#{context}[:package_version]") unless input[:package_version].nil?
      end
    end

    class DescribeRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
      end
    end

    class DescribeRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoryOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DisassociateExternalConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateExternalConnectionInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:external_connection], ::String, context: "#{context}[:external_connection]")
      end
    end

    class DisassociateExternalConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateExternalConnectionOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DisposePackageVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisposePackageVersionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Validators::PackageVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Validators::PackageVersionRevisionMap.validate!(input[:version_revisions], context: "#{context}[:version_revisions]") unless input[:version_revisions].nil?
        Hearth::Validator.validate!(input[:expected_status], ::String, context: "#{context}[:expected_status]")
      end
    end

    class DisposePackageVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisposePackageVersionsOutput, context: context)
        Validators::SuccessfulPackageVersionInfoMap.validate!(input[:successful_versions], context: "#{context}[:successful_versions]") unless input[:successful_versions].nil?
        Validators::PackageVersionErrorMap.validate!(input[:failed_versions], context: "#{context}[:failed_versions]") unless input[:failed_versions].nil?
      end
    end

    class DomainDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:repository_count], ::Integer, context: "#{context}[:repository_count]")
        Hearth::Validator.validate!(input[:asset_size_bytes], ::Integer, context: "#{context}[:asset_size_bytes]")
        Hearth::Validator.validate!(input[:s3_bucket_arn], ::String, context: "#{context}[:s3_bucket_arn]")
      end
    end

    class DomainSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
      end
    end

    class DomainSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAuthorizationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class GetAuthorizationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenOutput, context: context)
        Hearth::Validator.validate!(input[:authorization_token], ::String, context: "#{context}[:authorization_token]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class GetDomainPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
      end
    end

    class GetDomainPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetPackageVersionAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionAssetInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:asset], ::String, context: "#{context}[:asset]")
        Hearth::Validator.validate!(input[:package_version_revision], ::String, context: "#{context}[:package_version_revision]")
      end
    end

    class GetPackageVersionAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionAssetOutput, context: context)
        unless input[:asset].respond_to?(:read) || input[:asset].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:asset].class}"
        end
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:package_version_revision], ::String, context: "#{context}[:package_version_revision]")
      end
    end

    class GetPackageVersionReadmeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionReadmeInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
      end
    end

    class GetPackageVersionReadmeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionReadmeOutput, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:version_revision], ::String, context: "#{context}[:version_revision]")
        Hearth::Validator.validate!(input[:readme], ::String, context: "#{context}[:readme]")
      end
    end

    class GetRepositoryEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryEndpointInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class GetRepositoryEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:repository_endpoint], ::String, context: "#{context}[:repository_endpoint]")
      end
    end

    class GetRepositoryPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
      end
    end

    class GetRepositoryPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LicenseInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class LicenseInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        Validators::DomainSummaryList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackageVersionAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionAssetsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackageVersionAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionAssetsOutput, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:version_revision], ::String, context: "#{context}[:version_revision]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::AssetSummaryList.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
      end
    end

    class ListPackageVersionDependenciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionDependenciesInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackageVersionDependenciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionDependenciesOutput, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:version_revision], ::String, context: "#{context}[:version_revision]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PackageDependencyList.validate!(input[:dependencies], context: "#{context}[:dependencies]") unless input[:dependencies].nil?
      end
    end

    class ListPackageVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionsInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackageVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:default_display_version], ::String, context: "#{context}[:default_display_version]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Validators::PackageVersionSummaryList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package_prefix], ::String, context: "#{context}[:package_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesOutput, context: context)
        Validators::PackageSummaryList.validate!(input[:packages], context: "#{context}[:packages]") unless input[:packages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesInDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesInDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:administrator_account], ::String, context: "#{context}[:administrator_account]")
        Hearth::Validator.validate!(input[:repository_prefix], ::String, context: "#{context}[:repository_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesInDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesInDomainOutput, context: context)
        Validators::RepositorySummaryList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:repository_prefix], ::String, context: "#{context}[:repository_prefix]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesOutput, context: context)
        Validators::RepositorySummaryList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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

    class PackageDependency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageDependency, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Hearth::Validator.validate!(input[:dependency_type], ::String, context: "#{context}[:dependency_type]")
        Hearth::Validator.validate!(input[:version_requirement], ::String, context: "#{context}[:version_requirement]")
      end
    end

    class PackageDependencyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageDependency.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageSummary, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
      end
    end

    class PackageSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageVersionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionDescription, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:summary], ::String, context: "#{context}[:summary]")
        Hearth::Validator.validate!(input[:home_page], ::String, context: "#{context}[:home_page]")
        Hearth::Validator.validate!(input[:source_code_repository], ::String, context: "#{context}[:source_code_repository]")
        Hearth::Validator.validate!(input[:published_time], ::Time, context: "#{context}[:published_time]")
        Validators::LicenseInfoList.validate!(input[:licenses], context: "#{context}[:licenses]") unless input[:licenses].nil?
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PackageVersionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PackageVersionErrorMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::PackageVersionError.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PackageVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PackageVersionRevisionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PackageVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionSummary, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PackageVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutDomainPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDomainPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:policy_revision], ::String, context: "#{context}[:policy_revision]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutDomainPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDomainPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class PutRepositoryPermissionsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryPermissionsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:policy_revision], ::String, context: "#{context}[:policy_revision]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutRepositoryPermissionsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryPermissionsPolicyOutput, context: context)
        Validators::ResourcePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class RepositoryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:administrator_account], ::String, context: "#{context}[:administrator_account]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::UpstreamRepositoryInfoList.validate!(input[:upstreams], context: "#{context}[:upstreams]") unless input[:upstreams].nil?
        Validators::RepositoryExternalConnectionInfoList.validate!(input[:external_connections], context: "#{context}[:external_connections]") unless input[:external_connections].nil?
      end
    end

    class RepositoryExternalConnectionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryExternalConnectionInfo, context: context)
        Hearth::Validator.validate!(input[:external_connection_name], ::String, context: "#{context}[:external_connection_name]")
        Hearth::Validator.validate!(input[:package_format], ::String, context: "#{context}[:package_format]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RepositoryExternalConnectionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryExternalConnectionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositorySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositorySummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:administrator_account], ::String, context: "#{context}[:administrator_account]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class RepositorySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositorySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourcePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePolicy, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SuccessfulPackageVersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuccessfulPackageVersionInfo, context: context)
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SuccessfulPackageVersionInfoMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::SuccessfulPackageVersionInfo.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
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

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
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

    class UpdatePackageVersionsStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackageVersionsStatusInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:package], ::String, context: "#{context}[:package]")
        Validators::PackageVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Validators::PackageVersionRevisionMap.validate!(input[:version_revisions], context: "#{context}[:version_revisions]") unless input[:version_revisions].nil?
        Hearth::Validator.validate!(input[:expected_status], ::String, context: "#{context}[:expected_status]")
        Hearth::Validator.validate!(input[:target_status], ::String, context: "#{context}[:target_status]")
      end
    end

    class UpdatePackageVersionsStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackageVersionsStatusOutput, context: context)
        Validators::SuccessfulPackageVersionInfoMap.validate!(input[:successful_versions], context: "#{context}[:successful_versions]") unless input[:successful_versions].nil?
        Validators::PackageVersionErrorMap.validate!(input[:failed_versions], context: "#{context}[:failed_versions]") unless input[:failed_versions].nil?
      end
    end

    class UpdateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_owner], ::String, context: "#{context}[:domain_owner]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::UpstreamRepositoryList.validate!(input[:upstreams], context: "#{context}[:upstreams]") unless input[:upstreams].nil?
      end
    end

    class UpdateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryOutput, context: context)
        Validators::RepositoryDescription.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class UpstreamRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpstreamRepository, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class UpstreamRepositoryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpstreamRepositoryInfo, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class UpstreamRepositoryInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpstreamRepositoryInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpstreamRepositoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpstreamRepository.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

  end
end
