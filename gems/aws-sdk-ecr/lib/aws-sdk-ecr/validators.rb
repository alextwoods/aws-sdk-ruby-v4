# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
  module Validators

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthorizationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationData, context: context)
        Hearth::Validator.validate!(input[:authorization_token], ::String, context: "#{context}[:authorization_token]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
        Hearth::Validator.validate!(input[:proxy_endpoint], ::String, context: "#{context}[:proxy_endpoint]")
      end
    end

    class AuthorizationDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthorizationData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcrContainerImageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrContainerImageDetails, context: context)
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:image_hash], ::String, context: "#{context}[:image_hash]")
        Validators::ImageTagsList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:pushed_at], ::Time, context: "#{context}[:pushed_at]")
        Hearth::Validator.validate!(input[:registry], ::String, context: "#{context}[:registry]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class BatchCheckLayerAvailabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCheckLayerAvailabilityInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::BatchedOperationLayerDigestList.validate!(input[:layer_digests], context: "#{context}[:layer_digests]") unless input[:layer_digests].nil?
      end
    end

    class BatchCheckLayerAvailabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCheckLayerAvailabilityOutput, context: context)
        Validators::LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Validators::LayerFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchDeleteImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImageInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
      end
    end

    class BatchDeleteImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImageOutput, context: context)
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Validators::ImageFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchGetImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetImageInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Validators::MediaTypeList.validate!(input[:accepted_media_types], context: "#{context}[:accepted_media_types]") unless input[:accepted_media_types].nil?
      end
    end

    class BatchGetImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetImageOutput, context: context)
        Validators::ImageList.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
        Validators::ImageFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchGetRepositoryScanningConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRepositoryScanningConfigurationInput, context: context)
        Validators::ScanningConfigurationRepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
      end
    end

    class BatchGetRepositoryScanningConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRepositoryScanningConfigurationOutput, context: context)
        Validators::RepositoryScanningConfigurationList.validate!(input[:scanning_configurations], context: "#{context}[:scanning_configurations]") unless input[:scanning_configurations].nil?
        Validators::RepositoryScanningConfigurationFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchedOperationLayerDigestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CompleteLayerUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteLayerUploadInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Validators::LayerDigestList.validate!(input[:layer_digests], context: "#{context}[:layer_digests]") unless input[:layer_digests].nil?
      end
    end

    class CompleteLayerUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteLayerUploadOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:layer_digest], ::String, context: "#{context}[:layer_digest]")
      end
    end

    class CreatePullThroughCacheRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullThroughCacheRuleInput, context: context)
        Hearth::Validator.validate!(input[:ecr_repository_prefix], ::String, context: "#{context}[:ecr_repository_prefix]")
        Hearth::Validator.validate!(input[:upstream_registry_url], ::String, context: "#{context}[:upstream_registry_url]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class CreatePullThroughCacheRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullThroughCacheRuleOutput, context: context)
        Hearth::Validator.validate!(input[:ecr_repository_prefix], ::String, context: "#{context}[:ecr_repository_prefix]")
        Hearth::Validator.validate!(input[:upstream_registry_url], ::String, context: "#{context}[:upstream_registry_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class CreateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:image_tag_mutability], ::String, context: "#{context}[:image_tag_mutability]")
        Validators::ImageScanningConfiguration.validate!(input[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless input[:image_scanning_configuration].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class CreateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryOutput, context: context)
        Validators::Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class CvssScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScore, context: context)
        Hearth::Validator.validate!(input[:base_score], ::Float, context: "#{context}[:base_score]")
        Hearth::Validator.validate!(input[:scoring_vector], ::String, context: "#{context}[:scoring_vector]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CvssScoreAdjustment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScoreAdjustment, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CvssScoreAdjustmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CvssScoreAdjustment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CvssScoreDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CvssScoreDetails, context: context)
        Validators::CvssScoreAdjustmentList.validate!(input[:adjustments], context: "#{context}[:adjustments]") unless input[:adjustments].nil?
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:score_source], ::String, context: "#{context}[:score_source]")
        Hearth::Validator.validate!(input[:scoring_vector], ::String, context: "#{context}[:scoring_vector]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CvssScoreList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CvssScore.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class DeleteLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
        Hearth::Validator.validate!(input[:last_evaluated_at], ::Time, context: "#{context}[:last_evaluated_at]")
      end
    end

    class DeletePullThroughCacheRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePullThroughCacheRuleInput, context: context)
        Hearth::Validator.validate!(input[:ecr_repository_prefix], ::String, context: "#{context}[:ecr_repository_prefix]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class DeletePullThroughCacheRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePullThroughCacheRuleOutput, context: context)
        Hearth::Validator.validate!(input[:ecr_repository_prefix], ::String, context: "#{context}[:ecr_repository_prefix]")
        Hearth::Validator.validate!(input[:upstream_registry_url], ::String, context: "#{context}[:upstream_registry_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class DeleteRegistryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryPolicyInput, context: context)
      end
    end

    class DeleteRegistryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class DeleteRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryOutput, context: context)
        Validators::Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DeleteRepositoryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryPolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class DeleteRepositoryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class DescribeImageReplicationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageReplicationStatusInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class DescribeImageReplicationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageReplicationStatusOutput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Validators::ImageReplicationStatusList.validate!(input[:replication_statuses], context: "#{context}[:replication_statuses]") unless input[:replication_statuses].nil?
      end
    end

    class DescribeImageScanFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageScanFindingsInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeImageScanFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageScanFindingsOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Validators::ImageScanStatus.validate!(input[:image_scan_status], context: "#{context}[:image_scan_status]") unless input[:image_scan_status].nil?
        Validators::ImageScanFindings.validate!(input[:image_scan_findings], context: "#{context}[:image_scan_findings]") unless input[:image_scan_findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImagesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesFilter, context: context)
        Hearth::Validator.validate!(input[:tag_status], ::String, context: "#{context}[:tag_status]")
      end
    end

    class DescribeImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::DescribeImagesFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class DescribeImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesOutput, context: context)
        Validators::ImageDetailList.validate!(input[:image_details], context: "#{context}[:image_details]") unless input[:image_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePullThroughCacheRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePullThroughCacheRulesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Validators::PullThroughCacheRuleRepositoryPrefixList.validate!(input[:ecr_repository_prefixes], context: "#{context}[:ecr_repository_prefixes]") unless input[:ecr_repository_prefixes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribePullThroughCacheRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePullThroughCacheRulesOutput, context: context)
        Validators::PullThroughCacheRuleList.validate!(input[:pull_through_cache_rules], context: "#{context}[:pull_through_cache_rules]") unless input[:pull_through_cache_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistryInput, context: context)
      end
    end

    class DescribeRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Validators::ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
      end
    end

    class DescribeRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Validators::RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoriesOutput, context: context)
        Validators::RepositoryList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class EmptyUploadException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmptyUploadException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class EnhancedImageScanFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnhancedImageScanFinding, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:finding_arn], ::String, context: "#{context}[:finding_arn]")
        Hearth::Validator.validate!(input[:first_observed_at], ::Time, context: "#{context}[:first_observed_at]")
        Hearth::Validator.validate!(input[:last_observed_at], ::Time, context: "#{context}[:last_observed_at]")
        Validators::PackageVulnerabilityDetails.validate!(input[:package_vulnerability_details], context: "#{context}[:package_vulnerability_details]") unless input[:package_vulnerability_details].nil?
        Validators::Remediation.validate!(input[:remediation], context: "#{context}[:remediation]") unless input[:remediation].nil?
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Validators::ScoreDetails.validate!(input[:score_details], context: "#{context}[:score_details]") unless input[:score_details].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class EnhancedImageScanFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnhancedImageScanFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingSeverityCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetAuthorizationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenInput, context: context)
        Validators::GetAuthorizationTokenRegistryIdList.validate!(input[:registry_ids], context: "#{context}[:registry_ids]") unless input[:registry_ids].nil?
      end
    end

    class GetAuthorizationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenOutput, context: context)
        Validators::AuthorizationDataList.validate!(input[:authorization_data], context: "#{context}[:authorization_data]") unless input[:authorization_data].nil?
      end
    end

    class GetAuthorizationTokenRegistryIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetDownloadUrlForLayerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDownloadUrlForLayerInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:layer_digest], ::String, context: "#{context}[:layer_digest]")
      end
    end

    class GetDownloadUrlForLayerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDownloadUrlForLayerOutput, context: context)
        Hearth::Validator.validate!(input[:download_url], ::String, context: "#{context}[:download_url]")
        Hearth::Validator.validate!(input[:layer_digest], ::String, context: "#{context}[:layer_digest]")
      end
    end

    class GetLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class GetLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
        Hearth::Validator.validate!(input[:last_evaluated_at], ::Time, context: "#{context}[:last_evaluated_at]")
      end
    end

    class GetLifecyclePolicyPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyPreviewInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::LifecyclePolicyPreviewFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class GetLifecyclePolicyPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::LifecyclePolicyPreviewResultList.validate!(input[:preview_results], context: "#{context}[:preview_results]") unless input[:preview_results].nil?
        Validators::LifecyclePolicyPreviewSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class GetRegistryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryPolicyInput, context: context)
      end
    end

    class GetRegistryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class GetRegistryScanningConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryScanningConfigurationInput, context: context)
      end
    end

    class GetRegistryScanningConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryScanningConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Validators::RegistryScanningConfiguration.validate!(input[:scanning_configuration], context: "#{context}[:scanning_configuration]") unless input[:scanning_configuration].nil?
      end
    end

    class GetRepositoryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryPolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class GetRepositoryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Hearth::Validator.validate!(input[:image_manifest], ::String, context: "#{context}[:image_manifest]")
        Hearth::Validator.validate!(input[:image_manifest_media_type], ::String, context: "#{context}[:image_manifest_media_type]")
      end
    end

    class ImageAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageDetail, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Validators::ImageTagList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:image_size_in_bytes], ::Integer, context: "#{context}[:image_size_in_bytes]")
        Hearth::Validator.validate!(input[:image_pushed_at], ::Time, context: "#{context}[:image_pushed_at]")
        Validators::ImageScanStatus.validate!(input[:image_scan_status], context: "#{context}[:image_scan_status]") unless input[:image_scan_status].nil?
        Validators::ImageScanFindingsSummary.validate!(input[:image_scan_findings_summary], context: "#{context}[:image_scan_findings_summary]") unless input[:image_scan_findings_summary].nil?
        Hearth::Validator.validate!(input[:image_manifest_media_type], ::String, context: "#{context}[:image_manifest_media_type]")
        Hearth::Validator.validate!(input[:artifact_media_type], ::String, context: "#{context}[:artifact_media_type]")
        Hearth::Validator.validate!(input[:last_recorded_pull_time], ::Time, context: "#{context}[:last_recorded_pull_time]")
      end
    end

    class ImageDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageDigestDoesNotMatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageDigestDoesNotMatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageFailure, context: context)
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class ImageFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageIdentifier, context: context)
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:image_tag], ::String, context: "#{context}[:image_tag]")
      end
    end

    class ImageIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Image.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageReplicationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageReplicationStatus, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
      end
    end

    class ImageReplicationStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageReplicationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageScanFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageScanFinding, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Validators::AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ImageScanFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageScanFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageScanFindings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageScanFindings, context: context)
        Hearth::Validator.validate!(input[:image_scan_completed_at], ::Time, context: "#{context}[:image_scan_completed_at]")
        Hearth::Validator.validate!(input[:vulnerability_source_updated_at], ::Time, context: "#{context}[:vulnerability_source_updated_at]")
        Validators::FindingSeverityCounts.validate!(input[:finding_severity_counts], context: "#{context}[:finding_severity_counts]") unless input[:finding_severity_counts].nil?
        Validators::ImageScanFindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Validators::EnhancedImageScanFindingList.validate!(input[:enhanced_findings], context: "#{context}[:enhanced_findings]") unless input[:enhanced_findings].nil?
      end
    end

    class ImageScanFindingsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageScanFindingsSummary, context: context)
        Hearth::Validator.validate!(input[:image_scan_completed_at], ::Time, context: "#{context}[:image_scan_completed_at]")
        Hearth::Validator.validate!(input[:vulnerability_source_updated_at], ::Time, context: "#{context}[:vulnerability_source_updated_at]")
        Validators::FindingSeverityCounts.validate!(input[:finding_severity_counts], context: "#{context}[:finding_severity_counts]") unless input[:finding_severity_counts].nil?
      end
    end

    class ImageScanStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageScanStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ImageScanningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageScanningConfiguration, context: context)
        Hearth::Validator.validate!(input[:scan_on_push], ::TrueClass, ::FalseClass, context: "#{context}[:scan_on_push]")
      end
    end

    class ImageTagAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageTagAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InitiateLayerUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateLayerUploadInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class InitiateLayerUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateLayerUploadOutput, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:part_size], ::Integer, context: "#{context}[:part_size]")
      end
    end

    class InvalidLayerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLayerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLayerPartException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLayerPartException, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:last_valid_byte_received], ::Integer, context: "#{context}[:last_valid_byte_received]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:kms_error], ::String, context: "#{context}[:kms_error]")
      end
    end

    class Layer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Layer, context: context)
        Hearth::Validator.validate!(input[:layer_digest], ::String, context: "#{context}[:layer_digest]")
        Hearth::Validator.validate!(input[:layer_availability], ::String, context: "#{context}[:layer_availability]")
        Hearth::Validator.validate!(input[:layer_size], ::Integer, context: "#{context}[:layer_size]")
        Hearth::Validator.validate!(input[:media_type], ::String, context: "#{context}[:media_type]")
      end
    end

    class LayerAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LayerDigestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LayerFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerFailure, context: context)
        Hearth::Validator.validate!(input[:layer_digest], ::String, context: "#{context}[:layer_digest]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class LayerFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LayerFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayerInaccessibleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerInaccessibleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Layer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayerPartTooSmallException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerPartTooSmallException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LayersNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayersNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecyclePolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecyclePolicyPreviewFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyPreviewFilter, context: context)
        Hearth::Validator.validate!(input[:tag_status], ::String, context: "#{context}[:tag_status]")
      end
    end

    class LifecyclePolicyPreviewInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyPreviewInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecyclePolicyPreviewNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyPreviewNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecyclePolicyPreviewResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyPreviewResult, context: context)
        Validators::ImageTagList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:image_pushed_at], ::Time, context: "#{context}[:image_pushed_at]")
        Validators::LifecyclePolicyRuleAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:applied_rule_priority], ::Integer, context: "#{context}[:applied_rule_priority]")
      end
    end

    class LifecyclePolicyPreviewResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LifecyclePolicyPreviewResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecyclePolicyPreviewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyPreviewSummary, context: context)
        Hearth::Validator.validate!(input[:expiring_image_total_count], ::Integer, context: "#{context}[:expiring_image_total_count]")
      end
    end

    class LifecyclePolicyRuleAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicyRuleAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListImagesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesFilter, context: context)
        Hearth::Validator.validate!(input[:tag_status], ::String, context: "#{context}[:tag_status]")
      end
    end

    class ListImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::ListImagesFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesOutput, context: context)
        Validators::ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
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

    class MediaTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PackageVulnerabilityDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVulnerabilityDetails, context: context)
        Validators::CvssScoreList.validate!(input[:cvss], context: "#{context}[:cvss]") unless input[:cvss].nil?
        Validators::ReferenceUrlsList.validate!(input[:reference_urls], context: "#{context}[:reference_urls]") unless input[:reference_urls].nil?
        Validators::RelatedVulnerabilitiesList.validate!(input[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless input[:related_vulnerabilities].nil?
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
        Hearth::Validator.validate!(input[:vendor_created_at], ::Time, context: "#{context}[:vendor_created_at]")
        Hearth::Validator.validate!(input[:vendor_severity], ::String, context: "#{context}[:vendor_severity]")
        Hearth::Validator.validate!(input[:vendor_updated_at], ::Time, context: "#{context}[:vendor_updated_at]")
        Hearth::Validator.validate!(input[:vulnerability_id], ::String, context: "#{context}[:vulnerability_id]")
        Validators::VulnerablePackagesList.validate!(input[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless input[:vulnerable_packages].nil?
      end
    end

    class PullThroughCacheRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullThroughCacheRule, context: context)
        Hearth::Validator.validate!(input[:ecr_repository_prefix], ::String, context: "#{context}[:ecr_repository_prefix]")
        Hearth::Validator.validate!(input[:upstream_registry_url], ::String, context: "#{context}[:upstream_registry_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class PullThroughCacheRuleAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullThroughCacheRuleAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullThroughCacheRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PullThroughCacheRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PullThroughCacheRuleNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullThroughCacheRuleNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullThroughCacheRuleRepositoryPrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:image_manifest], ::String, context: "#{context}[:image_manifest]")
        Hearth::Validator.validate!(input[:image_manifest_media_type], ::String, context: "#{context}[:image_manifest_media_type]")
        Hearth::Validator.validate!(input[:image_tag], ::String, context: "#{context}[:image_tag]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
      end
    end

    class PutImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageOutput, context: context)
        Validators::Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
      end
    end

    class PutImageScanningConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageScanningConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageScanningConfiguration.validate!(input[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless input[:image_scanning_configuration].nil?
      end
    end

    class PutImageScanningConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageScanningConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageScanningConfiguration.validate!(input[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless input[:image_scanning_configuration].nil?
      end
    end

    class PutImageTagMutabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageTagMutabilityInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:image_tag_mutability], ::String, context: "#{context}[:image_tag_mutability]")
      end
    end

    class PutImageTagMutabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageTagMutabilityOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:image_tag_mutability], ::String, context: "#{context}[:image_tag_mutability]")
      end
    end

    class PutLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
      end
    end

    class PutLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecyclePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
      end
    end

    class PutRegistryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class PutRegistryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class PutRegistryScanningConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryScanningConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Validators::RegistryScanningRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class PutRegistryScanningConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryScanningConfigurationOutput, context: context)
        Validators::RegistryScanningConfiguration.validate!(input[:registry_scanning_configuration], context: "#{context}[:registry_scanning_configuration]") unless input[:registry_scanning_configuration].nil?
      end
    end

    class PutReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReplicationConfigurationInput, context: context)
        Validators::ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
      end
    end

    class PutReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutReplicationConfigurationOutput, context: context)
        Validators::ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class ReferenceUrlsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReferencedImagesNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferencedImagesNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RegistryPolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryPolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RegistryScanningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryScanningConfiguration, context: context)
        Hearth::Validator.validate!(input[:scan_type], ::String, context: "#{context}[:scan_type]")
        Validators::RegistryScanningRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class RegistryScanningRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryScanningRule, context: context)
        Hearth::Validator.validate!(input[:scan_frequency], ::String, context: "#{context}[:scan_frequency]")
        Validators::ScanningRepositoryFilterList.validate!(input[:repository_filters], context: "#{context}[:repository_filters]") unless input[:repository_filters].nil?
      end
    end

    class RegistryScanningRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RegistryScanningRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedVulnerabilitiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Remediation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Remediation, context: context)
        Validators::Recommendation.validate!(input[:recommendation], context: "#{context}[:recommendation]") unless input[:recommendation].nil?
      end
    end

    class ReplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationConfiguration, context: context)
        Validators::ReplicationRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ReplicationDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationDestination, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class ReplicationDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRule, context: context)
        Validators::ReplicationDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Validators::RepositoryFilterList.validate!(input[:repository_filters], context: "#{context}[:repository_filters]") unless input[:repository_filters].nil?
      end
    end

    class ReplicationRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Repository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Repository, context: context)
        Hearth::Validator.validate!(input[:repository_arn], ::String, context: "#{context}[:repository_arn]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_uri], ::String, context: "#{context}[:repository_uri]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:image_tag_mutability], ::String, context: "#{context}[:image_tag_mutability]")
        Validators::ImageScanningConfiguration.validate!(input[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless input[:image_scanning_configuration].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class RepositoryAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryFilter, context: context)
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:filter_type], ::String, context: "#{context}[:filter_type]")
      end
    end

    class RepositoryFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Repository.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryNotEmptyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNotEmptyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryPolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryPolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryScanningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryScanningConfiguration, context: context)
        Hearth::Validator.validate!(input[:repository_arn], ::String, context: "#{context}[:repository_arn]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:scan_on_push], ::TrueClass, ::FalseClass, context: "#{context}[:scan_on_push]")
        Hearth::Validator.validate!(input[:scan_frequency], ::String, context: "#{context}[:scan_frequency]")
        Validators::ScanningRepositoryFilterList.validate!(input[:applied_scan_filters], context: "#{context}[:applied_scan_filters]") unless input[:applied_scan_filters].nil?
      end
    end

    class RepositoryScanningConfigurationFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryScanningConfigurationFailure, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class RepositoryScanningConfigurationFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryScanningConfigurationFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryScanningConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryScanningConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Validators::ResourceDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDetails, context: context)
        Validators::AwsEcrContainerImageDetails.validate!(input[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless input[:aws_ecr_container_image].nil?
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScanNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScanningConfigurationRepositoryNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScanningRepositoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanningRepositoryFilter, context: context)
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:filter_type], ::String, context: "#{context}[:filter_type]")
      end
    end

    class ScanningRepositoryFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScanningRepositoryFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScoreDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScoreDetails, context: context)
        Validators::CvssScoreDetails.validate!(input[:cvss], context: "#{context}[:cvss]") unless input[:cvss].nil?
      end
    end

    class ServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetRepositoryPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRepositoryPolicyInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class SetRepositoryPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRepositoryPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class StartImageScanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImageScanInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
      end
    end

    class StartImageScanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImageScanOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Validators::ImageScanStatus.validate!(input[:image_scan_status], context: "#{context}[:image_scan_status]") unless input[:image_scan_status].nil?
      end
    end

    class StartLifecyclePolicyPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLifecyclePolicyPreviewInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
      end
    end

    class StartLifecyclePolicyPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLifecyclePolicyPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedImageTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedImageTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedUpstreamRegistryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedUpstreamRegistryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UploadLayerPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadLayerPartInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:part_first_byte], ::Integer, context: "#{context}[:part_first_byte]")
        Hearth::Validator.validate!(input[:part_last_byte], ::Integer, context: "#{context}[:part_last_byte]")
        Hearth::Validator.validate!(input[:layer_part_blob], ::String, context: "#{context}[:layer_part_blob]")
      end
    end

    class UploadLayerPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadLayerPartOutput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:last_byte_received], ::Integer, context: "#{context}[:last_byte_received]")
      end
    end

    class UploadNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VulnerablePackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VulnerablePackage, context: context)
        Hearth::Validator.validate!(input[:arch], ::String, context: "#{context}[:arch]")
        Hearth::Validator.validate!(input[:epoch], ::Integer, context: "#{context}[:epoch]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:package_manager], ::String, context: "#{context}[:package_manager]")
        Hearth::Validator.validate!(input[:release], ::String, context: "#{context}[:release]")
        Hearth::Validator.validate!(input[:source_layer_hash], ::String, context: "#{context}[:source_layer_hash]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class VulnerablePackagesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VulnerablePackage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
